import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/habit.dart';

class HabitsNotifier extends StateNotifier<List<Habit>> {
  final Box _box;
  static const _key = 'habits';
  final _uuid = const Uuid();

  HabitsNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => Habit.fromJson(e as Map<String, dynamic>))
          .toList();
      list.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((h) => h.toJson()).toList()));
  }

  Future<void> add(String name, String emoji, {String? reminderTime}) async {
    state = [
      ...state,
      Habit(
          id: _uuid.v4(),
          name: name,
          emoji: emoji,
          completedDates: [],
          reminderTime: reminderTime),
    ];
    state = [...state]..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    await _save();
  }

  Future<void> toggle(String id) async {
    state = state.map((h) => h.id == id ? h.toggleToday() : h).toList();
    await _save();
  }

  Future<void> remove(String id) async {
    state = state.where((h) => h.id != id).toList();
    await _save();
  }

  Future<void> edit(String id, String name, String emoji,
      {String? reminderTime}) async {
    state = state
        .map((h) => h.id == id
            ? Habit(
                id: h.id,
                name: name,
                emoji: emoji,
                completedDates: h.completedDates,
                reminderTime: reminderTime)
            : h)
        .toList();
    state = [...state]..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    await _save();
  }
}

final habitsProvider = StateNotifierProvider<HabitsNotifier, List<Habit>>(
  (ref) => HabitsNotifier(Hive.box('habits')),
);
