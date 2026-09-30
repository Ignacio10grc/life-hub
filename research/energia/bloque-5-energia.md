---
block: Bloque 5 — Energía
subject: Energía (ingeniería energética)
date: 2026-09-30
concepts: [5.1 Fundamentos de la energía, 5.2 Recursos energéticos, 5.3 Combustión, 5.4 Transferencia de calor, 5.5 Termodinámica aplicada, 5.6 Máquinas térmicas, 5.7 Vapor y máquinas de vapor, 5.8 Motores de combustión interna, 5.9 Turbinas, 5.10 Energía hidráulica, 5.11 Energía solar, 5.12 Energía eólica, 5.13 Energía geotérmica, 5.14 Energía marina, 5.15 Energía nuclear, 5.16 Almacenamiento de energía, 5.17 Baterías, 5.18 Hidrógeno, 5.19 Pilas de combustible, 5.20 Generación eléctrica, 5.21 Redes energéticas, 5.22 Eficiencia energética, 5.23 Seguridad energética, 5.24 Infraestructura energética, 5.25 Evolución tecnológica de la energía, 5.26 Proyectos integradores, 5.27 Mapa de dependencias]
status: sustituido
superseded_by: research/energia/bloque-5-energia-v2.md
---

> ⚠️ **Versión sustituida.** Esta es la V1. Usa [`bloque-5-energia-v2.md`](bloque-5-energia-v2.md): contiene la auditoría concepto a concepto y el plan corregido.

# Bloque 5 — Energía

> **Aviso de verificación (léelo primero).** Esta investigación se hizo desde un entorno cuya política de red **bloquea el acceso directo** a YouTube, MIT OCW, Stanford, NPTEL, Yale y a casi cualquier web: solo funcionaba el buscador. Por eso, **todas las URL de este documento están verificadas solo parcialmente**: la URL exacta, el título y (casi siempre) el autor o la institución aparecen tal cual en el índice del buscador, pero **no he podido abrir las páginas**. Eso significa que:
>
> - **No he podido confirmar las duraciones**, salvo cuando el propio buscador las daba (se indica). El resto figura como `no verificada`.
> - **No he podido revisar capítulos ni transcripciones** para confirmar la cobertura exacta. Lo que dice cada ficha en `covers` procede de la descripción indexada del vídeo o del temario del curso.
> - Estrictamente, la Regla F1 de la skill exige abrir cada enlace. Aquí se aplicó **de forma relajada y lo digo claramente**: los recursos quedan **seleccionados provisionalmente** hasta hacer una pasada de verificación completa con la red abierta (ver §8).
>
> Ningún enlace, autor ni duración es inventado: todo lo que no aparecía en las fuentes está marcado como `no verificado`.

---

## 🚨 Huecos bloqueantes

No queda **ningún apartado sin audiovisual**. Pero hay **subconceptos** sin un audiovisual S/A que cumpla F2 con garantías:

| Apartado | Subconcepto sin audiovisual S/A fiable | Qué se buscó | Alternativa actual |
|---|---|---|---|
| 5.7.2 | **Máquina de vapor alternativa** (pistón, distribución por corredera, regulador, volante) | Clases universitarias sobre la máquina de vapor alternativa, historia Newcomen–Watt en museos o universidades | Vídeo B (mrpete222/tubalcain, solo el regulador) + texto. La parte de la caldera, el vapor y la turbina **sí** está cubierta (Banerjee, clase 9). |
| 5.8.4 | **Sistemas auxiliares del MCI** (lubricación, refrigeración, sobrealimentación) | Clases NPTEL de IC Engines (IIT Guwahati/Kanpur), clase de UNED | Curso NPTEL «IC Engines and Gas Turbines», del que **no se ha localizado el ID** de cada clase; vídeo de UNED (Canal UNED) con duración no verificada. |
| 5.25 | **Historia de la energía** con autoría verificada | Conferencias de Vaclav Smil | Hay un vídeo titulado «Energy and Civilization: A History by Vaclav Smil», pero **no he podido confirmar si es una conferencia del propio Smil o un resumen o audiolibro**. Queda como provisional. |

---

## 1. Resumen del bloque

**Objetivo:** poder seguir la cadena completa *recurso → extracción → conversión → máquina energética → generación → almacenamiento → transmisión → distribución → consumo → medición → control → optimización*, con criterio cuantitativo (órdenes de magnitud, rendimientos y límites termodinámicos).

**Estructura de aprendizaje recomendada:** una **columna vertebral** audiovisual con dos cursos completos y coherentes que recorren casi todo el bloque, más **clases especializadas** para profundizar:

1. **Stanford — *Understand Energy* (CEE 107A/207A)**: clases completas por tema (energía básica, combustibles fósiles, hidráulica, solar, geotermia, nuclear, almacenamiento, hidrógeno, generación, red y eficiencia). Visión de sistema, economía e impacto. Nivel introducción-universitario.
2. **NPTEL — *Energy Resources and Technology* (Prof. S. Banerjee, IIT Kharagpur, 40 clases)**: la versión ingenieril. Termodinámica, centrales térmicas, hidráulica, nuclear, solar térmica y FV, eólica, mareomotriz, geotérmica, almacenamiento e hidrógeno.
3. **Profundización** con clases universitarias concretas: Yale PHYS 200 (termodinámica), Cal Poly Pomona (ciclos y transferencia de calor), IIT Kanpur (combustión), MIT 2.627 (fotovoltaica), MIT 22.01 (nuclear), MIT 3.091 (baterías), MIT 8.02 (inducción) y CSB (seguridad).
4. **Textos de referencia gratuitos (nivel S)**: MacKay, *Sustainable Energy – without the hot air* (cuantificación); Lienhard, *A Heat Transfer Textbook* (MIT); manuales DOE *Fundamentals Handbooks*; apuntes MIT 16.Unified de termodinámica; PVEducation; guía de autoconsumo del IDAE (contexto español).

**Nota de alcance:** el temario tiene unos 400 subconceptos (viñetas). La skill exige un audiovisual por **concepto**. Aquí se tomó como concepto **cada apartado 5.x** (y sus subapartados principales). Las viñetas se tratan como subconceptos que cubren esos vídeos. 5.26 (proyectos) y 5.27 (mapa) no son conceptos que aprender, sino práctica y síntesis: se tratan aparte.

## 2. Dependencias relevantes

