import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/journal_provider.dart';

class JournalScreen extends ConsumerStatefulWidget {
  const JournalScreen({super.key});

  @override
  ConsumerState<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends ConsumerState<JournalScreen> {
  String _query = '';
  bool _searching = false;
  final _searchCtrl = TextEditingController();

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allEntries = ref.watch(journalProvider);
    final entries = _query.isEmpty
        ? allEntries
        : allEntries
            .where((e) =>
                e.content.toLowerCase().contains(_query.toLowerCase()) ||
                (e.tags as List).any(
                    (t) => t.toString().toLowerCase().contains(_query.toLowerCase())))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: _searching
            ? TextField(
                controller: _searchCtrl,
                autofocus: true,
                style: GoogleFonts.inter(color: AppColors.textPrimary, fontSize: 16),
                decoration: InputDecoration(
                  hintText: 'Buscar en el diario...',
                  hintStyle: GoogleFonts.inter(color: AppColors.textHint),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                onChanged: (v) => setState(() => _query = v),
              )
            : const Text('Diario'),
        actions: [
          IconButton(
            icon: Icon(_searching ? Icons.close_rounded : Icons.search_rounded),
            onPressed: () {
              setState(() {
                _searching = !_searching;
                if (!_searching) {
                  _query = '';
                  _searchCtrl.clear();
                }
              });
            },
          ),
        ],
      ),
      body: entries.isEmpty
          ? _EmptyState(
              isSearch: _query.isNotEmpty,
              onAdd: () => _showWriteScreen(context, ref),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: entries.length,
              itemBuilder: (ctx, i) {
                final e = entries[i];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _EntryCard(
                    entry: e,
                    onTap: () => _showReadScreen(context, e),
                    onDelete: () => ref.read(journalProvider.notifier).remove(e.id),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showWriteScreen(context, ref),
        backgroundColor: AppColors.journal,
        icon: const Icon(Icons.edit_rounded),
        label: const Text('Escribir'),
      ),
    );
  }

  void _showWriteScreen(BuildContext context, WidgetRef ref) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => _WriteJournalScreen(ref: ref)),
    );
  }

  void _showReadScreen(BuildContext context, dynamic entry) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => _ReadJournalScreen(entry: entry)),
    );
  }
}

