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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProgressHeader(completed: completed, total: habits.length),
                  const SizedBox(height: 24),
                  Text('Hoy',
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
          habits.isEmpty
              ? SliverToBoxAdapter(
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
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      final h = habits[i];
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
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
                    childCount: habits.length,
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context, ref),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref, dynamic habit) {
    final nameCtrl = TextEditingController(text: habit.name);
    String selectedEmoji = habit.emoji;
    final emojis = ['✅', '💪', '📚', '🧘', '🏃', '🥗', '💧', '🎯', '🌙', '☀️'];

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Editar hábito'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 8,
                children: emojis
                    .map((e) => GestureDetector(
                          onTap: () => setState(() => selectedEmoji = e),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: e == selectedEmoji
                                  ? AppColors.primary.withOpacity(0.2)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: e == selectedEmoji
                                  ? Border.all(color: AppColors.primary)
                                  : null,
                            ),
                            child: Center(
                              child: Text(e, style: const TextStyle(fontSize: 20)),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: 'Nombre del hábito'),
                autofocus: true,
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancelar')),
            ElevatedButton(
              onPressed: () {
                final name = nameCtrl.text.trim();
                if (name.isNotEmpty) {
                  ref.read(habitsProvider.notifier).edit(habit.id, name, selectedEmoji);
                  Navigator.of(ctx).pop();
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    final nameCtrl = TextEditingController();
    String selectedEmoji = '✅';
    final emojis = ['✅', '💪', '📚', '🧘', '🏃', '🥗', '💧', '🎯', '🌙', '☀️'];

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Nuevo hábito'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 8,
                children: emojis
                    .map((e) => GestureDetector(
                          onTap: () => setState(() => selectedEmoji = e),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: e == selectedEmoji
                                  ? AppColors.primary.withOpacity(0.2)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: e == selectedEmoji
                                  ? Border.all(color: AppColors.primary)
                                  : null,
                            ),
                            child: Center(
                              child: Text(e,
                                  style: const TextStyle(fontSize: 20)),
                            ),
                          ),
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
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(), child: const Text('Cancelar')),
            ElevatedButton(
              onPressed: () {
                final name = nameCtrl.text.trim();
                if (name.isNotEmpty) {
                  ref.read(habitsProvider.notifier).add(name, selectedEmoji);
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
}

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
        color: AppColors.habits.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.habits.withOpacity(0.2)),
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
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: pct,
              minHeight: 8,
              backgroundColor: AppColors.habits.withOpacity(0.15),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.habits),
            ),
          ),
        ],
      ),
    );
  }
}

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
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: done
              ? AppColors.habits.withOpacity(0.08)
              : AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: done
                ? AppColors.habits.withOpacity(0.3)
                : AppColors.border,
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
                          color:
                              done ? AppColors.textSecondary : AppColors.textPrimary)),
                  if (habit.streak > 0)
                    Text('🔥 ${habit.streak} días seguidos',
                        style: GoogleFonts.inter(
                            color: AppColors.warning, fontSize: 12)),
                ],
              ),
            ),
            Icon(
              done ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
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
