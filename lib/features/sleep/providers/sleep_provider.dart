import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/sleep_entry.dart';

class SleepNotifier extends StateNotifier<List<SleepEntry>> {
  final Box _box;
  static const _key = 'sleep_entries';
  final _uuid = const Uuid();

  SleepNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => SleepEntry.fromJson(e as Map<String, dynamic>))
          .toList();
      list.sort((a, b) => b.bedtime.compareTo(a.bedtime));
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((s) => s.toJson()).toList()));
  }

  Future<void> add({
    required DateTime bedtime,
    required DateTime wakeTime,
    required int quality,
    String? notes,
  }) async {
    final entry = SleepEntry(
      id: _uuid.v4(),
      bedtime: bedtime,
      wakeTime: wakeTime,
      quality: quality,
      notes: notes,
    );
    state = [entry, ...state];
    await _save();
  }

  Future<void> remove(String id) async {
    state = state.where((s) => s.id != id).toList();
    await _save();
  }

  double get averageHours {
    if (state.isEmpty) return 0;
    final total = state.fold(0.0, (s, e) => s + e.duration.inMinutes);
    return total / state.length / 60;
  }

  double get averageQuality {
    if (state.isEmpty) return 0;
    return state.fold(0.0, (s, e) => s + e.quality) / state.length;
  }
}

final sleepProvider = StateNotifierProvider<SleepNotifier, List<SleepEntry>>(
  (ref) => SleepNotifier(Hive.box('sleep')),
);
