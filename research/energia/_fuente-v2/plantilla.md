---
block: Bloque 5 — Energía
subject: Energía (ingeniería energética)
version: V2
date: 2026-09-30
supersedes: research/energia/bloque-5-energia.md (V1)
concepts_total: {{N}}
status: con-huecos
verification: parcial (índice del buscador; red de páginas bloqueada en el entorno)
---

# Bloque 5 — Energía · Plan de recursos V2

> **Limitación de verificación (sin cambios respecto a la V1).** El entorno donde se hizo esta auditoría solo permite usar el buscador. YouTube, MIT OCW, NPTEL, Stanford, Yale, TU Delft, IDAE y el resto de webs devuelven *EGRESS_BLOCKED*, tanto desde el terminal como desde el lector de páginas (comprobado de nuevo el 2026-09-30). Por tanto:
> - **Ningún enlace se ha abierto.** Cada URL se ha contrastado con el índice del buscador: la URL exacta aparece asociada a ese título y, casi siempre, a ese autor o institución.
> - La **cobertura de cada concepto** se basa en evidencias que se clasifican así:
>   - **E1**: el temario, la descripción o los capítulos del recurso aparecen en el índice y mencionan el concepto.
>   - **E2**: el índice del recurso es conocido de antemano (libro de texto estándar), pero no se ha podido reabrir hoy.
>   - **E3**: solo coincide el título.
> - **Regla anti-inflado:** ningún concepto se marca `COMPLETA` con evidencia E3. Si solo hay E3, queda `PARCIAL`.
> - Duraciones: solo se indican cuando el buscador las dio. Nada se ha inventado.

---

## AUDITORÍA V2

### Cobertura

El documento fuente se ha recorrido hasta el último nivel: cada viñeta es un concepto. En total hay **{{N}} conceptos** en 5.1–5.26. El apartado 5.27 (mapa de dependencias) es una síntesis sin contenido nuevo y no se cuenta. Las dependencias auxiliares se listan aparte (§2) y **no** se suman.

{{STATS}}

- La columna V1 se ha evaluado retrospectivamente, con los mismos criterios y concepto a concepto, sobre los recursos que ya tenía la V1.
- Conceptos marcados `COMPLETA` en la V2, por tipo de evidencia: {{EVC}}.
- La V1 declaraba cobertura **por apartado** («ningún apartado sin audiovisual»). Al bajar al nivel de concepto, su cobertura completa real era mucho menor: la tabla lo muestra.
- Regla F3 (audiovisual por concepto), a nivel de concepto y sin contar los proyectos: {{F3}} conceptos tienen al menos un vídeo entre sus recursos.

**Cobertura por apartado (V2):**

{{SECS}}

### Recursos

{{RECS}}

- Recursos duplicados en la V1: **5**. S10 duplica a S11; K04 duplica a P04; los tres «10-Minute Take» (O01–O03) resumen clases que ya están. Además hay varias versiones anuales de Stanford Energy Storage y Hydrogen: solo se conserva una. Los duplicados pasan a `OPCIONAL`, no se borran.
- Recursos activos que no apoyan ningún concepto de la matriz (solo opcionales): {{SINUSO}}.

### Calidad

- **Recursos verificados abriendo la página: 0.** Enlaces verificados de forma parcial (índice del buscador): **todos**.
- Evidencia de contenido por recurso activo: {{EVR}}.
- Autoridad de los recursos activos: {{TIERS}}. Los de nivel S (universidades, organismos públicos, OCW) son **{{HIGHQ}}**.
- **Recursos que requieren revisión manual** (contenido solo por título, o con dudas de URL o autoría):

{{REVMAN}}

### Práctica

- {{PRACT}}
- Los conceptos sin práctica son sobre todo descriptivos: recursos, historia, geotermia, marina, ciclo nuclear, redes e infraestructura. En ellos se proponen ejercicios de autoevaluación en la ruta (§3), pero **no se cuentan** como recursos porque no son material externo verificado.
- {{PROY}} El detalle está en §6.

### Problemas encontrados en la V1

