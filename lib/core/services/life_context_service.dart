import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../features/finances/models/transaction.dart';
import '../../features/finances/providers/finances_provider.dart';
import '../../features/habits/providers/habits_provider.dart';
import '../../features/ideas/providers/ideas_provider.dart';
import '../../features/journal/providers/journal_provider.dart';
import '../../features/routines/providers/routines_provider.dart';
import '../../features/sleep/providers/sleep_provider.dart';

/// Construye un resumen del estado actual del usuario en todos los módulos.
/// Este contexto se inyecta en el prompt del agente IA.
final lifeContextProvider = Provider<String>((ref) {
  final habits      = ref.watch(habitsProvider);
  final finances    = ref.watch(financesProvider);
  final finNotifier = ref.watch(financesProvider.notifier);
  final sleep       = ref.watch(sleepProvider);
  final sleepNotif  = ref.watch(sleepProvider.notifier);
  final journal     = ref.watch(journalProvider);
  final ideas       = ref.watch(ideasProvider);
  final routines    = ref.watch(routinesProvider);

  final now = DateTime.now();
  final buf = StringBuffer();

  buf.writeln('=== CONTEXTO ACTUAL DEL USUARIO EN LIFEHUB ===');
  buf.writeln('Fecha: ${DateFormat("EEEE d 'de' MMMM yyyy", 'es').format(now)}');
  buf.writeln();

  // ── Hábitos ────────────────────────────────────────────────────────────────
  buf.writeln('HÁBITOS (${habits.length} en total):');
  if (habits.isEmpty) {
    buf.writeln('  · Sin hábitos creados todavía.');
  } else {
    final completedToday = habits.where((h) => h.isCompletedToday()).length;
    buf.writeln('  · Completados hoy: $completedToday/${habits.length}');
    for (final h in habits) {
      final reminder = h.reminderTime != null ? ' | ⏰ ${h.reminderTime} (${h.timeOfDay})' : '';
      final streak = h.streak > 0 ? ' | 🔥 ${h.streak} días de racha' : '';
      final status = h.isCompletedToday() ? '✅' : '⬜';
      buf.writeln('  $status ${h.emoji} ${h.name}$reminder$streak');
    }
  }
  buf.writeln();

  // ── Finanzas ───────────────────────────────────────────────────────────────
  buf.writeln('FINANZAS:');
  buf.writeln('  · Balance total: \$${NumberFormat('#,##0.00').format(finNotifier.balance)}');
  buf.writeln('  · Ingresos totales: \$${NumberFormat('#,##0').format(finNotifier.totalIncome)}');
  buf.writeln('  · Gastos totales: \$${NumberFormat('#,##0').format(finNotifier.totalExpense)}');
  final monthExpenses = finances.where((t) =>
      t.type == TransactionType.expense &&
      t.date.year == now.year &&
      t.date.month == now.month);
  if (monthExpenses.isNotEmpty) {
    final byCategory = <String, double>{};
    for (final t in monthExpenses) {
      byCategory[t.category] = (byCategory[t.category] ?? 0) + t.amount;
    }
    final sorted = byCategory.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    buf.writeln('  · Top gastos este mes:');
    for (final e in sorted.take(3)) {
      buf.writeln('    - ${e.key}: \$${NumberFormat('#,##0').format(e.value)}');
    }
  }
  buf.writeln();

  // ── Sueño ─────────────────────────────────────────────────────────────────
  buf.writeln('SUEÑO:');
  if (sleep.isEmpty) {
    buf.writeln('  · Sin registros de sueño.');
  } else {
    buf.writeln('  · Promedio: ${sleepNotif.averageHours.toStringAsFixed(1)}h/noche');
    buf.writeln('  · Calidad media: ${sleepNotif.averageQuality.toStringAsFixed(1)}/5');
    final last = sleep.first;
    final lastHours = last.duration.inMinutes / 60.0;
    buf.writeln('  · Última noche: ${lastHours.toStringAsFixed(1)}h (calidad ${last.quality}/5)');
  }
  buf.writeln();

  // ── Diario ────────────────────────────────────────────────────────────────
  buf.writeln('DIARIO:');
  if (journal.isEmpty) {
    buf.writeln('  · Sin entradas en el diario.');
  } else {
    final thisMonth = journal.where((e) =>
        e.date.year == now.year && e.date.month == now.month);
    buf.writeln('  · Entradas este mes: ${thisMonth.length}');
    final moods = journal.take(7).map((e) => e.mood).toList();
    if (moods.isNotEmpty) {
      final avg = moods.reduce((a, b) => a + b) / moods.length;
      const labels = ['', 'Muy mal', 'Mal', 'Regular', 'Bien', 'Muy bien'];
      buf.writeln('  · Estado de ánimo reciente (últimas 7 entradas): ${avg.toStringAsFixed(1)}/5 (${labels[avg.round().clamp(1,5)]})');
    }
  }
  buf.writeln();

  // ── Ideas ─────────────────────────────────────────────────────────────────
  buf.writeln('IDEAS: ${ideas.length} guardadas');
  if (ideas.isNotEmpty) {
    final pinned = ideas.where((i) => i.isPinned).length;
    if (pinned > 0) buf.writeln('  · $pinned ideas fijadas');
  }
  buf.writeln();

  // ── Rutinas ───────────────────────────────────────────────────────────────
  buf.writeln('RUTINAS: ${routines.length} creadas');
  for (final r in routines) {
    buf.writeln('  · ${r.emoji} ${r.name} (${r.time}) — ${r.tasks.length} tareas');
  }
  buf.writeln();
  buf.writeln('=== FIN DEL CONTEXTO ===');

  return buf.toString();
});
