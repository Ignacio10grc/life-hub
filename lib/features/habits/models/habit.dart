class Habit {
  final String id;
  final String name;
  final String emoji;
  final List<String> completedDates; // ISO date strings yyyy-MM-dd

  const Habit({
    required this.id,
    required this.name,
    required this.emoji,
    required this.completedDates,
  });

  bool isCompletedToday() {
    final today = _dateKey(DateTime.now());
    return completedDates.contains(today);
  }

  int get streak {
    int count = 0;
    var day = DateTime.now();
    while (completedDates.contains(_dateKey(day))) {
      count++;
      day = day.subtract(const Duration(days: 1));
    }
    return count;
  }

  static String _dateKey(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  Habit toggleToday() {
    final today = _dateKey(DateTime.now());
    final list = List<String>.from(completedDates);
    if (list.contains(today)) {
      list.remove(today);
    } else {
      list.add(today);
    }
    return Habit(id: id, name: name, emoji: emoji, completedDates: list);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'emoji': emoji,
        'completedDates': completedDates,
      };

  factory Habit.fromJson(Map<String, dynamic> j) => Habit(
        id: j['id'],
        name: j['name'],
        emoji: j['emoji'] ?? '✅',
        completedDates: List<String>.from(j['completedDates'] ?? []),
      );
}
