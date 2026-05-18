class StepEntry {
  final String id;
  final DateTime date;
  final int steps;
  final int goal;

  const StepEntry({
    required this.id,
    required this.date,
    required this.steps,
    this.goal = 10000,
  });

  double get progress => (steps / goal).clamp(0.0, 1.0);
  bool get goalReached => steps >= goal;

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date.toIso8601String(),
        'steps': steps,
        'goal': goal,
      };

  factory StepEntry.fromJson(Map<String, dynamic> json) => StepEntry(
        id: json['id'] as String,
        date: DateTime.parse(json['date'] as String),
        steps: json['steps'] as int,
        goal: (json['goal'] as int?) ?? 10000,
      );
}
