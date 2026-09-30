---
block: Bloque 5 — Energía
subject: Energía (ingeniería energética)
version: V2.1
date: 2026-09-30
supersedes: research/energia/bloque-5-energia.md (V1)
concepts_total: {{N}}
status: con-huecos
verification: parcial (índice del buscador; red de páginas bloqueada en el entorno)
---

# Bloque 5 — Energía · Plan de recursos V2.1

> **V2.1 (segunda pasada, 2026-09-30).** Se han cerrado 12 de los 18 conceptos AUSENTES y se han localizado las clases que faltaban de IIT Roorkee, IIT Guwahati, IIT Madras e IIT Kanpur. También se añaden hojas de problemas de MIT 2.627 y MIT 22.01 y un banco de ejercicios de autoevaluación (§11). El detalle está en el §10.

> **Limitación de verificación (sin cambios respecto a la V1).** El entorno donde se hizo esta auditoría solo permite usar el buscador. YouTube, MIT OCW, NPTEL, Stanford, Yale, TU Delft, IDAE y el resto de webs devuelven *EGRESS_BLOCKED*, tanto desde el terminal como desde el lector de páginas (comprobado de nuevo el 2026-09-30). Por tanto:
> - **Ningún enlace se ha abierto.** Cada URL se ha contrastado con el índice del buscador: la URL exacta aparece asociada a ese título y, casi siempre, a ese autor o institución.
> - La **cobertura de cada concepto** se basa en evidencias que se clasifican así:
>   - **E1**: el temario, la descripción o los capítulos del recurso aparecen en el índice y mencionan el concepto.
>   - **E2**: el índice del recurso es conocido de antemano (libro de texto estándar), pero no se ha podido reabrir hoy.
>   - **E3**: solo coincide el título.
> - **Regla anti-inflado:** ningún concepto se marca `COMPLETA` con evidencia E3. Si solo hay E3, queda `PARCIAL`.
> - Duraciones: solo se indican cuando el buscador las dio. Nada se ha inventado.

---

## AUDITORÍA V2.1

### Cobertura

El documento fuente se ha recorrido hasta el último nivel: cada viñeta es un concepto. En total hay **{{N}} conceptos** en 5.1–5.26. El apartado 5.27 (mapa de dependencias) es una síntesis sin contenido nuevo y no se cuenta. Las dependencias auxiliares se listan aparte (§2) y **no** se suman.

{{STATS}}

- La columna V1 se ha evaluado retrospectivamente, con los mismos criterios y concepto a concepto, sobre los recursos que ya tenía la V1.
- Conceptos marcados `COMPLETA` en la V2.1, por tipo de evidencia: {{EVC}}.
- La V1 declaraba cobertura **por apartado** («ningún apartado sin audiovisual»). Al bajar al nivel de concepto, su cobertura completa real era mucho menor: la tabla lo muestra.
- Regla F3 (audiovisual por concepto), a nivel de concepto y sin contar los proyectos: {{F3}} conceptos tienen al menos un vídeo entre sus recursos.

**Cobertura por apartado (V2.1):**

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
- Los conceptos sin práctica son sobre todo descriptivos: recursos, historia, geotermia, marina, ciclo nuclear, redes e infraestructura. En ellos se proponen ejercicios de autoevaluación en la ruta (§3) y en el banco de ejercicios (§11), pero **no se cuentan** como recursos porque no son material externo verificado.
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

# PLAN V2.1

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

**Fase 1 — Fundamentos de la energía (5.1).** Introducción: **S01** → Z02 (simulación). Fundamentos: **Y01** → **Y02** → **Y03**. Universitario: **X06** caps. 1–6, con sus ejercicios. Profundización: B01 (calidad de la energía) → K25 (L26 Exergy). Aplicación: **X01** caps. 1–3. *Ejercicio propuesto:* estima tu consumo diario en kWh y compáralo con la densidad energética de 3 combustibles.

**Fase 2 — Recursos y combustión (5.2–5.3).** Introducción: **S02** → S03 → S04 → S05 → S06. Fundamentos: K01. Universitario: **K02** → **K16** (temperatura adiabática de llama) → K20 (combustibles: octano, cetano, alcoholes) → K26 (llama, velocidad de combustión, encendido). Simulación: Z04 (temperatura adiabática de llama del metano con φ de 0,6 a 1,4). Aplicación: Z06 (cocina eficiente, proyecto N1) + X32 (carbón vegetal, FAO). Opcional: O04 (posgrado).

