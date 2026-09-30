---
block: Bloque 4 — Manufactura y Máquinas
subject: Ingeniería / Reconstrucción tecnológica
date: 2026-09-30
concepts: [4.1.1 Qué es fabricar, 4.1.2 Variables de fabricación, 4.2.1 Magnitudes dimensionales, 4.2.2 Instrumentos de medida, 4.2.3 Conceptos metrológicos, 4.3.1 Representación, 4.3.2 Acotación y tolerancias, 4.3.3 CAD, 4.4.1 Fundición, 4.4.2 Forja, 4.4.3 Laminación, 4.4.4 Extrusión, 4.4.5 Estampación y chapa, 4.5.1 Principios de mecanizado, 4.5.2 Torneado, 4.5.3 Fresado, 4.5.4 Taladrado, 4.5.5 Rectificado y acabado, 4.5.6 Mecanizado avanzado y CNC, 4.6.1 Uniones desmontables, 4.6.2 Uniones permanentes, 4.6.3 Soldadura, 4.7.1 Elementos estructurales, 4.7.2 Elementos de transmisión, 4.7.3 Elementos de soporte, 4.7.4 Elementos elásticos, 4.7.5 Elementos de fijación, 4.8.1-4.8.2 Movimiento y máquinas simples, 4.8.3 Mecanismos avanzados, 4.8.4 Transmisión, 4.9 Máquinas, 4.10a Neumática, 4.10b Hidráulica, 4.11a Motores térmicos, 4.11b Motores eléctricos, 4.11c Otros actuadores, 4.12 Automatización de máquinas, 4.13 Robótica mecánica, 4.14 Máquinas-herramienta, 4.15 Fabricación aditiva, 4.16 Producción industrial, 4.17a Calidad, 4.17b Fiabilidad y mantenimiento, 4.18 Ingeniería inversa, 4.19 Diseño para fabricación, 4.20 Proyectos integradores]
status: con-huecos
---

# Bloque 4 — Manufactura y Máquinas

> **Cómo leer este documento.** Cada subapartado numerado de tu temario (4.1.1, 4.1.2, …) se trata como un **concepto**; los términos que listaste dentro de cada uno son sus **subconceptos**. Son 46 conceptos. Cada uno tiene al menos un vídeo con enlace directo (Regla F3). Donde solo existe material de nivel B/C, se indica.

## ⚠️ Aviso de verificación (léelo antes que nada)

La red de este entorno de trabajo **bloqueaba el acceso directo** a youtube.com, nptel.ac.in, ocw.mit.edu, archive.org y libretexts.org, así que no se pudo abrir ninguna página de vídeo ni ejecutar `yt-dlp`. La verificación se hizo así:

- **V1 — URL + título + autor/curso confirmados mediante el índice del buscador** (2026-09-30). La URL concreta del vídeo aparece indexada con ese título y esa descripción (autor, universidad y curso). Eso confirma que el enlace es directo y que corresponde a ese recurso.
- **No verificado:** duración, disponibilidad actual (si el vídeo sigue público hoy) y reproducción del contenido. **La duración figura siempre como `no verificada`**, y no me la he inventado.
- **F2 (curso completo dentro del vídeo):** para las clases NPTEL, MIT, Stanford, OSU, UMH y URJC se da por válido porque cada vídeo es **una clase universitaria entera grabada** (así lo indican el título y la descripción indexados). No he visto los vídeos. Los casos dudosos se marcan uno a uno.
- **Recomendación:** la primera vez que abras cada vídeo, comprueba en 10 segundos que carga y que dura lo razonable. Si alguno ha desaparecido, apúntalo y lo sustituimos.

## 🚨 Huecos bloqueantes

**Ninguno.** Los 46 conceptos tienen al menos un audiovisual con enlace directo. Hay **huecos parciales** (subconceptos sin vídeo S/A, o cubiertos solo con nivel B/C), que se detallan en la sección 8.

---

## 1. Resumen del bloque

**Objetivo:** pasar de «conozco la materia y sus propiedades» (Bloque 3) a «sé convertir esa materia en piezas, mecanismos y máquinas, e incluso en máquinas que fabrican otras máquinas».

**Cadena que construye el bloque:**
materia prima → proceso → pieza → medición → unión → elemento de máquina → mecanismo → transmisión → actuador → máquina → control → máquina-herramienta → producción

**Nivel requerido:** de fundamentos a universitario de grado (Ingeniería Mecánica, 2.º–3.er curso), con fuerte componente práctico de taller.

**Estrategia de recursos:**
- **Columna vertebral audiovisual:** clases universitarias grabadas de NPTEL (los IIT indios; es un programa gubernamental de nivel S), sobre todo de *Manufacturing Processes I* (IIT Roorkee), *Manufacturing Processes II* (IIT Kharagpur), *Metrology* (IIT Kanpur), *Design of Machine Elements* (IIT Kharagpur) e *Industrial Automation and Control* (IIT Kharagpur).
- **En español:** Dibujo Técnico de la **Universidad Miguel Hernández** (UMH1233), Procesos de Fabricación de la **Universidad Rey Juan Carlos** y Tecnología de Fabricación de la **Universidad de La Rioja**.
- **Práctica de taller:** el MIT IAP *Advanced Machining* (2025) y las lecciones de **Jim Pytel** (Columbia Gorge Community College) para neumática, hidráulica, motores y control.
- **Textos abiertos y gratuitos:** *Procesos de Manufactura 4-5* (LibreTexts, **en español**), *Hydraulics* (Pytel), *Basic Blueprint Reading*, *Introduction to Mechanisms* (CMU), *Modern Robotics* (Northwestern), el *NIST/SEMATECH e-Handbook* y la *GUM* (BIPM).

## 2. Dependencias relevantes

**Prerrequisitos (antes de este bloque):**
- Bloque 3: materiales y propiedades (tracción, dureza, fatiga, tratamientos térmicos).
- Física: estática, dinámica, par, trabajo, potencia, fricción; nociones de fluidos (presión, caudal) y electricidad básica (tensión, corriente, magnetismo).
- Matemáticas: trigonometría, geometría, vectores; estadística básica (media, desviación típica) para metrología y calidad.

**Dentro del bloque** (orden de dependencias):
```
4.1 Fundamentos ─┬─> 4.2 Metrología ─┬─> 4.3 Dibujo/CAD ──> 4.4 Conformado ──> 4.5 Mecanizado ──> 4.6 Uniones
                 │                   │
                 │                   └─> 4.17 Calidad (SPC) ──> 4.16 Producción
4.6 ──> 4.7 Elementos ──> 4.8 Mecanismos ──> 4.9 Máquinas ──> 4.10 Fluidos ──> 4.11 Actuadores ──> 4.12 Automatización
4.5 + 4.9 + 4.12 ──> 4.14 Máquinas-herramienta ──> 4.13 Robótica / 4.15 Aditiva
4.2 + 4.3 + 4.4-4.6 ──> 4.18 Ingeniería inversa / 4.19 DFM ──> 4.20 Proyectos
```

**Bloques posteriores que dependen de este:** energía (motores térmicos, turbinas), electricidad y electrónica (motores, accionamientos), control automático (servocontrol, PID), computación y robótica (cinemática, programación de robots).

## 3. Cobertura audiovisual por concepto (Regla F3)

Leyenda de nivel: **S** = universidad u organismo · **A** = profesor especialista o curso universitario · **B** = canal especializado o empresa · **C** = divulgativo o autoría no confirmada.

