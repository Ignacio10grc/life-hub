import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../../../features/auth/providers/auth_provider.dart';
import '../../../features/finances/providers/finances_provider.dart';
import '../../../features/habits/providers/habits_provider.dart';
import '../../../features/sleep/providers/sleep_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final habits = ref.watch(habitsProvider);
    final finances = ref.watch(financesProvider.notifier);
    final sleepEntries = ref.watch(sleepProvider);

    final now = DateTime.now();
    final firstName = user?.name.split(' ').first ?? 'Usuario';
    final habitsToday = habits.where((h) => h.isCompletedToday()).length;
    final totalHabits = habits.length;
    final lastSleep = sleepEntries.isNotEmpty ? sleepEntries.first : null;
    final pendingHabits = habits.where((h) => !h.isCompletedToday()).toList();

    final habitsProgress = totalHabits > 0 ? habitsToday / totalHabits : 0.0;
    final sleepProgress = lastSleep != null
        ? (lastSleep.duration.inMinutes / 60.0 / 8.0).clamp(0.0, 1.0)
        : 0.0;
    final financeProgress = finances.balance > 0
        ? 1.0
        : (finances.balance > -500 ? 0.5 : 0.2);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          // ── AppBar ──────────────────────────────────────────────────────────
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: AppColors.background,
            elevation: 0,
            scrolledUnderElevation: 0,
            title: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(Icons.hub_rounded,
                      color: Colors.white, size: 17),
                ),
                const SizedBox(width: 8),
                Text(
                  'LifeHub',
                  style: GoogleFonts.inter(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search_rounded,
                    color: AppColors.textSecondary, size: 22),
                onPressed: () {},
              ),
              GestureDetector(
                onTap: () => _confirmLogout(context, ref),
                child: Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 34,
                  height: 34,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      (user?.name.isNotEmpty ?? false)
                          ? user!.name[0].toUpperCase()
                          : 'U',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ── Header greeting ─────────────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _greeting(now.hour),
                    style: GoogleFonts.inter(
                        color: AppColors.textSecondary, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    firstName,
                    style: GoogleFonts.inter(
                      color: AppColors.textPrimary,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.8,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Tu camino hacia el crecimiento empieza hoy',
                    style: GoogleFonts.inter(
                        color: AppColors.textSecondary, fontSize: 13),
                  ),
                  const SizedBox(height: 24),

                  // ── Hero card ──────────────────────────────────────────────
                  _HeroProgressCard(
                    habitsProgress: habitsProgress,
                    sleepProgress: sleepProgress,
                    financeProgress: financeProgress,
                    habitsToday: habitsToday,
                    totalHabits: totalHabits,
                    sleepHours: lastSleep != null
                        ? lastSleep.duration.inMinutes / 60.0
                        : null,
                    balance: finances.balance,
                  ),
                  const SizedBox(height: 28),

                  // ── Section header ─────────────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recomendaciones Diarias',
                        style: GoogleFonts.inter(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        DateFormat("d MMM", 'es').format(now),
                        style: GoogleFonts.inter(
                            color: AppColors.textSecondary, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
          ),

          // ── Horizontal action cards ─────────────────────────────────────────
          SliverToBoxAdapter(
            child: SizedBox(
              height: 152,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  if (pendingHabits.isEmpty)
                    _ActionCard(
                      emoji: '🎉',
                      title: '¡Todo completado!',
                      subtitle: 'Todos los hábitos del día',
                      color: AppColors.habits,
                      buttonLabel: 'Ver logros',
                      onTap: () => context.go('/habits'),
                    )
                  else
                    ...pendingHabits.take(2).map((h) => _ActionCard(
                          emoji: h.emoji,
                          title: h.name,
                          subtitle: h.reminderTime != null
                              ? '${h.reminderTime} · ${h.timeOfDay}'
                              : 'Hábito pendiente',
                          color: AppColors.habits,
                          buttonLabel: 'Iniciar',
                          onTap: () => context.go('/habits'),
                        )),
                  _ActionCard(
                    emoji: '🤖',
                    title: 'LifeCoach IA',
                    subtitle: 'Tu agente personal',
                    color: AppColors.ai,
                    buttonLabel: 'Chatear',
                    onTap: () => context.go('/ai'),
                  ),
                  _ActionCard(
                    emoji: '💰',
                    title: 'Registrar gasto',
                    subtitle: 'Balance al día',
                    color: AppColors.finances,
                    buttonLabel: 'Añadir',
                    onTap: () => context.go('/finances'),
                  ),
                  if (lastSleep == null)
                    _ActionCard(
                      emoji: '😴',
                      title: 'Registrar sueño',
                      subtitle: 'Aún sin registro',
                      color: AppColors.sleep,
                      buttonLabel: 'Registrar',
                      onTap: () => context.go('/sleep'),
                    ),
                  _ActionCard(
                    emoji: '📊',
                    title: 'Ver estadísticas',
                    subtitle: 'Analiza tu progreso',
                    color: AppColors.steps,
                    buttonLabel: 'Explorar',
                    onTap: () => context.go('/stats'),
                  ),
                ],
              ),
            ),
          ),

          // ── Modules section ─────────────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Módulos de Crecimiento',
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 14),
                  _ModulesGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _greeting(int hour) {
    if (hour < 12) return 'Buenos días ☀️';
    if (hour < 19) return 'Buenas tardes 🌤️';
    return 'Buenas noches 🌙';
  }

  void _confirmLogout(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Cerrar sesión'),
        content: const Text('¿Seguro que quieres salir?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              ref.read(authProvider.notifier).logout();
            },
            child:
                const Text('Salir', style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
  }
}

// ── Hero progress card ────────────────────────────────────────────────────────