```
PRERREQUISITOS (bloques anteriores)
├── Matemáticas: álgebra, cálculo diferencial/integral básico, logaritmos
├── Física (Bloque 2): mecánica (trabajo, energía, potencia), termodinámica fundamental,
│   fluidos, electricidad y magnetismo básicos, física atómica/nuclear básica
├── Química: reacciones, estequiometría, redox, enlace
└── Bloque 4 — Máquinas: mecanismos, pistón-biela-manivela, transmisiones, materiales

            ↓
BLOQUE 5 — ENERGÍA
  5.1 → 5.5 (fundamentos + termo aplicada)  →  5.6 → 5.9 (máquinas térmicas)
  5.2 → 5.3 (recursos + combustión)          →  5.10 → 5.15 (fuentes)
  5.16 → 5.19 (almacenamiento)               →  5.20 → 5.21 (generación + red)
  5.22 → 5.25 (eficiencia, seguridad, integración, historia) → 5.26 (proyectos)
            ↓
BLOQUE 6 — Electricidad, electrónica y control
  (máquinas eléctricas, electrónica de potencia —inversores, BMS—, control de red, automatización)
```

Dependencias internas críticas:
- **5.5 → 5.6 → 5.7/5.8/5.9**: sin 1.ª y 2.ª ley (y Carnot) no se entienden los rendimientos de los ciclos.
- **5.3 → 5.8**: la estequiometría y el poder calorífico son la base del consumo específico.
- **5.4 → 5.11 térmica / 5.16 térmico / 5.22 aislamiento**.
- **Electromagnetismo (Bloque 2) → 5.20 → 5.21**.
- **Física nuclear (Bloque 2) → 5.15**. **Redox (Química) → 5.17 → 5.19**.

## 3. Cobertura audiovisual por concepto

Leyenda de verificación: ✔︎p = URL y título confirmados en el índice del buscador (verificación parcial, 2026-09-30).

