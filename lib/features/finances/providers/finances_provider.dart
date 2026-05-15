import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/transaction.dart';

class FinancesNotifier extends StateNotifier<List<Transaction>> {
  final Box _box;
  static const _key = 'transactions';
  final _uuid = const Uuid();

  FinancesNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList();
      list.sort((a, b) => b.date.compareTo(a.date));
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((t) => t.toJson()).toList()));
  }

  Future<void> add({
    required String title,
    required double amount,
    required TransactionType type,
    required String category,
    String? note,
  }) async {
    final t = Transaction(
      id: _uuid.v4(),
      title: title,
      amount: amount,
      type: type,
      category: category,
      date: DateTime.now(),
      note: note,
    );
    state = [t, ...state];
    await _save();
  }

  Future<void> remove(String id) async {
    state = state.where((t) => t.id != id).toList();
    await _save();
  }

  double get totalIncome => state
      .where((t) => t.type == TransactionType.income)
      .fold(0, (s, t) => s + t.amount);

  double get totalExpense => state
      .where((t) => t.type == TransactionType.expense)
      .fold(0, (s, t) => s + t.amount);

  double get balance => totalIncome - totalExpense;
}

final financesProvider =
    StateNotifierProvider<FinancesNotifier, List<Transaction>>(
  (ref) => FinancesNotifier(Hive.box('finances')),
);
