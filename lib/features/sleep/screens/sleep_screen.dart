import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/sleep_provider.dart';

class SleepScreen extends ConsumerWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = ref.watch(sleepProvider);
    final notifier = ref.read(sleepProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sueño'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_rounded),
            onPressed: () => _showAddDialog(context, ref),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _SleepSummary(notifier: notifier),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text('Historial',
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
          entries.isEmpty
              ? SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(60),
                    child: Column(
                      children: [
                        const Text('😴', style: TextStyle(fontSize: 56)),
                        const SizedBox(height: 16),
                        Text('Sin registros de sueño',
                            style: GoogleFonts.inter(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                        const SizedBox(height: 8),
                        Text('Registra tu primer noche',
                            style: GoogleFonts.inter(
                                color: AppColors.textSecondary, fontSize: 14)),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () => _showAddDialog(context, ref),
                          icon: const Icon(Icons.add_rounded, size: 18),
                          label: const Text('Registrar sueño'),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12)),
                        ),
                      ],
                    ),
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      final entry = entries[i];
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: _SleepTile(
                          entry: entry,
                          onDelete: () => notifier.remove(entry.id),
                        ),
                      );
                    },
                    childCount: entries.length,
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context, ref),
        backgroundColor: AppColors.sleep,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    DateTime bedtime = DateTime.now().subtract(const Duration(hours: 8));
    DateTime wakeTime = DateTime.now();
    int quality = 3;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.surfaceCard,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => Padding(
          padding: EdgeInsets.fromLTRB(
              24, 24, 24, MediaQuery.of(ctx).viewInsets.bottom + 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registrar sueño',
                  style: GoogleFonts.inter(
                      fontSize: 18, fontWeight: FontWeight.w700)),
              const SizedBox(height: 20),
              _TimeSelector(
                label: 'Hora de dormir',
                time: bedtime,
                onPick: () async {
                  final t = await showTimePicker(
                      context: ctx,
                      initialTime: TimeOfDay.fromDateTime(bedtime));
                  if (t != null) {
                    setState(() => bedtime = DateTime(
                        bedtime.year, bedtime.month, bedtime.day, t.hour, t.minute));
                  }
                },
              ),
              const SizedBox(height: 12),
              _TimeSelector(
                label: 'Hora de despertar',
                time: wakeTime,
                onPick: () async {
                  final t = await showTimePicker(
                      context: ctx,
                      initialTime: TimeOfDay.fromDateTime(wakeTime));
                  if (t != null) {
                    setState(() => wakeTime = DateTime(
                        wakeTime.year, wakeTime.month, wakeTime.day, t.hour, t.minute));
                  }
                },
              ),
              const SizedBox(height: 20),
              Text('Calidad del sueño',
                  style: GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 13)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  5,
                  (i) => GestureDetector(
                    onTap: () => setState(() => quality = i + 1),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: quality == i + 1
                            ? AppColors.sleep.withOpacity(0.2)
                            : AppColors.surface,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: quality == i + 1
                              ? AppColors.sleep
                              : AppColors.border,
                        ),
                      ),
                      child: Center(
                        child: Text(['😔', '😕', '😐', '🙂', '😄'][i],
                            style: const TextStyle(fontSize: 22)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final effective = wakeTime.isBefore(bedtime)
                        ? wakeTime.add(const Duration(days: 1))
                        : wakeTime;
                    await ref.read(sleepProvider.notifier).add(
                          bedtime: bedtime,
                          wakeTime: effective,
                          quality: quality,
                        );
                    if (ctx.mounted) Navigator.of(ctx).pop();
                  },
                  child: const Text('Guardar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimeSelector extends StatelessWidget {
  final String label;
  final DateTime time;
  final VoidCallback onPick;

  const _TimeSelector({
    required this.label,
    required this.time,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPick,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            const Icon(Icons.access_time_rounded,
                size: 20, color: AppColors.sleep),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: GoogleFonts.inter(
                        color: AppColors.textSecondary, fontSize: 12)),
                Text(DateFormat('HH:mm').format(time),
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700, fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SleepSummary extends StatelessWidget {
  final SleepNotifier notifier;
  const _SleepSummary({required this.notifier});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.sleep.withOpacity(0.8),
            AppColors.primary.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Promedio de sueño',
                    style: GoogleFonts.inter(
                        color: Colors.white70, fontSize: 13)),
                const SizedBox(height: 4),
                Text(
                  '${notifier.averageHours.toStringAsFixed(1)}h',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 60,
            color: Colors.white24,
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Calidad media',
                    style: GoogleFonts.inter(
                        color: Colors.white70, fontSize: 13)),
                const SizedBox(height: 4),
                Text(
                  notifier.averageQuality > 0
                      ? '${notifier.averageQuality.toStringAsFixed(1)} / 5'
                      : '--',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SleepTile extends StatelessWidget {
  final dynamic entry;
  final VoidCallback onDelete;

  const _SleepTile({required this.entry, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.sleep.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.bedtime_rounded,
                color: AppColors.sleep, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${DateFormat('HH:mm').format(entry.bedtime)} → ${DateFormat('HH:mm').format(entry.wakeTime)}',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  '${entry.durationLabel} · ${DateFormat('d MMM', 'es').format(entry.bedtime)}',
                  style: GoogleFonts.inter(
                      color: AppColors.textSecondary, fontSize: 12),
                ),
              ],
            ),
          ),
          Text(['😔', '😕', '😐', '🙂', '😄'][(entry.quality as int).clamp(1, 5) - 1],
              style: const TextStyle(fontSize: 22)),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: onDelete,
            child: const Icon(Icons.close_rounded,
                size: 18, color: AppColors.textHint),
          ),
        ],
      ),
    );
  }
}