1. **Cobertura inflada por agregación.** La V1 evaluaba 27 apartados, no los {{N}} conceptos. Un apartado «con vídeo» ocultaba decenas de conceptos sin recurso: sistemas auxiliares del MCI, ciclo del combustible nuclear, infraestructura de red, familias de baterías, etc.
2. **Recurso asignado sin evidencia.** Se afirmaba que B04 (Banerjee L11, *Hydroelectric Power*) cubría las turbinas Pelton, Francis y Kaplan. No hay evidencia → corregido.
3. **Curso mal identificado.** K10 (*Lecture 61: Fuel Cells*) pertenece a *Energy Conservation and Waste Heat Recovery* (IIT Kharagpur). La autoría de la clase concreta es ambigua en el índice (A. Bhattacharya o P. K. Das).
4. **Autoría no verificada presentada como recurso.** El vídeo de Smil `gWBigeRHD6o` no se sabe si es una conferencia o un resumen → sustituido por una conferencia del propio Smil organizada por la UBC (H02).
5. **Recurso sin autor ni institución.** «LECTURE 3: IC Engine Components» (tier C) → eliminado. En su lugar entran los apuntes de MIT 2.61 (X08).
6. **Hueco evitable.** Existía la clase *Natural Gas* de Stanford y no se había localizado → añadida (S04).
7. **Enlace incompleto.** Yale L24 (entropía) se citaba sin URL → añadida (Y03).
8. **Incoherencia entre documento y registro.** Cinco recursos estaban en el documento de la V1 pero no en `_fuentes-verificadas.md` (K08, E01 y O01–O03) → corregido.
9. **URL dudosa.** El buscador indexa Lienhard en `ahtt-dev.mit.edu`; la V1 daba `ahtt.mit.edu` sin comprobarlo → marcado para revisión.
10. **Versión dudosa.** No se sabe si el vídeo de la CSB (H01) es la obra completa de 56 min o solo la animación de 9 min.
11. **Contenido sin verificar.** El vídeo de Canal UNED (U01) podría ser una presentación y no una clase.
12. **Procedencia del vídeo.** MIT 8.02 (M10): no se sabe quién subió la copia a YouTube → se añade un espejo institucional (videolectures.net).
13. **Nivel inadecuado como recurso de refuerzo.** Princeton-CEFRC (Matalon) es de posgrado → pasa a opcional (O04).
14. **Duplicados** (véase «Recursos»).
15. **Ausencia casi total de ejercicios.** En la V1 solo había ejemplos resueltos en los vídeos de Cal Poly. No había hojas de problemas: ni de redes, ni de nucleares, ni de motores.
16. **Ausencia total de simulaciones**, pese a existir PhET, PVGIS o Cantera, todos gratuitos y de nivel S.
17. **Proyectos (5.26) sin respaldo.** Solo había MIT D-Lab, con un temario sin verificar. 19 de 20 proyectos no tenían guía.
18. **Seguridad (5.23) reducida a un único vídeo.** No se trataban el riesgo eléctrico, el radiológico ni el del hidrógeno.
19. **Contexto español y canario casi ausente.** Solo figuraba la guía de autoconsumo del IDAE.
20. **Temas del bloque tratados como secundarios o ignorados:** 5.15.4 (ciclo del combustible), 5.16.1 (volantes y CAES), 5.15.5 (confinamiento inercial), 5.5.4 (procesos politrópicos), 5.11.1 (circulación y ACS), 5.21 (infraestructura).
21. **Nivel mal ajustado en fundamentos.** 5.5 dependía solo de Yale (física), sin un texto de termodinámica de ingeniería con sistemas abiertos y procesos → añadido X06 (Yan).
22. **Sin núcleo definido.** La V1 no distinguía CORE de complementos → ahora hay {{NCORE}} recursos CORE.

---

# PLAN V2

## 1. Qué cambia respecto a la V1

