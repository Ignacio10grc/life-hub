import 'package:flutter/material.dart';

class AppColors {
  // ── Fondos — Guía Aura ────────────────────────────────────────────────────
  static const background      = Color(0xFF0B0F19);  // Fondo principal y navegación
  static const surface         = Color(0xFF0B0F19);  // Superficie nav (mismo fondo)
  static const surfaceCard     = Color(0xFF161B26);  // Tarjetas y divisores
  static const surfaceElevated = Color(0xFF1D2535);  // Modales, sheets

  // ── Bordes ────────────────────────────────────────────────────────────────
  static const border          = Color(0xFF212C42);  // Borde sutil
  static const borderAccent    = Color(0xFF2D3E58);  // Borde con foco

  // ── Primarios Aura ────────────────────────────────────────────────────────
  static const primary         = Color(0xFF00D2FF);  // Azul eléctrico — acciones y progreso
  static const primaryLight    = Color(0xFF4DDEFF);  // Azul claro
  static const primaryGlow     = Color(0x3300D2FF);  // Glow azul
  static const secondary       = Color(0xFFFF3B30);  // Rojo / Coral Neón — alertas y metas
  static const accent          = Color(0xFFFFCC00);  // Amarillo / Oro — logros y detalles

  // ── Texto ─────────────────────────────────────────────────────────────────
  static const textPrimary     = Color(0xFFE2E8F0);  // Texto principal (máxima legibilidad)
  static const textSecondary   = Color(0xFF6B7A99);  // Texto secundario
  static const textHint        = Color(0xFF3D4F6E);  // Hint en inputs

  // ── Semánticos ────────────────────────────────────────────────────────────
  static const success         = Color(0xFF00C6A0);  // Verde teal — éxito
  static const error           = Color(0xFFFF3B30);  // Rojo coral — error (= secondary)
  static const warning         = Color(0xFFFFCC00);  // Amarillo oro — aviso (= accent)

  // ── Colores por módulo ────────────────────────────────────────────────────
  static const finances  = Color(0xFF00C6A0);  // Verde teal — finanzas/dinero
  static const habits    = Color(0xFF00D2FF);  // Azul eléctrico — progreso de hábitos
  static const routines  = Color(0xFF00D2FF);  // Azul — rutinas/acciones
  static const timer     = Color(0xFFFFCC00);  // Amarillo oro — logros de tiempo
  static const sleep     = Color(0xFF818CF8);  // Índigo suave — descanso
  static const journal   = Color(0xFFFF3B30);  // Rojo coral — diario emocional
  static const ideas     = Color(0xFFFFCC00);  // Amarillo — creatividad
  static const ai        = Color(0xFF00D2FF);  // Azul — asistente IA
  static const steps     = Color(0xFFFFCC00);  // Amarillo — estadísticas/logros
}
