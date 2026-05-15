class SleepEntry {
  final String id;
  final DateTime bedtime;
  final DateTime wakeTime;
  final int quality; // 1-5
  final String? notes;

  const SleepEntry({
    required this.id,
    required this.bedtime,
    required this.wakeTime,
    required this.quality,
    this.notes,
  });

  Duration get duration => wakeTime.difference(bedtime);

  String get durationLabel {
    final h = duration.inHours;
    final m = duration.inMinutes % 60;
    return '${h}h ${m}m';
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'bedtime': bedtime.toIso8601String(),
        'wakeTime': wakeTime.toIso8601String(),
        'quality': quality,
        'notes': notes,
      };

  factory SleepEntry.fromJson(Map<String, dynamic> j) => SleepEntry(
        id: j['id'],
        bedtime: DateTime.parse(j['bedtime']),
        wakeTime: DateTime.parse(j['wakeTime']),
        quality: j['quality'] ?? 3,
        notes: j['notes'],
      );
}