- **Se conserva todo lo válido de la V1.** Stanford, NPTEL (Banerjee, IIT Kanpur, IIT Bombay), Yale, MIT (2.627, 22.01, 3.091, 8.02), Cal Poly, CSB, MacKay, Lienhard, los manuales del DOE, MIT 16.Unified, PVEducation, IDAE autoconsumo y MIT D-Lab siguen, con sus datos corregidos donde hacía falta.
- **Se añaden cinco capas que faltaban:**
  1. **Termodinámica de ingeniería**: Yan (X06).
  2. **Ingeniería de máquinas**: IIT Roorkee para calderas y turbinas (K05–K07), MIT 2.61 para motores (X08) y MIT 6.061 para máquinas eléctricas y redes (X12).
  3. **Ejercicios**: hojas de problemas de MIT 6.061, MIT 2.61 y los problemas de Lienhard.
  4. **Simulación**: PhET, PVGIS, Cantera y la demanda en tiempo real de REE.
  5. **Proyectos con guía**: Aprovecho, Practical Action/ATTRA, OSU (Stirling) y Piggott.
- **Contexto español y canario**: IDAE solar térmica, INSST, CSN, REE Canarias y Gorona del Viento.

## 2. Dependencias necesarias (no son conocimiento del bloque)

Se marcan como `DEPENDENCIA NECESARIA` y **no** cuentan en la cobertura.

{{DEPS}}

## 3. Ruta de aprendizaje

Cada fase sigue la progresión **introducción → fundamentos → universitario → profundización → aplicación**. En negrita, el CORE.

**Fase 0 — Dependencias.** DN-01 a DN-09. Mínimo imprescindible: DN-02, DN-04 y DN-05.

**Fase 1 — Fundamentos de la energía (5.1).** Introducción: **S01** → Z02 (simulación). Fundamentos: **Y01** → **Y02** → **Y03**. Universitario: **X06** caps. 1–6, con sus ejercicios. Profundización: B01 (calidad de la energía). Aplicación: **X01** caps. 1–3. *Ejercicio propuesto:* estima tu consumo diario en kWh y compáralo con la densidad energética de 3 combustibles.

**Fase 2 — Recursos y combustión (5.2–5.3).** Introducción: **S02** → S03 → S04 → S05 → S06. Fundamentos: K01. Universitario: **K02**. Simulación: Z04 (temperatura adiabática de llama del metano con φ de 0,6 a 1,4). Aplicación: Z06 (cocina eficiente, proyecto N1). Opcional: O04 (posgrado).

**Fase 3 — Transferencia de calor (5.4).** Universitario: **P04** (serie de 37 clases) + **X02** (texto y problemas). Referencia: X03 vol. 2. Aplicación: aislamiento con X01 y proyecto N2 (sistema de transferencia de calor). Opcional: K04.

**Fase 4 — Termodinámica aplicada y máquinas térmicas (5.5–5.6).** Fundamentos: **X06** caps. de procesos y 2.ª ley. Universitario: **K03** → **P01** → P02 → **P03**. Referencia: X05. Profundización: M01 (energía libre; pendiente de verificar) y X26. Aplicación: Z08 (motor Stirling, N2). *Ejercicio propuesto:* tabla comparativa de los 7 ciclos según los criterios de 5.6.3.

**Fase 5 — Vapor y turbinas de vapor y gas (5.7, 5.9.1–5.9.2).** Historia: X09 (Thurston) → O05. Universitario: **K05** (calderas) → K12 (toberas) → **K06** (turbina de acción) → **K07** (turbina de gas). Profundización: B02, X26, X03 vol. 1 (tablas de vapor). ⚠️ La máquina de vapor experimental (N2) solo con caldera certificada o un modelo comercial.

**Fase 6 — Motores de combustión interna (5.8).** Introducción en español: U01 (pendiente de verificar). Universitario: **P01** (ciclos). Referencia y ejercicios: **X08** (apuntes, hojas de problemas y laboratorios de MIT 2.61). Dependencia: DN-09.

**Fase 7 — Energía hidráulica (5.9.3, 5.10).** Introducción: **S07** (+ O01). Universitario: B03 → B04. Profundización: K08 (Pelton) → K09 (regulación de turbinas de reacción). Aplicación: Z07 (microhidráulica, rueda hidráulica y microturbina: N1 y N3) + X25 (bombeo en El Hierro).

**Fase 8 — Energía solar (5.11).** Introducción: S08 → M03. Solar térmica: **B06** → **X21** → X13 (CSP). Fotovoltaica: **M02** → M05 → **M04** → **X07**. Sistemas: D02 → X13. Aplicación: Z03 (PVGIS de tu parcela en Tenerife: conectada y aislada) + X20 (proyectos N3 y N4 solar + batería).

