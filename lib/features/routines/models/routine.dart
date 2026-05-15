class RoutineTask {
  final String id;
  final String title;
  final int durationMinutes;
  bool isDone;

  RoutineTask({
    required this.id,
    required this.title,
    required this.durationMinutes,
    this.isDone = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'durationMinutes': durationMinutes,
        'isDone': isDone,
      };

  factory RoutineTask.fromJson(Map<String, dynamic> j) => RoutineTask(
        id: j['id'],
        title: j['title'],
        durationMinutes: j['durationMinutes'] ?? 5,
        isDone: j['isDone'] ?? false,
      );
}

class Routine {
  final String id;
  final String name;
  final String emoji;
  final String time; // 'Mañana', 'Tarde', 'Noche'
  final List<RoutineTask> tasks;

  const Routine({
    required this.id,
    required this.name,
    required this.emoji,
    required this.time,
    required this.tasks,
  });

  int get totalMinutes => tasks.fold(0, (s, t) => s + t.durationMinutes);
  int get completedCount => tasks.where((t) => t.isDone).length;
  double get progress => tasks.isEmpty ? 0 : completedCount / tasks.length;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'emoji': emoji,
        'time': time,
        'tasks': tasks.map((t) => t.toJson()).toList(),
      };

  factory Routine.fromJson(Map<String, dynamic> j) => Routine(
        id: j['id'],
        name: j['name'],
        emoji: j['emoji'] ?? '🌅',
        time: j['time'] ?? 'Mañana',
        tasks: (j['tasks'] as List? ?? [])
            .map((t) => RoutineTask.fromJson(t as Map<String, dynamic>))
            .toList(),
      );
}