class _HeroProgressCard extends StatelessWidget {
  final double habitsProgress;
  final double sleepProgress;
  final double financeProgress;
  final int habitsToday;
  final int totalHabits;
  final double? sleepHours;
  final double balance;

  const _HeroProgressCard({
    required this.habitsProgress,
    required this.sleepProgress,
    required this.financeProgress,
    required this.habitsToday,
    required this.totalHabits,
    required this.sleepHours,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    final overall =
        ((habitsProgress + sleepProgress + financeProgress) / 3 * 100).round();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [AppColors.habits, AppColors.sleep, AppColors.finances],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(1.5),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ── Concentric rings ─────────────────────────────────────────────
            SizedBox(
              width: 144,
              height: 144,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(144, 144),
                    painter: _RingsPainter(
                      habitsProgress: habitsProgress,
                      sleepProgress: sleepProgress,
                      financeProgress: financeProgress,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$overall%',
                        style: GoogleFonts.inter(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: AppColors.textPrimary,
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        'hoy',
                        style: GoogleFonts.inter(
                            fontSize: 11, color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),

            // ── Legend ───────────────────────────────────────────────────────
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mi Progreso',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Progreso: $overall%',
                    style: GoogleFonts.inter(
                        fontSize: 12, color: AppColors.textSecondary),
                  ),
                  const SizedBox(height: 18),
                  _LegendItem(
                    color: AppColors.habits,
                    label: 'Hábitos',
                    detail: '$habitsToday/$totalHabits',
                    progress: habitsProgress,
                  ),
                  const SizedBox(height: 12),
                  _LegendItem(
                    color: AppColors.sleep,
                    label: 'Sueño',
                    detail: sleepHours != null
                        ? '${sleepHours!.toStringAsFixed(1)}h'
                        : '--',
                    progress: sleepProgress,
                  ),
                  const SizedBox(height: 12),
                  _LegendItem(
                    color: AppColors.finances,
                    label: 'Finanzas',
                    detail: balance >= 0 ? 'Positivo' : 'Negativo',
                    progress: financeProgress,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String detail;
  final double progress;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.detail,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 7),
            Text(label,
                style: GoogleFonts.inter(
                    fontSize: 12, color: AppColors.textSecondary)),
            const Spacer(),
            Text(
              '$detail (${(progress * 100).round()}%)',
              style: GoogleFonts.inter(
                  fontSize: 11,
                  color: color,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress.clamp(0.0, 1.0),
            backgroundColor: color.withAlpha(30),
            valueColor: AlwaysStoppedAnimation<Color>(color),
            minHeight: 3,
          ),
        ),
      ],
    );
  }
}

// ── Rings painter ─────────────────────────────────────────────────────────────

class _RingsPainter extends CustomPainter {
  final double habitsProgress;
  final double sleepProgress;
  final double financeProgress;

  const _RingsPainter({
    required this.habitsProgress,
    required this.sleepProgress,
    required this.financeProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    _drawRing(canvas, center, size.width / 2 - 8, habitsProgress,
        AppColors.habits);
    _drawRing(canvas, center, size.width / 2 - 26, sleepProgress,
        AppColors.sleep);
    _drawRing(canvas, center, size.width / 2 - 44, financeProgress,
        AppColors.finances);
  }

  void _drawRing(Canvas canvas, Offset center, double radius, double progress,
      Color color) {
    final trackPaint = Paint()
      ..color = color.withAlpha(28)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 13
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(center, radius, trackPaint);

    if (progress > 0) {
      final progressPaint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 13
        ..strokeCap = StrokeCap.round;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -pi / 2,
        2 * pi * progress.clamp(0.0, 1.0),
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_RingsPainter old) =>
      habitsProgress != old.habitsProgress ||
      sleepProgress != old.sleepProgress ||
      financeProgress != old.financeProgress;
}

// ── Action card ───────────────────────────────────────────────────────────────

class _ActionCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final Color color;
  final String buttonLabel;
  final VoidCallback onTap;

  const _ActionCard({
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 158,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withAlpha(50)),
          boxShadow: [
            BoxShadow(
              color: color.withAlpha(18),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 26)),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: GoogleFonts.inter(
                  fontSize: 11, color: AppColors.textSecondary),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: color.withAlpha(28),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: color.withAlpha(80)),
              ),
              child: Text(
                buttonLabel,
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Modules grid ──────────────────────────────────────────────────────────────

class _ModulesGrid extends StatelessWidget {
  final _modules = const [
    _ModuleItem('/habits', '✅', 'Hábitos', AppColors.habits),
    _ModuleItem('/finances', '💰', 'Finanzas', AppColors.finances),
    _ModuleItem('/sleep', '😴', 'Sueño', AppColors.sleep),
    _ModuleItem('/journal', '📓', 'Diario', AppColors.journal),
    _ModuleItem('/routines', '🌅', 'Rutinas', AppColors.routines),
    _ModuleItem('/ideas', '💡', 'Ideas', AppColors.ideas),
    _ModuleItem('/timer', '⏱️', 'Temporizador', AppColors.timer),
    _ModuleItem('/ai', '🤖', 'LifeCoach IA', AppColors.ai),
    _ModuleItem('/stats', '📊', 'Estadísticas', AppColors.steps),
  ];

  const _ModulesGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.1,
      ),
      itemCount: _modules.length,
      itemBuilder: (context, i) {
        final m = _modules[i];
        return GestureDetector(
          onTap: () => context.go(m.route),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.surfaceCard,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: m.color.withAlpha(45)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: m.color.withAlpha(22),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Center(
                    child: Text(m.emoji,
                        style: const TextStyle(fontSize: 22)),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  m.label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ModuleItem {
  final String route;
  final String emoji;
  final String label;
  final Color color;

  const _ModuleItem(this.route, this.emoji, this.label, this.color);
}
