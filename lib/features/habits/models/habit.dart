class Habit {
  final String id;
  final String name;
  final String emoji;
  final List<String> completedDates; // ISO date strings yyyy-MM-dd
  final String? reminderTime;        // "HH:mm" o null

  const Habit({
    required this.id,
    required this.name,
    required this.emoji,
    required this.completedDates,
    this.reminderTime,
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

  // ── Momento del día calculado desde el recordatorio ──────────────────────
  String get timeOfDay {
    if (reminderTime == null) return '';
    final hour = int.tryParse(reminderTime!.split(':')[0]) ?? -1;
    if (hour >= 5 && hour < 12) return 'Mañana';
    if (hour >= 12 && hour < 18) return 'Tarde';
    if (hour >= 18 && hour < 22) return 'Noche';
    return 'Madrugada';
  }

  String get timeEmoji {
    switch (timeOfDay) {
      case 'Mañana': return '☀️';
      case 'Tarde':  return '🌤️';
      case 'Noche':  return '🌙';
      case 'Madrugada': return '🌌';
      default: return '';
    }
  }

  // Orden para agrupar: mañana < tarde < noche < madrugada < sin hora
  int get sortOrder {
    switch (timeOfDay) {
      case 'Mañana':    return 0;
      case 'Tarde':     return 1;
      case 'Noche':     return 2;
      case 'Madrugada': return 3;
      default:          return 4;
    }
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
    return Habit(
        id: id,
        name: name,
        emoji: emoji,
        completedDates: list,
        reminderTime: reminderTime);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'emoji': emoji,
        'completedDates': completedDates,
        'reminderTime': reminderTime,
      };

  factory Habit.fromJson(Map<String, dynamic> j) => Habit(
        id: j['id'],
        name: j['name'],
        emoji: j['emoji'] ?? '✅',
        completedDates: List<String>.from(j['completedDates'] ?? []),
        reminderTime: j['reminderTime'] as String?,
      );
}