| Concepto | Audiovisual principal (enlace directo) | Refuerzo | Tier |
|---|---|---|---|
| 5.1 Fundamentos | [Stanford — Energy Basics Lecture](https://www.youtube.com/watch?v=TGvyZ7zEylk) ✔︎p | [NPTEL Banerjee — L1 Thermodynamics: The Fundamentals of Energy](https://www.youtube.com/watch?v=BBQ2o0LcmnQ) ✔︎p | S |
| 5.2 Recursos | [Stanford — Introduction to Fossil Fuels Lecture](https://www.youtube.com/watch?v=siTvGF5UBBI) ✔︎p | [Oil](https://www.youtube.com/watch?v=2I59Yf733Zo) · [Coal](https://www.youtube.com/watch?v=Ok4TprMotqE) · [Biomass](https://www.youtube.com/watch?v=BpI4BMki2tE) ✔︎p | S |
| 5.3 Combustión | [IIT Kanpur (Mishra) — L09 Stoichiometric calculations for air gas mixture](https://www.youtube.com/watch?v=EYKeBg4DmHI) ✔︎p | [Introducción del curso](https://www.youtube.com/watch?v=s57q7CiWrT8) · avanzado: [Princeton CEFRC — Matalon, Day 1 Part 1](https://www.youtube.com/watch?v=k7GHxTz96do) ✔︎p | S |
| 5.4 Transferencia de calor | [Cal Poly Pomona (Biddle) — Heat Transfer (01)](https://www.youtube.com/watch?v=7Bj3N1E7vZk) ✔︎p | [IIT Bombay (Sukhatme) — Lecture 1 Heat and Mass Transfer](https://www.youtube.com/watch?v=qa-PQOjS3zA) ✔︎p | A / S |
| 5.5 Termodinámica aplicada | [Yale PHYS 200 — L22 Boltzmann Constant and First Law](https://oyc.yale.edu/physics/phys-200/lecture-22) ✔︎p | [L23 Second Law and Carnot's Engine](https://www.youtube.com/watch?v=DeNBWsZHXTE) ✔︎p | S |
| 5.6 Máquinas térmicas | [IIT Bombay — Mod-01 Lec-18 Rankine, Brayton, Stirling and Ericsson cycles](https://www.youtube.com/watch?v=2x_wKoT0Y4A) ✔︎p | Cal Poly: [Otto/Diesel (29/51)](https://www.youtube.com/watch?v=OwcCS1hmJkc) · [Stirling/Ericsson/Brayton (31/51)](https://www.youtube.com/watch?v=He3n4GF--qg) · [Rankine (34/51)](https://www.youtube.com/watch?v=biHGK7lbxC0) ✔︎p | S / A |
| 5.7 Vapor | [NPTEL Banerjee — L9 Thermal Power Plants](https://www.youtube.com/watch?v=8uwrMLrqQlU) ✔︎p | [Cal Poly Rankine (34/51)](https://www.youtube.com/watch?v=biHGK7lbxC0); 🚨 máquina alternativa: [tubalcain — regulador](https://www.youtube.com/watch?v=WLBTKBgTogo) (B) | S |
| 5.8 MCI | [Cal Poly — Otto cycle, Diesel cycle (29/51)](https://www.youtube.com/watch?v=OwcCS1hmJkc) ✔︎p | [Canal UNED — Motores de combustión interna alternativos](https://canal.uned.es/video/5a6f99d7b1111f743a8b4c75) ✔︎p (ES) · [LECTURE 3: IC Engine Components](https://www.youtube.com/watch?v=BJYSyA-u61U) (C, autor no verificado) | A / S |
| 5.9 Turbinas | [IIT Bombay — Mod-01 Lec-18](https://www.youtube.com/watch?v=2x_wKoT0Y4A) (gas) + [Banerjee L9](https://www.youtube.com/watch?v=8uwrMLrqQlU) (vapor) ✔︎p | [Banerjee L11 Hydroelectric Power](https://www.youtube.com/watch?v=4LGxEhBmIKw) (hidráulicas) · [IIT KGP (Som) — Pelton](https://www.youtube.com/watch?v=G4d2idmkEn8) · [Banerjee L22 Wind Energy II](https://www.youtube.com/watch?v=gMxPkVQYXz8) ✔︎p | S |
| 5.10 Hidráulica | [Stanford — Hydroelectric Power Lecture](https://www.youtube.com/watch?v=rkQRBBwvhBs) ✔︎p | [Banerjee L10](https://www.youtube.com/watch?v=i9yCpuiMze0) · [L11](https://www.youtube.com/watch?v=4LGxEhBmIKw) ✔︎p | S |
| 5.11 Solar | [Stanford — Solar Energy Lecture](https://www.youtube.com/watch?v=B5Ejxu3ACd0) ✔︎p | Térmica: [Banerjee L15 Solar Thermal Energy Conversion](https://www.youtube.com/watch?v=mpHZWYpKDJg) (57:13) · FV: [MIT 2.627 L1](https://www.youtube.com/watch?v=LOVZE9WalRE), [L2 Solar Resource](https://www.youtube.com/watch?v=BcVzc6IGwS0), [L17 Modules, Systems](https://www.youtube.com/watch?v=C42jXQLc_Jo) ✔︎p | S |
| 5.12 Eólica | [Stanford — Sanjiva Lele: Wind Energy](https://www.youtube.com/watch?v=_Hj7K54lAEQ) ✔︎p | [Banerjee L22 Wind Energy II](https://www.youtube.com/watch?v=gMxPkVQYXz8) ✔︎p | S |
| 5.13 Geotérmica | [Stanford — Geothermal Lecture](https://www.youtube.com/watch?v=selKK3YjrSY) ✔︎p | [Banerjee L35 Geothermal Energy](https://www.youtube.com/watch?v=x2Lxt-KS_v4) ✔︎p | S |
| 5.14 Marina | [Banerjee L32 Tidal Energy](https://www.youtube.com/watch?v=qu3vHW3mZ3E) ✔︎p | [Banerjee L34 Solar Pond and Wave Power](https://www.youtube.com/watch?v=a008raT0Jf8) ✔︎p | S |
| 5.15 Nuclear | [Stanford — Nuclear Fission Lecture](https://www.youtube.com/watch?v=c4s9gN0qYpI) ✔︎p | [MIT 22.01 L20 How Nuclear Energy Works](https://www.youtube.com/watch?v=RW2DPHAoXiQ) (fisión y fusión) · [Banerjee L12](https://www.youtube.com/watch?v=uulD0KVkmWg) · fusión: [Dennis Whyte — USask Cheriton Lecture](https://www.youtube.com/watch?v=Al3JZyCnT5I) ✔︎p | S |
| 5.16 Almacenamiento | [Stanford — Energy Storage Lecture](https://www.youtube.com/watch?v=iu738Ugt7LQ) ✔︎p | [Banerjee L34](https://www.youtube.com/watch?v=a008raT0Jf8) (estanque solar = almacenamiento térmico) | S |
| 5.17 Baterías | [MIT 3.091 (Grossman) — The Battery Revolution](https://www.youtube.com/watch?v=SDrn8A4IzrA) ✔︎p | [Stanford Energy Storage](https://www.youtube.com/watch?v=iu738Ugt7LQ) | S |
| 5.18 Hidrógeno | [Stanford — Hydrogen Lecture](https://www.youtube.com/watch?v=yB2vlk_PDw4) ✔︎p | — | S |
| 5.19 Pilas de combustible | [NPTEL IIT KGP — Lecture 61: Fuel Cells](https://www.youtube.com/watch?v=L2VSOccUrSk) ✔︎p | [Stanford Hydrogen](https://www.youtube.com/watch?v=yB2vlk_PDw4) | S |
| 5.20 Generación eléctrica | [MIT 8.02 (Lewin) — Lec 16 Electromagnetic Induction](https://www.youtube.com/watch?v=FUUMCT7FjaI) ✔︎p | [Stanford — Electricity Generation Lecture](https://www.youtube.com/watch?v=b5vri-yVibY) ✔︎p | S |
| 5.21 Redes | [Stanford — The Electricity Grid Lecture](https://www.youtube.com/watch?v=u7TAYlMZ6_E) ✔︎p | — | S |
| 5.22 Eficiencia | [Stanford — Energy Efficiency Lecture (Swisher)](https://www.youtube.com/watch?v=WyjgY0xmXHA) ✔︎p | — | S |
| 5.23 Seguridad | [CSB — Anatomy of a Disaster](https://www.youtube.com/watch?v=XuJtdQOU_Z4) ✔︎p | Radiación: MIT 22.01 (curso) | S |
| 5.24 Infraestructura | [Stanford Energy Basics](https://www.youtube.com/watch?v=TGvyZ7zEylk) + [Generation](https://www.youtube.com/watch?v=b5vri-yVibY) + [Grid](https://www.youtube.com/watch?v=u7TAYlMZ6_E) | — | S |
| 5.25 Evolución | ⚠️ [«Energy and Civilization: A History by Vaclav Smil»](https://www.youtube.com/watch?v=gWBigeRHD6o) — **autoría y formato no verificados** | Texto: MacKay; libro de Smil (de pago) | ? |
| 5.26 Proyectos | No aplica F3: es práctica (ver §4, MIT D-Lab Energy e IDAE) | — | — |
| 5.27 Mapa | No aplica: es síntesis (ver §2) | — | — |

## 4. Recursos seleccionados

Campos comunes: `direct_link_verified: parcial — 2026-09-30 (URL + título en índice del buscador; página no abierta por bloqueo de red)`. `complete_content_in_video` en los vídeos: *«probable»*. Se trata de clases universitarias completas grabadas (no trailers). **Pendiente de confirmar duración y contenido.**

### 4.1 Columna vertebral — Stanford *Understand Energy*

```yaml
name: Stanford Understand Energy — clases completas del curso (serie)
type: lecciones de curso universitario (una por tema)
format: audiovisual
url: (una URL por tema; ver tabla §3). Energy Basics → https://www.youtube.com/watch?v=TGvyZ7zEylk
direct_link_verified: parcial — 2026-09-30
author: Diana Gragg (PhD, Core Lecturer CEE) y profesores invitados (p. ej. Joel N. Swisher en eficiencia; Kirsten Stasio en solar)
institution: Stanford University — Precourt Institute for Energy / Civil & Environmental Engineering
source_tier: S
language: inglés (subtítulos automáticos de YouTube, no verificados)
cost: gratuito
level: introducción → universitario
duration: no verificada (la versión «10-Minute Take» es un resumen y NO se usa como principal)
complete_content_in_video: probable — el canal oficial las describe como «full-length course lectures» del curso CEE 107A/207A
learning_type: aprender
theory_practice: teórico
covers:
  - Energy Basics: energía frente a potencia, leyes de la termodinámica, calidad de la energía, formas y orígenes de la energía, conversión de recursos en servicios, rendimiento de conversión
  - Recursos: combustibles fósiles (origen, recursos frente a reservas), petróleo (refino, midstream), carbón (minería, transporte, generación), biomasa
  - Fuentes: hidráulica (historia, instalaciones, operación, impacto, bombeo), solar, geotermia (exploración, desarrollo, tecnología, economía), nuclear (fisión: historia, funcionamiento comercial, seguridad)
  - Sistema: almacenamiento (tecnologías, despliegue a escala de red), hidrógeno (producción, transporte, usos), generación eléctrica (LCOE, impactos), red (transmisión, estructura del sector, fiabilidad), eficiencia (diseño integrador, barreras, políticas)
does_not_cover:
  - Cálculo ingenieril detallado de ciclos, transferencia de calor o máquinas
  - Contexto español o canario (mercado, normativa)
prerequisites: [física de bachillerato, unidades SI]
concepts: [5.1, 5.2, 5.10, 5.11, 5.13, 5.15, 5.16, 5.18, 5.20, 5.21, 5.22, 5.24]
practical_component: [cálculos de órdenes de magnitud y LCOE en clase (según descripción)]
authority: [curso impartido en Stanford durante más de 30 años]
quality_notes: [hay varias versiones por año de algunas clases (p. ej. Energy Storage: iu738Ugt7LQ, FasqSXv_S5I, ZDCPEUPkcRA; Hydrogen: yB2vlk_PDw4, Dwf39Rn2tpk); se eligió la más reciente según el índice]
why_selected: [visión sistémica completa y coherente del bloque, una clase por fuente, fuente S]
recommended_position: [primero de cada apartado: da el mapa antes del detalle ingenieril]
```

URLs de la serie seleccionadas: Energy Basics `TGvyZ7zEylk` · Intro Fossil Fuels `siTvGF5UBBI` · Oil `2I59Yf733Zo` · Coal `Ok4TprMotqE` · Biomass `BpI4BMki2tE` · Hydroelectric `rkQRBBwvhBs` · Solar `B5Ejxu3ACd0` · Geothermal `selKK3YjrSY` · Introduction to Nuclear Energy `RNkQeBxwrM0` · Nuclear Fission `c4s9gN0qYpI` · Energy Storage `iu738Ugt7LQ` · Hydrogen `yB2vlk_PDw4` · Electricity Generation `b5vri-yVibY` · Electricity Grid `u7TAYlMZ6_E` · Energy Efficiency `WyjgY0xmXHA` (todas en `https://www.youtube.com/watch?v=<ID>`).

### 4.2 Columna vertebral ingenieril — NPTEL *Energy Resources and Technology*

```yaml
name: Energy Resources and Technology (40 clases) — clases seleccionadas
type: lecciones de curso universitario
format: audiovisual
url: una por clase (ver tabla §3). L1 → https://www.youtube.com/watch?v=BBQ2o0LcmnQ
direct_link_verified: parcial — 2026-09-30
author: Prof. Soumitro Banerjee (Departamento de Ingeniería Eléctrica)
institution: IIT Kharagpur — NPTEL (programa del Gobierno de la India)
source_tier: S
language: inglés (acento indio)
cost: gratuito
level: universitario
duration: L15 57:13 (dato del buscador); L8 52:49 y L37 55:59 según el buscador, pero de esas dos no se localizó la URL; resto no verificada
complete_content_in_video: probable — clases magistrales completas numeradas de la serie oficial de NPTEL
learning_type: aprender
theory_practice: teórico (con cálculos)
covers:
  - L1 Fundamentos termodinámicos de la energía (calidad de la energía)
  - L9 Centrales térmicas (caldera, vapor, turbina, condensador)
  - L10–L11 Hidroeléctrica (incluidas las turbinas hidráulicas; subtemas no verificados)
  - L12 Generación nuclear
  - L15 Conversión solar térmica
  - L22 Eólica II (conversión eléctrica)
  - L32 Mareomotriz · L34 Estanque solar y oleaje · L35 Geotermia
does_not_cover:
  - Economía, mercados y políticas (lo cubre Stanford)
  - Tecnologías posteriores a la grabación (2000s): LiFePO4 moderno, electrolizadores PEM actuales, etc.
prerequisites: [5.1, termodinámica fundamental]
concepts: [5.1, 5.7, 5.9, 5.10, 5.11, 5.12, 5.13, 5.14, 5.15]
practical_component: [cálculos de rendimiento y potencia en clase]
authority: [NPTEL / IIT; profesor de ingeniería eléctrica especializado en sistemas de potencia]
quality_notes: [grabación antigua con calidad de vídeo modesta; contenido sólido y atemporal en los fundamentos]
why_selected: [el único curso completo encontrado que recorre casi todas las fuentes con enfoque ingenieril]
recommended_position: [después de la clase de Stanford del mismo tema]
```

### 4.3 Termodinámica, ciclos y transferencia de calor

```yaml
name: Yale PHYS 200 — L22 First Law · L23 Second Law and Carnot's Engine · L24 Entropy
type: lecciones de curso universitario
format: audiovisual
url: https://oyc.yale.edu/physics/phys-200/lecture-22 · https://www.youtube.com/watch?v=DeNBWsZHXTE (L23)
direct_link_verified: parcial — 2026-09-30 (el enlace de L24 no se localizó; está en la lista de reproducción oficial https://www.youtube.com/playlist?list=PLYQdyOTZg5nt0ELalB7iH2xzCEXSXgQPi)
author: Ramamurti Shankar
institution: Yale University — Open Yale Courses
source_tier: S
language: inglés
cost: gratuito
level: universitario (1.er curso)
duration: no verificada (las clases de Yale suelen durar ~70 min)
complete_content_in_video: probable — clase magistral completa grabada en 2006
learning_type: aprender
theory_practice: teórico
covers: [calor, temperatura microscópica, 1.ª ley, 2.ª ley, máquina y ciclo de Carnot, entropía, irreversibilidad]
does_not_cover: [entalpía y sistemas abiertos en ingeniería, tercera ley, energía libre, procesos politrópicos]
prerequisites: [mecánica newtoniana, cálculo]
concepts: [5.1.1, 5.5, 5.6.2 Carnot]
practical_component: [problemas de la web del curso]
authority: [Yale; Shankar es un físico y docente de referencia]
why_selected: [es la mejor explicación física, desde los principios, de por qué existe el límite de Carnot]
recommended_position: [al inicio de 5.5, antes de los ciclos]
```

```yaml
name: Cal Poly Pomona — Thermodynamics (serie de 51) — clases 29, 31 y 34
type: lecciones de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=OwcCS1hmJkc (29 Otto/Diesel) · https://www.youtube.com/watch?v=He3n4GF--qg (31 Stirling/Ericsson/Brayton) · https://www.youtube.com/watch?v=biHGK7lbxC0 (34 Rankine)
direct_link_verified: parcial — 2026-09-30
author: canal CPPMechEngTutorials (profesorado de Cal Poly Pomona; nombre del docente no verificado)
institution: California State Polytechnic University, Pomona
source_tier: A
language: inglés
cost: gratuito
level: universitario (Termodinámica de ingeniería, basado en Çengel & Boles, 8.ª ed.)
duration: no verificada (la clase 34 tiene marcas de tiempo hasta al menos 48:23)
complete_content_in_video: probable — clases grabadas con marcas de tiempo; la 34 incluye repaso, ecuaciones, ejemplos, Rankine no ideal y mejora del rendimiento
learning_type: ambos
theory_practice: mixto (teoría + ejemplos resueltos)
covers: [Otto, Diesel, Stirling, Ericsson, Brayton ideal y no ideal, Rankine ideal/no ideal/con recalentamiento, rendimiento isentrópico]
does_not_cover: [construcción mecánica de los motores; combustión]
prerequisites: [1.ª y 2.ª ley, tablas de vapor, entalpía]
concepts: [5.6, 5.7, 5.8.2, 5.8.3, 5.9.2]
authority: [universidad politécnica estatal; sigue el libro de texto estándar]
why_selected: [el paso de la física (Yale) a la ingeniería numérica de ciclos]
recommended_position: [después de Yale L23 y de IIT Bombay Lec-18]
```

```yaml
name: IIT Bombay — Introduction to Aerospace Propulsion, Mod-01 Lec-18 Rankine, Brayton, Stirling and Ericsson cycles
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=2x_wKoT0Y4A
direct_link_verified: parcial — 2026-09-30
author: Prof. Bhaskar Roy y Prof. A. M. Pradeep
institution: IIT Bombay — NPTEL
source_tier: S
language: inglés
cost: gratuito
level: universitario
duration: no verificada
complete_content_in_video: probable — clase completa de la serie Mod-01
learning_type: aprender
theory_practice: teórico
covers: [comparación de ciclos Rankine, Brayton, Stirling y Ericsson; base de la turbina de gas]
does_not_cover: [componentes de la turbina de gas en detalle]
prerequisites: [5.5]
concepts: [5.6.2, 5.6.3, 5.9.2]
why_selected: [compara los ciclos en una sola clase, que es justo lo que pide 5.6.3]
recommended_position: [inicio de 5.6]
```

```yaml
name: Cal Poly Pomona — Heat Transfer (01) Introduction to heat transfer, conduction, convection, and radiation (+ serie completa)
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=7Bj3N1E7vZk
direct_link_verified: parcial — 2026-09-30
author: Prof. John Biddle
institution: Cal Poly Pomona (ME 4150 Heat Transfer)
source_tier: A
language: inglés
cost: gratuito
level: universitario
duration: no verificada
complete_content_in_video: probable — primera clase de una serie de 37 (la última es «Real world heat transfer examples», https://www.youtube.com/watch?v=dbnUdPctD1s)
learning_type: aprender
theory_practice: mixto
covers: [modos de transferencia: conducción, convección y radiación (introducción); la serie cubre resistencia térmica, convección, radiación y factores de visión]
does_not_cover: [en esta clase, el desarrollo de cada modo; hay que seguir la serie]
prerequisites: [cálculo, 1.ª ley]
concepts: [5.4]
why_selected: [curso de grado completo, grabado en 2020 y 2022 con buena calidad]
recommended_position: [inicio de 5.4; acompañar con Lienhard]
alternativa_S: IIT Bombay (Sukhatme & Gaitonde) — Lecture 1 Introduction on Heat and Mass Transfer — https://www.youtube.com/watch?v=qa-PQOjS3zA
```

### 4.4 Combustión y motores

```yaml
name: Fundamentals of Combustion – I (IIT Kanpur) — Introducción + L09 Stoichiometric calculations for air gas mixture
type: lecciones de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=s57q7CiWrT8 (intro) · https://www.youtube.com/watch?v=EYKeBg4DmHI (L09)
direct_link_verified: parcial — 2026-09-30 (L08 «Laws of thermodynamics and Stoichiometry» y L13–L14 «Adiabatic flame temperature» existen según el temario, pero no se localizó su URL)
author: Prof. D. P. Mishra (Ingeniería Aeroespacial)
institution: IIT Kanpur — NPTEL
source_tier: S
language: inglés
cost: gratuito
level: universitario
duration: no verificada (el curso completo dura unas 9 h según el agregador)
complete_content_in_video: probable
learning_type: ambos
theory_practice: mixto
covers: [tipos de combustible, estequiometría aire-combustible, calor de reacción, temperatura adiabática de llama (en el curso)]
does_not_cover: [combustibles concretos como hidrógeno o biocombustibles modernos en profundidad; la llama turbulenta (parte 2)]
prerequisites: [química básica, 1.ª ley]
concepts: [5.3.1, 5.3.2]
why_selected: [el curso universitario de combustión más accesible y en abierto que se ha encontrado]
recommended_position: [5.3, antes de MCI]
avanzado_opcional: Princeton-CEFRC Combustion Summer School — Matalon, Combustion Theory Day 1 Part 1 — https://www.youtube.com/watch?v=k7GHxTz96do (nivel de posgrado)
```

```yaml
name: Canal UNED — Motores de combustión interna alternativos
type: vídeo docente universitario
format: audiovisual
url: https://canal.uned.es/video/5a6f99d7b1111f743a8b4c75
direct_link_verified: parcial — 2026-09-30
author: Marta Muñoz Domínguez y Antonio José Rovira de Antonio (Dpto. Ingeniería Energética)
institution: UNED
source_tier: S
language: español
cost: gratuito
level: universitario
duration: no verificada
complete_content_in_video: NO VERIFICADO — puede ser un vídeo de presentación más que una clase completa; comprobar antes de usar
learning_type: aprender
theory_practice: teórico
covers: [MCIA (según el título)]
does_not_cover: [no verificable sin abrir la página]
concepts: [5.8]
why_selected: [única fuente S en español encontrada para MCI; útil por la terminología en español]
recommended_position: [complemento de 5.8]
```

### 4.5 Fuentes específicas

```yaml
name: MIT 2.627 Fundamentals of Photovoltaics — L1 Introduction, L2 The Solar Resource, L17 Modules, Systems, and Reliability
type: lecciones de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=LOVZE9WalRE · https://www.youtube.com/watch?v=BcVzc6IGwS0 · https://www.youtube.com/watch?v=C42jXQLc_Jo
direct_link_verified: parcial — 2026-09-30
author: Prof. Tonio Buonassisi
institution: MIT OpenCourseWare (Fall 2011)
source_tier: S
language: inglés
cost: gratuito
level: universitario → avanzado
duration: 60–75 min por clase (dato de la descripción de la lista de reproducción; no verificado por clase)
complete_content_in_video: probable — clases magistrales OCW completas
learning_type: aprender
theory_practice: teórico
covers: [recurso solar, fotones, unión p-n y célula (L7, L9 en la serie), módulos, sistemas, fiabilidad]
does_not_cover: [diseño práctico de una instalación aislada; normativa española]
prerequisites: [física de semiconductores básica (se introduce), electromagnetismo]
concepts: [5.11.2, 5.11.3]
why_selected: [referencia universitaria en FV]
recommended_position: [tras la clase de Stanford Solar; acompañar con PVEducation]
```

```yaml
name: Sanjiva Lele — Wind Energy (Stanford)
type: conferencia universitaria
format: audiovisual
url: https://www.youtube.com/watch?v=_Hj7K54lAEQ
direct_link_verified: parcial — 2026-09-30
author: Sanjiva Lele (catedrático de Aeronáutica y Astronáutica y de Ingeniería Mecánica, Stanford)
institution: Stanford University
source_tier: S
language: inglés
cost: gratuito
level: universitario
duration: no verificada (grabada el 13-09-2016)
complete_content_in_video: probable
learning_type: aprender
theory_practice: teórico
covers: [energía eólica desde la aerodinámica (según el perfil del autor; temario exacto no verificado)]
does_not_cover: [instalación de minieólica]
concepts: [5.12, 5.9.4]
why_selected: [experto en aerodinámica, justo el hueco que deja la clase generalista]
recommended_position: [5.12, después de Banerjee L22]
```

```yaml
name: MIT 22.01 — Lecture 20: How Nuclear Energy Works
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=RW2DPHAoXiQ
direct_link_verified: parcial — 2026-09-30
author: Michael Short
institution: MIT OpenCourseWare (Fall 2016)
source_tier: S
language: inglés
cost: gratuito
level: universitario
duration: no verificada
complete_content_in_video: probable — clase OCW completa
learning_type: aprender
theory_practice: teórico
covers: [funcionamiento del reactor, moderación, absorción, fugas, espectro rápido frente a térmico, reproducción de combustible, venenos neutrónicos, realimentación por temperatura y densidad, reactores avanzados de fisión y de fusión]
does_not_cover: [ciclo del combustible completo (enriquecimiento, residuos) en detalle]
prerequisites: [física nuclear básica (clases anteriores de 22.01)]
concepts: [5.15.2, 5.15.3, 5.15.5]
why_selected: [la mejor clase OCW sobre la física del reactor]
recommended_position: [después de la clase de Stanford Nuclear Fission]
fusión_complemento: Dennis Whyte (director del MIT PSFC) — USask Engineering Cheriton Guest Lecture on Fusion Research — https://www.youtube.com/watch?v=Al3JZyCnT5I
```

```yaml
name: MIT 3.091 — The Battery Revolution (Lecture 35)
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=SDrn8A4IzrA
direct_link_verified: parcial — 2026-09-30 (página OCW: https://ocw.mit.edu/courses/3-091-introduction-to-solid-state-chemistry-fall-2018/resources/the-battery-revolution-lec35/)
author: Jeffrey C. Grossman
institution: MIT OpenCourseWare (Fall 2018)
source_tier: S
language: inglés
cost: gratuito
level: universitario (1.er curso)
duration: no verificada
complete_content_in_video: probable
learning_type: aprender
theory_practice: teórico
covers: [química de las baterías (redox, electrodos, electrolito) aplicada a la revolución de las baterías]
does_not_cover: [BMS, gestión térmica, degradación a nivel de sistema, dimensionado]
prerequisites: [redox, enlace químico]
concepts: [5.17, 5.16.3]
why_selected: [fundamento químico riguroso de las baterías]
recommended_position: [inicio de 5.17, después de Stanford Energy Storage]
```

```yaml
name: NPTEL — Lecture 61: Fuel Cells
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=L2VSOccUrSk
direct_link_verified: parcial — 2026-09-30
author: Prof. Anandaroop Bhattacharya (curso de conservación de energía; asignación según el buscador, no verificada)
institution: IIT Kharagpur — NPTEL
source_tier: S
language: inglés
cost: gratuito
level: universitario
duration: no verificada
complete_content_in_video: probable
learning_type: aprender
theory_practice: teórico
covers: [pilas de combustible (tipos y principio electroquímico, según el título)]
does_not_cover: [no verificable en detalle]
concepts: [5.19]
why_selected: [único audiovisual S localizado dedicado a pilas de combustible]
recommended_position: [después de Stanford Hydrogen]
```

```yaml
name: MIT 8.02 — Lec 16: Electromagnetic Induction, Faraday's Law, Lenz Law
type: lección de curso universitario
format: audiovisual
url: https://www.youtube.com/watch?v=FUUMCT7FjaI
direct_link_verified: parcial — 2026-09-30 (espejo institucional: https://videolectures.net/videos/mit802s02_lewin_lec16)
author: Walter Lewin
institution: MIT (grabación de primavera de 2002)
source_tier: S (contenido); nota: MIT retiró de OCW los materiales de Lewin en 2014 por motivos no académicos; el contenido físico no se vio afectado
language: inglés
cost: gratuito
level: universitario (1.er curso)
duration: no verificada
complete_content_in_video: probable
learning_type: aprender
theory_practice: teórico (con demostraciones)
covers: [inducción, ley de Faraday, ley de Lenz, campos no conservativos: la física del generador]
does_not_cover: [alternador síncrono/asíncrono como máquina; eso es del Bloque 6]
prerequisites: [campo magnético, flujo]
concepts: [5.20]
why_selected: [la base física de toda la generación eléctrica rotativa]
recommended_position: [5.20, antes de Stanford Electricity Generation]
```

```yaml
name: U.S. Chemical Safety Board — Anatomy of a Disaster (explosión en la refinería BP Texas City, 2005)
type: vídeo de investigación de un organismo público
format: audiovisual
url: https://www.youtube.com/watch?v=XuJtdQOU_Z4
direct_link_verified: parcial — 2026-09-30 (copia en Internet Archive: https://archive.org/details/CSB_Safety_Video_Anatomy_of_a_Disaster)
author: U.S. Chemical Safety and Hazard Investigation Board
institution: Gobierno federal de EE. UU.
source_tier: S
language: inglés
cost: gratuito
level: aplicación práctica
duration: la obra completa dura 56 min según la CSB; NO verificado si el enlace de YouTube es la versión completa o solo la animación de 9 min
complete_content_in_video: no verificado (ver duración)
learning_type: aprender
theory_practice: práctico (análisis de un accidente real)
covers: [incendio y explosión de hidrocarburos, cultura de seguridad, factores humanos, diseño de equipos, ubicación de instalaciones]
does_not_cover: [radiación, riesgo eléctrico, baterías]
concepts: [5.23]
why_selected: [enseña seguridad energética como sistema a partir de un caso real, con autoridad pública]
recommended_position: [5.23]
```

### 4.6 Textos de referencia (no audiovisuales)

```yaml
- name: Sustainable Energy – without the hot air (MacKay, 2009)
  format: texto
  url: https://www.withouthotair.com/download.html
  author: David J. C. MacKay (FRS; después asesor científico jefe del DECC del Reino Unido)
  source_tier: S/A
  cost: gratuito (PDF oficial)
  level: fundamentos → universitario
  covers: [cuantificación de consumo y producción en kWh/día por persona para todas las fuentes, almacenamiento, eficiencia]
  does_not_cover: [datos posteriores a 2009 (coste FV/baterías desfasado)]
  concepts: [5.1, 5.2, 5.10–5.16, 5.22, 5.24]
  why_selected: [enseña a razonar con números, justo el antídoto contra los mitos energéticos]
  recommended_position: [en paralelo a todo el bloque]

- name: A Heat Transfer Textbook, 5.ª ed. (Lienhard IV y Lienhard V, 2019)
  format: texto
  url: https://ahtt.mit.edu/
  author: John H. Lienhard IV y John H. Lienhard V (MIT)
  source_tier: S
  cost: gratuito (PDF de 784 páginas)
  level: universitario
  covers: [conducción estacionaria y transitoria, convección natural y forzada, radiación, intercambiadores de calor]
  concepts: [5.4]
  verification_note: el buscador indexó ahtt-dev.mit.edu y cita ahtt.mit.edu como ubicación oficial; confirmar

- name: DOE Fundamentals Handbook — Thermodynamics, Heat Transfer, and Fluid Flow (DOE-HDBK-1012/1-92, vol. 1)
  format: texto
  url: https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1012-92_VOL1.pdf
  author: U.S. Department of Energy
  source_tier: S
  cost: gratuito
  level: fundamentos (formación de operadores de centrales)
  covers: [propiedades, balances de energía, ciclos, vapor (vol. 1); transferencia de calor e intercambiadores (vol. 2: https://www.standards.doe.gov/standards-documents/1000/1012-bhdbk-1992-v2)]
  concepts: [5.4, 5.5, 5.7]
  why_selected: [muy práctico y orientado a la operación real de plantas]

- name: DOE Fundamentals Handbook — Nuclear Physics and Reactor Theory (DOE-HDBK-1019/1-93, vol. 1 y 2)
  format: texto
  url: https://ncsp.llnl.gov/sites/ncsp/files/2024-03/doe_fundamentals_handbook_nuclear_physics_and_reactor_theory_vol_1_of_2.pdf
  author: U.S. Department of Energy (alojado por el LLNL)
  source_tier: S
  cost: gratuito
  covers: [física atómica y nuclear, neutrones, teoría del reactor, parámetros nucleares, operación del reactor]
  concepts: [5.15.1–5.15.3]

- name: MIT 16.Unified — Thermodynamics and Propulsion (apuntes)
  format: texto
  url: https://web.mit.edu/16.unified/www/FALL/thermodynamics/notes/notes.html
  author: E. M. Greitzer, Z. S. Spakovszky, I. A. Waitz
  source_tier: S
  cost: gratuito
  covers: [1.ª ley, sistemas abiertos y cerrados, procesos (incluidos los politrópicos, no verificado), Brayton, 2.ª ley, entropía y trabajo perdido, Rankine]
  concepts: [5.5, 5.6, 5.9.2]

- name: PVEducation (PVCDROM)
  format: texto interactivo
  url: https://www.pveducation.org/pvcdrom/welcome-to-pvcdrom
  author: Christiana Honsberg y Stuart Bowden (Arizona State University)
  source_tier: S/A
  cost: gratuito
  covers: [propiedades de la luz solar, unión p-n, funcionamiento, diseño y fabricación de células, módulos y campos, caracterización]
  concepts: [5.11.2]

- name: IDAE — Guía Profesional de Tramitación del Autoconsumo (v.6, julio de 2024)
  format: texto
  url: https://www.idae.es/sites/default/files/documentos/publicaciones_idae/20240709_Guia_Profesional_Tramitacion_autoconsumo_v.6.pdf
  author: IDAE (Dpto. Solar y Autoconsumo) + ENERAGEN
  source_tier: S (Gobierno de España)
  language: español
  cost: gratuito
  covers: [modalidades de autoconsumo, tramitación individual y colectiva en España]
  does_not_cover: [diseño técnico de la instalación]
  concepts: [5.11.3, 5.21, 5.26 nivel 3–5]
  why_selected: [contexto legal español, imprescindible para tu objetivo de autosuficiencia en Tenerife]
```

### 4.7 Práctica (5.26)

```yaml
name: MIT EC.711 D-Lab: Energy (Spring 2011)
type: curso práctico (proyectos de energía para comunidades con pocos recursos)
format: texto + laboratorio
url: https://ocw.mit.edu/courses/ec-711-d-lab-energy-spring-2011/
direct_link_verified: parcial — 2026-09-30 (se indexó una página interna del curso: «Lab 2: Solar Power Measurement, Part I»)
institution: MIT OpenCourseWare
source_tier: S
learning_type: practicar
theory_practice: práctico
covers: [medida de potencia solar, almacenamiento de energía (semana 2) y, según su planteamiento general, hidráulica, eólica y biomasa a pequeña escala (no verificado)]
concepts: [5.26 niveles 1–4]
why_selected: [proyectos de pequeña escala con recursos limitados, lo más parecido a tu ruta de reconstrucción y autosuficiencia]
```

## 5. Qué aprende el usuario con cada recurso

- **Stanford Understand Energy**: qué es cada fuente, cuánto aporta, cuánto cuesta, qué impacto tiene y cómo encaja en el sistema. Criterio de sistema.
- **Banerjee (NPTEL)**: cómo funciona por dentro cada central o tecnología y cómo se calcula su potencia y su rendimiento.
- **Yale PHYS 200**: por qué la termodinámica impone límites y de dónde sale el rendimiento de Carnot.
- **Cal Poly Thermodynamics / IIT Bombay Lec-18**: calcular Otto, Diesel, Brayton, Rankine, Stirling y Ericsson con números reales.
- **Cal Poly Heat Transfer + Lienhard**: dimensionar aislamiento, intercambiadores y pérdidas.
- **IIT Kanpur (combustión)**: cuánto aire necesita un combustible, cuánta energía libera y a qué temperatura.
- **MIT 2.627 + PVEducation**: cómo convierte la luz en electricidad una célula y por qué los módulos tienen el rendimiento que tienen.
- **MIT 22.01 + DOE-HDBK-1019**: cómo se controla una reacción en cadena.
- **MIT 3.091**: qué pasa químicamente dentro de una batería.
- **MIT 8.02 L16**: por qué girar un imán junto a una bobina produce electricidad.
- **CSB**: cómo falla de verdad un sistema energético y cómo se previene.
- **MacKay**: pensar cualquier propuesta energética en kWh/día y detectar lo imposible.
- **IDAE**: qué exige la ley española para instalar autoconsumo.
- **MIT D-Lab Energy**: construir y medir sistemas pequeños.

## 6. Qué NO aprende con cada recurso

- **Stanford**: cálculo ingenieril detallado; contexto de España y Canarias.
- **Banerjee**: tecnologías recientes (grabación antigua); economía y mercado.
- **Yale**: ingeniería de sistemas abiertos (entalpía, toberas, turbinas); energía libre; tercera ley.
- **Cal Poly Thermo**: la mecánica real del motor (bielas, levas, lubricación).
- **IIT Kanpur**: seguridad de combustibles y combustibles modernos (H₂, biocombustibles) en profundidad.
- **MIT 2.627**: instalación y normativa (eso lo cubren PVEducation e IDAE).
- **MIT 22.01 L20**: ciclo del combustible y gestión de residuos en profundidad.
- **MIT 3.091**: BMS, degradación, gestión térmica y dimensionado de bancos de baterías.
- **MIT 8.02**: diseño de alternadores reales (síncronos/asíncronos) → Bloque 6.
- **CSB**: riesgos radiológicos y eléctricos.
- **MacKay**: costes actuales (datos de 2009).

## 7. Orden recomendado de utilización

1. **Stanford — Energy Basics** → mapa general de energía, potencia, calidad y conversiones. *Pasa cuando* sepas distinguir kW de kWh y explicar qué es el rendimiento de una conversión.
2. **Banerjee L1** + **MacKay (caps. 1–2)** → fundamentos y órdenes de magnitud. *Pasa cuando* puedas estimar tu consumo diario en kWh.
3. **Stanford — Fossil Fuels, Oil, Coal, Biomass** → 5.2. *Pasa cuando* puedas comparar recursos por densidad energética y disponibilidad.
4. **IIT Kanpur — Intro + L09** → 5.3. *Pasa cuando* sepas calcular el aire estequiométrico del metano.
5. **Cal Poly Heat Transfer (01…)** + **Lienhard caps. 1–2** → 5.4. *Pasa cuando* sepas calcular las pérdidas de una pared con resistencias térmicas.
6. **Yale L22 → L23 → L24** + **MIT 16.Unified** → 5.5. *Pasa cuando* sepas por qué ningún motor puede superar a Carnot.
7. **IIT Bombay Lec-18** → **Cal Poly 29, 31, 34** → 5.6. *Pasa cuando* puedas calcular el rendimiento de un Otto y de un Rankine.
8. **Banerjee L9** (+ DOE-HDBK-1012) → 5.7 y turbinas de vapor. *Hueco*: máquina de vapor alternativa.
9. **Cal Poly 29** + **UNED MCIA** → 5.8. *Hueco*: sistemas auxiliares.
10. **Stanford Hydro → Banerjee L10–L11** → 5.9.3 y 5.10.
11. **Stanford Solar → Banerjee L15 → MIT 2.627 L1, L2, L17** + **PVEducation** → 5.11.
12. **Banerjee L22 → Lele (Stanford)** → 5.12 y 5.9.4.
13. **Stanford Geothermal → Banerjee L35** → 5.13.
14. **Banerjee L32 → L34** → 5.14.
15. **Stanford Nuclear Fission → MIT 22.01 L20 → Banerjee L12 → Whyte (fusión)** + **DOE-HDBK-1019** → 5.15.
16. **Stanford Energy Storage → MIT 3.091 Battery Revolution** → 5.16 y 5.17.
17. **Stanford Hydrogen → NPTEL Fuel Cells** → 5.18 y 5.19.
18. **MIT 8.02 L16 → Stanford Electricity Generation → Stanford Grid** → 5.20 y 5.21.
19. **Stanford Energy Efficiency** → 5.22.
20. **CSB Anatomy of a Disaster** → 5.23.
21. **Repaso integrador** con Energy Basics y MacKay → 5.24 y 5.27.
22. **Smil** (cuando se verifique) → 5.25.
23. **MIT D-Lab Energy** + **IDAE** → 5.26 (proyectos de niveles 1–5).

## 8. Huecos restantes

1. **Verificación completa pendiente (lo más importante).** Hay que abrir cada enlace para confirmar duración, disponibilidad y cobertura real. Se necesita acceso de red a `youtube.com`, `ocw.mit.edu`, `oyc.yale.edu`, `canal.uned.es`, `nptel.ac.in` y `understand-energy.stanford.edu`.
2. **5.7.2 — Máquina de vapor alternativa**: sin clase S/A localizada.
3. **5.8.4 — Sistemas auxiliares del MCI** y **5.8.5 — rendimiento (par, consumo específico)**: falta el ID de las clases NPTEL «IC Engines and Gas Turbines» (IIT Guwahati, Mondal y Kulkarni); lista de reproducción según el buscador: https://youtube.com/playlist?list=PLwdnzlV3ogoXHbVNKWL1BYOo_8PpyNtnC.
4. **5.5 — energía libre, tercera ley y procesos politrópicos**: sin audiovisual concreto. Buscar MIT 5.60 (Thermodynamics & Kinetics) en una próxima pasada.
5. **5.2 — gas natural y uranio como recurso**: no se localizó la clase «Natural Gas» de Stanford; hay una lista de reproducción, «Prospecting for Oil and Natural Gas», que no vale como recurso principal.
6. **5.14 — corrientes marinas y turbinas submarinas**: cobertura solo parcial.
7. **5.17 — BMS, degradación y LiFePO₄**: sin audiovisual S específico.
8. **5.20 — generadores síncrono y asíncrono**: se cubren solo a nivel físico; el detalle queda para el Bloque 6.
9. **5.22 — cogeneración y trigeneración**: sin audiovisual específico.
10. **5.23 — seguridad eléctrica y radiológica**: sin audiovisual específico.
11. **5.25 — historia**: autoría del vídeo de Smil no verificada.
12. **Contexto canario**: falta un recurso sobre el sistema eléctrico aislado de Canarias (p. ej. Gorona del Viento en El Hierro: hidroeólica con bombeo). Tiene especial relevancia para tu objetivo en Tenerife. **Pendiente de investigar.**

## 9. Recursos opcionales

- Resúmenes de Stanford, «10-Minute Take» (no válidos como principales según F2): [Hydropower](https://www.youtube.com/watch?v=EYl4Ap4qxRc) · [Wind](https://m.youtube.com/watch?v=SmNhOwvT3Zc) · [Hydrogen](https://www.youtube.com/watch?v=JfTT0Z6wQ1g).
- Stanford — [Introduction to Nuclear Energy](https://www.youtube.com/watch?v=RNkQeBxwrM0) (fisión y fusión, introductoria).
- Princeton-CEFRC — [Combustion Theory (Matalon), Day 1 Part 1](https://www.youtube.com/watch?v=k7GHxTz96do): nivel de posgrado.
- IIT KGP (S. K. Som) — [Mod-01 Lec-08 Specific speed, Governing and Limitation of a Pelton Turbine](https://www.youtube.com/watch?v=G4d2idmkEn8).
- IIT Bombay (Sukhatme) — [Lecture 1 Heat and Mass Transfer](https://www.youtube.com/watch?v=qa-PQOjS3zA).
- Listas de reproducción completas (solo como complemento): [MIT 22.01](https://www.youtube.com/playlist?list=PLUl4u3cNGP61FVzAxBP09w2FMQgknTOqu) · [MIT 2.627](https://www.youtube.com/playlist?list=PLUl4u3cNGP63zDO4gelZKdchvCO1B_Hg9) · [Yale PHYS 200](https://www.youtube.com/playlist?list=PLYQdyOTZg5nt0ELalB7iH2xzCEXSXgQPi) · [Stanford Understand Energy — Course Lectures](https://www.youtube.com/playlist?list=PLj03YfdUVX_AzBaq4hXe7MpKUwoZNxv8R).
- B: [tubalcain — How a steam engine governor works](https://www.youtube.com/watch?v=WLBTKBgTogo) (regulador centrífugo de Watt, explicado por un profesor de taller jubilado).

## 10. Fuentes verificadas

Todas con **verificación parcial (índice del buscador) el 2026-09-30**. Ver el registro global en `research/_fuentes-verificadas.md`.