**Fase 9 — Energía eólica (5.12, 5.9.4).** Introducción: O02. Universitario: **D01** (5.2 → 5.6). Profundización: B07, S17. Aplicación: Z09 (aerogenerador con generador de imanes permanentes, N1 y N3).

**Fase 10 — Geotérmica y marina (5.13–5.14).** **S09** → B10. X19 → **B08** → B09.

**Fase 11 — Energía nuclear (5.15).** Introducción: X23 (CSN, en español). Fundamentos: **M06** → M07. Referencia: X04. Universitario: **S11** → **M08** → B05. Ciclo del combustible: **X15** (+ X14). Fusión: X16 → X30 → M11.

**Fase 12 — Almacenamiento, baterías, hidrógeno y pilas de combustible (5.16–5.19).** Introducción: **S12**. Referencia: **X28** (mecánico, electroquímico y de flujo). Baterías: **M09** → X29 (familias) → **X11** (SOC, SOH, BMS) → X10 (posgrado). Hidrógeno: **S13** → **X17**. Pilas de combustible: **K10** → X10.

**Fase 13 — Generación eléctrica y redes (5.20–5.21).** Fundamentos: **M10** → Z01 (simulación). Universitario: K11 → **X12** (apuntes y hojas de problemas). Sistema: S14 → **S15**. Aplicación: Z10 (factor de carga con datos reales de Tenerife) + X24 + X25.

**Fase 14 — Eficiencia y seguridad (5.22–5.23).** **S16** → X27 → **H01** → X22 (riesgo eléctrico) → X18 (hidrógeno) → X23 (radiación).

**Fase 15 — Integración e historia (5.24–5.25) y proyecto final (N5).** H02 → X09 → **X01** (repaso completo) → Z05 (D-Lab) → diseño del sistema N5 con Z03, X11, X20, Z10 y X25 como referencia.

## 4. Recursos CORE ({{NCORE}})

La columna vertebral: si solo estudias estos, cubres la mayor parte del bloque. El resto son complementos, profundización y práctica.

| ID | Recurso | Función | Cubre (principal) |
|---|---|---|---|
{{CORE}}

## 5. Matriz de cobertura concepto a concepto

Leyenda: V1 y V2 = estado de cobertura; Evid. = E1, E2 o E3 (véase el aviso inicial); Práctica = tipo de recurso práctico disponible.

{{MATRIZ}}

## 6. Proyectos integradores (5.26): preparación y respaldo

| Proyecto | Preparación previa (fases) | Guía o recurso de ejecución | Estado | Seguridad |
|---|---|---|---|---|
| N1 Horno básico | F2, F3 | Z06 (principios de combustión en cocinas) | PARCIAL | Monóxido de carbono: solo en exterior |
| N1 Cocina eficiente | F2, F3 | **Z06** | COMPLETA | Monóxido de carbono, quemaduras |
| N1 Quemador | F2 | Z06, Z04 | PARCIAL | ⚠️ Gas: no fabricar quemadores de gas presurizado sin supervisión |
| N1 Colector solar térmico | F3, F8 | X21 (diseño), B06 | PARCIAL | Sobrepresión y temperatura en el circuito cerrado |
| N1 Molino de viento sencillo | F9 | **Z09**, D01 | COMPLETA | Palas en giro, izado del mástil |
| N1 Rueda hidráulica | F7 | Z07 | PARCIAL | Cauces: permisos y riesgo de arrastre |
| N2 Motor Stirling sencillo | F4 | **Z08**, P02 | COMPLETA | Llama y superficies calientes |
| N2 Máquina de vapor experimental | F5 | X09 (historia) | PARCIAL | ⚠️ **Riesgo grave de explosión de caldera**: solo con caldera certificada o un kit comercial |
| N2 Turbina sencilla | F5, F7 | Z07, K08 | PARCIAL | Elementos rotativos |
| N2 Sistema de transferencia de calor | F3 | X02 (problemas), P04 | PARCIAL | Quemaduras |
| N3 Generador electromagnético | F13 | **Z01** (prediseño), Z09 | COMPLETA | Imanes de neodimio (pinzamientos) |
| N3 Microturbina | F5, F7 | Z07 | PARCIAL | Rotación |
| N3 Microhidráulica | F7 | **Z07** | COMPLETA | Agua y electricidad; permisos de aguas en Canarias |
| N3 Sistema solar fotovoltaico | F8 | **Z03**, X20, X07 | COMPLETA | Corriente continua a alta tensión; REBT e instalador autorizado para conectarse a red |
| N3 Sistema eólico | F9 | **Z09**, D01 | COMPLETA | Mástil y rotor; normativa municipal |
| N4 Batería | F12 | X11, M09 | PARCIAL | ⚠️ Litio: fuego térmico; empezar con plomo-ácido o con celdas comerciales protegidas por BMS |
| N4 Almacenamiento térmico | F3, F8 | X21 | PARCIAL | Temperatura y presión |
| N4 Almacenamiento mecánico | F7, F12 | — (X28 solo como teoría) | AUSENTE | Energía acumulada en volantes |
| N4 Sistema solar + batería | F8, F12 | **Z03** (modo aislado), X11, X20 | COMPLETA | Corriente continua, baterías |
| N5 Sistema energético completo | F1–F15 | Z05, Z03, Z10, X01, X25 | PARCIAL | Todas las anteriores |

