import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/chat_message.dart';
import '../../../core/services/claude_service.dart';

class AiState {
  final List<ChatMessage> messages;
  final bool isLoading;
  final String? error;

  const AiState({
    this.messages = const [],
    this.isLoading = false,
    this.error,
  });

  AiState copyWith({
    List<ChatMessage>? messages,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      AiState(
        messages: messages ?? this.messages,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}

class AiNotifier extends StateNotifier<AiState> {
  final Box _box;
  final ClaudeService _claude;
  static const _key = 'chat_history';
  final _uuid = const Uuid();

  AiNotifier(this._box, this._claude) : super(const AiState()) {
    _load();
  }

  void _load() {
    final raw = _box.get(_key);
    if (raw != null) {
      final list = (jsonDecode(raw as String) as List)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList();
      state = state.copyWith(messages: list);
    }
  }

  Future<void> _save() async {
    await _box.put(
        _key, jsonEncode(state.messages.map((m) => m.toJson()).toList()));
  }

  Future<void> send(String text, {String userContext = ''}) async {
    final userMsg = ChatMessage(
      id: _uuid.v4(),
      role: MessageRole.user,
      content: text,
      timestamp: DateTime.now(),
    );
    state = state.copyWith(
      messages: [...state.messages, userMsg],
      isLoading: true,
      clearError: true,
    );
    await _save();

    try {
      final history = state.messages
          .where((m) => m.id != userMsg.id)
          .map((m) => m.toApiMap())
          .toList();
      history.add(userMsg.toApiMap());

      final response = await _claude.chat(
        history,
        userContext: userContext,
      );

      final assistantMsg = ChatMessage(
        id: _uuid.v4(),
        role: MessageRole.assistant,
        content: response,
        timestamp: DateTime.now(),
      );
      state = state.copyWith(
        messages: [...state.messages, assistantMsg],
        isLoading: false,
      );
      await _save();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error: ${e.toString().replaceAll('Exception: ', '')}',
      );
    }
  }

  void clearChat() {
    state = const AiState();
    _box.delete(_key);
  }
}

final aiProvider = StateNotifierProvider<AiNotifier, AiState>((ref) {
  return AiNotifier(Hive.box('ai_chat'), ref.watch(claudeServiceProvider));
});