**Fase 3 — Transferencia de calor (5.4).** Universitario: **P04** (serie de 37 clases) + **X02** (texto y problemas). Referencia: X03 vol. 2. Aplicaciones: calderas (K05, K15) y refrigeración (K22, X31). Aplicación: aislamiento con X01 y proyecto N2 (sistema de transferencia de calor). Opcional: K04.

**Fase 4 — Termodinámica aplicada y máquinas térmicas (5.5–5.6).** Fundamentos: **X06** caps. de procesos y 2.ª ley. Universitario: **K03** → **P01** → P02 → **P03** → **K28** (ciclo binario y cogeneración). Ejercicios: X43 (ciclos de aire estándar). Referencia: X05. Profundización: M01 (energía libre; pendiente de verificar) y X26. Aplicación: Z08 (motor Stirling, N2). *Ejercicio propuesto:* tabla comparativa de los 7 ciclos según los criterios de 5.6.3.

**Fase 5 — Vapor y turbinas de vapor y gas (5.7, 5.9.1–5.9.2).** Historia: X09 (Thurston) → O05. Universitario: **K05** (calderas de alta presión) → K15 (pirotubulares) → K12 (toberas) → **K06** (turbina de acción) → **K13** (acción-reacción) → **K07** (turbina de gas) → K14 (compresores). Profundización: B02, X26, X03 vol. 1 (tablas de vapor). ⚠️ La máquina de vapor experimental (N2) solo con caldera certificada o un modelo comercial.

**Fase 6 — Motores de combustión interna (5.8).** Introducción en español: U01 (pendiente de verificar). Universitario: **K17** (componentes, MEP y MEC) → **P01** (ciclos) → K18 (características de funcionamiento) → **K19** (inyección y encendido) → K20 (combustibles). Ejercicios: X43. Referencia y ejercicios: **X08** (apuntes, hojas de problemas y laboratorios de MIT 2.61). Dependencia: DN-09.

**Fase 7 — Energía hidráulica (5.9.3, 5.10).** Introducción: **S07** (+ O01). Universitario: B03 → B04. Universitario de turbinas: **K24** (IIT Madras: Francis, Kaplan, Pelton). Profundización: K08 (Pelton) → K09 (regulación de turbinas de reacción) → X33 (presas y aliviaderos). Aplicación: Z07 (microhidráulica, rueda hidráulica y microturbina: N1 y N3) + X25 (bombeo en El Hierro).

**Fase 8 — Energía solar (5.11).** Introducción: S08 → M03. Solar térmica: **B06** → **X21** → X13 (CSP). Fotovoltaica: **M02** → M05 → **M04** → **X07** → X41 (problemas y quizzes). Sistemas: D02 → X13. Aplicación: Z03 (PVGIS de tu parcela en Tenerife: conectada y aislada) + X20 (proyectos N3 y N4 solar + batería).

**Fase 9 — Energía eólica (5.12, 5.9.4).** Introducción: O02. Universitario: **D01** (5.2 → 5.6). Profundización: B07, S17. Aplicación: Z09 (aerogenerador con generador de imanes permanentes, N1 y N3).

**Fase 10 — Geotérmica y marina (5.13–5.14).** **S09** → B10. X19 → **B08** → B09.

**Fase 11 — Energía nuclear (5.15).** Introducción: X23 (CSN, en español). Fundamentos: **M06** → M07 → **X42** (8 hojas de problemas con laboratorios caseros). Referencia: X04. Universitario: **S11** → **M08** → B05. Ciclo del combustible: **X15** (+ X14). Fusión: X16 → X30 → M11.

**Fase 12 — Almacenamiento, baterías, hidrógeno y pilas de combustible (5.16–5.19).** Introducción: **S12**. Referencia: **X28** (mecánico, electroquímico y de flujo). Baterías: **M09** → X29 (familias) → X38 (estado sólido) → **X11** (SOC, SOH, BMS) → X44 (modelado térmico) → X10 (posgrado). Químico: X35 (e-fuels). Hidrógeno: **S13** → **X17**. Pilas de combustible: **K10** → **X39** (comparativa) → X40 (manual NETL) → X10.

