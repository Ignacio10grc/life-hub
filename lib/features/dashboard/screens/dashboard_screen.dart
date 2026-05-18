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
import '../../../features/steps/providers/steps_provider.dart';

// ── Data models ───────────────────────────────────────────────────────────────

class _Mod {
  final String route;
  final IconData icon;
  final String label;
  final String subtitle;
  final Color color;
  final List<Color> gradient;

  const _Mod(this.route, this.icon, this.label, this.subtitle, this.color,
      this.gradient);
}

class _Category {
  final String title;
  final IconData icon;
  final _Mod left;
  final _Mod right;
  final _Mod featured;

  const _Category(this.title, this.icon, this.left, this.right, this.featured);
}

// ── Module definitions ────────────────────────────────────────────────────────

const _habits = _Mod('/habits', Icons.check_circle_rounded, 'Hábitos',
    'Tu racha diaria', AppColors.habits,
    [Color(0xFF8B5CF6), Color(0xFF6D28D9)]);

const _routines = _Mod('/routines', Icons.playlist_add_check_rounded, 'Rutinas',
    'Estructura tu día', AppColors.routines,
    [Color(0xFF6366F1), Color(0xFF4F46E5)]);

const _timer = _Mod('/timer', Icons.timer_rounded, 'Temporizador',
    'Sesiones de enfoque', AppColors.timer,
    [Color(0xFFEAB308), Color(0xFFCA8A04)]);

const _steps = _Mod('/steps', Icons.directions_walk_rounded, 'Pasos',
    'Actividad diaria', AppColors.steps,
    [Color(0xFFEAB308), Color(0xFFCA8A04)]);

const _journal = _Mod('/journal', Icons.auto_stories_rounded, 'Diario',
    'Reflexiones personales', AppColors.journal,
    [Color(0xFFEC4899), Color(0xFFDB2777)]);

const _ideas = _Mod('/ideas', Icons.lightbulb_rounded, 'Ideas',
    'Captura y organiza', AppColors.ideas,
    [Color(0xFFF59E0B), Color(0xFFD97706)]);

const _finances = _Mod('/finances', Icons.account_balance_wallet_rounded,
    'Finanzas', 'Control de gastos', AppColors.finances,
    [Color(0xFF10B981), Color(0xFF059669)]);

const _stats = _Mod('/stats', Icons.bar_chart_rounded, 'Estadísticas',
    'Analiza tu progreso', AppColors.steps,
    [Color(0xFFEAB308), Color(0xFFCA8A04)]);

const _ai = _Mod('/ai', Icons.psychology_rounded, 'LifeCoach',
    'Tu agente IA personal', AppColors.ai,
    [Color(0xFF06B6D4), Color(0xFF0891B2)]);

const _categories = [
  _Category(
    'Productividad',
    Icons.rocket_launch_rounded,
    _habits,
    _routines,
    _timer,
  ),
  _Category(
    'Bienestar',
    Icons.spa_rounded,
    _steps,
    _journal,
    _ideas,
  ),
  _Category(
    'Análisis',
    Icons.insights_rounded,
    _finances,
    _stats,
    _ai,
  ),
];

