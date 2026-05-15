import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/idea.dart';

class IdeasNotifier extends StateNotifier<List<Idea>> {
  final Box _box;
  static const _key = 'ideas';
  final _uuid = const Uuid();

  IdeasNotifier(this._box) : super([]) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => Idea.fromJson(e as Map<String, dynamic>))
          .toList();
      list.sort((a, b) {
        if (a.isPinned && !b.isPinned) return -1;
        if (!a.isPinned && b.isPinned) return 1;
        return b.createdAt.compareTo(a.createdAt);
      });
      state = list;
    }
  }

  Future<void> _save() async {
    await _box.put(_key, jsonEncode(state.map((i) => i.toJson()).toList()));
  }

  Future<void> add({
    required String title,
    required String content,
    required List<String> tags,
  }) async {
    final idea = Idea(
      id: _uuid.v4(),
      title: title,
      content: content,
      tags: tags,
      createdAt: DateTime.now(),
    );
    state = [idea, ...state];
    await _save();
  }

  Future<void> togglePin(String id) async {
    state = state.map((i) => i.id == id ? i.copyWith(isPinned: !i.isPinned) : i).toList();
    state.sort((a, b) {
      if (a.isPinned && !b.isPinned) return -1;
      if (!a.isPinned && b.isPinned) return 1;
      return b.createdAt.compareTo(a.createdAt);
    });
    await _save();
  }

  Future<void> remove(String id) async {
    state = state.where((i) => i.id != id).toList();
    await _save();
  }
}

final ideasProvider = StateNotifierProvider<IdeasNotifier, List<Idea>>(
  (ref) => IdeasNotifier(Hive.box('ideas')),
);
