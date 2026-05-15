# LifeHub — Tu centro de control personal

App Flutter multiplataforma: iOS, Android y Desktop (Windows/macOS/Linux).

## Módulos

| Módulo | Descripción |
|---|---|
| 💰 Finanzas | Registra ingresos y gastos, ve tu balance |
| ✅ Hábitos | Hábitos diarios con streaks y progreso |
| 🌅 Rutinas | Secuencias de tareas para mañana/tarde/noche |
| ⏱️ Temporizador | Pomodoro con foco, descanso corto y largo |
| 😴 Sueño | Registra bedtime/wake time y calidad del sueño |
| 📓 Diario | Escribe sobre tu día con estado de ánimo y etiquetas |
| 💡 Ideas | Captura y organiza tus ideas con pins y tags |
| 🤖 Asistente IA | Chat con Claude para consejos personalizados |

---

## Requisitos previos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **3.19+**
- Dart **3.3+** (viene con Flutter)
- Para móvil: Android Studio o Xcode
- Para desktop: Visual Studio (Windows) / Xcode (macOS)

Verifica con:
```bash
flutter doctor
```

---

## Instalación y ejecución

### 1. Instalar dependencias
```bash
cd life_hub
flutter pub get
```

### 2. Correr la app

**En emulador/dispositivo Android o iOS:**
```bash
flutter run
```

**En Windows:**
```bash
flutter run -d windows
```

**En macOS:**
```bash
flutter run -d macos
```

**En Chrome (web):**
```bash
flutter run -d chrome
```

---

## Configurar la IA (Claude)

1. Obtén tu API key en [console.anthropic.com](https://console.anthropic.com)
2. Abre la app → pantalla **Asistente IA**
3. Toca el ícono ⚙️ (ajustes) en la esquina superior derecha
4. Pega tu API key (`sk-ant-...`) y guarda

La key se almacena localmente en el dispositivo.

---

## Estructura del proyecto

```
lib/
├── main.dart                    # Punto de entrada
├── core/
│   ├── theme/                   # Colores y tema oscuro
│   ├── navigation/              # GoRouter
│   └── services/                # Servicio Claude API
├── features/
│   ├── auth/                    # Login, registro, recuperar contraseña
│   ├── dashboard/               # Pantalla principal
│   ├── finances/                # Finanzas
│   ├── habits/                  # Hábitos
│   ├── routines/                # Rutinas
│   ├── timer/                   # Temporizador Pomodoro
│   ├── sleep/                   # Sueño
│   ├── journal/                 # Diario
│   ├── ideas/                   # Ideas
│   └── ai/                      # Asistente IA
└── shared/
    └── widgets/                 # Componentes compartidos
```

---

## Stack técnico

- **Flutter** + Dart — UI multiplataforma
- **Riverpod** — State management
- **GoRouter** — Navegación declarativa
- **Hive** — Base de datos local (sin servidor)
- **Google Fonts (Inter)** — Tipografía
- **Claude API** — Inteligencia artificial

---

## Datos

Todos los datos se guardan **localmente en el dispositivo** usando Hive. No hay backend ni servidor. La única conexión a internet es para la IA (Claude API).