| Concepto | Vídeo principal (enlace directo) | Nivel | Complemento |
|---|---|---|---|
| 4.1.1 Qué es fabricar | [Design and Manufacturing — Prof. B. Maiti, IIT Kharagpur](https://www.youtube.com/watch?v=ofmbhbVCUqI) | S | [Introduction to Materials and Manufacturing — Swati Sharma, IIT Mandi](https://www.youtube.com/watch?v=4B0cgJDdNok) (S) |
| 4.1.2 Variables de fabricación | [Limits, Fits and Tolerance (1/4) — J. Ramkumar, IIT Kanpur](https://www.youtube.com/watch?v=UzibZBWl7ck) | S | [Surface Metrology — Ramkumar](https://www.youtube.com/watch?v=8xEqV9OZWQk) (S) |
| 4.2.1 Magnitudes dimensionales | [Metrology Lec 1: Introduction — Ramkumar](https://www.youtube.com/watch?v=TxOnk42NKPw) | S | [GD&T Complete Course 3+ Hours](https://www.youtube.com/watch?v=mC3EFujnObA) (B/C) |
| 4.2.2 Instrumentos | [Metrology Lec 02A: Instruments-I — Ramkumar](https://www.youtube.com/watch?v=DnxqnG3xYPs) | S | [Lab: Vernier Caliper](https://www.youtube.com/watch?v=WYeNQfGrejM) (S) · [CMM](https://www.youtube.com/watch?v=_tFL-oOyVtM) (S) |
| 4.2.3 Conceptos metrológicos | [Statistics in Metrology (1/2) — Ramkumar](https://www.youtube.com/watch?v=RTjaB6INtnQ) | S | [Accuracy, Error, Tolerance, and Uncertainty in Calibration](https://www.youtube.com/watch?v=2Ted-Mu2IUw) (B) |
| 4.3.1 Representación | [Tema 1 Introducción al Dibujo Técnico — UMH](https://www.youtube.com/watch?v=RaYWW_9PjEo) 🇪🇸 | S | [Tema 2 Cortes, roturas y secciones — UMH](https://www.youtube.com/watch?v=bzab1i4WOro) 🇪🇸 |
| 4.3.2 Acotación y tolerancias | [Vistas y acotación nivel 1 — UMH](https://www.youtube.com/watch?v=9UejTuIwKsw) 🇪🇸 | S | [Nivel 3 con cortes](https://www.youtube.com/watch?v=9V_WGt8fJaA) 🇪🇸 · [GD&T 3+ h](https://www.youtube.com/watch?v=mC3EFujnObA) (B/C) |
| 4.3.3 CAD | [Lecture 1 An Introduction to CAD — IIT Delhi](https://www.youtube.com/watch?v=EgKc9L7cbKc) | S | [FreeCAD Full Course for Beginners](https://www.youtube.com/watch?v=FZ77ovmbMlo) (B/C, práctica) |
| 4.4.1 Fundición | [Metal Casting: Introduction — D.B. Karunakar, IIT Roorkee](https://www.youtube.com/watch?v=0iezQ4IeXsc) | S | [Moldeo: procesos de fundición — URJC](https://www.youtube.com/watch?v=9PttZj22iE0) 🇪🇸 · [Sand Casting Defects-2](https://www.youtube.com/watch?v=c0bEeWzUPQ8) (S) |
| 4.4.2 Forja | [Mod-1 Lec-5 Forging — Inderdeep Singh, IIT Roorkee](https://www.youtube.com/watch?v=A3ImvaCtwUE) | S | [Mod-1 Lec-4 Metal Forming Fundamentals](https://www.youtube.com/watch?v=R1ifDegeq-g) (S) |
| 4.4.3 Laminación | [Lec 38: Metal forming III and Hot rolling of steel — Swarup Bag, IIT Guwahati](https://www.youtube.com/watch?v=VD61WHGKSIs) | S | — |
| 4.4.4 Extrusión | [Lec 09: Metal forming: Extrusion (NPTEL)](https://www.youtube.com/watch?v=XOa5QoqkEIM) | S/C* | [Mod-1 Lec-4 Fundamentals](https://www.youtube.com/watch?v=R1ifDegeq-g) (S) |
| 4.4.5 Estampación y chapa | [Mod-1 Lec-8 Sheet Metal Operations-2 — Inderdeep Singh](https://www.youtube.com/watch?v=UbliMiADZ40) | S | [Mod-1 Lec-10 Sheet Metal Working: Presses](https://www.youtube.com/watch?v=0z7dYQHhQUI) (S) |
| 4.5.1 Principios de mecanizado | [Lecture 5 Mechanism of Chip Formation — Chattopadhyay/Paul, IIT KGP](https://www.youtube.com/watch?v=WiY60zAa4c4) | S | [MIT IAP Advanced Machining L1](https://www.youtube.com/watch?v=qkjA94URV3k) (A) |
| 4.5.2 Torneado | [Lecture 17 Kinematics System of Centre Lathe — IIT KGP](https://www.youtube.com/watch?v=T6vR81ysTG8) | S | Texto: cap. 2 «Máquinas de Torno» (Virasak) 🇪🇸 |
| 4.5.3 Fresado | [Machining Fundamentals: Introduction to Mills — Autodesk](https://www.youtube.com/watch?v=9-I-_O0fbn4) | B | Texto: cap. 1 «Fresadoras» (Virasak) 🇪🇸 |
| 4.5.4 Taladrado | [Lecture 18 General Purpose Machine Tool: Drills — IIT KGP](https://www.youtube.com/watch?v=OBO7Keg2Lv8) | S | Texto: cap. 3 «Prensas de Taladro» 🇪🇸 |
| 4.5.5 Rectificado y acabado | [Lecture 29 Abrasive Processes (Grinding) — IIT KGP](https://www.youtube.com/watch?v=Zr2jGDLdHIs) | S | [Lecture 30 Superfinishing](https://www.youtube.com/watch?v=i2RlTd41EP0) (S) |
| 4.5.6 Mecanizado avanzado y CNC | [Mod-01 Lec-01 Advanced Machining Processes — V.K. Jain, IIT Kanpur](https://www.youtube.com/watch?v=Jg6YXvTO5FE) | S | [Lecture 39 EDM](https://www.youtube.com/watch?v=rA09KaPL7_8) (S) · [MIT IAP L2 tipos de CNC](https://www.youtube.com/watch?v=_avNoWBGP2E) (A) |
| 4.6.1 Uniones desmontables | [Lecture 16 Threaded Fasteners — G. Chakraborty, IIT KGP](https://www.youtube.com/watch?v=Z38Aq9ykUCM) | S | [Tema 9 Uniones roscadas — UMH](https://www.youtube.com/watch?v=bF0DRiK-gpM) 🇪🇸 |
| 4.6.2 Uniones permanentes | [Lec 4: Soldering, Brazing, Solid-state welding (NPTEL)](https://www.youtube.com/watch?v=fnEFuzeM8cc) | S/C* | [Lecture 23 Design of Welded Joints-I — Maiti](https://www.youtube.com/watch?v=7b1bd-lgra0) (S) |
| 4.6.3 Soldadura | [Introduction to Welding Engineering — D.K. Dwivedi, IIT Roorkee](https://www.youtube.com/watch?v=m2B8t8vzeUE) | S | [Lec 28: Arc welding processes — Swarup Bag](https://www.youtube.com/watch?v=JzlXleA7f1E) (S) |
| 4.7.1 Elementos estructurales | [Lecture 20 Shaft Couplings-I — Chakraborty, IIT KGP](https://www.youtube.com/watch?v=uGxfchLe-_I) | S | [Lecture 1 Design Philosophy — Maiti](https://www.youtube.com/watch?v=mzWMdZZaHwI) (S) |
| 4.7.2 Elementos de transmisión | [Lecture 31 Belt Drives — Maiti, IIT KGP](https://www.youtube.com/watch?v=Fb4weO0HLxk) | S | [Gear Ratios Explained](https://www.youtube.com/watch?v=49DxlXs8tyk) (B) |
| 4.7.3 Elementos de soporte | [Rolling Element Bearings (contd) — Harish Hirani, IIT Delhi](https://www.youtube.com/watch?v=qgqQxIe6QIw) | S | — |
| 4.7.4 Elementos elásticos | [Lecture 29 Design of Springs — Maiti, IIT KGP](https://www.youtube.com/watch?v=T4IgtIkBnOo) | S | — |
| 4.7.5 Elementos de fijación | [Lecture 17 Design of Threaded Fasteners — Maiti](https://www.youtube.com/watch?v=4qGv0WgJk9s) | S | [Shaft Couplings-I (chavetas)](https://www.youtube.com/watch?v=uGxfchLe-_I) (S) |
| 4.8.1-4.8.2 Movimiento y máquinas simples | [Kinematics of Machines Module 1 Lecture 1 — A.K. Mallik, IIT Kanpur](https://www.youtube.com/watch?v=MJeRFzs4oRU) | S | [Simple Machines (1 of 7) Pulleys](https://www.youtube.com/watch?v=BJ9MELhhW6U) (B) · [(6 of 7) Inclined Plane](https://www.youtube.com/watch?v=nbIbon0Rcvw) (B) |
| 4.8.3 Mecanismos avanzados | [ME 3751 L3: Grashof criteria of Four Bar Linkages — Ohio State](https://www.youtube.com/watch?v=qO8niNpd6cM) | S | [1953 US Navy: Basic Mechanisms in Fire Control Computers](https://www.youtube.com/watch?v=x9YEPw7_YTk) (S histórico) · [Around the Corner (1937), diferencial](https://www.youtube.com/watch?v=67XoCMTcN7M) (B histórico) |
| 4.8.4 Transmisión | [Gear Ratios Explained (Motion, Torque and Gear Trains)](https://www.youtube.com/watch?v=49DxlXs8tyk) | B | [ME 3751 Analysis L2 4-bar — OSU](https://www.youtube.com/watch?v=JSMspmknEHk) (S) |
| 4.9 Máquinas | [1953 US Navy: Basic Mechanisms in Fire Control Computers](https://www.youtube.com/watch?v=x9YEPw7_YTk) | S (hist.) | [MIT IAP Advanced Machining L1](https://www.youtube.com/watch?v=qkjA94URV3k) (A) |
| 4.10a Neumática | [Introduction to Pneumatics (Full Lecture) — Jim Pytel](https://www.youtube.com/watch?v=zHto_QiORz0) | A | [Pneumatic Schematics](https://www.youtube.com/watch?v=dR1_xr6lDQ4) · [Pneumatic DCV](https://www.youtube.com/watch?v=Npu9uJYDI2k) (A) |
| 4.10b Hidráulica | [Introduction to Fluid Power Systems (Full Lecture) — Pytel](https://www.youtube.com/watch?v=S_4anj7GpRo) | A | [What is Hydraulic and Pneumatic System — R.N. Maiti, IIT KGP](https://www.youtube.com/watch?v=8xd7cWvMrvE) (S) · [Hydraulic Pumps](https://www.youtube.com/watch?v=TBxMgGq3O94) (A) |
| 4.11a Motores térmicos | [Engines: Crash Course Physics #24](https://www.youtube.com/watch?v=p1woKh2mdVQ) | B | (en profundidad: bloque de Energía) |
| 4.11b Motores eléctricos | [Lec-21 Operating Principles of DC Machines — D. Kastha, IIT KGP](https://www.youtube.com/watch?v=NiHPu5PltCY) | S | [Squirrel Cage Induction Motors — Pytel](https://www.youtube.com/watch?v=NhT5Fz4VyOk) (A) · [Synchronous Motors](https://www.youtube.com/watch?v=wlj4Oy6aw6A) (A) |
| 4.11c Otros actuadores | [Brushless DC and PMSM (Full Lecture) — Pytel](https://www.youtube.com/watch?v=cg29XLIHEzM) | A | [How does a Stepper Motor work? Full lecture](https://www.youtube.com/watch?v=VMwv4XFZ2L0) (C) |
| 4.12 Automatización | [Introduction to PLCs (Full Lecture) — Pytel](https://www.youtube.com/watch?v=Y5NgUc_dxlA) | A | [Lecture 18 Sequence Control, PLC, RLL — S. Mukhopadhyay, IIT KGP](https://www.youtube.com/watch?v=UQ16Cous_tY) (S) · [Contactors](https://www.youtube.com/watch?v=WT14nfmu1cI) (A) |
| 4.13 Robótica mecánica | [CS223A Lecture 1 — Oussama Khatib, Stanford](https://www.youtube.com/watch?v=0yD3uBshJB0) | S | [Modern Robotics 2.2 Degrees of Freedom — K. Lynch](https://www.youtube.com/watch?v=zI64DyaRUvQ) (S) · [Robot Manipulator Types — L. Armesto (UPV)](https://www.youtube.com/watch?v=4CdX67bWb9w) (A) |
| 4.14 Máquinas-herramienta | [Advanced Machining Lecture 1 (intro + historia) — MIT IAP 2025](https://www.youtube.com/watch?v=qkjA94URV3k) | A | [Metal Lathe Part 1: The Bed — Makercise (Gingery)](https://www.youtube.com/watch?v=zPGZg45dGXA) (B) · [Whitworth three plates](https://www.youtube.com/watch?v=k68WsXB8L_s) (C) |
| 4.15 Fabricación aditiva | [Tema 3 Manufactura Aditiva, vídeo 1/5 — U. de La Rioja](https://www.youtube.com/watch?v=siDXukDSCWE) 🇪🇸 | S* | [Vídeo 3/5](https://www.youtube.com/watch?v=S7G2cX3M02w) 🇪🇸 |
| 4.16 Producción industrial | [Mod-01 Lec-01 Intro to Manufacturing Systems Management — G. Srinivasan, IIT Madras](https://www.youtube.com/watch?v=wbLItIE-78E) | S | [Theory of Constraints, Find Your Bottlenecks](https://www.youtube.com/watch?v=8m9dC6wax-Y) (B) |
| 4.17a Calidad | [Mod-2 Lec-1 Statistical Process Control Part-1 — Pradeep Kumar, IIT Roorkee](https://www.youtube.com/watch?v=TbPUiJKyxqw) | S | — |
| 4.17b Fiabilidad y mantenimiento | [Mod-01 Lec-02 Maintenance Principles — A.R. Mohanty, IIT KGP](https://www.youtube.com/watch?v=f58SW0Hwcf0) | S | [Hazard (failure rate) function — B. Bhattacharya, IIT KGP](https://www.youtube.com/watch?v=erX-nP0rvxo) (S) · [Condition Monitoring — R. Tiwari, IIT Guwahati](https://www.youtube.com/watch?v=j_Xpzzo0iko) (S) |
| 4.18 Ingeniería inversa | [Lec-52 Reverse Engineering — IIT Delhi (CAD)](https://www.youtube.com/watch?v=9dd3M2a4LKI) | S | (práctica: vídeos de 4.2 y 4.3) |
| 4.19 Diseño para fabricación | [Lecture 2 Design and Manufacturing — Maiti](https://www.youtube.com/watch?v=ofmbhbVCUqI) | S | [DFM Course 11 Pt 2: Boothroyd Dewhurst Method — Dragon Innovation](https://www.youtube.com/watch?v=PcZRB0PpIPc) (B) |
| 4.20 Proyectos integradores | [Metal Lathe – Part 1: The Bed — Makercise (serie Gingery)](https://www.youtube.com/watch?v=zPGZg45dGXA) | B | [Homemade Steel Frame CNC Router — Design, Build, Test](https://www.youtube.com/watch?v=vtPmPFdVZ4g) (C) |

\* **S/C:** el formato («Lec NN :», con curso asociado a NPTEL) indica que es una clase universitaria de NPTEL, pero **no he podido confirmar el profesor ni el curso**. Úsalo como S con cautela.
\* **4.15:** son vídeos parciales (1/5 y 3/5) de un tema completo. Los vídeos 2/5, 4/5 y 5/5 existen en la misma serie, pero **no he localizado sus URL** (ver sección 8).

---

## 4. Recursos seleccionados

> Campos comunes para ahorrar repetición:
> - `direct_link_verified: sí (V1, 2026-09-30)` = URL, título y autor confirmados en el índice del buscador; la página no se pudo abrir (ver aviso).
> - `duration: no verificada` en todos los vídeos.
> - `cost: gratuito` en todos, salvo que se indique lo contrario.

### 4.A — Textos base (se usan en todo el bloque)

```yaml
name: Procesos de Manufactura 4-5 (Virasak) — edición en español
type: textbook abierto
format: texto
url: https://espanol.libretexts.org/Bookshelves/Vocacional/Manufactura/Libro:_Procesos_de_Manufactura_4-5_(Virasak)
direct_link_verified: sí (V1, 2026-09-30) — capítulos localizados: 1 Fresadoras, 2 Torno (2.2 Velocidad y Alimentación), 3 Taladro, 4 Sierras de cinta, 5 Amoladoras, 6 Tratamiento térmico, 7 Lean Manufacturing, 8 CNC (8.2 ejes, 8.4 lenguaje)
author: Virasak (Open Oregon / LibreTexts; traducción LibreTexts Español)
institution: LibreTexts / Open Textbook Library
source_tier: S
language: español (original en inglés en workforce.libretexts.org)
cost: gratuito
level: fundamentos → aplicación práctica
learning_type: ambos
theory_practice: mixto
covers: [operación de fresadora, torno, taladro, sierra de cinta, rectificadora plana, velocidades y avances, CNC (ejes, código G), lean manufacturing]
does_not_cover: [fundición, forja, soldadura, teoría del corte con rigor universitario, diseño de máquinas]
prerequisites: [4.2 metrología básica]
concepts: [4.5.1-4.5.6, 4.14, 4.16]
practical_component: [procedimientos de taller paso a paso]
authority: [libro de texto abierto usado en formación profesional (Oregón)]
quality_notes: [traducción automática revisada; algún término puede sonar raro, pero es técnicamente correcto]
why_selected: [único texto gratuito en español con procedimientos de máquina-herramienta; complemento práctico de las clases NPTEL]
recommended_position: [en paralelo a 4.5, un capítulo por máquina]
```

```yaml
name: Basic Blueprint Reading
type: textbook abierto
format: texto
url: https://openoregon.pressbooks.pub/blueprint/
direct_link_verified: sí (V1, 2026-09-30)
author: Ric Costin (Linn-Benton Community College)
institution: Open Oregon Educational Resources
source_tier: A
language: inglés
level: introducción → fundamentos
learning_type: ambos
theory_practice: mixto
covers: [lectura de planos, vistas, líneas, acotación, símbolos de soldadura]
does_not_cover: [normativa ISO/UNE (usa convenciones de EE. UU., ASME, sistema americano de proyección), CAD]
concepts: [4.3.1, 4.3.2]
why_selected: [texto abierto con ejercicios; complementa las clases UMH (que siguen la norma europea)]
recommended_position: [4.3, después de los vídeos UMH]
quality_notes: [OJO: EE. UU. usa proyección del tercer diedro y en España se usa el primer diedro (sistema europeo); los vídeos UMH son la referencia normativa]
```

```yaml
name: JCGM 100:2008 (GUM) — Guide to the expression of uncertainty in measurement
type: documento oficial
format: texto (PDF)
url: https://www.bipm.org/documents/20126/2071204/JCGM_100_2008_E.pdf
direct_link_verified: sí (V1, 2026-09-30)
author: Joint Committee for Guides in Metrology
institution: BIPM (Oficina Internacional de Pesas y Medidas)
source_tier: S
language: inglés
level: universitario
learning_type: aprender
theory_practice: teórico
covers: [incertidumbre tipo A y B, propagación, incertidumbre expandida]
does_not_cover: [uso de instrumentos]
concepts: [4.2.3]
why_selected: [documento de referencia mundial sobre incertidumbre; fuente primaria]
recommended_position: [4.2.3, como consulta de las secciones 2-5; no leerlo entero]
```

```yaml
name: Introduction to Mechanisms (tutorial en línea, 8 capítulos)
type: libro/tutorial universitario abierto
format: texto
url: https://www.cs.cmu.edu/~rapidproto/mechanisms/tablecontents.html
direct_link_verified: sí (V1, 2026-09-30) — capítulos: 1 principios físicos, 2 mecanismos y máquinas simples, 3 más sobre máquinas, 4 cinemática, 5 eslabonamientos planos, 6 levas, 7 engranajes, 8 otros mecanismos
author: Yi Zhang, Susan Finger, Stephannie Behrens
institution: Carnegie Mellon University
source_tier: S
language: inglés
level: fundamentos → desarrollo
learning_type: aprender
theory_practice: teórico
covers: [máquinas simples, grados de libertad, cuatro barras, biela-manivela, levas, engranajes, trinquete, Ginebra]
does_not_cover: [diseño resistente, dinámica de máquinas]
concepts: [4.8.1-4.8.4, 4.7.2]
why_selected: [texto breve y gratuito que cubre justo el temario 4.8]
recommended_position: [4.8, antes o a la vez que los vídeos]
```

```yaml
name: Hydraulics (y Hydraulics and Electrical Control of Hydraulic Systems)
type: textbook abierto
format: texto
url: https://openoregon.pressbooks.pub/hydraulics/
direct_link_verified: sí (V1, 2026-09-30) — índice y capítulo 1.1 «Introduction to Fluid Power Systems» localizados
author: Jim Pytel (Columbia Gorge Community College)
institution: Open Oregon Educational Resources
source_tier: A
language: inglés
level: fundamentos → aplicación práctica
covers: [ley de Pascal, esquemas, circuitos serie/paralelo, regeneración, acumuladores, válvulas de caudal y presión, bombas, control eléctrico de hidráulica]
does_not_cover: [neumática en profundidad, diseño de bombas]
concepts: [4.10b, 4.12]
why_selected: [texto del mismo autor que las videolecciones; están pensados para usarse juntos (aula invertida)]
recommended_position: [4.10b, capítulo a capítulo con los vídeos de Pytel]
```

```yaml
name: Modern Robotics: Mechanics, Planning, and Control (PDF preliminar gratuito)
type: textbook universitario
format: texto
url: https://hades.mech.northwestern.edu/images/7/7f/MR.pdf
direct_link_verified: sí (V1, 2026-09-30)
author: Kevin M. Lynch, Frank C. Park
institution: Northwestern University / Cambridge University Press
source_tier: S
language: inglés
level: universitario
covers: [configuración, grados de libertad, cinemática directa e inversa, dinámica, manipuladores]
does_not_cover: [construcción física de robots, electrónica]
concepts: [4.13]
why_selected: [texto de referencia con vídeo para cada sección (el canal del libro)]
recommended_position: [4.13, capítulos 2-4 como máximo en este bloque]
```

```yaml
name: NIST/SEMATECH e-Handbook of Statistical Methods
type: manual oficial
format: texto
url: https://itl.nist.gov/div898/handbook/
direct_link_verified: sí (V1, 2026-09-30) — localizada la sección de fiabilidad (apr/section1/apr124.htm, curva de la bañera)
author: NIST (National Institute of Standards and Technology)
institution: Gobierno de EE. UU.
source_tier: S
language: inglés
level: desarrollo → universitario
covers: [control estadístico de procesos, gráficos de control, capacidad, fiabilidad, distribuciones de vida]
does_not_cover: [gestión de la calidad organizativa]
concepts: [4.17a, 4.17b, 4.2.3]
why_selected: [fuente primaria gratuita y con ejemplos resueltos]
recommended_position: [4.17, como consulta]
```

```yaml
name: Design for Manufacture and Assembly (libro abierto)
type: textbook abierto
format: texto
url: https://pressbooks.palni.org/designmanufactureassembly/chapter/chapter-1/
direct_link_verified: sí (V1, 2026-09-30) — capítulo 1 localizado
author: PALNI Pressbooks (autoría concreta no confirmada)
institution: PALNI (consorcio de bibliotecas universitarias)
source_tier: B
language: inglés
level: fundamentos
covers: [DFM, DFA, reducción de piezas]
does_not_cover: [cálculo de costes detallado (método Boothroyd completo)]
concepts: [4.19]
why_selected: [único texto DFMA abierto localizado; el de referencia (Boothroyd, Dewhurst & Knight) es de pago]
recommended_position: [4.19]
```

### 4.B — Audiovisuales por concepto

> Formato abreviado: todos los vídeos llevan `format: audiovisual`, `direct_link_verified: sí (V1, 2026-09-30)`, `duration: no verificada` y `cost: gratuito`. `complete_content_in_video` explica en qué me baso.

#### 4.1 Fundamentos de manufactura

```yaml
name: Lecture 2 — Design and Manufacturing (Design of Machine Elements I)
type: lección universitaria
url: https://www.youtube.com/watch?v=ofmbhbVCUqI
author: Prof. B. Maiti — IIT Kharagpur (NPTEL)
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clase completa de la serie NPTEL (una clase por vídeo), según el título y la descripción indexados
learning_type: aprender
theory_practice: teórico
covers: [relación entre diseño y proceso de fabricación, cómo el proceso condiciona la pieza]
does_not_cover: [procesos concretos en detalle]
concepts: [4.1.1, 4.19]
why_selected: [sitúa la fabricación dentro del ciclo de diseño; sirve también para DFM]
recommended_position: [1.º del bloque; revisitar en 4.19]
```

```yaml
name: Introduction to Materials and Manufacturing
type: lección universitaria (NPTEL «Carbon Materials and Manufacturing»)
url: https://www.youtube.com/watch?v=4B0cgJDdNok
author: Swati Sharma — IIT Mandi
source_tier: S
language: inglés
level: introducción
complete_content_in_video: sí — clase introductoria completa (según la descripción: relación entre materiales y fabricación)
covers: [puente Bloque 3 → Bloque 4: la estructura del material condiciona el proceso]
does_not_cover: [procesos metálicos concretos; el curso se centra después en materiales de carbono]
concepts: [4.1.1]
why_selected: [conecta explícitamente con el bloque de materiales]
recommended_position: [2.º, opcional si el Bloque 3 está fresco]
```

```yaml
name: noc18-me62 Lec 05 — Limits, Fits and Tolerance (Part 1 of 4)
type: lección universitaria
url: https://www.youtube.com/watch?v=UzibZBWl7ck
author: Dr. J. Ramkumar — IIT Kanpur (NPTEL «Metrology»)
source_tier: S
language: inglés
level: fundamentos → universitario
complete_content_in_video: parcial por diseño — es la parte 1 de 4 del tema; las partes 2-4 existen gratis en la misma serie (URL no localizadas). La parte 1 cubre la definición de límites, ajustes y tolerancias
covers: [dimensión nominal, límites, tolerancia, holgura, apriete, sistema de ajustes]
does_not_cover: [partes 2-4: cálculos ISO completos y galgas]
concepts: [4.1.2, 4.3.2]
why_selected: [variable número 1 de la fabricación: la tolerancia]
recommended_position: [4.1.2]
```

```yaml
name: noc18-me62 Lec 26 — Surface Metrology
url: https://www.youtube.com/watch?v=8xEqV9OZWQk
author: Dr. J. Ramkumar — IIT Kanpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa de la serie
covers: [rugosidad, parámetros Ra/Rz, medida del acabado superficial]
does_not_cover: [procesos que producen cada rugosidad (se ve en 4.5)]
concepts: [4.1.2, 4.2.1]
why_selected: [cubre la rugosidad, variable de fabricación clave]
recommended_position: [4.1.2 o 4.2]
```

#### 4.2 Metrología e inspección (serie NPTEL «Metrology», Dr. J. Ramkumar, IIT Kanpur, noc18-me62)

```yaml
name: noc18-me62 Lec 1 — Introduction
url: https://www.youtube.com/watch?v=TxOnk42NKPw
author: Dr. J. Ramkumar — IIT Kanpur
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clase completa (título «Lec 1 Introduction», autor en la descripción)
covers: [qué es la metrología, magnitudes dimensionales, por qué medir]
does_not_cover: [instrumentos en detalle]
concepts: [4.2.1]
recommended_position: [inicio de 4.2]
why_selected: [abre el mejor curso gratuito de metrología dimensional localizado]
```

```yaml
name: noc18-me62 Lec 02A — Instruments-I
url: https://www.youtube.com/watch?v=DnxqnG3xYPs
author: Dr. J. Ramkumar — IIT Kanpur
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clase completa
covers: [instrumentos de medida lineal y angular]
concepts: [4.2.2]
recommended_position: [después de Lec 1]
why_selected: [cubre los instrumentos básicos: regla, calibre, micrómetro, comparador]
```

```yaml
name: noc18-me62 Lec 11 — Laboratory demonstration: Vernier Caliper
url: https://www.youtube.com/watch?v=WYeNQfGrejM
author: Dr. J. Ramkumar — IIT Kanpur
source_tier: S
language: inglés
level: aplicación práctica
complete_content_in_video: sí — demostración de laboratorio completa
learning_type: practicar
theory_practice: práctico
covers: [uso real del calibre, errores de lectura]
concepts: [4.2.2]
practical_component: [repetir con un calibre propio midiendo 10 piezas]
why_selected: [paso de teoría a práctica]
recommended_position: [tras Lec 02A]
```

```yaml
name: noc18-me62 Lec 50 — 3D measurements, Coordinate Measuring Machine (CMM)
url: https://www.youtube.com/watch?v=_tFL-oOyVtM
author: Dr. J. Ramkumar — IIT Kanpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [CMM, medición 3D, palpado]
concepts: [4.2.2, 4.18]
why_selected: [instrumento avanzado del temario, base de la ingeniería inversa]
recommended_position: [final de 4.2 o en 4.18]
```

```yaml
name: noc18-me62 Lec 35 — Statistics in Metrology, an introduction (Part 1 of 2)
url: https://www.youtube.com/watch?v=RTjaB6INtnQ
author: Dr. J. Ramkumar — IIT Kanpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: parcial por diseño (parte 1 de 2; la parte 2 existe en la serie)
covers: [error aleatorio y sistemático, dispersión, tratamiento estadístico de medidas]
does_not_cover: [procedimiento GUM completo → usar el PDF del BIPM]
concepts: [4.2.3]
why_selected: [único vídeo S localizado sobre error e incertidumbre]
recommended_position: [4.2.3]
```

```yaml
name: Accuracy, Error, Tolerance, and Uncertainty in Calibration Results
url: https://www.youtube.com/watch?v=2Ted-Mu2IUw
author: canal de laboratorio de calibración (probablemente Morehouse Instrument Co.; no confirmado)
source_tier: B
language: inglés
level: aplicación práctica
complete_content_in_video: sí — vídeo autocontenido (según la descripción)
covers: [diferencias entre exactitud, error, tolerancia e incertidumbre; calibración; trazabilidad]
concepts: [4.2.3]
why_selected: [visión práctica de laboratorio que complementa la clase teórica; NO equivale a la GUM]
recommended_position: [opcional tras Lec 35]
```

#### 4.3 Dibujo técnico y diseño mecánico

```yaml
name: Tema 1 Introducción al Dibujo Técnico (umh1233 2014-15)
url: https://www.youtube.com/watch?v=RaYWW_9PjEo
author: Asignatura Dibujo Técnico, Grado en Ingeniería Mecánica — Universidad Miguel Hernández (EPS Elche)
source_tier: S
language: español (España)
level: fundamentos
complete_content_in_video: sí — tema completo de la asignatura en un vídeo (según el título «Tema 1»)
covers: [normalización, formatos, vistas, sistema europeo]
concepts: [4.3.1]
why_selected: [clase universitaria española con norma UNE/ISO]
recommended_position: [inicio de 4.3]
```

```yaml
name: Tema 2 Cortes, roturas y secciones (umh1233 2014-15)
url: https://www.youtube.com/watch?v=bzab1i4WOro
author: Universidad Miguel Hernández
source_tier: S
language: español
level: fundamentos
complete_content_in_video: sí — tema completo
covers: [cortes, secciones, roturas, rayados]
concepts: [4.3.1]
recommended_position: [tras Tema 1]
why_selected: [cubre secciones, cortes y detalles del temario]
```

```yaml
name: Vistas y acotación nivel 1 / nivel 3 con cortes (UMH1233 2015-2016)
url: https://www.youtube.com/watch?v=9UejTuIwKsw
url_2: https://www.youtube.com/watch?v=9V_WGt8fJaA
author: Universidad Miguel Hernández
source_tier: S
language: español
level: aplicación práctica
complete_content_in_video: sí — ejercicios resueltos completos
learning_type: practicar
covers: [croquización, elección de vistas, acotación normalizada]
concepts: [4.3.1, 4.3.2]
practical_component: [pausar y resolver antes de ver la solución]
why_selected: [práctica de acotación con criterio normativo]
recommended_position: [tras Tema 2]
```

```yaml
name: Tema 9 Uniones roscadas (umh1233 2014-15)
url: https://www.youtube.com/watch?v=bF0DRiK-gpM
author: Universidad Miguel Hernández
source_tier: S
language: español
level: fundamentos
complete_content_in_video: sí — tema completo
covers: [representación y designación normalizada de roscas, tornillos y tuercas]
concepts: [4.6.1, 4.3.2]
why_selected: [une dibujo y uniones desmontables]
recommended_position: [4.6.1]
```

```yaml
name: GD&T Complete Course 3+ Hours
url: https://www.youtube.com/watch?v=mC3EFujnObA
author: canal no confirmado — compilación de una serie de 8 partes sobre ASME Y14.5 (según la descripción)
source_tier: C (autoría no confirmada)
language: inglés
level: desarrollo
complete_content_in_video: sí — curso completo compilado en un vídeo de más de 3 h (según el título y la descripción)
covers: [datums, marco de control, planitud, rectitud, paralelismo, perpendicularidad, concentricidad, cilindricidad]
does_not_cover: [norma ISO GPS (la europea); usa ASME]
concepts: [4.2.1, 4.3.2]
quality_notes: [único audiovisual completo de GD&T localizado; sustituir por una fuente S si aparece]
why_selected: [cubre las tolerancias geométricas del temario, que no tienen vídeo S localizado]
recommended_position: [después de UMH nivel 3]
```

```yaml
name: Lecture 1 — An Introduction to CAD
url: https://www.youtube.com/watch?v=EgKc9L7cbKc
author: IIT Delhi — NPTEL «Computer Aided Design» (Dr. P.V. Madhusudhan Rao / Dr. Anoop Chawla)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [qué es un CAD, modelado geométrico, sólidos y superficies (conceptos)]
does_not_cover: [manejo de un programa concreto]
concepts: [4.3.3]
why_selected: [fundamentos teóricos del CAD]
recommended_position: [4.3.3, antes de practicar con FreeCAD]
```

```yaml
name: FreeCAD Full Course for Beginners — Step-by-Step
url: https://www.youtube.com/watch?v=FZ77ovmbMlo
author: canal no confirmado
source_tier: B/C
language: inglés
level: aplicación práctica
complete_content_in_video: sí — curso completo para principiantes en un vídeo (según el título y la descripción)
learning_type: practicar
covers: [bocetos, restricciones, operaciones de sólido, parametrización]
does_not_cover: [ensamblajes avanzados, simulación]
concepts: [4.3.3]
quality_notes: [FreeCAD es libre y gratuito; encaja con el objetivo de autosuficiencia (no depende de licencias)]
why_selected: [práctica de CAD paramétrico con software libre]
recommended_position: [tras la lección del IIT Delhi; hacerlo con el programa abierto]
```

#### 4.4 Procesos de conformado

```yaml
name: Metal Casting — Introduction
url: https://www.youtube.com/watch?v=0iezQ4IeXsc
author: Dr. D. Benny Karunakar — IIT Roorkee (NPTEL «Metal Casting»)
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clase 1 completa de la serie
covers: [fusión, moldeo, moldes, machos, colada, solidificación]
concepts: [4.4.1]
recommended_position: [inicio de 4.4]
why_selected: [curso completo de fundición de nivel universitario]
```

```yaml
name: Sand Casting Defects-2 / Die Casting Process-II
url: https://www.youtube.com/watch?v=c0bEeWzUPQ8
url_2: https://www.youtube.com/watch?v=p581wiEfLFI
author: Dr. D.B. Karunakar — IIT Roorkee
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas; «-2» y «-II» indican una continuación: la parte 1 existe en la misma serie
covers: [defectos de fundición, contracción, fundición a presión]
concepts: [4.4.1]
why_selected: [cubre los subconceptos «defectos» y «fundición a presión»]
recommended_position: [tras la introducción]
```

```yaml
name: Procesos de fabricación — Tema 4.3 Moldeo: Procesos de fundición (y 4.4 Diseño en fundición)
url: https://www.youtube.com/watch?v=9PttZj22iE0
url_2: https://www.youtube.com/watch?v=oIt59y4On8I
author: Procesos de Fabricación I, Ingeniería Mecánica — Universidad Rey Juan Carlos
source_tier: S
language: español (España)
level: fundamentos → universitario
complete_content_in_video: sí — subtemas completos (4.3 y 4.4)
covers: [arena, fundición a presión, centrífuga, a la cera perdida; reglas de diseño de piezas fundidas]
concepts: [4.4.1, 4.19]
why_selected: [versión en español del tema, con diseño para fundición]
recommended_position: [alternativa o repaso de Karunakar]
```

```yaml
name: Mod-1 Lec-4 Metal Forming — Fundamentals / Mod-1 Lec-5 Forging
url: https://www.youtube.com/watch?v=R1ifDegeq-g
url_2: https://www.youtube.com/watch?v=A3ImvaCtwUE
author: Prof. Inderdeep Singh — IIT Roorkee (NPTEL «Manufacturing Processes I»)
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clases completas
covers: [deformación plástica, trabajo en caliente y en frío, clasificación del conformado, forja libre y en matriz]
concepts: [4.4.2, 4.4.3, 4.4.4]
why_selected: [base teórica de todo el conformado por deformación]
recommended_position: [Lec-4 antes que cualquier otro vídeo de deformación]
```

```yaml
name: Lec 38 — Types of metal forming processes-III and Hot rolling of steel
url: https://www.youtube.com/watch?v=VD61WHGKSIs
author: Prof. Swarup Bag — IIT Guwahati (NPTEL noc24_me108 «Materials Processing: Casting, Forming and Welding»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [laminación en caliente del acero, rodillos, reducción de espesor]
does_not_cover: [laminación en frío en detalle (no confirmado)]
concepts: [4.4.3]
why_selected: [único vídeo S específico de laminación localizado]
recommended_position: [tras Lec-4]
```

```yaml
name: Lec 09 — Metal forming: Extrusion
url: https://www.youtube.com/watch?v=XOa5QoqkEIM
author: NPTEL (curso y profesor NO confirmados)
source_tier: S/C
language: inglés
level: fundamentos
complete_content_in_video: sí — clase completa (según el título y la descripción: extrusión directa, indirecta e hidrostática)
covers: [matrices, extrusión directa e indirecta, efecto sobre las propiedades]
concepts: [4.4.4]
quality_notes: [autoría pendiente de confirmar al abrir el vídeo]
why_selected: [la descripción coincide exactamente con los subconceptos del temario]
recommended_position: [tras la laminación]
```

```yaml
name: Mod-1 Lec-8 Sheet Metal Operations-2 / Mod-1 Lec-10 Sheet Metal Working: Presses
url: https://www.youtube.com/watch?v=UbliMiADZ40
url_2: https://www.youtube.com/watch?v=0z7dYQHhQUI
author: Prof. Inderdeep Singh — IIT Roorkee
source_tier: S
language: inglés
level: fundamentos
complete_content_in_video: sí — clases completas («-2» indica que la Lec-7 «Sheet Metal Operations-1» precede en la serie)
covers: [corte, punzonado, doblado, embutición, prensas]
concepts: [4.4.5, 4.9]
why_selected: [cubre estampación y las prensas como máquina de producción]
recommended_position: [cierre de 4.4]
```

#### 4.5 Mecanizado (serie NPTEL «Manufacturing Processes II», Profs. A.B. Chattopadhyay, A.K. Chattopadhyay y S. Paul, IIT Kharagpur)

```yaml
name: Lecture 4 Interrelations Among the Tool Angles / Lecture 5 Mechanism of Chip Formation
url: https://www.youtube.com/watch?v=jaqRT2c2cIM
url_2: https://www.youtube.com/watch?v=WiY60zAa4c4
author: IIT Kharagpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [geometría de la herramienta, formación de viruta, movimiento de corte y avance]
does_not_cover: [cálculo de caudal de viruta con ejemplos de taller → Virasak 2.2]
concepts: [4.5.1]
why_selected: [física del corte: el «por qué» del mecanizado]
recommended_position: [inicio de 4.5]
```

```yaml
name: Advanced Machining Lecture 1 (y Lecture 2: tipos de CNC)
url: https://www.youtube.com/watch?v=qkjA94URV3k
url_2: https://www.youtube.com/watch?v=_avNoWBGP2E
author: Randall Briggs — MIT IAP «Advanced Machining», enero de 2025
source_tier: A
language: inglés
level: desarrollo → aplicación práctica
complete_content_in_video: sí — clases completas del curso IAP (según la descripción: L1 introducción + historia del mecanizado; L2 tipos de CNC)
covers: [historia del mecanizado, visión práctica del taller, tipos de máquinas CNC]
concepts: [4.5.1, 4.5.6, 4.14, 4.9]
why_selected: [visión moderna y práctica, muy reciente, del MIT; conecta con el ciclo «máquinas que fabrican máquinas»]
recommended_position: [L1 al empezar 4.5; L2 en 4.5.6]
```

```yaml
name: Lecture 17 Kinematics System of Centre Lathe
url: https://www.youtube.com/watch?v=T6vR81ysTG8
author: IIT Kharagpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [cadenas cinemáticas del torno paralelo, cabezal, caja de avances, roscado]
does_not_cover: [operación manual paso a paso → Virasak cap. 2]
concepts: [4.5.2, 4.14]
why_selected: [explica cómo está construido el torno por dentro, clave para construir uno (4.20)]
recommended_position: [4.5.2]
```

```yaml
name: Machining Fundamentals: Introduction to Mills
url: https://www.youtube.com/watch?v=9-I-_O0fbn4
author: Autodesk (serie «Machining Fundamentals»)
source_tier: B
language: inglés
level: introducción → fundamentos
complete_content_in_video: sí — episodio autocontenido («full introduction to mills», según la descripción)
covers: [tipos de fresadora, fresas, cuándo usar fresadora]
does_not_cover: [teoría del fresado periférico y frontal con rigor, tallado de engranajes]
concepts: [4.5.3]
quality_notes: [empresa de software; divulgación correcta, pero no universitaria]
why_selected: [no se localizó una clase S de fresado con URL directa]
recommended_position: [4.5.3, junto al cap. 1 de Virasak]
```

```yaml
name: Lecture 18 General Purpose Machine Tool: Drills
url: https://www.youtube.com/watch?v=OBO7Keg2Lv8
author: IIT Kharagpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [taladradoras, brocas, operaciones de taladrado]
concepts: [4.5.4]
why_selected: [clase S específica]
recommended_position: [4.5.4]
```

```yaml
name: Lecture 29 Abrasive Processes (Grinding) / Lecture 30 Superfinishing Processes
url: https://www.youtube.com/watch?v=Zr2jGDLdHIs
url_2: https://www.youtube.com/watch?v=i2RlTd41EP0
author: IIT Kharagpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [rectificado, muelas, bruñido, lapeado, superacabado]
concepts: [4.5.5]
why_selected: [cubren los procesos de precisión del temario]
recommended_position: [4.5.5]
```

```yaml
name: Mod-01 Lec-01 Advanced Machining Processes / Lecture 39 Electro-Discharge Machining
url: https://www.youtube.com/watch?v=Jg6YXvTO5FE
url_2: https://www.youtube.com/watch?v=rA09KaPL7_8
author: Prof. Vijay K. Jain — IIT Kanpur (1.º) · IIT Kharagpur, MP-II (2.º)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [panorama del mecanizado no convencional, EDM]
does_not_cover: [plasma y chorro de agua en clase dedicada (ver huecos)]
concepts: [4.5.6]
why_selected: [fuente de referencia (Jain es autor de un texto clásico sobre el tema)]
recommended_position: [4.5.6]
```

#### 4.6 Uniones

```yaml
name: Lecture 16 Threaded Fasteners / Lecture 17 Design of Threaded Fasteners
url: https://www.youtube.com/watch?v=Z38Aq9ykUCM
url_2: https://www.youtube.com/watch?v=4qGv0WgJk9s
author: Prof. G. Chakraborty / Prof. B. Maiti — IIT Kharagpur (NPTEL «Design of Machine Elements I»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [tipos de roscas, tornillos, tuercas, arandelas, precarga, cálculo]
concepts: [4.6.1, 4.7.5]
why_selected: [clases S sobre la unión desmontable más importante]
recommended_position: [inicio de 4.6]
```

```yaml
name: Lec 4 — Soldering, Brazing, Solid-state welding processes
url: https://www.youtube.com/watch?v=fnEFuzeM8cc
author: NPTEL (curso y profesor NO confirmados)
source_tier: S/C
language: inglés
level: fundamentos
complete_content_in_video: sí — clase completa (según el título)
covers: [soldadura blanda, soldadura fuerte (brazing), soldadura en estado sólido]
does_not_cover: [remachado, adhesivos, uniones por interferencia]
concepts: [4.6.2]
why_selected: [cubre el núcleo de las uniones permanentes no fusionadas]
recommended_position: [4.6.2]
```

```yaml
name: Lecture 23 Design of Welded Joints-I
url: https://www.youtube.com/watch?v=7b1bd-lgra0
author: Prof. B. Maiti — IIT Kharagpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [tipos de unión soldada, cálculo de cordones]
concepts: [4.6.2, 4.6.3]
recommended_position: [tras la soldadura (4.6.3)]
why_selected: [paso del proceso de soldadura al cálculo de la unión soldada]
```

```yaml
name: Introduction to Welding Engineering / Lec 28 Arc welding processes
url: https://www.youtube.com/watch?v=m2B8t8vzeUE
url_2: https://www.youtube.com/watch?v=JzlXleA7f1E
author: Dr. D.K. Dwivedi — IIT Roorkee (1.º) · Prof. Swarup Bag — IIT Guwahati (2.º)
source_tier: S
language: inglés
level: fundamentos → universitario
complete_content_in_video: sí — clases completas
covers: [clasificación de la soldadura, arco eléctrico, electrodo revestido, MIG/MAG, TIG]
does_not_cover: [ZAT, tensiones residuales e inspección en clase dedicada (ver huecos)]
concepts: [4.6.3]
why_selected: [dos cursos S que se complementan: panorama y procesos de arco]
recommended_position: [4.6.3]
```

#### 4.7 Elementos de máquinas (serie NPTEL «Design of Machine Elements I», IIT Kharagpur, salvo que se indique)

```yaml
name: Lecture 1 Design Philosophy / Lecture 20 Shaft Couplings-I
url: https://www.youtube.com/watch?v=mzWMdZZaHwI
url_2: https://www.youtube.com/watch?v=uGxfchLe-_I
author: Prof. B. Maiti / Prof. G. Chakraborty — IIT Kharagpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [filosofía de diseño de elementos, ejes, acoplamientos, chavetas]
does_not_cover: [cálculo completo de árboles a fatiga (clase no localizada)]
concepts: [4.7.1, 4.7.5]
why_selected: [marco general de diseño y elementos que unen ejes]
recommended_position: [inicio de 4.7]
```

```yaml
name: Lecture 31 Belt Drives
url: https://www.youtube.com/watch?v=Fb4weO0HLxk
author: Prof. B. Maiti — IIT Kharagpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [correas, poleas, tensiones, potencia transmitida]
concepts: [4.7.2]
recommended_position: [4.7.2]
why_selected: [clase S sobre transmisión por correa]
```

```yaml
name: Gear Ratios Explained (Motion, Torque and Gear Trains)
url: https://www.youtube.com/watch?v=49DxlXs8tyk
author: canal divulgativo de ingeniería (no confirmado)
source_tier: B
language: inglés
level: introducción → fundamentos
complete_content_in_video: sí — vídeo autocontenido (según la descripción: «in-depth look at gearing ratios»)
covers: [relación de transmisión, par, velocidad, trenes de engranajes]
concepts: [4.7.2, 4.8.4]
why_selected: [intuición visual antes del cálculo; complementa el cap. 7 de CMU]
recommended_position: [4.8.4]
```

```yaml
name: Rolling Element Bearings (contd)
url: https://www.youtube.com/watch?v=qgqQxIe6QIw
author: Prof. Harish Hirani — IIT Delhi (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa; «contd» = continuación de una clase anterior de la serie
covers: [rodamientos: tipos, carga, vida]
does_not_cover: [cojinetes de fricción y guías lineales (ver huecos)]
concepts: [4.7.3]
why_selected: [Hirani es especialista en tribología y rodamientos]
recommended_position: [4.7.3]
```

```yaml
name: Lecture 29 Design of Springs
url: https://www.youtube.com/watch?v=T4IgtIkBnOo
author: Prof. B. Maiti — IIT Kharagpur
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [muelles helicoidales, rigidez, tensiones]
does_not_cover: [ballestas y elastómeros en detalle]
concepts: [4.7.4]
recommended_position: [4.7.4]
why_selected: [clase S de muelles]
```

#### 4.8 Mecanismos

```yaml
name: Kinematics of Machines — Module 1 Lecture 1
url: https://www.youtube.com/watch?v=MJeRFzs4oRU
author: Prof. Asok Kumar Mallik — IIT Kanpur (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [eslabones, pares cinemáticos, tipos de movimiento, movilidad]
concepts: [4.8.1, 4.8.2, 4.13]
why_selected: [Mallik es autor de referencia en cinemática de máquinas]
recommended_position: [inicio de 4.8]
```

```yaml
name: Simple Machines (1 of 7) Pulleys / (6 of 7) Inclined Plane
url: https://www.youtube.com/watch?v=BJ9MELhhW6U
url_2: https://www.youtube.com/watch?v=nbIbon0Rcvw
author: serie educativa «Simple Machines (n of 7)» (canal no confirmado)
source_tier: B
language: inglés
level: introducción
complete_content_in_video: sí — cada vídeo cubre su máquina completa; la serie tiene 7 (palanca, rueda y eje, tornillo y cuña en las otras entregas)
covers: [ventaja mecánica, fuerzas, distancias, polipastos, plano inclinado]
concepts: [4.8.2, 4.9]
why_selected: [refuerzo cuantitativo sencillo de las máquinas simples]
recommended_position: [tras Mallik M1L1]
```

```yaml
name: ME 3751 Kinematics Fundamental L3: Grashof criteria / Analysis L2: Kinematic Analysis of 4-bar linkages
url: https://www.youtube.com/watch?v=qO8niNpd6cM
url_2: https://www.youtube.com/watch?v=JSMspmknEHk
author: Prof. Haijun Su — The Ohio State University
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas del curso ME 3751
covers: [cuatro barras, Grashof, análisis de posición y velocidad, biela-manivela como caso particular]
concepts: [4.8.3, 4.8.4]
why_selected: [curso universitario vigente de cinemática de mecanismos]
recommended_position: [4.8.3]
```

```yaml
name: 1953 US Navy Film: Basic Mechanisms in Fire Control Computers
url: https://www.youtube.com/watch?v=x9YEPw7_YTk
author: US Navy (película de formación de 1953)
source_tier: S (institucional, histórico)
language: inglés
level: fundamentos
complete_content_in_video: sí — película completa
covers: [ejes, engranajes, diferenciales, levas, integradores mecánicos: cómo se combinan en una máquina]
concepts: [4.8.3, 4.9]
quality_notes: [antigua, pero conceptualmente impecable; útil para la «reconstrucción» porque muestra la computación mecánica]
why_selected: [enseña a integrar mecanismos en una máquina: justo el salto de 4.8 a 4.9]
recommended_position: [cierre de 4.8]
```

```yaml
name: Around the Corner (1937)
url: https://www.youtube.com/watch?v=67XoCMTcN7M
author: Jam Handy Organization / Chevrolet (GM)
source_tier: B (histórico, de fabricante)
language: inglés
level: introducción
complete_content_in_video: sí — película completa
covers: [el diferencial explicado paso a paso]
concepts: [4.8.3]
why_selected: [la mejor explicación visual del diferencial]
recommended_position: [4.8.3]
```

#### 4.10 Neumática e hidráulica (Jim Pytel, Columbia Gorge Community College, programa de Tecnología Electromecánica)

```yaml
name: Introduction to Fluid Power Systems / Introduction to Pneumatics (Full Lectures)
url: https://www.youtube.com/watch?v=S_4anj7GpRo
url_2: https://www.youtube.com/watch?v=zHto_QiORz0
author: Jim Pytel
source_tier: A
language: inglés
level: fundamentos
complete_content_in_video: sí — «Full Lecture» (clase completa, según el título)
covers: [presión → caudal → fuerza → velocidad → potencia; aire comprimido, compresores, tratamiento, cilindros]
concepts: [4.10a, 4.10b]
why_selected: [profesor con libro abierto asociado; clases completas y muy prácticas]
recommended_position: [inicio de 4.10]
```

```yaml
name: Pneumatic Schematics / Pneumatic Directional Control Valves (Full Lectures)
url: https://www.youtube.com/watch?v=dR1_xr6lDQ4
url_2: https://www.youtube.com/watch?v=Npu9uJYDI2k
author: Jim Pytel
source_tier: A
language: inglés
level: desarrollo
complete_content_in_video: sí — clases completas
covers: [simbología ISO 1219, válvulas distribuidoras, circuitos]
concepts: [4.10a]
recommended_position: [tras la introducción]
why_selected: [simbología y válvulas: lo necesario para leer y diseñar circuitos]
```

```yaml
name: Hydraulic Schematics / Series and Parallel Hydraulic Circuits / Hydraulic Pumps / Accumulators (Full Lectures)
url: https://www.youtube.com/watch?v=NsgShyrcvqA
url_2: https://www.youtube.com/watch?v=j6N-Fx7eQ38
url_3: https://www.youtube.com/watch?v=TBxMgGq3O94
url_4: https://www.youtube.com/watch?v=AC3vZF2aOiI
author: Jim Pytel
source_tier: A
language: inglés
level: desarrollo
complete_content_in_video: sí — cada una es una clase completa
covers: [esquemas, circuitos, bombas de engranajes, paletas y pistones, acumuladores]
concepts: [4.10b]
why_selected: [cubren casi todo el temario hidráulico]
recommended_position: [4.10b, en este orden]
```

```yaml
name: mod-01 lec-01 What is Hydraulic and Pneumatic System
url: https://www.youtube.com/watch?v=8xd7cWvMrvE
author: Prof. R.N. Maiti — IIT Kharagpur (NPTEL «Fundamentals of Industrial Oil Hydraulics and Pneumatics»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [definición y ventajas de la potencia fluida, componentes básicos]
concepts: [4.10a, 4.10b]
why_selected: [contrapunto universitario, más teórico, a Pytel; da acceso a un curso NPTEL completo si se quiere profundizar]
recommended_position: [opcional tras Pytel]
```

#### 4.11 Motores y actuadores

```yaml
name: Engines: Crash Course Physics #24
url: https://www.youtube.com/watch?v=p1woKh2mdVQ
author: Crash Course (PBS Digital Studios)
source_tier: B
language: inglés
level: introducción
complete_content_in_video: sí — episodio completo
covers: [máquina de vapor, motor térmico, eficiencia, ciclo de Carnot (idea)]
does_not_cover: [Stirling y turbinas en detalle]
concepts: [4.11a]
quality_notes: [divulgativo; el rigor llegará en el bloque de Energía]
why_selected: [introducción suficiente para este bloque; los motores térmicos son el tema central del bloque siguiente]
recommended_position: [4.11a]
```

```yaml
name: Mod-01 Lec-21 Operating Principles of DC Machines
url: https://www.youtube.com/watch?v=NiHPu5PltCY
author: Prof. Debaprasad Kastha — IIT Kharagpur (NPTEL «Electrical Machines I»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [principio de funcionamiento del motor/generador DC]
concepts: [4.11b]
why_selected: [clase S del motor más sencillo de controlar]
recommended_position: [inicio de 4.11b]
```

```yaml
name: Squirrel Cage Induction Motors: Mechanical Properties / Electrical Characteristics; Synchronous Motors; Brushless DC and PMSM (Full Lectures)
url: https://www.youtube.com/watch?v=NhT5Fz4VyOk
url_2: https://www.youtube.com/watch?v=F8BDdTD50yk
url_3: https://www.youtube.com/watch?v=wlj4Oy6aw6A
url_4: https://www.youtube.com/watch?v=cg29XLIHEzM
author: Jim Pytel
source_tier: A
language: inglés
level: fundamentos → desarrollo
complete_content_in_video: sí — clases completas
covers: [motor asíncrono de jaula (el motor industrial por excelencia), síncrono, brushless/PMSM (base de los servos modernos)]
concepts: [4.11b, 4.11c]
why_selected: [serie completa y coherente sobre motores AC]
recommended_position: [tras la clase DC]
```

```yaml
name: How does a Stepper Motor work? Full lecture
url: https://www.youtube.com/watch?v=VMwv4XFZ2L0
author: NO confirmado
source_tier: C
language: inglés
level: fundamentos
complete_content_in_video: sí — «Full lecture» (según el título)
covers: [motor paso a paso, ángulo de paso, control en lazo abierto]
concepts: [4.11c]
quality_notes: [único audiovisual localizado específico de motores paso a paso; verificar el autor al abrirlo]
why_selected: [cubre un subconcepto sin alternativa S/A localizada]
recommended_position: [4.11c]
```

#### 4.12 Automatización de máquinas

```yaml
name: Switches in Electrically Controlled Systems / Contactors / Introduction to PLCs (Full Lectures)
url: https://www.youtube.com/watch?v=ENCdPsA9PXc
url_2: https://www.youtube.com/watch?v=WT14nfmu1cI
url_3: https://www.youtube.com/watch?v=Y5NgUc_dxlA
author: Jim Pytel
source_tier: A
language: inglés
level: fundamentos
complete_content_in_video: sí — clases completas
covers: [interruptores y finales de carrera (NA/NC), relés, contactores, PLC]
concepts: [4.12]
why_selected: [recorrido lógico: interruptor → relé → contactor → PLC]
recommended_position: [4.12, en este orden]
```

```yaml
name: Lecture 18 Introduction to Sequence Control, PLC, RLL / Lecture 22 PLC Hardware Environment
url: https://www.youtube.com/watch?v=UQ16Cous_tY
url_2: https://www.youtube.com/watch?v=ayg2vt25XiY
author: Prof. S. Mukhopadhyay — IIT Kharagpur (NPTEL «Industrial Automation and Control»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [secuencias automáticas, lógica de escalera (RLL), hardware del PLC]
concepts: [4.12]
why_selected: [versión universitaria; el mismo curso incluye servos y accionamientos (p. ej., Lecture 32 DC Motor Drives)]
recommended_position: [tras Pytel]
```

#### 4.13 Robótica mecánica

```yaml
name: CS223A Introduction to Robotics — Lecture 1
url: https://www.youtube.com/watch?v=0yD3uBshJB0
author: Prof. Oussama Khatib — Stanford University
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa (según la descripción: visión general, historia, cinemática, dinámica y control de manipuladores)
covers: [panorama de la robótica de manipuladores]
concepts: [4.13]
why_selected: [curso de referencia mundial]
recommended_position: [inicio de 4.13]
```

```yaml
name: Modern Robotics, Chapter 2.2: Degrees of Freedom of a Robot
url: https://www.youtube.com/watch?v=zI64DyaRUvQ
author: Prof. Kevin Lynch — Northwestern University
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — vídeo completo de la sección 2.2 del libro
covers: [grados de libertad, fórmula de Grübler, articulaciones]
concepts: [4.13, 4.8.1]
why_selected: [conecta directamente la cinemática de 4.8 con la robótica]
recommended_position: [tras Khatib L1]
```

```yaml
name: Robot Manipulator Types
url: https://www.youtube.com/watch?v=4CdX67bWb9w
author: Leopoldo Armesto (Universitat Politècnica de València)
source_tier: A
language: inglés
level: fundamentos
complete_content_in_video: sí — vídeo autocontenido
covers: [robot antropomórfico, SCARA, robots redundantes]
does_not_cover: [robot delta y cartesiano en detalle (no confirmado)]
concepts: [4.13]
why_selected: [tipología de robots del temario, de un profesor universitario español]
recommended_position: [4.13]
```

#### 4.14 Máquinas-herramienta y 4.20 Proyectos

```yaml
name: Metal Lathe — Part 1: The Bed (serie Gingery de Makercise)
url: https://www.youtube.com/watch?v=zPGZg45dGXA
author: Makercise (constructor aficionado; considerada la serie Gingery más completa)
source_tier: B
language: inglés
level: aplicación práctica
complete_content_in_video: parcial por diseño — episodio 1 de una serie de construcción; el resto de la serie es gratuita (índice en makercise.com/lathe-project/)
learning_type: practicar
covers: [construir la bancada de un torno a partir de fundición de aluminio propia]
concepts: [4.14, 4.20, 4.4.1]
why_selected: [es literalmente el ciclo «máquina que fabrica máquinas» del temario, hecho en casa]
recommended_position: [4.14 y proyectos de nivel 3]
```

```yaml
name: DIY Whitworth three plates method of creating flat reference surfaces
url: https://www.youtube.com/watch?v=k68WsXB8L_s
author: NO confirmado
source_tier: C
language: inglés
level: aplicación práctica
complete_content_in_video: sí — demostración completa (según la descripción)
covers: [método de las tres placas: crear planitud de referencia sin tener una referencia previa]
concepts: [4.14, 4.2.1]
why_selected: [principio fundacional de la precisión: sin superficies planas no hay máquinas-herramienta]
recommended_position: [4.14]
```

```yaml
name: Homemade Steel Frame CNC Router — Design, Build, Test
url: https://www.youtube.com/watch?v=vtPmPFdVZ4g
author: NO confirmado
source_tier: C
language: inglés
level: aplicación práctica
complete_content_in_video: sí — ciclo completo de diseño (FreeCAD), construcción y prueba en un vídeo (según la descripción)
covers: [bastidor soldado, CNC casera, diseño con FreeCAD]
concepts: [4.20, 4.5.6, 4.12]
why_selected: [ejemplo de proyecto de nivel 4 que integra CAD, soldadura, mecánica y control]
recommended_position: [proyectos de nivel 4]
```

#### 4.15 Fabricación aditiva

```yaml
name: Tema 3. Manufactura Aditiva — Vídeo 1/5 y 3/5
url: https://www.youtube.com/watch?v=siDXukDSCWE
url_2: https://www.youtube.com/watch?v=S7G2cX3M02w
author: Prof.ª Alpha Pernía E. — asignatura «Tecnología de Fabricación», Universidad de La Rioja
source_tier: S
language: español
level: fundamentos
complete_content_in_video: PARCIAL — tema dividido en 5 vídeos; solo se han localizado el 1 y el 3
covers: [introducción y tecnologías de fabricación aditiva (según la serie)]
does_not_cover: [vídeos 2, 4 y 5 no localizados]
concepts: [4.15]
quality_notes: [ver hueco H-AM en la sección 8]
why_selected: [única clase universitaria localizada sobre aditiva con URL directa]
recommended_position: [4.15]
```

#### 4.16-4.17 Producción, calidad y fiabilidad

```yaml
name: Mod-01 Lec-01 Introduction to Manufacturing Systems Management
url: https://www.youtube.com/watch?v=wbLItIE-78E
author: Prof. G. Srinivasan — IIT Madras (NPTEL)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [sistemas de fabricación, taller frente a línea, células, flujo]
does_not_cover: [OEE (no aparece en el temario del curso)]
concepts: [4.16]
why_selected: [el curso completo (40 clases) cubre células, JIT, fabricación síncrona y TOC (Lec 32-33)]
recommended_position: [4.16]
```

```yaml
name: Theory of Constraints, Find Your Bottlenecks (Lean Six Sigma Green Belt lesson #16)
url: https://www.youtube.com/watch?v=8m9dC6wax-Y
author: Ops University — Jerry Wright (Master Black Belt)
source_tier: B
language: inglés
level: aplicación práctica
complete_content_in_video: sí — lección autocontenida
covers: [cuellos de botella, teoría de las restricciones]
concepts: [4.16]
why_selected: [enfoque práctico de consultor; complementa a Srinivasan]
recommended_position: [opcional]
```

```yaml
name: Mod-2 Lec-1 Statistical Process Control Part-1
url: https://www.youtube.com/watch?v=TbPUiJKyxqw
author: Prof. Pradeep Kumar — IIT Roorkee (NPTEL «Industrial Engineering»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: parcial por diseño (Part-1; la continuación existe en la serie)
covers: [control estadístico, gráficos de control, variación]
concepts: [4.17a]
why_selected: [clase S de SPC; consultar el NIST Handbook para los ejemplos]
recommended_position: [4.17a]
```

```yaml
name: Mod-01 Lec-02 Maintenance Principles
url: https://www.youtube.com/watch?v=f58SW0Hwcf0
author: Prof. A.R. Mohanty — IIT Kharagpur (NPTEL «Machinery Fault Diagnosis and Signal Processing»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [mantenimiento correctivo, preventivo y predictivo; FMECA]
concepts: [4.17b]
why_selected: [cubre los tres tipos de mantenimiento del temario]
recommended_position: [4.17b]
```

```yaml
name: STRUCTURAL RELIABILITY Lecture 16 — hazard (failure rate) function / Mod-12 Lec-4 Condition Monitoring
url: https://www.youtube.com/watch?v=erX-nP0rvxo
url_2: https://www.youtube.com/watch?v=j_Xpzzo0iko
author: Prof. Baidurya Bhattacharya — IIT Kharagpur (1.º) · Prof. Rajiv Tiwari — IIT Guwahati (2.º)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clases completas
covers: [función de riesgo, tasa de fallos, vida útil; monitorización del estado]
does_not_cover: [fatiga y desgaste (ver Bloque 3 y 4.7)]
concepts: [4.17b]
why_selected: [base matemática de la fiabilidad y puente hacia el mantenimiento predictivo]
recommended_position: [tras Mohanty]
```

#### 4.18-4.19 Ingeniería inversa y DFM

```yaml
name: Lec-52 Reverse Engineering
url: https://www.youtube.com/watch?v=9dd3M2a4LKI
author: Dr. P.V. Madhusudhan Rao — IIT Delhi (NPTEL «Computer Aided Design»)
source_tier: S
language: inglés
level: universitario
complete_content_in_video: sí — clase completa
covers: [digitalización, nubes de puntos, reconstrucción geométrica en CAD]
does_not_cover: [identificación de materiales y procesos (usar el Bloque 3 y 4.4-4.5)]
concepts: [4.18]
why_selected: [clase S específica]
recommended_position: [4.18]
```

```yaml
name: Design for Manufacturing Course 11 Part 2: Boothroyd Dewhurst Method
url: https://www.youtube.com/watch?v=PcZRB0PpIPc
author: Dragon Innovation (consultora de fabricación de hardware)
source_tier: B
language: inglés
level: aplicación práctica
complete_content_in_video: parcial por diseño (Part 2 del curso 11; el curso DFM es una serie)
covers: [método Boothroyd-Dewhurst de DFA, reducción del número de piezas]
concepts: [4.19]
why_selected: [enfoque de producto real: fabricar hardware para venderlo (conecta con tus objetivos de negocio)]
recommended_position: [4.19, tras Maiti L2]
```

---

## 5. Qué aprende el usuario con cada recurso (resumen por grupos)

| Grupo | Aprendes |
|---|---|
| Metrología (Ramkumar) | Medir bien: instrumentos, tolerancias, rugosidad, estadística de la medida, CMM |
| Dibujo (UMH, en español) | Representar y acotar según la norma española/europea; leer planos |
| CAD (IIT Delhi + FreeCAD) | Qué hace un modelador sólido paramétrico y cómo usar uno libre |
| Conformado (Karunakar, Inderdeep Singh, Bag, URJC) | Fundición, forja, laminación, extrusión y chapa: física, variantes y defectos |
| Mecanizado (IIT KGP MP-II + MIT IAP + Virasak) | Física del corte, cinemática de las máquinas y procedimientos de taller |
| Uniones y elementos (DME IIT KGP, Dwivedi, Bag, Hirani) | Tornillos, soldadura, ejes, correas, rodamientos y muelles, con cálculo |
| Mecanismos (Mallik, OSU, CMU, US Navy) | Convertir y transmitir movimiento; integrar mecanismos en máquinas |
| Fluidos, motores y control (Pytel, NPTEL) | Neumática, hidráulica, motores DC/AC y del relé al PLC |
| Robótica (Khatib, Lynch, Armesto) | Anatomía de manipuladores, grados de libertad y tipos de robot |
| Producción, calidad y fiabilidad (Srinivasan, P. Kumar, Mohanty, NIST) | Sistemas de fabricación, SPC, mantenimiento y tasa de fallos |
| Reconstrucción (MIT IAP, Makercise, tres placas) | Cómo se arranca la precisión desde cero y cómo una máquina construye otra |

## 6. Qué NO aprende con estos recursos

- **Normativa ISO GPS completa** (tolerancias geométricas europeas): el GD&T localizado sigue ASME.
- **Práctica real de soldadura**: ningún vídeo sustituye a las horas de soldar. Hace falta un curso presencial (FP o formación homologada en España) por seguridad.
- **Operación segura de máquinas-herramienta**: los vídeos no sustituyen a una formación presencial en PRL (prevención de riesgos laborales). Un torno puede arrancarte un brazo.
- **Diseño a fatiga de árboles**, levas con síntesis y engranajes en detalle: esto requiere un libro de diseño de máquinas (Shigley o Norton, de pago).
- **OEE** con ejemplos: solo aparece en fuentes B/C; se trabajará con el Lean del libro de Virasak y el NIST.
- **Programación CNC en código G** en profundidad: el cap. 8 de Virasak da la base; el curso NPTEL de CNC (Roy Choudhury, IIT KGP) sería el siguiente paso (URL de vídeo no localizada).

## 7. Orden recomendado de utilización

1. **Maiti L2 «Design and Manufacturing»** → entender qué es fabricar y por qué el diseño manda. *Pasa al siguiente cuando sepas explicar la cadena materia prima → producto.*
2. **Ramkumar L1 → L02A → Lab calibre → L05 tolerancias → L26 rugosidad → L35 estadística** (+ GUM, secciones 2-5). *Pasa cuando midas 10 piezas con calibre y micrómetro y expreses el resultado con su incertidumbre.*
3. **UMH Tema 1 → Tema 2 → acotación n1 → n3** (+ Basic Blueprint Reading). *Pasa cuando hagas el croquis acotado de una pieza real.*
4. **IIT Delhi CAD L1 → FreeCAD Full Course**. *Pasa cuando modeles en FreeCAD la pieza que croquizaste.*
5. **GD&T 3+ h** (opcional en una primera vuelta).
6. **Conformado:** Karunakar Intro → defectos → (URJC en español) → Inderdeep Lec-4 → Lec-5 forja → Bag Lec 38 laminación → Lec 09 extrusión → Lec-8/Lec-10 chapa. *Pasa cuando sepas elegir un proceso de conformado para 5 piezas cotidianas y justificarlo.*
7. **Mecanizado:** MIT IAP L1 → IIT KGP L4 y L5 → L17 torno (+ Virasak cap. 2) → Autodesk fresas (+ cap. 1) → L18 taladro (+ cap. 3) → L29 y L30 rectificado → Jain AMP L1 → L39 EDM → MIT IAP L2 CNC (+ cap. 8). *Pasa cuando puedas calcular las rpm y el avance de una operación de torneado.*
8. **Uniones:** DME L16 y L17 roscas (+ UMH Tema 9) → Lec 4 brazing → Dwivedi Intro → Bag L28 arco → Maiti L23 uniones soldadas.
9. **Elementos:** Maiti L1 → Chakraborty L20 acoplamientos → Maiti L31 correas → Hirani rodamientos → Maiti L29 muelles.
10. **Mecanismos:** Mallik M1L1 → Simple Machines → CMU caps. 1-3 → OSU L3 y L2 → CMU caps. 5-8 → Around the Corner → Gear Ratios → Navy 1953. *Pasa cuando sepas calcular la relación de transmisión, el par y la potencia de una transmisión de 3 etapas.*
11. **Fluidos:** Pytel Intro Fluid Power → Intro Pneumatics → esquemas y válvulas → hidráulica: esquemas → circuitos → bombas → acumuladores (+ libro de Pytel) → Maiti NPTEL (opcional).
12. **Motores:** Crash Course #24 → Kastha DC → Pytel jaula de ardilla (mecánica y eléctrica) → síncrono → BLDC/PMSM → paso a paso.
13. **Automatización:** Pytel interruptores → contactores → PLC → Mukhopadhyay L18 → L22.
14. **Máquinas-herramienta:** repasar MIT IAP L1 → tres placas → serie Makercise (Gingery).
15. **Robótica:** Khatib L1 → Lynch 2.2 (+ Modern Robotics, cap. 2) → Armesto.
16. **Aditiva:** La Rioja Tema 3 (1/5, 3/5).
17. **Producción y calidad:** Srinivasan L1 → TOC → P. Kumar SPC (+ NIST) → Mohanty mantenimiento → Bhattacharya función de riesgo → Tiwari monitorización del estado.
18. **Ingeniería inversa y DFM:** IIT Delhi Lec-52 → Maiti L2 (repaso) → Dragon Innovation DFA (+ libro PALNI).
19. **Proyectos integradores** (sección 4.20 de tu temario), con Makercise y la CNC casera como referencias.

## 8. Huecos restantes (parciales, no bloqueantes)

| ID | Concepto / subconcepto | Situación | Qué se buscó | Alternativa actual |
|---|---|---|---|---|
| H-VERIF | Todos los vídeos | Duración y disponibilidad sin verificar (red bloqueada) | — | Comprobar al abrir cada vídeo |
| H-AM | 4.15 Fabricación aditiva | Solo 2 de 5 vídeos de La Rioja; no se localizó ninguna clase NPTEL (Sajan Kapil, IIT Guwahati) con URL directa | NPTEL, MIT (John Hart), Stanford, Purdue, universidades españolas | Localizar los vídeos 2/5, 4/5 y 5/5 o una clase de Kapil |
| H-MILL | 4.5.3 Fresado | Sin clase S/A con URL directa | NPTEL MP-II, Roy Choudhury, MIT IAP | Autodesk (B) + Virasak cap. 1 |
| H-GDT | 4.2.1 / 4.3.2 GD&T | Solo nivel B/C, y con norma ASME en lugar de ISO | Clases universitarias de GD&T | Vídeos en español sobre tolerancias geométricas: `GENiuUYcmks`, `LIQVgfeeT7s`, `s18CsMcAbEs`, de autor no confirmado (posible universidad española); no incluidos en la selección |
| H-PLASMA | 4.5.6 Plasma, chorro de agua, láser, ultrasonidos | Sin clase dedicada seleccionada | NPTEL AMP | El curso AMP de Jain (IIT Kanpur) tiene esas clases; localizar las URL |
| H-WELD | 4.6.3 ZAT, tensiones residuales, inspección | Sin clase dedicada con URL | NPTEL Dwivedi | `bWtbJWViDCo` «Mod-01 Lec-37 Welding Defects NDT» (IIT Kharagpur): localizado, pero no se confirmó el curso |
| H-JOIN | 4.6.2 Remaches, adhesivos, interferencia, engarzado | Sin vídeo | DME NPTEL | Pendiente |
| H-ELEM | 4.7.3 Cojinetes de fricción, guías lineales; 4.7.4 ballestas; 4.7.5 circlips | Sin vídeo específico | DME NPTEL | Pendiente |
| H-MECH | 4.8.3 Embrague, freno, Ginebra, scotch yoke, trinquete | Solo animaciones C localizadas | — | Texto CMU cap. 8 + Navy 1953 |
| H-LIFT | 4.9 Grúas, ascensores, transportadores | Sin vídeo S/A | — | Prioridad baja: son aplicaciones de 4.7-4.8 |
| H-THERM | 4.11a Stirling, turbinas | Solo nivel B | — | Se cubrirá en el bloque de Energía |
| H-SERVO | 4.11c / 4.12 Servomotor, servocontrol, solenoides | Sin clase S/A dedicada | NPTEL IAC | El curso de Mukhopadhyay incluye accionamientos (Lecture 32 DC Motor Drives: `9h2lEIpo74A`) |
| H-CNC | 4.5.6 / 4.12 Programación CNC | Curso NPTEL de Roy Choudhury sin URL de vídeo localizada | NPTEL | Virasak cap. 8 + MIT IAP L2 |
| H-OEE | 4.16 OEE | Sin fuente S/A | — | Virasak cap. 7 (Lean) |
| H-SHAPER | 4.14 Cepilladora, limadora, mandrinadora | Sin vídeo | — | Pendiente (hay películas de formación de la II Guerra Mundial, no localizadas) |

## 9. Recursos opcionales

- **Playlists completas** (solo como complemento; no sustituyen a los vídeos directos):
  [Manufacturing Processes I (IIT Roorkee)](https://www.youtube.com/playlist?list=PLACB124F79F677B6A) ·
  [Manufacturing Processes II (IIT Kharagpur)](https://www.youtube.com/playlist?list=PL82E9A8429ED7BB27) ·
  [Metal Casting (IIT Roorkee)](https://www.youtube.com/playlist?list=PLbMVogVj5nJQiWQqMSFeatZ7fWmjQwNgc) ·
  [Design of Machine Elements (IIT Kharagpur)](https://www.youtube.com/playlist?list=PL3D4EECEFAA99D9BE) ·
  [Kinematics of Machines (IIT Kanpur)](https://www.youtube.com/playlist?list=PLBEA57F7E7560C8E8) ·
  [Welding Engineering (IIT Roorkee)](https://www.youtube.com/playlist?list=PLbMVogVj5nJSjLB85-HKhw1aCIBxn3pWj) ·
  [Fundamentals of Industrial Oil Hydraulics and Pneumatics (IIT Kharagpur)](https://www.youtube.com/playlist?list=PLbMVogVj5nJTKwm1WjlutrAEZrLE995Ja) ·
  [Oil Hydraulics and Pneumatics (IIT Madras)](https://www.youtube.com/playlist?list=PLyqSpQzTE6M_98sgJQtw4RO_y1YwuCRBu) ·
  [Industrial Automation and Control (IIT Kharagpur)](https://www.youtube.com/playlist?list=PLE8F9BF5CB1201D23) ·
  [Computer Aided Design (IIT Delhi)](https://www.youtube.com/playlist?list=PLC3EE33F27CF14A06) ·
  [Dibujo Técnico UMH1233](https://www.youtube.com/playlist?list=PLClKgnzRFYe7cu1kqXn6lN1TdiPtsGvw0) 🇪🇸 ·
  [Tubal Cain: Lathe videos](https://www.youtube.com/playlist?list=PL45433B009A098999) (B; maestro de taller jubilado)
- **Libros de pago de referencia** (solo si decides invertir): Kalpakjian y Schmid, *Manufacturing Engineering and Technology*; Budynas, *Shigley's Mechanical Engineering Design*; Dave Gingery, *Build Your Own Metal Working Shop From Scrap* (7 tomos; la guía clásica del ciclo «fundición → torno → resto de máquinas»); Wayne R. Moore, *Foundations of Mechanical Accuracy* (la biblia de la precisión desde cero; descatalogado).
- **Ampliación para el bloque de Energía:** [Thermodynamics: Stirling and Ericsson cycles, Brayton (31 of 51)](https://www.youtube.com/watch?v=He3n4GF--qg) (autor por confirmar).

## 10. Fuentes verificadas

Todas verificadas el **2026-09-30** con el método V1 (índice del buscador: URL + título + autor/curso). Registro completo en [`research/_fuentes-verificadas.md`](../_fuentes-verificadas.md).
