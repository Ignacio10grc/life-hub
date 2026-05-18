import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/step_entry.dart';

class StepsNotifier extends StateNotifier<List<StepEntry>> {
  final Box _box;
  static const _key = 'steps_history';
  static const _goalKey = 'steps_daily_goal';
  final _uuid = const Uuid();

  StepsNotifier(this._box) : super([]) {
    _load();
  }

  int get dailyGoal => (_box.get(_goalKey) as int?) ?? 10000;

  StepEntry? get todayEntry {
    final today = DateTime.now();
    try {
      return state.firstWhere((e) =>
          e.date.year == today.year &&
          e.date.month == today.month &&
          e.date.day == today.day);
    } catch (_) {
      return null;
    }
  }

  int get todaySteps => todayEntry?.steps ?? 0;

  double get todayProgress =>
      (todaySteps / dailyGoal).clamp(0.0, 1.0);

  double get weekAverage {
    final now = DateTime.now();
    final week = state.where((e) =>
        now.difference(e.date).inDays < 7).toList();
    if (week.isEmpty) return 0;
    return week.map((e) => e.steps).reduce((a, b) => a + b) / week.length;
  }

  int get weekGoalDays {
    final now = DateTime.now();
    return state
        .where((e) => now.difference(e.date).inDays < 7 && e.goalReached)
        .length;
  }

  Future<void> setGoal(int goal) async {
    await _box.put(_goalKey, goal);
    // Refresh state to rebuild notifyListeners
    state = [...state];
  }

  Future<void> logToday(int steps) async {
    final today = DateTime.now();
    final existing = todayEntry;

    if (existing != null) {
      state = state
          .map((e) => e.id == existing.id
              ? StepEntry(
                  id: e.id,
                  date: e.date,
                  steps: steps,
                  goal: dailyGoal,
                )
              : e)
          .toList();
    } else {
      state = [
        StepEntry(
          id: _uuid.v4(),
          date: today,
          steps: steps,
          goal: dailyGoal,
        ),
        ...state,
      ];
    }
    await _save();
  }

  Future<void> addSteps(int delta) async {
    final current = todaySteps;
    await logToday((current + delta).clamp(0, 99999));
  }

  Future<void> delete(String id) async {
    state = state.where((e) => e.id != id).toList();
    await _save();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => StepEntry.fromJson(e as Map<String, dynamic>))
          .toList()
        ..sort((a, b) => b.date.compareTo(a.date));
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(
        _key, jsonEncode(state.map((e) => e.toJson()).toList()));
  }
}

final stepsProvider =
    StateNotifierProvider<StepsNotifier, List<StepEntry>>(
  (ref) => StepsNotifier(Hive.box('steps')),
);
