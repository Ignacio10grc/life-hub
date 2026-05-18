import 'package:flutter/material.dart';

class AppColors {
  // ── Fondos — Guía Aura Premium (Oscuro Absoluto) ──────────────────────────
  static const background      = Color(0xFF05070B);  // Fondo principal ultra oscuro (OLED friendly)
  static const surface         = Color(0xFF05070B);  // Superficie nav (mismo fondo para continuidad)
  static const surfaceCard     = Color(0xFF0A0D15);  // Tarjetas y contenedores sutiles
  static const surfaceElevated = Color(0xFF101420);  // Modales, bottom sheets y diálogos

  // ── Bordes y Separadores Sutiles ──────────────────────────────────────────
  static const border          = Color(0xFF141A29);  // Borde ultra sutil para no ensuciar el diseño
  static const borderAccent    = Color(0xFF1F293F);  // Borde con foco o estado activo

  // ── Primarios Dopamínicos (Acentos de Alta Energía) ───────────────────────
  static const primary         = Color(0xFF8B5CF6);  // Violeta Neón — Identidad, acciones y foco principal
  static const primaryLight    = Color(0xFFA78BFA);  // Violeta claro para estados "hover" o gradientes
  static const primaryGlow     = Color(0x268B5CF6);  // Glow / Brillo de la marca (15% opacidad)
  static const secondary       = Color(0xFF10B981);  // Esmeralda Eléctrico — Éxito, metas críticas y "checks"
  static const accent          = Color(0xFFEAB308);  // Amarillo Cítrico — Logros especiales, racha y premium

  // ── Texto e Iconografía (Legibilidad UI/UX) ───────────────────────────────
  static const textPrimary     = Color(0xFFFFFFFF);  // Blanco puro para títulos (máximo contraste)
  static const textSecondary   = Color(0xFFA1A1AA);  // Gris zinc — subtítulos y descripciones
  static const textHint        = Color(0xFF4B5563);  // Gris oscuro — placeholders y texto deshabilitado

  // ── Semánticos (Estándar de la Industria) ─────────────────────────────────
  static const success         = Color(0xFF10B981);  // Verde esmeralda (= secondary)
  static const error           = Color(0xFFEF4444);  // Rojo vibrante (solo para errores críticos del sistema)
  static const warning         = Color(0xFFF59E0B);  // Ámbar — avisos preventivos

  // ── Colores por Módulo (Consistencia Neurocientífica) ─────────────────────
  static const finances  = Color(0xFF10B981);  // Esmeralda — Crecimiento, dinero y finanzas
  static const habits    = Color(0xFF8B5CF6);  // Violeta — Progreso continuo y dopamina directa
  static const routines  = Color(0xFF6366F1);  // Índigo — Estructura y bloques de tiempo
  static const timer     = Color(0xFFEAB308);  // Amarillo cítrico — Tiempo enfocado (Pomodoro) y oro
  static const sleep     = Color(0xFF3B82F6);  // Azul calmante — Descanso, sueño y regeneración
  static const journal   = Color(0xFFEC4899);  // Rosa/Magenta — Inteligencia emocional y reflexiones
  static const ideas     = Color(0xFFF59E0B);  // Ámbar — Creatividad, insights y notas rápidas
  static const ai        = Color(0xFF06B6D4);  // Cian — Interfaz inteligente y asistente IA
  static const steps     = Color(0xFFEAB308);  // Amarillo cítrico — Métricas físicas y rendimiento diario
}