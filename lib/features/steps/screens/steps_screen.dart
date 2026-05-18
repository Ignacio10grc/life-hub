import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/steps_provider.dart';
import '../models/step_entry.dart';

class StepsScreen extends ConsumerWidget {
  const StepsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = ref.watch(stepsProvider);
    final notifier = ref.read(stepsProvider.notifier);
    final today = notifier.todaySteps;
    final goal = notifier.dailyGoal;
    final progress = notifier.todayProgress;
    final goalReached = today >= goal;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          // ── AppBar ──────────────────────────────────────────────────────
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            elevation: 0,
            scrolledUnderElevation: 0,
            title: Text('Pasos',
                style: GoogleFonts.inter(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 20)),
            actions: [
              IconButton(
                icon: const Icon(Icons.flag_outlined,
                    color: AppColors.textSecondary),
                tooltip: 'Cambiar objetivo',
                onPressed: () => _showGoalDialog(context, ref, goal),
              ),
              const SizedBox(width: 8),
            ],
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: Column(
                children: [
                  // ── Progress ring ────────────────────────────────────────
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 220, height: 220,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomPaint(
                          size: const Size(220, 220),
                          painter: _StepRingPainter(
                            progress: progress,
                            goalReached: goalReached,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (goalReached)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: AppColors.steps.withAlpha(30),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text('¡Meta!',
                                    style: GoogleFonts.inter(
                                        color: AppColors.steps,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700)),
                              ),
                            const SizedBox(height: 4),
                            Text(
                              NumberFormat('#,###').format(today),
                              style: GoogleFonts.inter(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.textPrimary,
                                  letterSpacing: -1),
                            ),
                            Text('pasos hoy',
                                style: GoogleFonts.inter(
                                    fontSize: 13,
                                    color: AppColors.textSecondary)),
                            const SizedBox(height: 4),
                            Text(
                              '${(progress * 100).round()}% de ${NumberFormat('#,###').format(goal)}',
                              style: GoogleFonts.inter(
                                  fontSize: 11,
                                  color: AppColors.steps,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),

                  // ── Quick add buttons ────────────────────────────────────
                  _QuickButtons(notifier: notifier),
                  const SizedBox(height: 12),
                  _EnterManualButton(notifier: notifier, currentSteps: today),
                  const SizedBox(height: 32),

                  // ── Weekly stats ─────────────────────────────────────────
                  Row(
                    children: [
                      _StatPill(
                        label: 'Promedio',
                        value: NumberFormat('#,###')
                            .format(notifier.weekAverage.round()),
                        unit: 'pasos/día',
                        color: AppColors.steps,
                      ),
                      const SizedBox(width: 12),
                      _StatPill(
                        label: 'Objetivos',
                        value: '${notifier.weekGoalDays}/7',
                        unit: 'días esta semana',
                        color: AppColors.success,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // ── History header ───────────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Historial',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary)),
                      Text('Últimos 14 días',
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppColors.textSecondary)),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),

          // ── History list ─────────────────────────────────────────────────
          entries.isEmpty
              ? SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Icon(Icons.directions_walk_rounded,
                            size: 48,
                            color: AppColors.textHint),
                        const SizedBox(height: 12),
                        Text('Aún no hay registros',
                            style: GoogleFonts.inter(
                                color: AppColors.textSecondary,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 4),
                        Text('Usa los botones de arriba para\nregistrar tus pasos de hoy',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                color: AppColors.textSecondary,
                                fontSize: 13)),
                      ],
                    ),
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      final entry = entries[i];
                      return _HistoryTile(
                        entry: entry,
                        goal: goal,
                        onDelete: () =>
                            ref.read(stepsProvider.notifier).delete(entry.id),
                      );
                    },
                    childCount: entries.take(14).length,
                  ),
                ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }

  void _showGoalDialog(BuildContext context, WidgetRef ref, int currentGoal) {
    final ctrl = TextEditingController(text: currentGoal.toString());
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Objetivo diario'),
        content: TextField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Pasos por día',
            suffixText: 'pasos',
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              final val = int.tryParse(ctrl.text.trim());
              if (val != null && val > 0) {
                ref.read(stepsProvider.notifier).setGoal(val);
              }
              Navigator.of(ctx).pop();
            },
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}