## 7. Catálogo de recursos V2 (por función)

Las fichas indican la función, la autoridad (tier de la fuente: S, A, B, C), el nivel (B básico, A avanzado, S superior o universitario), el estado frente a la V1, la evidencia y la trazabilidad («Cubre: apartado → conceptos»).

{{CATALOGO}}

## 8. Huecos restantes

**Conceptos sin ningún recurso (AUSENTE), prioridad máxima para la siguiente pasada:**

{{AUSENTES}}

**Huecos parciales importantes** (el concepto tiene recurso, pero no audiovisual S/A ni práctica):
- **5.7.2 Máquina de vapor alternativa:** solo hay un texto histórico y un vídeo B.
- **5.8.1 y 5.8.4 Componentes y sistemas auxiliares del MCI:** solo hay diapositivas de MIT 2.61. Falta localizar las clases del curso NPTEL *IC Engines and Gas Turbines* (IIT Guwahati).
- **5.9.1 y 5.9.2:** faltan las URL de las clases L22 y L26 de IIT Roorkee (etapas, acción-reacción) y de las de compresores y cámaras de combustión.
- **5.9.3 Francis y Kaplan:** solo está la regulación (K09).
- **5.21b Subestaciones, interruptores, protecciones y medición:** no hay ningún recurso técnico. Buscar MIT 6.061 u otro curso de protecciones.
- **5.22 Cogeneración y trigeneración:** falta la clase de Roorkee (semana 1) y la trigeneración no tiene nada.
- **5.1.1 Exergía:** hay que localizar la clase de exergía de NPTEL (IIT Kanpur o IIT Madras).
- **5.17b LiFePO₄, NiCd, NiMH:** solo hay una fuente B (Battery University).
- **5.23 Seguridad de baterías de litio:** sin recurso, y es relevante para el proyecto N4.
- **5.25:** la historia de generadores, electricidad y red no tiene recurso.

## 9. Pasos para completar la V2 (cuando haya red)

1. Añadir a los dominios permitidos del entorno: `youtube.com`, `ocw.mit.edu`, `nptel.ac.in`, `oyc.yale.edu`, `ocw.tudelft.nl`, `canal.uned.es`, `idae.es`, `energy.gov`, `sandia.gov`, `phet.colorado.edu`, `re.jrc.ec.europa.eu` y `gutenberg.org`.
2. Abrir los recursos marcados «REVISIÓN MANUAL» y los de evidencia E3. Confirmar la duración, que el contenido esté completo y la cobertura.
3. Localizar los ID de YouTube que faltan: IIT Roorkee L22, L24, L26 y las clases de compresores; IIT Kanpur L08, L12 y L13–14; IIT Guwahati *IC Engines* L1–L8; NPTEL *Refrigeration* e *Energy Conservation and WHR*.
4. Recalcular la matriz: los conceptos PARCIAL con E3 que resulten confirmados pasan a COMPLETA.
