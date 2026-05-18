import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/services/claude_service.dart';
import '../../../core/services/life_context_service.dart';
import '../models/chat_message.dart';
import '../providers/ai_provider.dart';

class AiScreen extends ConsumerStatefulWidget {
  const AiScreen({super.key});

  @override
  ConsumerState<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends ConsumerState<AiScreen> {
  final _ctrl = TextEditingController();
  final _scrollCtrl = ScrollController();

  @override
  void dispose() {
    _ctrl.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollCtrl.hasClients) {
        _scrollCtrl.animateTo(
          _scrollCtrl.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(aiProvider);
    final claude = ref.read(claudeServiceProvider);

    ref.listen(aiProvider, (_, next) {
      if (!next.isLoading) _scrollToBottom();
    });

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            _AgentAvatar(size: 30),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LifeCoach',
                    style: GoogleFonts.inter(
                        fontSize: 16, fontWeight: FontWeight.w700)),
                Text('Agente IA personal',
                    style: GoogleFonts.inter(
                        fontSize: 11, color: AppColors.ai)),
              ],
            ),
          ],
        ),
        actions: [
          if (state.messages.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: () => _confirmClear(context),
            ),
          IconButton(
            icon: const Icon(Icons.key_rounded),
            onPressed: () => _showApiKeyDialog(context, claude),
          ),
        ],
      ),
      body: Column(
        children: [
          if (!claude.hasApiKey) _ApiKeyBanner(onSetup: () => _showApiKeyDialog(context, claude)),
          Expanded(
            child: state.messages.isEmpty
                ? _WelcomeView(onSuggest: (text) {
                    _ctrl.text = text;
                    _send();
                  })
                : ListView.builder(
                    controller: _scrollCtrl,
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                    itemCount:
                        state.messages.length + (state.isLoading ? 1 : 0),
                    itemBuilder: (ctx, i) {
                      if (i == state.messages.length && state.isLoading) {
                        return const _TypingIndicator();
                      }
                      return _MessageBubble(message: state.messages[i]);
                    },
                  ),
          ),
          if (state.error != null)
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 4),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.error.withAlpha(26),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.error.withAlpha(77)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.error_outline_rounded,
                      color: AppColors.error, size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(state.error!,
                        style: GoogleFonts.inter(
                            color: AppColors.error, fontSize: 12)),
                  ),
                ],
              ),
            ),
          _InputBar(
            ctrl: _ctrl,
            isLoading: state.isLoading,
            onSend: _send,
          ),
        ],
      ),
    );
  }

  void _send() {
    final text = _ctrl.text.trim();
    if (text.isEmpty) return;
    _ctrl.clear();
    final context = ref.read(lifeContextProvider);
    ref.read(aiProvider.notifier).send(text, userContext: context);
    _scrollToBottom();
  }

  void _confirmClear(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Borrar conversación'),
        content: const Text('Se eliminará todo el historial de chat.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              ref.read(aiProvider.notifier).clearChat();
            },
            child: Text('Borrar',
                style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
  }

  void _showApiKeyDialog(BuildContext context, ClaudeService claude) {
    final ctrl = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('API Key de Anthropic'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.ai.withAlpha(20),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.ai.withAlpha(51)),
              ),
              child: Text(
                'Obtén tu API key en console.anthropic.com\nEmpieza por "sk-ant-..."',
                style: GoogleFonts.inter(
                    color: AppColors.ai, fontSize: 12, height: 1.5),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: ctrl,
              decoration: const InputDecoration(labelText: 'sk-ant-...'),
              obscureText: true,
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () {
              if (ctrl.text.trim().isNotEmpty) {
                claude.setApiKey(ctrl.text.trim(), Hive.box('settings'));
                Navigator.of(ctx).pop();
                setState(() {});
              }
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10)),
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}

// ── Avatar del agente ─────────────────────────────────────────────────────────

class _AgentAvatar extends StatelessWidget {
  final double size;
  const _AgentAvatar({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.ai, AppColors.primary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(size * 0.3),
      ),
      child: Icon(Icons.psychology_rounded,
          size: size * 0.55, color: Colors.white),
    );
  }
}

// ── Banner sin API key ────────────────────────────────────────────────────────

