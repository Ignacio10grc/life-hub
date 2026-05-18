import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';
import '../models/habit.dart';
import '../providers/habits_provider.dart';

class HabitsScreen extends ConsumerWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitsProvider);
    final completed = habits.where((h) => h.isCompletedToday()).length;

    // Agrupar por momento del día
    final groups = <String, List<Habit>>{};
    for (final h in habits) {
      final key = h.timeOfDay.isEmpty ? 'Sin hora' : h.timeOfDay;
      groups.putIfAbsent(key, () => []).add(h);
    }
    final order = ['Mañana', 'Tarde', 'Noche', 'Madrugada', 'Sin hora'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hábitos'),
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
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProgressHeader(completed: completed, total: habits.length),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          if (habits.isEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  children: [
                    const Text('✅', style: TextStyle(fontSize: 56)),
                    const SizedBox(height: 16),
                    Text('Sin hábitos',
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    Text('Crea tu primer hábito diario',
                        style: GoogleFonts.inter(
                            color: AppColors.textSecondary, fontSize: 14)),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () => _showAddDialog(context, ref),
                      icon: const Icon(Icons.add_rounded, size: 18),
                      label: const Text('Crear hábito'),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12)),
                    ),
                  ],
                ),
              ),
            )
          else
            for (final groupKey in order)
              if (groups.containsKey(groupKey)) ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 10),
                    child: Row(
                      children: [
                        if (groupKey != 'Sin hora')
                          Text(_groupEmoji(groupKey),
                              style: const TextStyle(fontSize: 14)),
                        const SizedBox(width: 6),
                        Text(
                          groupKey,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textSecondary,
                              letterSpacing: 0.5),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      final h = groups[groupKey]![i];
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                        child: _HabitTile(
                          habit: h,
                          onToggle: () =>
                              ref.read(habitsProvider.notifier).toggle(h.id),
                          onDelete: () =>
                              ref.read(habitsProvider.notifier).remove(h.id),
                          onEdit: () => _showEditDialog(context, ref, h),
                        ),
                      );
                    },
                    childCount: groups[groupKey]!.length,
                  ),
                ),
              ],
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context, ref),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  String _groupEmoji(String group) {
    switch (group) {
      case 'Mañana':    return '☀️';
      case 'Tarde':     return '🌤️';
      case 'Noche':     return '🌙';
      case 'Madrugada': return '🌌';
      default:          return '';
    }
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    final nameCtrl = TextEditingController();
    String selectedEmoji = '✅';
    String? reminderTime;
    final emojis = ['✅', '💪', '📚', '🧘', '🏃', '🥗', '💧', '🎯', '🌙', '☀️'];

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Nuevo hábito'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  children: emojis
                      .map((e) => GestureDetector(
                            onTap: () => setState(() => selectedEmoji = e),
                            child: _EmojiChip(
                                emoji: e, selected: e == selectedEmoji),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: nameCtrl,
                  decoration: const InputDecoration(
                      labelText: 'Nombre del hábito'),
                  autofocus: true,
                ),
                const SizedBox(height: 16),
                _ReminderPicker(
                  reminderTime: reminderTime,
                  onPick: (t) => setState(() => reminderTime = t),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancelar')),
            ElevatedButton(
              onPressed: () {
                final name = nameCtrl.text.trim();
                if (name.isNotEmpty) {
                  ref.read(habitsProvider.notifier).add(
                        name,
                        selectedEmoji,
                        reminderTime: reminderTime,
                      );
                  Navigator.of(ctx).pop();
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10)),
              child: const Text('Crear'),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref, Habit habit) {
    final nameCtrl = TextEditingController(text: habit.name);
    String selectedEmoji = habit.emoji;
    String? reminderTime = habit.reminderTime;
    final emojis = ['✅', '💪', '📚', '🧘', '🏃', '🥗', '💧', '🎯', '🌙', '☀️'];

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Editar hábito'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  children: emojis
                      .map((e) => GestureDetector(
                            onTap: () => setState(() => selectedEmoji = e),
                            child: _EmojiChip(
                                emoji: e, selected: e == selectedEmoji),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: nameCtrl,
                  decoration: const InputDecoration(
                      labelText: 'Nombre del hábito'),
                  autofocus: true,
                ),
                const SizedBox(height: 16),
                _ReminderPicker(
                  reminderTime: reminderTime,
                  onPick: (t) => setState(() => reminderTime = t),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancelar')),
            ElevatedButton(
              onPressed: () {
                final name = nameCtrl.text.trim();
                if (name.isNotEmpty) {
                  ref.read(habitsProvider.notifier).edit(
                        habit.id,
                        name,
                        selectedEmoji,
                        reminderTime: reminderTime,
                      );
                  Navigator.of(ctx).pop();
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10)),
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Widgets de soporte ────────────────────────────────────────────────────────

class _EmojiChip extends StatelessWidget {
  final String emoji;
  final bool selected;
  const _EmojiChip({required this.emoji, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: selected ? AppColors.primary.withAlpha(51) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: selected
            ? Border.all(color: AppColors.primary)
            : Border.all(color: AppColors.border),
      ),
      child: Center(child: Text(emoji, style: const TextStyle(fontSize: 20))),
    );
  }
}

class _ReminderPicker extends StatelessWidget {
  final String? reminderTime;
  final ValueChanged<String?> onPick;

  const _ReminderPicker({required this.reminderTime, required this.onPick});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recordatorio',
            style: GoogleFonts.inter(
                color: AppColors.textSecondary, fontSize: 13)),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  final initial = reminderTime != null
                      ? TimeOfDay(
                          hour: int.parse(reminderTime!.split(':')[0]),
                          minute: int.parse(reminderTime!.split(':')[1]),
                        )
                      : const TimeOfDay(hour: 8, minute: 0);
                  final picked = await showTimePicker(
                    context: context,
                    initialTime: initial,
                    builder: (ctx, child) => MediaQuery(
                      data: MediaQuery.of(ctx)
                          .copyWith(alwaysUse24HourFormat: true),
                      child: child!,
                    ),
                  );
                  if (picked != null) {
                    onPick(
                        '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}');
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.alarm_rounded,
                          size: 18, color: AppColors.habits),
                      const SizedBox(width: 10),
                      Text(
                        reminderTime != null
                            ? '$reminderTime · ${_label(reminderTime!)}'
                            : 'Sin recordatorio',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: reminderTime != null
                              ? AppColors.textPrimary
                              : AppColors.textHint,
                          fontWeight: reminderTime != null
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (reminderTime != null) ...[
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () => onPick(null),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: const Icon(Icons.close_rounded,
                      size: 16, color: AppColors.textHint),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  String _label(String time) {
    final hour = int.tryParse(time.split(':')[0]) ?? -1;
    if (hour >= 5 && hour < 12) return '☀️ Mañana';
    if (hour >= 12 && hour < 18) return '🌤️ Tarde';
    if (hour >= 18 && hour < 22) return '🌙 Noche';
    return '🌌 Madrugada';
  }
}

// ── Progress Header ───────────────────────────────────────────────────────────

class _ProgressHeader extends StatelessWidget {
  final int completed;
  final int total;

  const _ProgressHeader({required this.completed, required this.total});

  @override
  Widget build(BuildContext context) {
    final pct = total == 0 ? 0.0 : completed / total;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Progreso de hoy',
                  style: GoogleFonts.inter(
                      color: AppColors.textSecondary, fontSize: 13)),
              Text('$completed/$total',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: AppColors.habits,
                      fontSize: 16)),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: pct,
              minHeight: 8,
              backgroundColor: AppColors.habits.withAlpha(38),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.habits),
            ),
          ),
          if (total > 0) ...[
            const SizedBox(height: 10),
            Text(
              pct == 1.0
                  ? '🎉 ¡Todos los hábitos completados!'
                  : '${(pct * 100).toInt()}% completado',
              style: GoogleFonts.inter(
                  fontSize: 12,
                  color: pct == 1.0
                      ? AppColors.habits
                      : AppColors.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}

// ── Habit Tile ────────────────────────────────────────────────────────────────

class _HabitTile extends StatelessWidget {
  final Habit habit;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const _HabitTile({
    required this.habit,
    required this.onToggle,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final done = habit.isCompletedToday();

    return GestureDetector(
      onTap: onToggle,
      onLongPress: onEdit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: done
              ? AppColors.habits.withAlpha(20)
              : AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: done
                ? AppColors.habits.withAlpha(77)
                : AppColors.border,
            width: 0.8,
          ),
        ),
        child: Row(
          children: [
            Text(habit.emoji, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(habit.name,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          decoration: done
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: done
                              ? AppColors.textSecondary
                              : AppColors.textPrimary)),
                  Row(
                    children: [
                      if (habit.streak > 0) ...[
                        Text('🔥 ${habit.streak}',
                            style: GoogleFonts.inter(
                                color: AppColors.warning, fontSize: 12)),
                        const SizedBox(width: 8),
                      ],
                      if (habit.reminderTime != null)
                        Text(
                          '${habit.timeEmoji} ${habit.reminderTime}',
                          style: GoogleFonts.inter(
                              color: AppColors.textSecondary, fontSize: 11),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              done
                  ? Icons.check_circle_rounded
                  : Icons.radio_button_unchecked_rounded,
              color: done ? AppColors.habits : AppColors.textHint,
              size: 26,
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: onDelete,
              child: const Icon(Icons.close_rounded,
                  size: 18, color: AppColors.textHint),
            ),
          ],
        ),
      ),
    );
  }
}
