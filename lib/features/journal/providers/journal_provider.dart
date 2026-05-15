import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/journal_entry.dart';

class JournalNotifier extends StateNotifier<List<JournalEntry>> {
  final Box _box;
  static const _key = 'journal_entries';
  final _uuid = const Uuid();

  JournalNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => JournalEntry.fromJson(e as Map<String, dynamic>))
          .toList();
      list.sort((a, b) => b.date.compareTo(a.date));
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((e) => e.toJson()).toList()));
  }

  Future<void> add({
    required String content,
    required int mood,
    required List<String> tags,
  }) async {
    final entry = JournalEntry(
      id: _uuid.v4(),
      date: DateTime.now(),
      content: content,
      mood: mood,
      tags: tags,
    );
    state = [entry, ...state];
    await _save();
  }

  Future<void> remove(String id) async {
    state = state.where((e) => e.id != id).toList();
    await _save();
  }
}

final journalProvider = StateNotifierProvider<JournalNotifier, List<JournalEntry>>(
  (ref) => JournalNotifier(Hive.box('journal')),
);