**Fase 13 — Generación eléctrica y redes (5.20–5.21).** Fundamentos: **M10** → Z01 (simulación). Universitario: K11 → **X12** (apuntes y hojas de problemas). Sistema: S14 → **S15** → **K21** (protecciones y aparamenta) → K27 (medición). Aplicación: Z10 (factor de carga con datos reales de Tenerife) + X24 + X25.

**Fase 14 — Eficiencia y seguridad (5.22–5.23).** **S16** → K28 + X36 (cogeneración) → X27 → **H01** → X22 (riesgo eléctrico) → X18 (hidrógeno) → X37 (baterías de litio) → X23 (radiación).

**Fase 15 — Integración e historia (5.24–5.25) y proyecto final (N5).** H02 → X09 → **X01** (repaso completo) → X34 (operación y mantenimiento) → Z05 (D-Lab) → diseño del sistema N5 con Z03, X11, X20, Z10 y X25 como referencia.

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

## 7. Catálogo de recursos V2.1 (por función)

Las fichas indican la función, la autoridad (tier de la fuente: S, A, B, C), el nivel (B básico, A avanzado, S superior o universitario), el estado frente a la V1, la evidencia y la trazabilidad («Cubre: apartado → conceptos»).

{{CATALOGO}}

## 8. Huecos restantes

**Conceptos sin ningún recurso (AUSENTE), prioridad máxima para la siguiente pasada:**

{{AUSENTES}}

**Huecos parciales importantes** (el concepto tiene recurso, pero no uno audiovisual S/A con enlace directo, o no tiene práctica):
- **5.7.2 Máquina de vapor alternativa:** solo hay un texto histórico (X09) y un vídeo B (O05). No se ha encontrado ninguna clase universitaria.
- **5.8.4 Lubricación, refrigeración, escape y sobrealimentación del MCI:** solo hay diapositivas de MIT 2.61. Las clases correspondientes de IIT Guwahati no están localizadas.
- **5.8.5 Potencia, par y consumo específico:** K18 solo está verificado por el título.
- **5.9.1 Etapas (compounding) y 5.9.2 cámara de combustión:** falta la URL de L22 y de las clases de cámaras de combustión de IIT Roorkee.
- **5.16.2 Sales fundidas y PCM:** no hay ninguna clase específica.
- **5.17b LiFePO₄, NiCd, NiMH y estado sólido:** solo hay fuentes B o de título.
- **5.21b Subestaciones; 5.21c pérdidas, frecuencia, tensión y estabilidad:** sin evidencia específica. MIT 6.061 probablemente las trata, pero no se ha verificado.
- **5.22 Trigeneración:** sin evidencia.
- **Enlaces a nivel de curso, no de clase:** K24, K25 y K26. Los espejos no oficiales de NPTEL (digimat e InfoCoBuild) son K17–K22 y K27.
- **5.25 (cultura general):** la historia de generadores, electricidad y red sigue sin recurso institucional. Es de prioridad baja por ser cultura general.
- **Práctica:** más del 60 % de los conceptos no tienen práctica externa. El §11 propone ejercicios de autoevaluación para cubrirlos.

## 9. Pasos para completar la V2.1 (cuando haya red)

1. Añadir a los dominios permitidos del entorno: `youtube.com`, `ocw.mit.edu`, `nptel.ac.in`, `digimat.in`, `infocobuild.com`, `oyc.yale.edu`, `ocw.tudelft.nl`, `canal.uned.es`, `idae.es`, `energy.gov`, `nrel.gov`, `usbr.gov`, `iea.blob.core.windows.net`, `sandia.gov`, `phet.colorado.edu`, `re.jrc.ec.europa.eu`, `fao.org` y `gutenberg.org`.
2. Abrir los recursos marcados «REVISIÓN MANUAL» y los de evidencia E3. Confirmar la duración, que el contenido esté completo y la cobertura.
3. Sustituir los espejos (digimat, InfoCoBuild) por la URL oficial de YouTube de NPTEL, y los enlaces de curso (K24, K25, K26) por el enlace de la clase concreta.
4. Localizar las clases que siguen sin URL: IIT Roorkee L08 (acuotubulares), L22 (compounding), L24 y las de cámara de combustión; IIT Kanpur L08 y L12; IIT Guwahati, semanas 4–6 (carburación, inyección, combustión) y las clases de lubricación y refrigeración.
5. Recalcular la matriz con `python3 research/energia/_fuente-v2/build.py`: los conceptos PARCIAL con E3 que resulten confirmados pasan a COMPLETA.

