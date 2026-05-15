enum TransactionType { income, expense }

class Transaction {
  final String id;
  final String title;
  final double amount;
  final TransactionType type;
  final String category;
  final DateTime date;
  final String? note;

  const Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.type,
    required this.category,
    required this.date,
    this.note,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'amount': amount,
        'type': type.name,
        'category': category,
        'date': date.toIso8601String(),
        'note': note,
      };

  factory Transaction.fromJson(Map<String, dynamic> j) => Transaction(
        id: j['id'],
        title: j['title'],
        amount: (j['amount'] as num).toDouble(),
        type: TransactionType.values.byName(j['type']),
        category: j['category'],
        date: DateTime.parse(j['date']),
        note: j['note'],
      );

  static const incomeCategories = [
    'Salario', 'Freelance', 'Inversiones', 'Regalo', 'Otro'
  ];
  static const expenseCategories = [
    'Comida', 'Transporte', 'Ocio', 'Salud', 'Ropa', 'Educación', 'Casa', 'Otro'
  ];

  static const categoryIcons = {
    'Salario': '💼', 'Freelance': '💻', 'Inversiones': '📈', 'Regalo': '🎁',
    'Comida': '🍔', 'Transporte': '🚗', 'Ocio': '🎮', 'Salud': '💊',
    'Ropa': '👔', 'Educación': '📚', 'Casa': '🏠', 'Otro': '💫',
  };

  static String iconFor(String category) => categoryIcons[category] ?? '💰';
}