// ── Ring painter ──────────────────────────────────────────────────────────────

class _StepRingPainter extends CustomPainter {
  final double progress;
  final bool goalReached;

  const _StepRingPainter({required this.progress, required this.goalReached});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 16;
    final color = goalReached ? AppColors.success : AppColors.steps;

    canvas.drawCircle(
        center,
        radius,
        Paint()
          ..color = color.withAlpha(25)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 18);

    if (progress > 0) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -pi / 2,
        2 * pi * progress.clamp(0.0, 1.0),
        false,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 18
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  @override
  bool shouldRepaint(_StepRingPainter o) =>
      progress != o.progress || goalReached != o.goalReached;
}

// ── Quick add buttons ─────────────────────────────────────────────────────────

class _QuickButtons extends StatelessWidget {
  final StepsNotifier notifier;
  const _QuickButtons({required this.notifier});

  @override
  Widget build(BuildContext context) {
    final amounts = [100, 500, 1000, 2000];
    return Row(
      children: amounts.map((n) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () => notifier.addSteps(n),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.surfaceCard,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.steps.withAlpha(60)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_rounded,
                        size: 14, color: AppColors.steps),
                    Text(
                      NumberFormat('#,###').format(n),
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.steps),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _EnterManualButton extends StatelessWidget {
  final StepsNotifier notifier;
  final int currentSteps;

  const _EnterManualButton(
      {required this.notifier, required this.currentSteps});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showEntryDialog(context),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [AppColors.steps, Color(0xFFCA8A04)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.edit_rounded,
                color: AppColors.background, size: 18),
            const SizedBox(width: 8),
            Text('Registrar pasos exactos',
                style: GoogleFonts.inter(
                    color: AppColors.background,
                    fontWeight: FontWeight.w700,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }

  void _showEntryDialog(BuildContext context) {
    final ctrl =
        TextEditingController(text: currentSteps > 0 ? '$currentSteps' : '');
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Registrar pasos'),
        content: TextField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Pasos de hoy',
            suffixText: 'pasos',
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              final val = int.tryParse(ctrl.text.trim());
              if (val != null && val >= 0) {
                notifier.logToday(val);
              }
              Navigator.of(ctx).pop();
            },
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}

// ── Stat pill ─────────────────────────────────────────────────────────────────

class _StatPill extends StatelessWidget {
  final String label, value, unit;
  final Color color;

  const _StatPill(
      {required this.label,
       required this.value,
       required this.unit,
       required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withAlpha(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: GoogleFonts.inter(
                    fontSize: 11, color: AppColors.textSecondary)),
            const SizedBox(height: 4),
            Text(value,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: color)),
            Text(unit,
                style: GoogleFonts.inter(
                    fontSize: 10, color: AppColors.textSecondary)),
          ],
        ),
      ),
    );
  }
}

// ── History tile ──────────────────────────────────────────────────────────────

class _HistoryTile extends StatelessWidget {
  final StepEntry entry;
  final int goal;
  final VoidCallback onDelete;

  const _HistoryTile(
      {required this.entry, required this.goal, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final isToday = _isToday(entry.date);
    final color =
        entry.goalReached ? AppColors.success : AppColors.steps;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            Container(
              width: 40, height: 40,
              decoration: BoxDecoration(
                color: color.withAlpha(25),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                entry.goalReached
                    ? Icons.check_circle_rounded
                    : Icons.directions_walk_rounded,
                color: color,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isToday
                        ? 'Hoy'
                        : DateFormat("EEEE, d MMM", 'es').format(entry.date),
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        NumberFormat('#,###').format(entry.steps),
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: color),
                      ),
                      Text(
                        ' / ${NumberFormat('#,###').format(goal)} pasos',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: LinearProgressIndicator(
                      value: entry.progress,
                      backgroundColor: color.withAlpha(25),
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                      minHeight: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onDelete,
              child: const Icon(Icons.delete_outline_rounded,
                  size: 18, color: AppColors.textHint),
            ),
          ],
        ),
      ),
    );
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }
}
