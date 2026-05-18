import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:hive_flutter/hive_flutter.dart';

class ClaudeService {
  static const _endpoint = 'https://api.anthropic.com/v1/messages';
  static const _model = 'claude-sonnet-4-6';

  static const _baseSystemPrompt = '''
Eres LifeCoach, el agente de inteligencia artificial integrado en LifeHub — una app premium de desarrollo personal y organización de vida.

## Tu identidad
- Nombre: LifeCoach
- Tono: empático, directo, orientado a la acción. Ni robótico ni excesivamente informal.
- Idioma: SIEMPRE español
- Respuestas: concisas pero con profundidad. Evita listas largas genéricas.

## Tus capacidades
1. **ANÁLISIS DE DATOS**: Accedes al estado real del usuario (hábitos, finanzas, sueño, diario, ideas, rutinas) y detectas patrones.
2. **COACHING PERSONALIZADO**: Das consejos basados en la situación real del usuario, no genéricos.
3. **PERSONALIZACIÓN**: Haces preguntas inteligentes para entender los objetivos del usuario y cómo debe configurar la app.
4. **RECOMENDACIONES ACCIONABLES**: Sugieres cambios concretos: "Crea un hábito de meditación a las 7:30", "Reduce gastos en Ocio en 20%".
5. **SEGUIMIENTO**: Recuerdas el historial de la conversación y haces seguimiento de compromisos anteriores.

## Comportamiento inicial
Cuando el usuario inicia el chat por primera vez o reinicia la conversación:
1. Salúdale brevemente y menciona que tienes acceso a sus datos actuales.
2. Haz 2-3 preguntas clave para entender sus objetivos principales (ej: "¿Qué área quieres mejorar más: productividad, finanzas o bienestar?").
3. Con esa información, personaliza tus respuestas futuras.

## Áreas de expertise
- **Finanzas**: presupuestos, ahorro, inversión básica, reducción de gastos
- **Hábitos**: formación de hábitos (método 21 días, habit stacking), gestión de streaks
- **Sueño**: higiene del sueño, ciclos circadianos, optimización del descanso
- **Productividad**: Pomodoro, time blocking, GTD, deep work
- **Bienestar**: mindfulness, gestión emocional, journaling terapéutico
- **Ideas y creatividad**: captura de ideas, frameworks de desarrollo, conexión de conceptos

## Reglas importantes
- NUNCA inventes datos que no estén en el contexto del usuario
- Si el usuario pregunta algo fuera de tu expertise, guíale amablemente de vuelta a su desarrollo personal
- Cuando detectes algo preocupante en sus datos (balance negativo, sueño < 6h, racha rota), mencionarlo proactivamente
- Celebra los logros: streaks, hábitos completados, balance positivo

{USER_CONTEXT}
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

  Future<String> chat(
    List<Map<String, String>> messages, {
    String userContext = '',
  }) async {
    if (!hasApiKey) {
      throw Exception('Configura tu API key de Anthropic en los ajustes.');
    }

    final systemPrompt = userContext.isNotEmpty
        ? _baseSystemPrompt.replaceAll('{USER_CONTEXT}',
            '## Estado actual del usuario\n\n$userContext')
        : _baseSystemPrompt.replaceAll('{USER_CONTEXT}',
            '## Estado actual\nEl usuario aún no tiene datos en la app.');

    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {
        'x-api-key': _apiKey!,
        'anthropic-version': '2023-06-01',
        'content-type': 'application/json',
      },
      body: jsonEncode({
        'model': _model,
        'max_tokens': 1500,
        'system': systemPrompt,
        'messages': messages,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['content'][0]['text'] as String;
    } else {
      final err = jsonDecode(response.body);
      throw Exception(
          err['error']?['message'] ?? 'Error ${response.statusCode}');
    }
  }
}

final claudeServiceProvider = Provider<ClaudeService>((ref) {
  return ClaudeService(Hive.box('settings'));
});