## 10. Registro de cambios

**V2.1 (segunda pasada):**
- **Clases localizadas.** IIT Roorkee: L04 cogeneración (K28), L07 pirotubulares (K15), L26 acción-reacción (K13) y L36 compresores (K14). IIT Kanpur: L13 temperatura adiabática de llama (K16). IIT Guwahati: L01 componentes (K17), L04 características de funcionamiento (K18), L14 inyección y encendido (K19) y L19 combustibles (K20).
- **Cursos localizados:** IIT Madras *Introduction to Turbomachines* (Francis y Kaplan, K24), IIT Kanpur *Engineering Thermodynamics* (exergía, K25), IIT Kanpur *Combustion Part 2* (encendido y llama, K26), IIT Roorkee *Protection and Switchgear* (K21) e IIT Kharagpur *Electrical Measurement* (contador, K27).
- **Referencias nuevas:** FAO carbón vegetal (X32), USBR *Design of Small Dams* (X33), NREL operación y mantenimiento (X34), IEA e-fuels (X35), DOE cogeneración (X36), UL FSRI baterías de litio (X37), *Physics Today* estado sólido (X38), comparativa de pilas de combustible del DOE (X39) y manual de pilas del NETL (X40).
- **Ejercicios nuevos:** MIT 2.627 (X41), MIT 22.01 (X42), tareas NPTEL de IC Engines (X43) y Plett ECE5710 (X44).
- **Conceptos que pasan de AUSENTE a COMPLETA:** encendido, velocidad de combustión, carbón vegetal, aliviadero, combustibles sintéticos, gestión térmica de baterías, interruptores, medición, cogeneración y almacenamiento en seguridad.
- **Conceptos que pasan de AUSENTE a PARCIAL:** presión en combustión, estado sólido, gestión térmica de pilas, subestaciones, trigeneración y mantenimiento.
- **Pasan a COMPLETA:** exergía, Francis, Kaplan, componentes del MCI (cilindro, pistón, biela, cigüeñal, válvulas, inyección, encendido), turbina de reacción, compresor, PEMFC, SOFC, refrigeración, alcoholes, gasolina y diésel.

**V2 (primera auditoría):** véase «Problemas encontrados en la V1».

## 11. Banco de ejercicios de autoevaluación (propuestos, no son recursos externos)

Son ejercicios redactados para este plan. **No cuentan** en las cifras de práctica de la auditoría porque no son material externo verificado. Cada uno indica los recursos con los que resolverlo.