// ── Screen ────────────────────────────────────────────────────────────────────

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user          = ref.watch(authProvider).user;
    final habits        = ref.watch(habitsProvider);
    final finances      = ref.watch(financesProvider.notifier);
    final financesList  = ref.watch(financesProvider);
    final stepsNotifier = ref.watch(stepsProvider.notifier);

    final now           = DateTime.now();
    final firstName     = user?.name.split(' ').first ?? 'Usuario';
    final habitsToday   = habits.where((h) => h.isCompletedToday()).length;
    final totalHabits   = habits.length;
    final pendingHabits = habits.where((h) => !h.isCompletedToday()).toList();

    final habitsProgress  = totalHabits > 0 ? habitsToday / totalHabits : 0.0;
    final stepsProgress   = stepsNotifier.todayProgress;
    // 0% si no hay transacciones; negativo tratado como 0% (se muestra en rojo)
    final financeProgress = financesList.isEmpty
        ? 0.0
        : finances.balance >= 0
            ? (finances.totalIncome > 0
                ? (finances.balance / finances.totalIncome).clamp(0.0, 1.0)
                : 1.0)
            : 0.0;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          // ── AppBar ──────────────────────────────────────────────────────
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: AppColors.background,
            elevation: 0,
            scrolledUnderElevation: 0,
            title: Row(
              children: [
                Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.accent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(Icons.hub_rounded,
                      color: AppColors.background, size: 17),
                ),
                const SizedBox(width: 8),
                Text('LifeHub',
                    style: GoogleFonts.inter(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        letterSpacing: -0.3)),
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
                  width: 34, height: 34,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.accent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      (user?.name.isNotEmpty ?? false)
                          ? user!.name[0].toUpperCase() : 'U',
                      style: GoogleFonts.inter(color: AppColors.background,
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ── Greeting + hero ──────────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_greeting(now.hour),
                      style: GoogleFonts.inter(
                          color: AppColors.textSecondary, fontSize: 14)),
                  const SizedBox(height: 4),
                  Text(firstName,
                      style: GoogleFonts.inter(
                          color: AppColors.textPrimary,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.8)),
                  const SizedBox(height: 2),
                  Text('Tu camino hacia el crecimiento empieza hoy',
                      style: GoogleFonts.inter(
                          color: AppColors.textSecondary, fontSize: 13)),
                  const SizedBox(height: 24),
                  _HeroCard(
                    habitsProgress: habitsProgress,
                    stepsProgress: stepsProgress,
                    financeProgress: financeProgress,
                    habitsToday: habitsToday,
                    totalHabits: totalHabits,
                    todaySteps: stepsNotifier.todaySteps,
                    stepsGoal: stepsNotifier.dailyGoal,
                    balance: finances.balance,
                  ),
                  const SizedBox(height: 28),

                  // ── Quick actions header ───────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Para ti hoy',
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary)),
                      Text(DateFormat("d MMM", 'es').format(now),
                          style: GoogleFonts.inter(
                              color: AppColors.textSecondary, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),

          // ── Horizontal quick-action cards ────────────────────────────────
          SliverToBoxAdapter(
            child: SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  if (pendingHabits.isEmpty)
                    _QuickCard(
                      icon: Icons.celebration_rounded,
                      title: '¡Todo completado!',
                      subtitle: 'Todos los hábitos del día',
                      color: AppColors.habits,
                      label: 'Ver logros',
                      onTap: () => context.go('/habits'),
                    )
                  else
                    ...pendingHabits.take(2).map((h) => _QuickCard(
                          icon: Icons.check_circle_outline_rounded,
                          title: h.name,
                          subtitle: h.reminderTime != null
                              ? '${h.reminderTime} · ${h.timeOfDay}'
                              : 'Hábito pendiente',
                          color: AppColors.habits,
                          label: 'Iniciar',
                          onTap: () => context.go('/habits'),
                        )),
                  _QuickCard(
                    icon: Icons.psychology_rounded,
                    title: 'LifeCoach',
                    subtitle: 'Tu agente personal',
                    color: AppColors.ai,
                    label: 'Abrir',
                    onTap: () => context.go('/ai'),
                  ),
                  if (stepsNotifier.todaySteps == 0)
                    _QuickCard(
                      icon: Icons.directions_walk_rounded,
                      title: 'Registrar pasos',
                      subtitle: 'Sin actividad hoy',
                      color: AppColors.steps,
                      label: 'Añadir',
                      onTap: () => context.go('/steps'),
                    ),
                  _QuickCard(
                    icon: Icons.add_card_rounded,
                    title: 'Nuevo gasto',
                    subtitle: 'Mantén balance al día',
                    color: AppColors.finances,
                    label: 'Añadir',
                    onTap: () => context.go('/finances'),
                  ),
                ],
              ),
            ),
          ),

          // ── Categorized modules ──────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Módulos',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary)),
                  const SizedBox(height: 16),
                  ..._categories.map((cat) => _CategorySection(cat)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _greeting(int hour) {
    if (hour < 12) return 'Buenos días';
    if (hour < 19) return 'Buenas tardes';
    return 'Buenas noches';
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
            child: const Text('Salir',
                style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
  }
}

// ── Hero card ─────────────────────────────────────────────────────────────────

class _HeroCard extends StatelessWidget {
  final double habitsProgress, stepsProgress, financeProgress;
  final int habitsToday, totalHabits;
  final int todaySteps, stepsGoal;
  final double balance;

  const _HeroCard({
    required this.habitsProgress,
    required this.stepsProgress,
    required this.financeProgress,
    required this.habitsToday,
    required this.totalHabits,
    required this.todaySteps,
    required this.stepsGoal,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    final overall =
        ((habitsProgress + stepsProgress + financeProgress) / 3 * 100).round();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.secondary, AppColors.accent],
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
          children: [
            SizedBox(
              width: 136, height: 136,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(136, 136),
                    painter: _RingsPainter(
                      habitsProgress: habitsProgress,
                      stepsProgress: stepsProgress,
                      financeProgress: financeProgress,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('$overall%',
                          style: GoogleFonts.inter(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: AppColors.textPrimary,
                              letterSpacing: -1)),
                      Text('hoy',
                          style: GoogleFonts.inter(
                              fontSize: 11,
                              color: AppColors.textSecondary)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mi Progreso',
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary)),
                  const SizedBox(height: 3),
                  Text('Progreso global: $overall%',
                      style: GoogleFonts.inter(
                          fontSize: 12, color: AppColors.textSecondary)),
                  const SizedBox(height: 16),
                  _LegendRow(
                    color: AppColors.habits,
                    label: 'Hábitos',
                    detail: '$habitsToday/$totalHabits',
                    progress: habitsProgress,
                  ),
                  const SizedBox(height: 10),
                  _LegendRow(
                    color: AppColors.steps,
                    label: 'Pasos',
                    detail: todaySteps > 0
                        ? '${(todaySteps / 1000).toStringAsFixed(1)}k'
                        : '--',
                    progress: stepsProgress,
                  ),
                  const SizedBox(height: 10),
                  _LegendRow(
                    color: balance < 0 ? AppColors.error : AppColors.finances,
                    label: 'Finanzas',
                    detail: balance < 0
                        ? '-\$${balance.abs().toStringAsFixed(0)}'
                        : '\$${balance.toStringAsFixed(0)}',
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

class _LegendRow extends StatelessWidget {
  final Color color;
  final String label, detail;
  final double progress;

  const _LegendRow(
      {required this.color, required this.label, required this.detail,
       required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: 7, height: 7,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
            const SizedBox(width: 6),
            Text(label,
                style: GoogleFonts.inter(
                    fontSize: 11, color: AppColors.textSecondary)),
            const Spacer(),
            Text('$detail (${(progress * 100).round()}%)',
                style: GoogleFonts.inter(
                    fontSize: 10, color: color, fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress.clamp(0.0, 1.0),
            backgroundColor: color.withAlpha(28),
            valueColor: AlwaysStoppedAnimation<Color>(color),
            minHeight: 3,
          ),
        ),
      ],
    );
  }
}

class _RingsPainter extends CustomPainter {
  final double habitsProgress, stepsProgress, financeProgress;

  const _RingsPainter(
      {required this.habitsProgress,
       required this.stepsProgress,
       required this.financeProgress});

  @override
  void paint(Canvas canvas, Size size) {
    final c = Offset(size.width / 2, size.height / 2);
    _ring(canvas, c, size.width / 2 - 8,  habitsProgress,  AppColors.habits);
    _ring(canvas, c, size.width / 2 - 24, stepsProgress,   AppColors.steps);
    _ring(canvas, c, size.width / 2 - 40, financeProgress, AppColors.finances);
  }

  void _ring(Canvas canvas, Offset c, double r, double p, Color col) {
    canvas.drawCircle(c, r,
        Paint()
          ..color = col.withAlpha(28)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 11
          ..strokeCap = StrokeCap.round);
    if (p > 0) {
      canvas.drawArc(
          Rect.fromCircle(center: c, radius: r),
          -pi / 2, 2 * pi * p.clamp(0.0, 1.0), false,
          Paint()
            ..color = col
            ..style = PaintingStyle.stroke
            ..strokeWidth = 11
            ..strokeCap = StrokeCap.round);
    }
  }

  @override
  bool shouldRepaint(_RingsPainter o) =>
      habitsProgress != o.habitsProgress ||
      stepsProgress != o.stepsProgress ||
      financeProgress != o.financeProgress;
}

// ── Quick-action card (horizontal scroll) ─────────────────────────────────────

class _QuickCard extends StatelessWidget {
  final IconData icon;
  final String title, subtitle, label;
  final Color color;
  final VoidCallback onTap;

  const _QuickCard(
      {required this.icon, required this.title, required this.subtitle,
       required this.color, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withAlpha(35), AppColors.surfaceCard],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: color.withAlpha(55)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 34, height: 34,
              decoration: BoxDecoration(
                color: color.withAlpha(35),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: color, size: 18),
            ),
            const SizedBox(height: 8),
            Text(title,
                style: GoogleFonts.inter(
                    fontSize: 12, fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary),
                maxLines: 2, overflow: TextOverflow.ellipsis),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: color.withAlpha(28),
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: color.withAlpha(90)),
              ),
              child: Text(label,
                  style: GoogleFonts.inter(
                      fontSize: 10, fontWeight: FontWeight.w600, color: color)),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Category section ──────────────────────────────────────────────────────────

class _CategorySection extends StatelessWidget {
  final _Category cat;
  // ignore: unused_element
  const _CategorySection(this.cat, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Row(
            children: [
              Icon(cat.icon, size: 13, color: AppColors.textSecondary),
              const SizedBox(width: 6),
              Text(cat.title.toUpperCase(),
                  style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textSecondary,
                      letterSpacing: 0.8)),
            ],
          ),
          const SizedBox(height: 10),
          // Two compact cards side by side
          Row(
            children: [
              Expanded(child: _ModCard(cat.left)),
              const SizedBox(width: 10),
              Expanded(child: _ModCard(cat.right)),
            ],
          ),
          const SizedBox(height: 10),
          // Featured wide card
          _ModCardWide(cat.featured),
        ],
      ),
    );
  }
}

