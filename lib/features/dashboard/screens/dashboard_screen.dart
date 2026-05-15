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
import '../../../features/timer/providers/timer_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final habits = ref.watch(habitsProvider);
    final finances = ref.watch(financesProvider.notifier);
    final sleepEntries = ref.watch(sleepProvider);

    final now = DateTime.now();
    final greeting = _greeting(now.hour);
    final habitsToday = habits.where((h) => h.isCompletedToday()).length;
    final lastSleep = sleepEntries.isNotEmpty ? sleepEntries.first : null;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 0,
            pinned: true,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(greeting, style: GoogleFonts.inter(fontSize: 13, color: AppColors.textSecondary)),
                Text(user?.name.split(' ').first ?? 'Usuario',
                    style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w700)),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout_rounded, size: 22),
                onPressed: () => _confirmLogout(context, ref),
              ),
              const SizedBox(width: 8),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat("EEEE, d 'de' MMMM", 'es').format(now),
                    style: GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 13),
                  ),
                  const SizedBox(height: 20),
                  _SummaryRow(
                    balance: finances.balance,
                    habitsToday: habitsToday,
                    totalHabits: habits.length,
                    sleepHours: lastSleep?.duration.inMinutes != null
                        ? lastSleep!.duration.inMinutes / 60.0
                        : null,
                  ),
                  const SizedBox(height: 28),
                  Text('Módulos',
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 16),
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
          TextButton(onPressed: () => Navigator.of(ctx).pop(), child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              ctx.pop();
              ref.read(authProvider.notifier).logout();
            },
            child: const Text('Salir', style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final double balance;
  final int habitsToday;
  final int totalHabits;
  final double? sleepHours;

  const _SummaryRow({
    required this.balance,
    required this.habitsToday,
    required this.totalHabits,
    required this.sleepHours,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            label: 'Balance',
            value: '\$${balance.toStringAsFixed(0)}',
            icon: Icons.account_balance_wallet_rounded,
            color: AppColors.finances,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _StatCard(
            label: 'Hábitos hoy',
            value: '$habitsToday/$totalHabits',
            icon: Icons.check_circle_rounded,
            color: AppColors.habits,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _StatCard(
            label: 'Sueño',
            value: sleepHours != null
                ? '${sleepHours!.toStringAsFixed(1)}h'
                : '--',
            icon: Icons.bedtime_rounded,
            color: AppColors.sleep,
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(height: 8),
          Text(value,
              style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary)),
          Text(label,
              style: GoogleFonts.inter(
                  fontSize: 11, color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}

class _ModulesGrid extends StatelessWidget {
  final _modules = const [
    _ModuleItem('/finances', '💰', 'Finanzas', AppColors.finances),
    _ModuleItem('/habits', '✅', 'Hábitos', AppColors.habits),
    _ModuleItem('/routines', '🌅', 'Rutinas', AppColors.routines),
    _ModuleItem('/timer', '⏱️', 'Temporizador', AppColors.timer),
    _ModuleItem('/sleep', '😴', 'Sueño', AppColors.sleep),
    _ModuleItem('/journal', '📓', 'Diario', AppColors.journal),
    _ModuleItem('/ideas', '💡', 'Ideas', AppColors.ideas),
    _ModuleItem('/ai', '🤖', 'Asistente IA', AppColors.ai),
    _ModuleItem('/stats', '📊', 'Estadísticas', AppColors.secondary),
  ];

  const _ModulesGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemCount: _modules.length,
      itemBuilder: (context, i) {
        final m = _modules[i];
        return GestureDetector(
          onTap: () => context.go(m.route),
          child: Container(
            decoration: BoxDecoration(
              color: m.color.withOpacity(0.08),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: m.color.withOpacity(0.2)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(m.emoji, style: const TextStyle(fontSize: 28)),
                const SizedBox(height: 6),
                Text(m.label,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textSecondary)),
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
