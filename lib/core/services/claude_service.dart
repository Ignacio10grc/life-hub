import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:hive_flutter/hive_flutter.dart';

class ClaudeService {
  static const _endpoint = 'https://api.anthropic.com/v1/messages';
  static const _model = 'claude-sonnet-4-6';
  static const _systemPrompt = '''
Eres el asistente personal de LifeHub, una app de gestión de vida.
Ayudas al usuario con:
- 💰 Finanzas: presupuestos, ahorro, gastos
- ✅ Hábitos: crear rutinas positivas, mantener streaks
- 🌅 Rutinas: optimizar mañana/tarde/noche
- ⏱️ Productividad: técnica Pomodoro, gestión del tiempo
- 😴 Sueño: higiene del sueño, horarios
- 📓 Diario: reflexión, bienestar emocional
- 💡 Ideas: desarrollar y organizar pensamientos

Responde siempre en español, de forma concisa, amigable y práctica.
Si el usuario comparte datos de su vida (gastos, hábitos, sueño), analiza y da consejos personalizados.
''';

  String? _apiKey;

  ClaudeService(Box settingsBox) {
    _apiKey = settingsBox.get('claude_api_key') as String?;
  }

  void setApiKey(String key, Box settingsBox) {
    _apiKey = key.trim();
    settingsBox.put('claude_api_key', _apiKey);
  }

  bool get hasApiKey => _apiKey != null && _apiKey!.isNotEmpty;

  Future<String> chat(List<Map<String, String>> messages) async {
    if (!hasApiKey) {
      throw Exception('Configura tu API key de Anthropic en los ajustes.');
    }

    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {
        'x-api-key': _apiKey!,
        'anthropic-version': '2023-06-01',
        'content-type': 'application/json',
      },
      body: jsonEncode({
        'model': _model,
        'max_tokens': 1024,
        'system': _systemPrompt,
        'messages': messages,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['content'][0]['text'] as String;
    } else {
      final err = jsonDecode(response.body);
      throw Exception(err['error']?['message'] ?? 'Error ${response.statusCode}');
    }
  }
}

final claudeServiceProvider = Provider<ClaudeService>((ref) {
  return ClaudeService(Hive.box('settings'));
});
