class JournalEntry {
  final String id;
  final DateTime date;
  final String content;
  final int mood; // 1-5
  final List<String> tags;

  const JournalEntry({
    required this.id,
    required this.date,
    required this.content,
    required this.mood,
    required this.tags,
  });

  static const moodEmojis = ['😔', '😕', '😐', '🙂', '😄'];
  String get moodEmoji => moodEmojis[mood.clamp(1, 5) - 1];

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date.toIso8601String(),
        'content': content,
        'mood': mood,
        'tags': tags,
      };

  factory JournalEntry.fromJson(Map<String, dynamic> j) => JournalEntry(
        id: j['id'],
        date: DateTime.parse(j['date']),
        content: j['content'],
        mood: j['mood'] ?? 3,
        tags: List<String>.from(j['tags'] ?? []),
      );
}
