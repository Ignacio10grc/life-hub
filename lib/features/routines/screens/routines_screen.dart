import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';
import '../models/routine.dart';
import '../providers/routines_provider.dart';

class RoutinesScreen extends ConsumerWidget {
  const RoutinesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routines = ref.watch(routinesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_rounded),
            onPressed: () => _showAddRoutine(context, ref),
          ),
        ],
      ),
      body: routines.isEmpty
          ? _EmptyState(onAdd: () => _showAddRoutine(context, ref))
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: routines.length,
              itemBuilder: (ctx, i) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _RoutineCard(
                  routine: routines[i],
                  ref: ref,
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddRoutine(context, ref),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  void _showAddRoutine(BuildContext context, WidgetRef ref) {
    final nameCtrl = TextEditingController();
    String emoji = '🌅';
    String time = 'Mañana';
    final emojis = ['🌅', '🌙', '🌞', '🏋️', '📖', '🧘', '💼', '🎯'];
    final times = ['Mañana', 'Tarde', 'Noche'];

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Nueva rutina'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 8,
                children: emojis
                    .map((e) => GestureDetector(
                          onTap: () => setState(() => emoji = e),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: e == emoji
                                  ? AppColors.routines.withOpacity(0.2)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: e == emoji
                                  ? Border.all(color: AppColors.routines)
                                  : null,
                            ),
                            child: Center(
                                child: Text(e,
                                    style: const TextStyle(fontSize: 20))),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: 'Nombre'),
                autofocus: true,
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: time,
                dropdownColor: AppColors.surfaceCard,
                decoration: const InputDecoration(labelText: 'Momento del día'),
                items: times
                    .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                    .toList(),
                onChanged: (v) => setState(() => time = v!),
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
                  ref.read(routinesProvider.notifier).addRoutine(name, emoji, time);
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

class _RoutineCard extends StatelessWidget {
  final Routine routine;
  final WidgetRef ref;

  const _RoutineCard({required this.routine, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(routine.emoji, style: const TextStyle(fontSize: 24)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(routine.name,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700, fontSize: 15)),
                      Text(
                          '${routine.time} · ${routine.totalMinutes} min · '
                          '${routine.completedCount}/${routine.tasks.length} tareas',
                          style: GoogleFonts.inter(
                              color: AppColors.textSecondary, fontSize: 12)),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_rounded, size: 20),
                  onPressed: () => _addTask(context),
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline_rounded,
                      size: 18, color: AppColors.textHint),
                  onPressed: () =>
                      ref.read(routinesProvider.notifier).removeRoutine(routine.id),
                ),
              ],
            ),
          ),
          if (routine.tasks.isNotEmpty) ...[
            LinearProgressIndicator(
              value: routine.progress,
              backgroundColor: AppColors.routines.withOpacity(0.1),
              valueColor: const AlwaysStoppedAnimation(AppColors.routines),
              minHeight: 3,
            ),
            ...routine.tasks.map((task) => _TaskTile(
                  task: task,
                  onToggle: () => ref
                      .read(routinesProvider.notifier)
                      .toggleTask(routine.id, task.id),
                )),
          ],
        ],
      ),
    );
  }

  void _addTask(BuildContext context) {
    final titleCtrl = TextEditingController();
    final minsCtrl = TextEditingController(text: '5');

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Nueva tarea'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleCtrl,
              decoration: const InputDecoration(labelText: 'Tarea'),
              autofocus: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: minsCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Duración (min)'),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () {
              final title = titleCtrl.text.trim();
              final mins = int.tryParse(minsCtrl.text) ?? 5;
              if (title.isNotEmpty) {
                ref
                    .read(routinesProvider.notifier)
                    .addTask(routine.id, title, mins);
                Navigator.of(ctx).pop();
              }
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10)),
            child: const Text('Agregar'),
          ),
        ],
      ),
    );
  }
}

class _TaskTile extends StatelessWidget {
  final RoutineTask task;
  final VoidCallback onToggle;

  const _TaskTile({required this.task, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      leading: GestureDetector(
        onTap: onToggle,
        child: Icon(
          task.isDone
              ? Icons.check_circle_rounded
              : Icons.radio_button_unchecked_rounded,
          color: task.isDone ? AppColors.routines : AppColors.textHint,
          size: 22,
        ),
      ),
      title: Text(
        task.title,
        style: GoogleFonts.inter(
          fontSize: 14,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
          color: task.isDone ? AppColors.textSecondary : AppColors.textPrimary,
        ),
      ),
      trailing: Text('${task.durationMinutes} min',
          style: GoogleFonts.inter(
              color: AppColors.textSecondary, fontSize: 12)),
      onTap: onToggle,
    );
  }
}

class _EmptyState extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyState({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🌅', style: TextStyle(fontSize: 56)),
          const SizedBox(height: 16),
          Text('Sin rutinas',
              style: GoogleFonts.inter(
                  fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text('Crea rutinas para tu día',
              style: GoogleFonts.inter(
                  color: AppColors.textSecondary, fontSize: 14)),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.add_rounded, size: 18),
            label: const Text('Nueva rutina'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 12)),
          ),
        ],
      ),
    );
  }
}
