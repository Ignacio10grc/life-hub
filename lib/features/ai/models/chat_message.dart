enum MessageRole { user, assistant }

class ChatMessage {
  final String id;
  final MessageRole role;
  final String content;
  final DateTime timestamp;

  const ChatMessage({
    required this.id,
    required this.role,
    required this.content,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role.name,
        'content': content,
        'timestamp': timestamp.toIso8601String(),
      };

  factory ChatMessage.fromJson(Map<String, dynamic> j) => ChatMessage(
        id: j['id'],
        role: MessageRole.values.byName(j['role']),
        content: j['content'],
        timestamp: DateTime.parse(j['timestamp']),
      );

  Map<String, String> toApiMap() => {
        'role': role == MessageRole.user ? 'user' : 'assistant',
        'content': content,
      };
}
