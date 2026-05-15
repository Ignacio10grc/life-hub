class Idea {
  final String id;
  final String title;
  final String content;
  final List<String> tags;
  final DateTime createdAt;
  final bool isPinned;

  const Idea({
    required this.id,
    required this.title,
    required this.content,
    required this.tags,
    required this.createdAt,
    this.isPinned = false,
  });

  Idea copyWith({
    String? title,
    String? content,
    List<String>? tags,
    bool? isPinned,
  }) =>
      Idea(
        id: id,
        title: title ?? this.title,
        content: content ?? this.content,
        tags: tags ?? this.tags,
        createdAt: createdAt,
        isPinned: isPinned ?? this.isPinned,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'tags': tags,
        'createdAt': createdAt.toIso8601String(),
        'isPinned': isPinned,
      };

  factory Idea.fromJson(Map<String, dynamic> j) => Idea(
        id: j['id'],
        title: j['title'],
        content: j['content'],
        tags: List<String>.from(j['tags'] ?? []),
        createdAt: DateTime.parse(j['createdAt']),
        isPinned: j['isPinned'] ?? false,
      );
}