| Apartado | Ejercicio | Recursos |
|---|---|---|
| 5.1.1 | Calcula tu consumo diario de energía (electricidad, transporte, alimentación y calefacción) en kWh/día y compáralo con el promedio europeo que da MacKay. | X01 |
| 5.1.1 | Una bombilla de 10 W encendida 5 h y un coche que recorre 20 km: ¿cuánta energía consume cada uno en kWh? ¿Qué potencia media representa cada consumo? | S01, X01 |
| 5.1.1 | Exergía: compara la exergía de 1 kWh de calor a 60 °C con la de 1 kWh de calor a 600 °C (ambiente a 20 °C). | K25, Y02 |
| 5.1.2 | En la simulación, suelta el patinador desde 5 m sin rozamiento y con rozamiento. Explica dónde va la energía «perdida». | Z02 |
| 5.2.2 | Haz una tabla con 8 recursos (densidad energética, disponibilidad, renovabilidad, coste, impacto) y ordénalos para una isla aislada como Tenerife. | S02–S09, X01, X24 |
| 5.3.1 | Calcula el aire estequiométrico del metano y del propano, y la relación aire/combustible con un 20 % de exceso de aire. | K02 |
| 5.3.2 | Con Cantera, representa la temperatura adiabática de llama del metano con φ de 0,6 a 1,4 e interpreta el máximo. | Z04, K16 |
| 5.3.3 | Compara el poder calorífico por kg y por litro de madera seca, carbón vegetal, gasolina, diésel, etanol e hidrógeno. | K20, X32, X01 |
| 5.4.1 | Pérdidas por una pared de 20 cm de bloque de hormigón con 5 cm de aislante: resistencias en serie, flujo con ΔT = 15 °C. | X02, P04 |
| 5.4.3 | Estima la potencia radiada por un tejado negro a 60 °C y por uno blanco (usa emisividades). | X02, P04 |
| 5.5.4 | Calcula el trabajo de compresión de aire de 1 a 8 bar isotérmica, adiabática y politrópicamente (n = 1,3). Compara los resultados. | X06 |
| 5.6.2 | Rendimiento del ciclo Otto con r = 8, 10 y 12; rendimiento de Carnot entre 1500 K y 300 K. Explica la diferencia. | P01, Y02, X43 |
| 5.6.3 | Tabla comparativa de los 7 ciclos según los criterios de 5.6.3. | K03, P01–P03, X26 |
| 5.7.1 | Con las tablas de vapor, calcula el calor necesario para producir 1 kg de vapor sobrecalentado a 10 bar y 250 °C desde agua a 20 °C. | X03, P03 |
| 5.8.5 | Un motor da 100 N·m a 3000 rpm y consume 8 kg/h de gasolina: calcula la potencia, el consumo específico y el rendimiento térmico. | X08, K18 |
| 5.9.3 | Para un salto de 50 m y un caudal de 20 L/s, calcula la potencia hidráulica y elige el tipo de turbina según la velocidad específica. | K08, K24, Z07 |
| 5.10 | Diseña sobre el papel una microcentral: salto, caudal, tubería forzada, turbina, generador y energía anual. | Z07, S07 |
| 5.11 | Con PVGIS, calcula la producción anual de 2 kWp en tu zona de Tenerife con dos inclinaciones y una instalación aislada con 10 kWh de batería. | Z03 |
| 5.12 | Potencia del viento en un rotor de 3 m de diámetro a 5, 8 y 12 m/s; aplica el límite de Betz. | D01, Z09 |
| 5.13 | Calcula el gradiente geotérmico medio a partir de dos temperaturas de sondeo e identifica los usos posibles de cada nivel de temperatura. | S09, B10 |
| 5.14 | Estima la energía potencial de un embalse de marea de 1 km² con 4 m de carrera. | B08 |
| 5.15.1 | Energía de enlace por nucleón del U-235 y del Fe-56 a partir del defecto de masa. | M06, X42 |
| 5.15.4 | Dibuja el ciclo del combustible con sus 8 etapas e indica en cuál aparece el mayor riesgo de proliferación. | X15, X14 |
| 5.16 | Compara bombeo, volante, CAES, Li-ion y H₂ según rendimiento ida y vuelta, duración y coste por kWh. | X28, S12 |
| 5.17 | Dimensiona un banco de baterías LiFePO₄ para 5 kWh/día con 2 días de autonomía y un 80 % de profundidad de descarga. | X11, X29, Z03 |
| 5.18 | Energía eléctrica necesaria para producir 1 kg de H₂ por electrólisis con un 70 % de rendimiento; compárala con su PCI. | X17, S13 |
| 5.19 | Calcula el voltaje reversible de una pila H₂/O₂ y el rendimiento máximo teórico. | X10, X39 |
| 5.20 | En la simulación de Faraday, mide cómo cambia la tensión generada con el número de espiras y la velocidad de giro. | Z01, M10 |
| 5.21 | Con los datos de REE, calcula el factor de carga diario de Tenerife y la relación punta/valle. | Z10 |
| 5.22 | Compara el consumo de combustible de cogeneración (η global del 80 %) frente a producción separada (η eléctrico del 40 % + caldera del 90 %). | X36, K28 |
| 5.23 | Para una instalación FV con batería en casa, haz un análisis de riesgos: eléctrico, incendio de batería y trabajos en altura. | X22, X37 |
