import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/timer_provider.dart';

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerProvider);
    final notifier = ref.read(timerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Temporizador')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _ModeSelector(current: state.mode, onSelect: notifier.setMode),
            const SizedBox(height: 48),
            _CircleTimer(state: state),
            const SizedBox(height: 48),
            _Controls(state: state, notifier: notifier),
            const SizedBox(height: 36),
            _PomodoroCount(count: state.completedPomodoros),
            if (state.status == TimerStatus.done) ...[
              const SizedBox(height: 24),
              _DoneCard(mode: state.mode),
            ],
          ],
        ),
      ),
    );
  }
}

class _ModeSelector extends StatelessWidget {
  final TimerMode current;
  final ValueChanged<TimerMode> onSelect;

  const _ModeSelector({required this.current, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          _ModeChip('Foco', TimerMode.focus, current, onSelect),
          _ModeChip('Descanso', TimerMode.shortBreak, current, onSelect),
          _ModeChip('Largo', TimerMode.longBreak, current, onSelect),
        ],
      ),
    );
  }
}

class _ModeChip extends StatelessWidget {
  final String label;
  final TimerMode mode;
  final TimerMode current;
  final ValueChanged<TimerMode> onSelect;

  const _ModeChip(this.label, this.mode, this.current, this.onSelect);

  @override
  Widget build(BuildContext context) {
    final selected = mode == current;
    return Expanded(
      child: GestureDetector(
        onTap: () => onSelect(mode),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: selected ? AppColors.timer.withOpacity(0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: selected ? AppColors.timer : AppColors.textSecondary,
              fontWeight: selected ? FontWeight.w700 : FontWeight.normal,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

class _CircleTimer extends StatelessWidget {
  final TimerState state;
  const _CircleTimer({required this.state});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 240,
      child: CustomPaint(
        painter: _CirclePainter(progress: state.progress),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                state.timeLabel,
                style: GoogleFonts.inter(
                  fontSize: 52,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                _modeLabel(state.mode),
                style: GoogleFonts.inter(
                    color: AppColors.textSecondary, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _modeLabel(TimerMode mode) {
    switch (mode) {
      case TimerMode.focus:
        return 'Tiempo de foco';
      case TimerMode.shortBreak:
        return 'Descanso corto';
      case TimerMode.longBreak:
        return 'Descanso largo';
    }
  }
}

class _CirclePainter extends CustomPainter {
  final double progress;
  _CirclePainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 10;
    const strokeWidth = 10.0;

    final bgPaint = Paint()
      ..color = AppColors.timer.withOpacity(0.1)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, bgPaint);

    final fgPaint = Paint()
      ..shader = const LinearGradient(
        colors: [AppColors.timer, Color(0xFFFF6B35)],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      2 * math.pi * progress,
      false,
      fgPaint,
    );
  }

  @override
  bool shouldRepaint(_CirclePainter old) => old.progress != progress;
}

class _Controls extends StatelessWidget {
  final TimerState state;
  final TimerNotifier notifier;

  const _Controls({required this.state, required this.notifier});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: notifier.reset,
          icon: const Icon(Icons.refresh_rounded),
          iconSize: 28,
          color: AppColors.textSecondary,
          style: IconButton.styleFrom(
            backgroundColor: AppColors.surface,
            fixedSize: const Size(52, 52),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            if (state.status == TimerStatus.running) {
              notifier.pause();
            } else {
              notifier.start();
            }
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(80, 80),
            shape: const CircleBorder(),
            backgroundColor: AppColors.timer,
            minimumSize: Size.zero,
          ),
          child: Icon(
            state.status == TimerStatus.running
                ? Icons.pause_rounded
                : Icons.play_arrow_rounded,
            size: 36,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 20),
        IconButton(
          onPressed: () => notifier.setMode(state.mode),
          icon: const Icon(Icons.skip_next_rounded),
          iconSize: 28,
          color: AppColors.textSecondary,
          style: IconButton.styleFrom(
            backgroundColor: AppColors.surface,
            fixedSize: const Size(52, 52),
          ),
        ),
      ],
    );
  }
}

class _PomodoroCount extends StatelessWidget {
  final int count;
  const _PomodoroCount({required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Pomodoros completados: ',
            style:
                GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 14)),
        Text('$count 🍅',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w700, fontSize: 14)),
      ],
    );
  }
}

class _DoneCard extends StatelessWidget {
  final TimerMode mode;
  const _DoneCard({required this.mode});

  @override
  Widget build(BuildContext context) {
    final isBreak = mode != TimerMode.focus;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.success.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.success.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.check_circle_rounded,
              color: AppColors.success, size: 24),
          const SizedBox(width: 12),
          Text(
            isBreak
                ? '¡Descanso terminado! ¿Listo para enfocarte?'
                : '¡Sesión completada! Tómate un descanso 🎉',
            style: GoogleFonts.inter(
                color: AppColors.success, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
