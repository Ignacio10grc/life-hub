import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../../finances/models/transaction.dart';
import '../../finances/providers/finances_provider.dart';
import '../../habits/providers/habits_provider.dart';
import '../../sleep/providers/sleep_provider.dart';

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitsProvider);
    final transactions = ref.watch(financesProvider);
    final sleepEntries = ref.watch(sleepProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Estadísticas')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _SectionTitle(title: '✅ Hábitos — últimos 7 días'),
          const SizedBox(height: 16),
          _HabitsWeeklyChart(habits: habits),
          const SizedBox(height: 32),
          _SectionTitle(title: '💰 Gastos por categoría (este mes)'),
          const SizedBox(height: 16),
          _FinanceCategoryChart(transactions: transactions),
          const SizedBox(height: 32),
          _SectionTitle(title: '😴 Sueño — últimas noches'),
          const SizedBox(height: 16),
          _SleepChart(entries: sleepEntries),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700));
  }
}

// ─── Hábitos ────────────────────────────────────────────────────────────────

class _HabitsWeeklyChart extends StatelessWidget {
  final List habits;
  const _HabitsWeeklyChart({required this.habits});

  @override
  Widget build(BuildContext context) {
    if (habits.isEmpty) {
      return _EmptyChart(message: 'Crea hábitos para ver tu progreso');
    }

    final today = DateTime.now();
    final days = List.generate(7, (i) {
      final d = today.subtract(Duration(days: 6 - i));
      final key =
          '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
      final completed = habits
          .where((h) => (h.completedDates as List).contains(key))
          .length
          .toDouble();
      return MapEntry(d, completed);
    });

    return Container(
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: BarChart(
        BarChartData(
          maxY: habits.length.toDouble() + 1,
          barGroups: days.asMap().entries.map((e) {
            final isToday = e.key == 6;
            return BarChartGroupData(
              x: e.key,
              barRods: [
                BarChartRodData(
                  toY: e.value.value,
                  color: isToday ? AppColors.habits : AppColors.habits.withOpacity(0.5),
                  width: 18,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            );
          }).toList(),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (v, _) {
                  final d = today.subtract(Duration(days: 6 - v.toInt()));
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      DateFormat('E', 'es').format(d).substring(0, 2),
                      style: GoogleFonts.inter(
                          fontSize: 11, color: AppColors.textSecondary),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (_) =>
                FlLine(color: AppColors.border, strokeWidth: 1),
          ),
        ),
      ),
    );
  }
}

// ─── Finanzas ────────────────────────────────────────────────────────────────

class _FinanceCategoryChart extends StatelessWidget {
  final List<Transaction> transactions;
  const _FinanceCategoryChart({required this.transactions});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final monthExpenses = transactions.where((t) =>
        t.type == TransactionType.expense &&
        t.date.year == now.year &&
        t.date.month == now.month);

    if (monthExpenses.isEmpty) {
      return _EmptyChart(message: 'Sin gastos este mes');
    }

    final byCategory = <String, double>{};
    for (final t in monthExpenses) {
      byCategory[t.category] = (byCategory[t.category] ?? 0) + t.amount;
    }

    final sorted = byCategory.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final top = sorted.take(6).toList();
    final total = top.fold(0.0, (s, e) => s + e.value);

    final colors = [
      AppColors.finances,
      AppColors.primary,
      AppColors.ai,
      AppColors.warning,
      AppColors.journal,
      AppColors.ideas,
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: Row(
              children: [
                Expanded(
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 40,
                      sections: top.asMap().entries.map((e) {
                        final pct = (e.value.value / total * 100);
                        return PieChartSectionData(
                          value: e.value.value,
                          color: colors[e.key % colors.length],
                          title: '${pct.toStringAsFixed(0)}%',
                          titleStyle: GoogleFonts.inter(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          radius: 60,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: top.asMap().entries.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: colors[e.key % colors.length],
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '${Transaction.iconFor(e.value.key)} ${e.value.key}',
                            style: GoogleFonts.inter(
                                fontSize: 12, color: AppColors.textSecondary),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total este mes',
                  style: GoogleFonts.inter(
                      color: AppColors.textSecondary, fontSize: 13)),
              Text(
                '\$${NumberFormat('#,##0.00').format(total)}',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: AppColors.error,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ─── Sueño ───────────────────────────────────────────────────────────────────

class _SleepChart extends StatelessWidget {
  final List entries;
  const _SleepChart({required this.entries});

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) {
      return _EmptyChart(message: 'Registra tu sueño para ver tendencias');
    }

    final recent = entries.take(7).toList().reversed.toList();

    return Container(
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 12,
          lineBarsData: [
            LineChartBarData(
              spots: recent.asMap().entries.map((e) {
                final hours = e.value.duration.inMinutes / 60.0;
                return FlSpot(e.key.toDouble(), hours);
              }).toList(),
              isCurved: true,
              color: AppColors.sleep,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: true,
                getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                  radius: 4,
                  color: AppColors.sleep,
                  strokeWidth: 2,
                  strokeColor: AppColors.surfaceCard,
                ),
              ),
              belowBarData: BarAreaData(
                show: true,
                color: AppColors.sleep.withOpacity(0.1),
              ),
            ),
          ],
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 4,
                getTitlesWidget: (v, _) => Text(
                  '${v.toInt()}h',
                  style: GoogleFonts.inter(
                      fontSize: 10, color: AppColors.textSecondary),
                ),
              ),
            ),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (v, _) {
                  final i = v.toInt();
                  if (i < 0 || i >= recent.length) return const SizedBox();
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      DateFormat('d/M').format(recent[i].bedtime),
                      style: GoogleFonts.inter(
                          fontSize: 10, color: AppColors.textSecondary),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (_) =>
                FlLine(color: AppColors.border, strokeWidth: 1),
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (spots) => spots
                  .map((s) => LineTooltipItem(
                        '${s.y.toStringAsFixed(1)}h',
                        GoogleFonts.inter(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyChart extends StatelessWidget {
  final String message;
  const _EmptyChart({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Center(
        child: Text(message,
            style:
                GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 14)),
      ),
    );
  }
}