class _ApiKeyBanner extends StatelessWidget {
  final VoidCallback onSetup;
  const _ApiKeyBanner({required this.onSetup});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSetup,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        color: AppColors.warning.withAlpha(20),
        child: Row(
          children: [
            const Icon(Icons.key_rounded, color: AppColors.warning, size: 16),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Configura tu API key para activar el agente IA →',
                style: GoogleFonts.inter(
                    color: AppColors.warning,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Welcome View ──────────────────────────────────────────────────────────────

class _WelcomeView extends StatelessWidget {
  final ValueChanged<String> onSuggest;
  const _WelcomeView({required this.onSuggest});

  static const _suggestions = [
    ('🎯', 'Personaliza la app para mí', 'Hazme preguntas para personalizar mi experiencia en LifeHub según mis objetivos'),
    ('📊', 'Analiza mis datos', '¿Qué patrones ves en mis hábitos, finanzas y sueño? Dame un análisis honesto'),
    ('💡', 'Dame un plan de mejora', 'Basándote en mi situación actual, ¿qué 3 cosas debería cambiar primero?'),
    ('😴', 'Optimiza mi sueño', '¿Cómo puedo mejorar mi calidad de sueño según mis registros?'),
    ('💰', 'Revisa mis finanzas', '¿Cómo están mis finanzas? ¿Dónde puedo mejorar?'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 20),
          _AgentAvatar(size: 72),
          const SizedBox(height: 20),
          Text('LifeCoach',
              style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                  letterSpacing: -0.5)),
          const SizedBox(height: 8),
          Text(
            'Tu agente de desarrollo personal.\nAccede a todos tus datos para ayudarte.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: AppColors.textSecondary, fontSize: 14, height: 1.5),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.ai.withAlpha(20),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ai.withAlpha(51)),
            ),
            child: Text(
              '🔒 Acceso a hábitos · finanzas · sueño · diario · ideas',
              style: GoogleFonts.inter(
                  color: AppColors.ai, fontSize: 11, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 32),
          ...(_suggestions.map((s) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () => onSuggest(s.$3),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 13),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceCard,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border, width: 0.8),
                    ),
                    child: Row(
                      children: [
                        Text(s.$1, style: const TextStyle(fontSize: 18)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(s.$2,
                              style: GoogleFonts.inter(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded,
                            size: 12, color: AppColors.textHint),
                      ],
                    ),
                  ),
                ),
              ))),
        ],
      ),
    );
  }
}

// ── Message Bubble ────────────────────────────────────────────────────────────

class _MessageBubble extends StatelessWidget {
  final ChatMessage message;
  const _MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == MessageRole.user;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser) ...[
            _AgentAvatar(size: 28),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
              decoration: BoxDecoration(
                color: isUser
                    ? AppColors.primary
                    : AppColors.surfaceCard,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(18),
                  topRight: const Radius.circular(18),
                  bottomLeft: Radius.circular(isUser ? 18 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 18),
                ),
                border: isUser
                    ? null
                    : Border.all(color: AppColors.border, width: 0.8),
              ),
              child: Text(
                message.content,
                style: GoogleFonts.inter(
                  color: AppColors.textPrimary,
                  fontSize: 14,
                  height: 1.55,
                ),
              ),
            ),
          ),
          if (isUser) const SizedBox(width: 8),
        ],
      ),
    );
  }
}

// ── Typing Indicator ──────────────────────────────────────────────────────────

class _TypingIndicator extends StatelessWidget {
  const _TypingIndicator();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          _AgentAvatar(size: 28),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            decoration: BoxDecoration(
              color: AppColors.surfaceCard,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(4),
              ),
              border: Border.all(color: AppColors.border, width: 0.8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (i) => _Dot(delay: Duration(milliseconds: i * 180)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Dot extends StatefulWidget {
  final Duration delay;
  const _Dot({required this.delay});

  @override
  State<_Dot> createState() => _DotState();
}

class _DotState extends State<_Dot> with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _anim = Tween<double>(begin: 0, end: 5).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
    Future.delayed(widget.delay, () {
      if (mounted) _ctrl.forward();
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _anim,
      builder: (_, __) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Transform.translate(
          offset: Offset(0, -_anim.value),
          child: Container(
            width: 7,
            height: 7,
            decoration: const BoxDecoration(
              color: AppColors.textSecondary,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

// ── Input Bar ─────────────────────────────────────────────────────────────────

class _InputBar extends StatelessWidget {
  final TextEditingController ctrl;
  final bool isLoading;
  final VoidCallback onSend;

  const _InputBar({
    required this.ctrl,
    required this.isLoading,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          16, 10, 16, MediaQuery.of(context).viewInsets.bottom + 16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: const Border(top: BorderSide(color: AppColors.border, width: 0.8)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: ctrl,
              maxLines: null,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => onSend(),
              style: GoogleFonts.inter(
                  color: AppColors.textPrimary, fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Pregunta algo a LifeCoach...',
                hintStyle: GoogleFonts.inter(
                    color: AppColors.textHint, fontSize: 14),
                filled: true,
                fillColor: AppColors.surfaceCard,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: const BorderSide(
                      color: AppColors.border, width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: const BorderSide(
                      color: AppColors.border, width: 0.8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: const BorderSide(
                      color: AppColors.ai, width: 1.2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: isLoading ? null : onSend,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                gradient: isLoading
                    ? null
                    : const LinearGradient(
                        colors: [AppColors.ai, AppColors.primary],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                color: isLoading ? AppColors.surfaceCard : null,
                shape: BoxShape.circle,
              ),
              child: isLoading
                  ? const Center(
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: AppColors.ai),
                      ),
                    )
                  : const Icon(Icons.send_rounded,
                      size: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