// ── Compact module card (half width) ─────────────────────────────────────────

class _ModCard extends StatelessWidget {
  final _Mod mod;
  // ignore: unused_element
  const _ModCard(this.mod, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(mod.route),
      child: Container(
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: mod.color.withAlpha(50)),
        ),
        child: Row(
          children: [
            Container(
              width: 38, height: 38,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: mod.gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Icon(mod.icon, color: Colors.white, size: 19),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(mod.label,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 2),
                  Text(mod.subtitle,
                      style: GoogleFonts.inter(
                          fontSize: 10, color: AppColors.textSecondary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Featured wide module card (full width) ────────────────────────────────────

class _ModCardWide extends StatelessWidget {
  final _Mod mod;
  // ignore: unused_element
  const _ModCardWide(this.mod, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(mod.route),
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [mod.color.withAlpha(40), AppColors.surfaceCard],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: mod.color.withAlpha(70)),
        ),
        child: Row(
          children: [
            Container(
              width: 38, height: 38,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: mod.gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [
                  BoxShadow(
                      color: mod.color.withAlpha(50),
                      blurRadius: 8,
                      offset: const Offset(0, 3)),
                ],
              ),
              child: Icon(mod.icon, color: Colors.white, size: 19),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(mod.label,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary)),
                  Text(mod.subtitle,
                      style: GoogleFonts.inter(
                          fontSize: 11, color: AppColors.textSecondary)),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded,
                size: 13, color: mod.color.withAlpha(180)),
          ],
        ),
      ),
    );
  }
}
