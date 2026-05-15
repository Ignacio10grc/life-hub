import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TimerMode { focus, shortBreak, longBreak }
enum TimerStatus { idle, running, paused, done }

class TimerState {
  final TimerMode mode;
  final TimerStatus status;
  final int totalSeconds;
  final int remainingSeconds;
  final int completedPomodoros;

  const TimerState({
    this.mode = TimerMode.focus,
    this.status = TimerStatus.idle,
    this.totalSeconds = 25 * 60,
    this.remainingSeconds = 25 * 60,
    this.completedPomodoros = 0,
  });

  double get progress =>
      totalSeconds == 0 ? 0 : 1 - (remainingSeconds / totalSeconds);

  String get timeLabel {
    final m = remainingSeconds ~/ 60;
    final s = remainingSeconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  static int secondsFor(TimerMode mode) {
    switch (mode) {
      case TimerMode.focus:
        return 25 * 60;
      case TimerMode.shortBreak:
        return 5 * 60;
      case TimerMode.longBreak:
        return 15 * 60;
    }
  }

  TimerState copyWith({
    TimerMode? mode,
    TimerStatus? status,
    int? totalSeconds,
    int? remainingSeconds,
    int? completedPomodoros,
  }) =>
      TimerState(
        mode: mode ?? this.mode,
        status: status ?? this.status,
        totalSeconds: totalSeconds ?? this.totalSeconds,
        remainingSeconds: remainingSeconds ?? this.remainingSeconds,
        completedPomodoros: completedPomodoros ?? this.completedPomodoros,
      );
}

class TimerNotifier extends StateNotifier<TimerState> {
  Timer? _ticker;

  TimerNotifier() : super(const TimerState());

  void setMode(TimerMode mode) {
    _ticker?.cancel();
    final secs = TimerState.secondsFor(mode);
    state = TimerState(
      mode: mode,
      status: TimerStatus.idle,
      totalSeconds: secs,
      remainingSeconds: secs,
      completedPomodoros: state.completedPomodoros,
    );
  }

  void start() {
    if (state.status == TimerStatus.running) return;
    state = state.copyWith(status: TimerStatus.running);
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  void pause() {
    _ticker?.cancel();
    state = state.copyWith(status: TimerStatus.paused);
  }

  void reset() {
    _ticker?.cancel();
    final secs = TimerState.secondsFor(state.mode);
    state = TimerState(
      mode: state.mode,
      status: TimerStatus.idle,
      totalSeconds: secs,
      remainingSeconds: secs,
      completedPomodoros: state.completedPomodoros,
    );
  }

  void _tick() {
    if (state.remainingSeconds <= 1) {
      _ticker?.cancel();
      final completed = state.mode == TimerMode.focus
          ? state.completedPomodoros + 1
          : state.completedPomodoros;
      state = state.copyWith(
        status: TimerStatus.done,
        remainingSeconds: 0,
        completedPomodoros: completed,
      );
    } else {
      state = state.copyWith(remainingSeconds: state.remainingSeconds - 1);
    }
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }
}

final timerProvider = StateNotifierProvider<TimerNotifier, TimerState>(
  (ref) => TimerNotifier(),
);
