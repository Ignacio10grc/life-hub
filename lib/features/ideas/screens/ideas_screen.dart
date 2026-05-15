import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/ideas_provider.dart';

class IdeasScreen extends ConsumerStatefulWidget {
  const IdeasScreen({super.key});

  @override
  ConsumerState<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends ConsumerState<IdeasScreen> {
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
    final allIdeas = ref.watch(ideasProvider);
    final ideas = _query.isEmpty
        ? allIdeas
        : allIdeas
            .where((i) =>
                i.title.toLowerCase().contains(_query.toLowerCase()) ||
                i.content.toLowerCase().contains(_query.toLowerCase()) ||
                (i.tags as List).any(
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
                  hintText: 'Buscar ideas...',
                  hintStyle: GoogleFonts.inter(color: AppColors.textHint),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                onChanged: (v) => setState(() => _query = v),
              )
            : const Text('Ideas'),
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
      body: ideas.isEmpty
          ? _EmptyState(
              isSearch: _query.isNotEmpty,
              onAdd: () => _showAddDialog(context, ref),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: ideas.length,
              itemBuilder: (ctx, i) {
                final idea = ideas[i];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _IdeaCard(
                    idea: idea,
                    query: _query,
                    onPin: () => ref.read(ideasProvider.notifier).togglePin(idea.id),
                    onDelete: () => ref.read(ideasProvider.notifier).remove(idea.id),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddDialog(context, ref),
        backgroundColor: AppColors.ideas,
        icon: const Icon(Icons.lightbulb_rounded),
        label: const Text('Nueva idea'),
      ),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    final titleCtrl = TextEditingController();
    final contentCtrl = TextEditingController();
    final tagCtrl = TextEditingController();
    final tags = <String>[];

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
              Text('Nueva idea',
                  style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700)),
              const SizedBox(height: 20),
              TextField(
                controller: titleCtrl,
                decoration: const InputDecoration(labelText: 'Título de la idea'),
                autofocus: true,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: contentCtrl,
                maxLines: 4,
                decoration: const InputDecoration(labelText: 'Desarrolla tu idea...'),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: tagCtrl,
                      decoration: const InputDecoration(labelText: 'Etiqueta'),
                      onSubmitted: (v) {
                        final tag = v.trim();
                        if (tag.isNotEmpty && !tags.contains(tag)) {
                          setState(() {
                            tags.add(tag);
                            tagCtrl.clear();
                          });
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: () {
                      final tag = tagCtrl.text.trim();
                      if (tag.isNotEmpty && !tags.contains(tag)) {
                        setState(() {
                          tags.add(tag);
                          tagCtrl.clear();
                        });
                      }
                    },
                    icon: const Icon(Icons.add_rounded),
                    style: IconButton.styleFrom(backgroundColor: AppColors.ideas),
                  ),
                ],
              ),
              if (tags.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  children: tags
                      .map((t) => Chip(
                            label: Text(t, style: GoogleFonts.inter(fontSize: 12)),
                            onDeleted: () => setState(() => tags.remove(t)),
                          ))
                      .toList(),
                ),
              ],
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final title = titleCtrl.text.trim();
                    if (title.isEmpty) return;
                    await ref.read(ideasProvider.notifier).add(
                          title: title,
                          content: contentCtrl.text.trim(),
                          tags: tags,
                        );
                    if (ctx.mounted) Navigator.of(ctx).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.ideas),
                  child: const Text('Guardar idea'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IdeaCard extends StatelessWidget {
  final dynamic idea;
  final String query;
  final VoidCallback onPin;
  final VoidCallback onDelete;

  const _IdeaCard({
    required this.idea,
    required this.query,
    required this.onPin,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: idea.isPinned ? AppColors.ideas.withOpacity(0.06) : AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: idea.isPinned ? AppColors.ideas.withOpacity(0.3) : AppColors.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(idea.title,
                    style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 15)),
              ),
              GestureDetector(
                onTap: onPin,
                child: Icon(
                  idea.isPinned ? Icons.push_pin_rounded : Icons.push_pin_outlined,
                  size: 18,
                  color: idea.isPinned ? AppColors.ideas : AppColors.textHint,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: onDelete,
                child: const Icon(Icons.close_rounded, size: 18, color: AppColors.textHint),
              ),
            ],
          ),
          if ((idea.content as String).isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              idea.content,
              style: GoogleFonts.inter(
                  color: AppColors.textSecondary, fontSize: 13, height: 1.5),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          const SizedBox(height: 10),
          Row(
            children: [
              if ((idea.tags as List).isNotEmpty)
                Expanded(
                  child: Wrap(
                    spacing: 6,
                    children: (idea.tags as List)
                        .map((t) => Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: AppColors.ideas.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(t,
                                  style: GoogleFonts.inter(fontSize: 11, color: AppColors.ideas)),
                            ))
                        .toList(),
                  ),
                ),
              Text(
                DateFormat('d MMM', 'es').format(idea.createdAt),
                style: GoogleFonts.inter(color: AppColors.textHint, fontSize: 11),
              ),
            ],
          ),
        ],
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
          Text(isSearch ? '🔍' : '💡', style: const TextStyle(fontSize: 56)),
          const SizedBox(height: 16),
          Text(
            isSearch ? 'Sin resultados' : 'Sin ideas guardadas',
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            isSearch ? 'Prueba con otra búsqueda' : 'Captura tus próximas grandes ideas',
            style: GoogleFonts.inter(color: AppColors.textSecondary, fontSize: 14),
          ),
          if (!isSearch) ...[
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.lightbulb_rounded, size: 18),
              label: const Text('Nueva idea'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.ideas,
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
            ),
          ],
        ],
      ),
    );
  }
}