class _ReadJournalScreen extends StatelessWidget {
  final dynamic entry;
  const _ReadJournalScreen({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat("d 'de' MMMM, yyyy", 'es').format(entry.date)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(entry.moodEmoji, style: const TextStyle(fontSize: 32)),
                const SizedBox(width: 12),
                Text(
                  _moodLabel(entry.mood as int),
                  style: GoogleFonts.inter(
                      color: AppColors.textSecondary, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              entry.content,
              style: GoogleFonts.inter(
                  color: AppColors.textPrimary, fontSize: 16, height: 1.8),
            ),
            if ((entry.tags as List).isNotEmpty) ...[
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: (entry.tags as List)
                    .map((t) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.journal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(t,
                              style: GoogleFonts.inter(
                                  fontSize: 13, color: AppColors.journal)),
                        ))
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _moodLabel(int mood) {
    const labels = ['Muy mal', 'Mal', 'Regular', 'Bien', 'Muy bien'];
    return labels[(mood - 1).clamp(0, 4)];
  }
}

class _WriteJournalScreen extends StatefulWidget {
  final WidgetRef ref;
  const _WriteJournalScreen({required this.ref});

  @override
  State<_WriteJournalScreen> createState() => _WriteJournalScreenState();
}

class _WriteJournalScreenState extends State<_WriteJournalScreen> {
  final _ctrl = TextEditingController();
  int _mood = 3;
  final List<String> _tags = [];
  final _tagCtrl = TextEditingController();

  @override
  void dispose() {
    _ctrl.dispose();
    _tagCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat("d 'de' MMMM", 'es').format(now)),
        actions: [
          TextButton(
            onPressed: _save,
            child: Text('Guardar',
                style: GoogleFonts.inter(
                    color: AppColors.journal, fontWeight: FontWeight.w700)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('¿Cómo te sientes hoy?',
                style: GoogleFonts.inter(
                    color: AppColors.textSecondary, fontSize: 13)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                5,
                (i) => GestureDetector(
                  onTap: () => setState(() => _mood = i + 1),
                  child: Column(
                    children: [
                      Text(['😔', '😕', '😐', '🙂', '😄'][i],
                          style: TextStyle(fontSize: _mood == i + 1 ? 36 : 26)),
                      if (_mood == i + 1)
                        Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(
                            color: AppColors.journal,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _ctrl,
              maxLines: null,
              minLines: 8,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText:
                    '¿Qué pasó hoy? ¿Qué sientes? ¿Qué aprendiste?\n\nEscribe libremente...',
                hintStyle: GoogleFonts.inter(color: AppColors.textHint, height: 1.6),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              style: GoogleFonts.inter(
                  color: AppColors.textPrimary, fontSize: 16, height: 1.8),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),
            Text('Etiquetas',
                style: GoogleFonts.inter(
                    color: AppColors.textSecondary, fontSize: 13)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ..._tags.map((t) => Chip(
                      label: Text(t, style: GoogleFonts.inter(fontSize: 12)),
                      backgroundColor: AppColors.journal.withOpacity(0.1),
                      deleteIconColor: AppColors.textSecondary,
                      onDeleted: () => setState(() => _tags.remove(t)),
                    )),
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: _tagCtrl,
                    decoration: InputDecoration(
                      hintText: '+ etiqueta',
                      hintStyle: GoogleFonts.inter(
                          color: AppColors.textHint, fontSize: 13),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onSubmitted: (v) {
                      final tag = v.trim();
                      if (tag.isNotEmpty && !_tags.contains(tag)) {
                        setState(() {
                          _tags.add(tag);
                          _tagCtrl.clear();
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Future<void> _save() async {
    final content = _ctrl.text.trim();
    if (content.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Escribe algo antes de guardar')),
      );
      return;
    }
    await widget.ref.read(journalProvider.notifier).add(
          content: content,
          mood: _mood,
          tags: _tags,
        );
    if (mounted) Navigator.of(context).pop();
  }
}

class _EntryCard extends StatelessWidget {
  final dynamic entry;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _EntryCard({required this.entry, required this.onTap, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(entry.moodEmoji, style: const TextStyle(fontSize: 20)),
                const SizedBox(width: 8),
                Text(
                  DateFormat("d 'de' MMMM", 'es').format(entry.date),
                  style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onDelete,
                  child: const Icon(Icons.close_rounded,
                      size: 18, color: AppColors.textHint),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              entry.content.length > 120
                  ? '${entry.content.substring(0, 120)}...'
                  : entry.content,
              style: GoogleFonts.inter(
                  color: AppColors.textSecondary, fontSize: 14, height: 1.5),
            ),
            if ((entry.tags as List).isNotEmpty) ...[
              const SizedBox(height: 10),
              Wrap(
                spacing: 6,
                children: (entry.tags as List)
                    .map((t) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: AppColors.journal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(t,
                              style: GoogleFonts.inter(
                                  fontSize: 11, color: AppColors.journal)),
                        ))
                    .toList(),
              ),
            ],
            const SizedBox(height: 8),
            Text(
              'Toca para leer',
              style: GoogleFonts.inter(
                  fontSize: 11,
                  color: AppColors.textHint,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final bool isSearch;
  final VoidCallback onAdd;
  const _EmptyState({required this.isSearch, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(isSearch ? '🔍' : '📓', style: const TextStyle(fontSize: 56)),
          const SizedBox(height: 16),
          Text(
            isSearch ? 'Sin resultados' : 'Tu diario está vacío',
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            isSearch ? 'Prueba con otra búsqueda' : 'Escribe sobre tu día',
            style: GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 14),
          ),
          if (!isSearch) ...[
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.edit_rounded, size: 18),
              label: const Text('Escribir'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.journal,
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
            ),
          ],
        ],
      ),
    );
  }
}
