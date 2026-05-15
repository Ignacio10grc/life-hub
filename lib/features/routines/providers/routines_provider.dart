import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/routine.dart';

class RoutinesNotifier extends StateNotifier<List<Routine>> {
  final Box _box;
  static const _key = 'routines';
  final _uuid = const Uuid();

  RoutinesNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      state = (jsonDecode(raw as String) as List)
          .map((e) => Routine.fromJson(e as Map<String, dynamic>))
          .toList();
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((r) => r.toJson()).toList()));
  }

  Future<void> addRoutine(String name, String emoji, String time) async {
    state = [
      ...state,
      Routine(id: _uuid.v4(), name: name, emoji: emoji, time: time, tasks: []),
    ];
    await _save();
  }

  Future<void> addTask(String routineId, String title, int minutes) async {
    state = state.map((r) {
      if (r.id != routineId) return r;
      return Routine(
        id: r.id,
        name: r.name,
        emoji: r.emoji,
        time: r.time,
        tasks: [
          ...r.tasks,
          RoutineTask(id: _uuid.v4(), title: title, durationMinutes: minutes),
        ],
      );
    }).toList();
    await _save();
  }

  Future<void> toggleTask(String routineId, String taskId) async {
    state = state.map((r) {
      if (r.id != routineId) return r;
      return Routine(
        id: r.id,
        name: r.name,
        emoji: r.emoji,
        time: r.time,
        tasks: r.tasks.map((t) {
          if (t.id != taskId) return t;
          return RoutineTask(
              id: t.id,
              title: t.title,
              durationMinutes: t.durationMinutes,
              isDone: !t.isDone);
        }).toList(),
      );
    }).toList();
    await _save();
  }

  Future<void> removeRoutine(String id) async {
    state = state.where((r) => r.id != id).toList();
    await _save();
  }
}

final routinesProvider = StateNotifierProvider<RoutinesNotifier, List<Routine>>(
  (ref) => RoutinesNotifier(Hive.box('routines')),
);
