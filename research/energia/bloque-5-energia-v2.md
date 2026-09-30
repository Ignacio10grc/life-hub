---
block: Bloque 5 — Energía
subject: Energía (ingeniería energética)
version: V2
date: 2026-09-30
supersedes: research/energia/bloque-5-energia.md (V1)
concepts_total: 450
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

El documento fuente se ha recorrido hasta el último nivel: cada viñeta es un concepto. En total hay **450 conceptos** en 5.1–5.26. El apartado 5.27 (mapa de dependencias) es una síntesis sin contenido nuevo y no se cuenta. Las dependencias auxiliares se listan aparte (§2) y **no** se suman.

| Métrica | V1 | V2 |
|---|---|---|
| Conceptos del bloque (hojas del temario, 5.1–5.26) | 450 | 450 |
| COMPLETA | 104 (23,1 %) | 277 (61,6 %) |
| PARCIAL | 193 (42,9 %) | 155 (34,4 %) |
| AUSENTE | 148 (32,9 %) | 18 (4,0 %) |
| RECURSO INADECUADO | 5 (1,1 %) | 0 (0,0 %) |
| Cobertura (algún recurso: COMPLETA + PARCIAL) | 67,1 % | 96,0 % |
| Cobertura completa demostrable | 23,1 % | 61,6 % |

- La columna V1 se ha evaluado retrospectivamente, con los mismos criterios y concepto a concepto, sobre los recursos que ya tenía la V1.
- Conceptos marcados `COMPLETA` en la V2, por tipo de evidencia: E1: 241, E2: 36.
- La V1 declaraba cobertura **por apartado** («ningún apartado sin audiovisual»). Al bajar al nivel de concepto, su cobertura completa real era mucho menor: la tabla lo muestra.
- Regla F3 (audiovisual por concepto), a nivel de concepto y sin contar los proyectos: 276 de 430 (64,2 %) conceptos tienen al menos un vídeo entre sus recursos.

**Cobertura por apartado (V2):**

| Apartado | Conceptos | COMPLETA | PARCIAL | AUSENTE |
|---|---|---|---|---|
| 5.1.1 Conceptos fundamentales | 14 | 11 | 3 | 0 |
| 5.1.2 Formas de energía | 9 | 5 | 4 | 0 |
| 5.2.1 Recursos primarios | 12 | 9 | 3 | 0 |
| 5.2.2 Caracterización | 10 | 4 | 6 | 0 |
| 5.3.1 Química de la combustión | 8 | 5 | 3 | 0 |
| 5.3.2 Procesos de combustión | 7 | 1 | 4 | 2 |
| 5.3.3 Combustibles | 9 | 4 | 4 | 1 |
| 5.4.1 Conducción | 5 | 5 | 0 | 0 |
| 5.4.2 Convección | 4 | 3 | 1 | 0 |
| 5.4.3 Radiación | 6 | 6 | 0 | 0 |
| 5.4.4 Aplicaciones | 6 | 4 | 2 | 0 |
| 5.5.1 Sistemas | 7 | 7 | 0 | 0 |
| 5.5.2 Variables | 7 | 6 | 1 | 0 |
| 5.5.3 Leyes | 4 | 3 | 1 | 0 |
| 5.5.4 Procesos | 5 | 5 | 0 | 0 |
| 5.6.1 Máquina térmica | 6 | 6 | 0 | 0 |
| 5.6.2 Ciclos fundamentales | 7 | 7 | 0 | 0 |
| 5.6.3 Comparación | 7 | 1 | 6 | 0 |
| 5.7.1 Producción de vapor | 8 | 7 | 1 | 0 |
| 5.7.2 Máquina de vapor | 7 | 0 | 7 | 0 |
| 5.7.3 Evolución | 1 | 1 | 0 | 0 |
| 5.7.4 Turbinas de vapor | 7 | 3 | 4 | 0 |
| 5.8.1 Conceptos del MCI | 9 | 0 | 9 | 0 |
| 5.8.2 Ciclo Otto | 5 | 5 | 0 | 0 |
| 5.8.3 Ciclo Diesel | 6 | 5 | 1 | 0 |
| 5.8.4 Sistemas auxiliares | 7 | 0 | 7 | 0 |
| 5.8.5 Rendimiento del MCI | 5 | 1 | 4 | 0 |
| 5.9.1 Turbinas de vapor | 4 | 1 | 3 | 0 |
| 5.9.2 Turbinas de gas | 4 | 1 | 3 | 0 |
| 5.9.3 Turbinas hidráulicas | 3 | 1 | 2 | 0 |
| 5.9.4 Turbinas eólicas | 5 | 3 | 2 | 0 |
| 5.10.1 Recursos hidráulicos | 6 | 6 | 0 | 0 |
| 5.10.2 Conversión | 1 | 1 | 0 | 0 |
| 5.10.3 Infraestructura | 6 | 3 | 2 | 1 |
| 5.10.4 Tipos | 3 | 3 | 0 | 0 |
| 5.11.1 Solar térmica | 7 | 7 | 0 | 0 |
| 5.11.2 Solar fotovoltaica | 6 | 6 | 0 | 0 |
| 5.11.3 Sistemas solares | 5 | 4 | 1 | 0 |
| 5.12 Energía eólica | 12 | 9 | 3 | 0 |
| 5.13 Energía geotérmica | 8 | 6 | 2 | 0 |
| 5.14 Energía marina | 6 | 0 | 6 | 0 |
| 5.15.1 Fundamentos nucleares | 6 | 6 | 0 | 0 |
| 5.15.2 Fisión | 7 | 7 | 0 | 0 |
| 5.15.3 Reactor | 8 | 5 | 3 | 0 |
| 5.15.4 Ciclo del combustible | 8 | 8 | 0 | 0 |
| 5.15.5 Fusión | 6 | 5 | 1 | 0 |
| 5.16.1 Almacenamiento mecánico | 3 | 3 | 0 | 0 |
| 5.16.2 Almacenamiento térmico | 3 | 1 | 2 | 0 |
| 5.16.3 Electroquímico | 5 | 4 | 1 | 0 |
| 5.16.4 Químico | 2 | 1 | 0 | 1 |
| 5.16.5 Eléctrico | 2 | 0 | 2 | 0 |
| 5.17a Baterías — conceptos | 16 | 13 | 3 | 0 |
| 5.17b Baterías — familias | 7 | 3 | 3 | 1 |
| 5.18a Hidrógeno — producción | 6 | 3 | 3 | 0 |
| 5.18b Hidrógeno — almacenamiento | 4 | 2 | 2 | 0 |
| 5.18c Hidrógeno — uso | 5 | 4 | 1 | 0 |
| 5.19 Pilas de combustible | 10 | 7 | 2 | 1 |
| 5.20a Generación — conversión | 2 | 2 | 0 | 0 |
| 5.20b Generadores | 7 | 7 | 0 | 0 |
| 5.21a Redes — componentes | 5 | 5 | 0 | 0 |
| 5.21b Redes — infraestructura | 6 | 2 | 1 | 3 |
| 5.21c Redes — conceptos | 8 | 3 | 5 | 0 |
| 5.22 Eficiencia energética | 9 | 3 | 5 | 1 |
| 5.23 Seguridad energética | 12 | 7 | 5 | 0 |
| 5.24 Infraestructura energética | 6 | 2 | 3 | 1 |
| 5.25 Evolución tecnológica | 13 | 1 | 7 | 5 |
| 5.26 Proyectos integradores | 20 | 8 | 11 | 1 |

### Recursos

| Recursos | Número |
|---|---|
| Recursos individuales en la V1 (57 en el registro + 5 que solo estaban en el documento) | 62 |
| Conservados sin cambios | 50 |
| Conservados con corrección (datos o alcance) | 3 |
| Conservados como opcionales (duplicados o resúmenes) | 7 |
| Sustituidos | 1 |
| Eliminados | 2 |
| Nuevos | 47 |
| **Total en la V2 (sin eliminados)** | **108** |
| Marcados como CORE | 42 |

- Recursos duplicados en la V1: **5**. S10 duplica a S11; K04 duplica a P04; los tres «10-Minute Take» (O01–O03) resumen clases que ya están. Además hay varias versiones anuales de Stanford Energy Storage y Hydrogen: solo se conserva una. Los duplicados pasan a `OPCIONAL`, no se borran.
- Recursos activos que no apoyan ningún concepto de la matriz (solo opcionales): S10, K04, O02, O03.

### Calidad

- **Recursos verificados abriendo la página: 0.** Enlaces verificados de forma parcial (índice del buscador): **todos**.
- Evidencia de contenido por recurso activo: E1: 84 · E2: 2 · E3: 22.
- Autoridad de los recursos activos: A: 11, B: 3, S: 94. Los de nivel S (universidades, organismos públicos, OCW) son **94**.
- **Recursos que requieren revisión manual** (contenido solo por título, o con dudas de URL o autoría):

- S08 · Stanford — Solar Energy Lecture: Solo se confirmó el título y la autora.
- S17 · Sanjiva Lele — Wind Energy (Stanford): Conferencia de 2016; contenido exacto no verificado.
- B02 · NPTEL (Banerjee) — L9 Thermal Power Plants (II): Solo el título; el buscador lo da como «Thermal Power Plants II».
- B03 · NPTEL (Banerjee) — L10 Hydroelectric Power: 
- B04 · NPTEL (Banerjee) — L11 Hydroelectric Power: La V1 afirmaba que cubría las turbinas Pelton, Francis y Kaplan; no hay evidencia de ello → ya no se cuenta como cobertura de 5.9.3.
- B05 · NPTEL (Banerjee) — L12 Nuclear Power Generation: 
- B06 · NPTEL (Banerjee) — L15 Solar Thermal Energy Conversion (57:13): Duración indicada por el buscador.
- B07 · NPTEL (Banerjee) — L22 Wind Energy II: 
- B08 · NPTEL (Banerjee) — L32 Tidal Energy: 
- B09 · NPTEL (Banerjee) — L34 Solar Pond and Wave Power: 
- B10 · NPTEL (Banerjee) — L35 Geothermal Energy: 
- K04 · NPTEL (IIT Bombay, Sukhatme y Gaitonde) — Lecture 1 Introduction on Heat and Mass Transfer: Duplica la función de P04; queda como alternativa.
- K11 · NPTEL (IISc, L. Umanand) — Basic Electrical Technology, Lecture 40 Synchronous Machine: Llena el hueco de la V1 sobre la máquina síncrona.
- K12 · NPTEL — Mod-01 Lec-09 Theory of Nozzles: REVISIÓN MANUAL: identificar el curso.
- M01 · MIT 5.60 Thermodynamics & Kinetics (Spring 2008) — Lec 13 (energía libre de Gibbs): REVISIÓN MANUAL: el vídeo se titula solo «Lec 13»; el tema (Gibbs) lo afirma el buscador.
- M09 · MIT 3.091 (Grossman) — The Battery Revolution (Lec 35): Página OCW: https://ocw.mit.edu/courses/3-091-introduction-to-solid-state-chemistry-fall-2018/resources/the-battery-revolution-lec35/
- M11 · Dennis Whyte — USask Engineering Cheriton Guest Lecture on Fusion Research: 
- P01 · Cal Poly Pomona — Thermodynamics: Otto cycle, Diesel cycle (29 of 51): Sigue a Çengel y Boles (8.ª ed.).
- D02 · TU Delft OCW — Solar Energy: Photovoltaic (PV) Systems: REVISIÓN MANUAL del temario.
- U01 · Canal UNED — Motores de combustión interna alternativos: REVISIÓN MANUAL: no se sabe si es una clase completa o un vídeo de presentación.
- X02 · Lienhard IV y V — A Heat Transfer Textbook, 5.ª ed. (2019): El buscador indexa https://ahtt-dev.mit.edu/; ahtt.mit.edu es la dirección oficial citada. REVISIÓN MANUAL de la URL.
- X24 · Red Eléctrica — El sistema eléctrico canario (díptico): Contexto directo de tu objetivo en Tenerife.
- X26 · MIT 2.60J Fundamentals of Advanced Energy Conversion (2020) — Lec 15 Thermo-mechanical Conversion: Gas Turbine Power Plants: 
- X27 · NPTEL (IIT KGP) — Energy Conservation and Waste Heat Recovery (página del curso): Curso de la clase K10. No se localizaron los ID de YouTube de cada clase: REVISIÓN MANUAL.
- X31 · NPTEL (IIT Roorkee, Ravi Kumar) — Refrigeration and Air-conditioning (página del curso): Para quien parte de cero. No se localizaron los ID de YouTube de las clases: REVISIÓN MANUAL.
- Z09 · Hugh Piggott / Practical Action — manual de aerogenerador con generador de imanes permanentes (PMG): Copia alojada en un repositorio educativo (Teacher in a Box), no en la web oficial: REVISIÓN MANUAL de la estabilidad del enlace.

### Práctica

- De 430 conceptos (sin contar los proyectos): 143 tienen algún recurso de práctica (101 con ejercicios o problemas, 26 con simulación, 16 con laboratorio o proyecto); **287 no tienen práctica** (66,7 %).
- Los conceptos sin práctica son sobre todo descriptivos: recursos, historia, geotermia, marina, ciclo nuclear, redes e infraestructura. En ellos se proponen ejercicios de autoevaluación en la ruta (§3), pero **no se cuentan** como recursos porque no son material externo verificado.
- De 20 proyectos de 5.26: 8 respaldados (COMPLETA), 11 con respaldo parcial, 1 sin recursos. El detalle está en §6.

### Problemas encontrados en la V1

1. **Cobertura inflada por agregación.** La V1 evaluaba 27 apartados, no los 450 conceptos. Un apartado «con vídeo» ocultaba decenas de conceptos sin recurso: sistemas auxiliares del MCI, ciclo del combustible nuclear, infraestructura de red, familias de baterías, etc.
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
22. **Sin núcleo definido.** La V1 no distinguía CORE de complementos → ahora hay 42 recursos CORE.

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

| ID | Dependencia necesaria | La necesita | Recurso | Estado |
|---|---|---|---|---|
| DN-01 | Cálculo diferencial e integral básico | 5.4, 5.5, 5.6 | — (bloque de Matemáticas) | Requisito previo |
| DN-02 | Mecánica: trabajo, energía, potencia (Bloque 2) | 5.1 | Z02; Yale PHYS 200 (clases 5–6, sin URL localizada) | PARCIAL |
| DN-03 | Mecánica de fluidos: caudal, Bernoulli, pérdidas de carga | 5.4.2, 5.9, 5.10 | X03 (vol. 3) | PARCIAL |
| DN-04 | Química: redox, entalpía de reacción | 5.3, 5.17, 5.19 | M09; K01 | PARCIAL |
| DN-05 | Electromagnetismo: flujo magnético, ley de Faraday | 5.20 | M10, Z01 | COMPLETA |
| DN-06 | Circuitos de corriente alterna: fasores, potencia activa y reactiva, trifásica | 5.20, 5.21 | X12 (primeros capítulos) | PARCIAL |
| DN-07 | Física de semiconductores: unión p-n | 5.11.2 | M05, X07 | COMPLETA |
| DN-08 | Física atómica básica | 5.15 | M06, X04 | COMPLETA |
| DN-09 | Mecanismos: biela-manivela, levas, volantes (Bloque 4) | 5.7.2, 5.8.1 | — (Bloque 4) | Requisito previo |

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

## 4. Recursos CORE (42)

La columna vertebral: si solo estudias estos, cubres la mayor parte del bloque. El resto son complementos, profundización y práctica.

| ID | Recurso | Función | Cubre (principal) |
|---|---|---|---|
| S01 | Stanford Understand Energy — Energy Basics Lecture | INTRODUCCIÓN | 5.1.1 → energía, potencia, rendimiento, eficiencia, transformación |
| S02 | Stanford — Introduction to Fossil Fuels Lecture | CURSO PRINCIPAL | 5.2.1 → carbón, petróleo, gas (origen) |
| S07 | Stanford — Hydroelectric Power Lecture | CURSO PRINCIPAL | 5.10.1 → potencia del agua en movimiento, instalaciones |
| S09 | Stanford — Geothermal Lecture | CURSO PRINCIPAL | 5.13 → funcionamiento, exploración, desarrollo, tecnología, economía, tendencias |
| S11 | Stanford — Nuclear Fission Lecture | INTRODUCCIÓN | 5.15.2 → fisión comercial |
| S12 | Stanford — Energy Storage Lecture | INTRODUCCIÓN | 5.16 → por qué almacenar, tecnologías, despliegue a escala de red |
| S13 | Stanford — Hydrogen Lecture | CURSO PRINCIPAL | 5.18 → qué es, producción, transporte, usos y futuro |
| S15 | Stanford — The Electricity Grid Lecture | CURSO PRINCIPAL | 5.21 → transmisión, estructura del sector, fiabilidad de la red |
| S16 | Stanford — Energy Efficiency Lecture | CURSO PRINCIPAL | 5.22 → dónde aplicar la eficiencia, diseño integrador, barreras, políticas |
| B06 | NPTEL (Banerjee) — L15 Solar Thermal Energy Conversion (57:13) | CURSO PRINCIPAL | 5.11.1 → conversión solar térmica, colectores |
| B08 | NPTEL (Banerjee) — L32 Tidal Energy | CURSO PRINCIPAL | 5.14 → mareas, diferencias de nivel |
| K02 | NPTEL (IIT Kanpur) — L09 Stoichiometric calculations for air gas mixture | CURSO PRINCIPAL | 5.3.1 → estequiometría, comburente (aire), combustible |
| K03 | NPTEL (IIT Bombay) — Mod-01 Lec-18 Rankine, Brayton, Stirling and Ericsson cycles | CURSO PRINCIPAL | 5.6.2 → Rankine, Brayton, Stirling, Ericsson |
| K05 | NPTEL (IIT Roorkee, Ravi Kumar) — Steam and Gas Power Systems, L10 High Pressure Boilers (Part 1) | CURSO PRINCIPAL | 5.7.1 → caldera, presión, generación de vapor (calderas de alta presión) |
| K06 | NPTEL (IIT Roorkee) — L23 Impulse Steam Turbine | CURSO PRINCIPAL | 5.7.4 y 5.9.1 → turbina de acción (impulso), álabes, expansión en toberas |
| K07 | NPTEL (IIT Roorkee) — L31 Gas turbine cycle | CURSO PRINCIPAL | 5.9.2 → ciclo de la turbina de gas: compresor, combustión, turbina, escape |
| K10 | NPTEL (IIT KGP) — Lecture 61: Fuel Cells (curso Energy Conservation and Waste Heat Recovery) | CURSO PRINCIPAL | 5.19 → principio, tipos y funcionamiento de las pilas de combustible (semana 11: almacenamiento y pilas) |
| Y01 | Yale PHYS 200 (Shankar) — L22 The Boltzmann Constant and First Law of Thermodynamics | CURSO PRINCIPAL | 5.1.1 → calor, temperatura (significado microscópico), conservación |
| Y02 | Yale PHYS 200 — L23 The Second Law of Thermodynamics and Carnot's Engine | CURSO PRINCIPAL | 5.5.3 → segunda ley |
| Y03 | Yale PHYS 200 — L24 The Second Law of Thermodynamics (cont.) and Entropy | CURSO PRINCIPAL | 5.1.1 y 5.5.2 → entropía (cálculo de ΔS, fórmula de Boltzmann, irreversibilidad) |
| M02 | MIT 2.627 Fundamentals of Photovoltaics — L1 Introduction | CURSO PRINCIPAL | 5.11.2 → introducción a la FV |
| M04 | MIT 2.627 — L17 Modules, Systems, and Reliability | CURSO PRINCIPAL | 5.11.2 → módulo, panel |
| M06 | MIT 22.01 — L4 Binding Energy, the Semi-Empirical Liquid Drop Nuclear Model, and Mass Parabolas | CURSO PRINCIPAL | 5.15.1 → núcleo, isótopos, defecto de masa, energía de enlace |
| M08 | MIT 22.01 — L20 How Nuclear Energy Works | CURSO PRINCIPAL | 5.15.2 → moderación, reacción en cadena, reproducción (plutonio), control |
| M09 | MIT 3.091 (Grossman) — The Battery Revolution (Lec 35) | CURSO PRINCIPAL | 5.17 → celda, ánodo, cátodo, electrolito, redox (nivel de 1.er curso) |
| M10 | MIT 8.02 (Lewin) — Lec 16 Electromagnetic Induction, Faraday's Law, Lenz Law | CURSO PRINCIPAL | 5.20 → inducción electromagnética, campo magnético |
| P01 | Cal Poly Pomona — Thermodynamics: Otto cycle, Diesel cycle (29 of 51) | CURSO PRINCIPAL | 5.6.2 → Otto, Diesel |
| P03 | Cal Poly Pomona — Thermodynamics: Ideal and non-ideal Rankine cycle, reheating (34 of 51) | EJERCICIOS | 5.6.2 → Rankine |
| P04 | Cal Poly Pomona (J. Biddle) — Heat Transfer (01) … (37) (serie de clases) | CURSO PRINCIPAL | 5.4.1–5.4.3 → conducción, convección, radiación (incluidas propiedades radiativas y factores de visión) |
| D01 | TU Delft OCW — Sustainable Energy: Design a Renewable Future, módulo 5 Wind Energy (5.2 resource, 5.3 aerodynamics, 5.4 power curve, 5.5 energy yield, 5.6 electrical aspects) | CURSO PRINCIPAL | 5.12 → recurso eólico, velocidad, potencia disponible, aerodinámica (por qué tres palas), curva de potencia, producción anual, estelas y parques, transmisión offshore |
| H01 | U.S. Chemical Safety Board — Anatomy of a Disaster (BP Texas City, 2005) | PRÁCTICA | 5.23 → incendios, explosiones, cultura de seguridad, factores humanos, diseño de equipos |
| X01 | MacKay — Sustainable Energy – without the hot air (2009) | REFERENCIA | 5.1.1 → densidad y flujo energético |
| X02 | Lienhard IV y V — A Heat Transfer Textbook, 5.ª ed. (2019) | REFERENCIA | 5.4.1–5.4.4 → conducción estacionaria y transitoria, aletas (disipadores), convección natural y forzada, radiación, intercambiadores |
| X06 | Yan — Introduction to Engineering Thermodynamics (LibreTexts / BCcampus, texto abierto) | CURSO PRINCIPAL | 5.5.1 → conceptos y definiciones (sistemas, estado, proceso, ciclo) |
| X07 | PVEducation (PVCDROM) | REFERENCIA | 5.11.2 → luz solar, unión p-n, funcionamiento, diseño y fabricación de células, módulos y campos, caracterización |
| X08 | MIT 2.61 Internal Combustion Engines (Spring 2017) — apuntes de clase, ejercicios y laboratorios | REFERENCIA | 5.8.1–5.8.5 → funcionamiento y diseño del MCI, rendimiento, combustión, transferencia de calor, fricción y tribología (L19, lubricación), turbocompresión (L20, sobrealimentación) |
| X11 | UCCS ECE5720 Battery Management and Control — apuntes y grabaciones | CURSO PRINCIPAL | 5.17 → estado de carga (SOC), estado de salud (degradación), BMS, modelos de celda, capacidad, potencia |
| X12 | MIT 6.061 Introduction to Electric Power Systems (Spring 2011) — apuntes de Kirtley y 11 hojas de problemas | REFERENCIA | 5.20 → máquina síncrona y de inducción (cap. 9 y siguientes) |
| X15 | OIEA — Getting to the Core of the Nuclear Fuel Cycle | REFERENCIA | 5.15.4 → ciclo completo del combustible, de la minería a la eliminación de residuos |
| X17 | DOE Hydrogen and Fuel Cell Technologies Office — Hydrogen Production | REFERENCIA | 5.18 → reformado de gas natural, gasificación, electrólisis de baja y alta temperatura, vías solares y biológicas |
| X21 | IDAE / ASIT — Guía Técnica de Energía Solar Térmica (2020) | DOCUMENTACIÓN TÉCNICA | 5.11.1 → colectores, circulación, almacenamiento, ACS (de equipos prefabricados a grandes instalaciones) |
| X28 | Sandia / U.S. DOE — Energy Storage Handbook (2020) y DOE/EPRI Electricity Storage Handbook (2015) | REFERENCIA | 5.16.1 → volantes de inercia, aire comprimido (CAES), bombeo |

## 5. Matriz de cobertura concepto a concepto

Leyenda: V1 y V2 = estado de cobertura; Evid. = E1, E2 o E3 (véase el aviso inicial); Práctica = tipo de recurso práctico disponible.


#### 5.1.1 Conceptos fundamentales

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.1.1.01 | Energía | S01, X01, B01 | COMPLETA | **COMPLETA** | E1 | simulación | Mantener |
| 5.1.1.02 | Trabajo | X06, Y01 | PARCIAL | **COMPLETA** | E1 | ejercicios | Añadido X06 (4.4 Work) |
| 5.1.1.03 | Potencia | S01, X01 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.1.1.04 | Calor | Y01, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.1.1.05 | Temperatura | Y01 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.1.1.06 | Entropía | Y03, Y02, X05 | PARCIAL | **COMPLETA** | E1 | ejercicios | Añadida Yale L24 (faltaba en la V1) |
| 5.1.1.07 | Exergía | B01, S01 | PARCIAL | **PARCIAL** | E1 | — | Localizar la clase de exergía de NPTEL Engineering Thermodynamics (IIT Kanpur); solo hay «calidad de la energía» |
| 5.1.1.08 | Eficiencia | S01, P03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.1.1.09 | Rendimiento | S01, P03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.1.1.10 | Conservación de la energía | Y01, Z02 | COMPLETA | **COMPLETA** | E1 | simulación | Añadida simulación |
| 5.1.1.11 | Transformación de energía | S01, Z02 | COMPLETA | **COMPLETA** | E1 | simulación | Mantener |
| 5.1.1.12 | Transferencia de energía | Y01, X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | Calor y trabajo como transferencias (1.ª ley) |
| 5.1.1.13 | Densidad energética | X01, X28 | PARCIAL | **PARCIAL** | E2 | — | Falta una tabla comparativa de referencia; ejercicio propuesto en la ruta |
| 5.1.1.14 | Flujo energético | X01, S01 | PARCIAL | **PARCIAL** | E2 | — | Diagramas Sankey: sin recurso específico |

#### 5.1.2 Formas de energía

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.1.2.01 | Cinética | Z02, S01 | PARCIAL | **COMPLETA** | E1 | simulación | Añadida simulación PhET |
| 5.1.2.02 | Potencial gravitatoria | Z02, S01 | PARCIAL | **COMPLETA** | E1 | simulación | Añadida simulación PhET |
| 5.1.2.03 | Potencial elástica | S01 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso dedicado (DEPENDENCIA del Bloque 2, mecánica) |
| 5.1.2.04 | Térmica | Y01, Z02 | COMPLETA | **COMPLETA** | E1 | simulación | Mantener |
| 5.1.2.05 | Química | K01, S01 | PARCIAL | **PARCIAL** | E1 | — | El calor de reacción (L12 de IIT Kanpur) no tiene URL localizada |
| 5.1.2.06 | Eléctrica | S14, M10 | PARCIAL | **PARCIAL** | E3 | — | Cubierta indirectamente en 5.20 |
| 5.1.2.07 | Magnética | M10 | PARCIAL | **PARCIAL** | E3 | — | Energía del campo magnético: 8.02 L20 no localizada |
| 5.1.2.08 | Nuclear | M06, X04 | PARCIAL | **COMPLETA** | E1 | — | Añadida MIT 22.01 L4 (energía de enlace) |
| 5.1.2.09 | Radiante | M03, X02 | PARCIAL | **COMPLETA** | E1 | — | Mantener |

#### 5.2.1 Recursos primarios

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.2.1.01 | Biomasa | S06 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.1.02 | Madera | S06, Z06 | PARCIAL | **PARCIAL** | E1 | proyecto | Sin recurso sobre la madera como recurso (poder calorífico, humedad) |
| 5.2.1.03 | Carbón | S05, S02 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.1.04 | Petróleo | S03, S02 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.1.05 | Gas natural | S04, S02 | AUSENTE | **COMPLETA** | E1 | — | NUEVO: Stanford Natural Gas Lecture |
| 5.2.1.06 | Uranio | X15, X14, S11 | PARCIAL | **COMPLETA** | E1 | — | Añadido el ciclo del combustible (OIEA/WNA) |
| 5.2.1.07 | Agua | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.1.08 | Viento | D01, S17 | COMPLETA | **COMPLETA** | E1 | — | Añadido TU Delft 5.2 (recurso eólico) |
| 5.2.1.09 | Radiación solar | M03, Z03 | COMPLETA | **COMPLETA** | E1 | simulación | Añadido PVGIS (datos de Tenerife) |
| 5.2.1.10 | Geotermia | S09 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.1.11 | Mareas | B08, X19 | COMPLETA | **PARCIAL** | E3 | — | Solo título de clase + ficha introductoria: no se puede demostrar cobertura completa |
| 5.2.1.12 | Oleaje | B09, X19 | PARCIAL | **PARCIAL** | E3 | — | Solo una clase compartida con el estanque solar + ficha introductoria |

#### 5.2.2 Caracterización

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.2.2.01 | Densidad energética | X01 | PARCIAL | **PARCIAL** | E2 | — | Véase 5.1.1 |
| 5.2.2.02 | Disponibilidad | S02 | COMPLETA | **COMPLETA** | E1 | — | Recursos frente a reservas |
| 5.2.2.03 | Renovabilidad | X01 | PARCIAL | **PARCIAL** | E2 | — | Sin recurso dedicado |
| 5.2.2.04 | Extracción | S03, S05 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.2.05 | Transporte | S03, S05 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.2.06 | Almacenamiento | S12 | PARCIAL | **PARCIAL** | E3 | — | Almacenamiento de combustibles: sin recurso |
| 5.2.2.07 | Coste energético | S14 | PARCIAL | **PARCIAL** | E1 | — | LCOE sí; EROI/TRE no |
| 5.2.2.08 | Impacto ambiental | S02, S05, S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.2.2.09 | Fiabilidad | S15, Z10 | PARCIAL | **PARCIAL** | E1 | simulación | Añadidos datos REE |
| 5.2.2.10 | Escalabilidad | X01 | PARCIAL | **PARCIAL** | E2 | — | Sin recurso dedicado |

#### 5.3.1 Química de la combustión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.3.1.01 | Combustible | K01 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.3.1.02 | Comburente | K02 | PARCIAL | **COMPLETA** | E1 | ejercicios | Aire estequiométrico |
| 5.3.1.03 | Reacción de oxidación | K01 | PARCIAL | **PARCIAL** | E1 | — | DEPENDENCIA: química (redox) |
| 5.3.1.04 | Estequiometría | K02, Z04 | COMPLETA | **COMPLETA** | E1 | simulación | Añadida simulación Cantera |
| 5.3.1.05 | Poder calorífico | K01 | PARCIAL | **PARCIAL** | E1 | — | L12 «Heat of reaction» sin URL localizada |
| 5.3.1.06 | Combustión completa | Z04, K01 | PARCIAL | **COMPLETA** | E1 | simulación | Cantera compara completa e incompleta |
| 5.3.1.07 | Combustión incompleta | Z04, K01 | PARCIAL | **COMPLETA** | E1 | simulación | Cantera compara completa e incompleta |
| 5.3.1.08 | Productos de combustión | Z04 | PARCIAL | **PARCIAL** | E1 | simulación | Solo simulación; falta teoría |

#### 5.3.2 Procesos de combustión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.3.2.01 | Encendido | — | AUSENTE | **AUSENTE** | — | — | Hueco: NPTEL Fundamentals of Combustion part 2 (IIT Kanpur) sin clases localizadas |
| 5.3.2.02 | Llama | Z06, O04 | PARCIAL | **PARCIAL** | E1 | proyecto | Básico (cocinas) + posgrado (Matalon): falta el nivel intermedio |
| 5.3.2.03 | Transferencia de calor | Z06, P04 | PARCIAL | **PARCIAL** | E1 | proyecto | Aplicación en cocinas |
| 5.3.2.04 | Temperatura de combustión | Z04, K01 | PARCIAL | **COMPLETA** | E1 | simulación | Temperatura adiabática de llama (Cantera) |
| 5.3.2.05 | Velocidad de combustión | Z04 | AUSENTE | **PARCIAL** | E1 | simulación | Solo el ejemplo de llama laminar de Cantera |
| 5.3.2.06 | Presión | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.3.2.07 | Rendimiento | Z06, K05 | PARCIAL | **PARCIAL** | E1 | proyecto | Rendimiento de cocinas y calderas |

#### 5.3.3 Combustibles

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.3.3.01 | Madera | Z06, S06 | PARCIAL | **COMPLETA** | E1 | proyecto | Principios de diseño de cocinas de leña |
| 5.3.3.02 | Carbón | S05 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.3.3.03 | Carbón vegetal | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.3.3.04 | Alcoholes | S06 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso dedicado |
| 5.3.3.05 | Gas | S04 | PARCIAL | **COMPLETA** | E1 | — | NUEVO S04 |
| 5.3.3.06 | Gasolina | S03 | PARCIAL | **PARCIAL** | E1 | — | Solo refino |
| 5.3.3.07 | Diésel | S03 | PARCIAL | **PARCIAL** | E1 | — | Solo refino |
| 5.3.3.08 | Hidrógeno | S13 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.3.3.09 | Biocombustibles | S06 | PARCIAL | **PARCIAL** | E1 | — | Visión general |

#### 5.4.1 Conducción

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.4.1.01 | Gradiente térmico | P04, X02, X03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.1.02 | Conductividad | P04, X02, X03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.1.03 | Resistencia térmica | P04, X02 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.1.04 | Conducción estacionaria | P04, X02 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.1.05 | Conducción transitoria | X02, P04 | PARCIAL | **COMPLETA** | E2 | ejercicios | Lienhard, cap. de conducción transitoria (índice conocido) |

#### 5.4.2 Convección

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.4.2.01 | Convección natural | X02, P04 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.2.02 | Convección forzada | X02, P04 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.2.03 | Flujo | X03 | PARCIAL | **PARCIAL** | E1 | — | DEPENDENCIA: mecánica de fluidos (DOE vol. 3) |
| 5.4.2.04 | Coeficiente de transferencia | X02, P04 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |

#### 5.4.3 Radiación

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.4.3.01 | Radiación térmica | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.3.02 | Emisión | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.3.03 | Absorción | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.3.04 | Reflexión | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.3.05 | Emisividad | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.4.3.06 | Cuerpo negro | P04, X02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |

#### 5.4.4 Aplicaciones

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.4.4.01 | Aislamiento | X02, X01 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.4.02 | Intercambiadores de calor | X02, X03 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.4.4.03 | Calderas | K05 | PARCIAL | **COMPLETA** | E1 | — | NUEVO: IIT Roorkee (calderas) |
| 5.4.4.04 | Hornos | Z06 | AUSENTE | **PARCIAL** | E1 | proyecto | Solo cocinas y hornos domésticos; los industriales no |
| 5.4.4.05 | Refrigeración | X31 | AUSENTE | **PARCIAL** | E1 | — | Curso NPTEL de refrigeración (IIT Roorkee): sin URL de clase, REVISIÓN MANUAL |
| 5.4.4.06 | Disipadores | X02 | PARCIAL | **COMPLETA** | E2 | ejercicios | Aletas (Lienhard) |

#### 5.5.1 Sistemas

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.5.1.01 | Sistema abierto | X06, X05 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.02 | Sistema cerrado | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.03 | Sistema aislado | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.04 | Estado | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.05 | Equilibrio | X06, Y01 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.06 | Proceso | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.1.07 | Ciclo | X06, Y02 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |

#### 5.5.2 Variables

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.5.2.01 | Presión | X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.2.02 | Volumen | X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.2.03 | Temperatura | Y01, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.2.04 | Entalpía | X06, X05, X03 | PARCIAL | **COMPLETA** | E2 | ejercicios | NUEVO X06 |
| 5.5.2.05 | Entropía | Y03 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO Y03 |
| 5.5.2.06 | Energía interna | Y01, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.2.07 | Energía libre | M01 | AUSENTE | **PARCIAL** | E3 | — | REVISIÓN MANUAL: la clase MIT 5.60 L13 solo está verificada por el título |

#### 5.5.3 Leyes

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.5.3.01 | Ley cero | X06 | PARCIAL | **COMPLETA** | E2 | — | Cap. 1 de Yan |
| 5.5.3.02 | Primera ley | Y01, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.3.03 | Segunda ley | Y02, Y03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.5.3.04 | Tercera ley | M01 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso dedicado verificado |

#### 5.5.4 Procesos

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.5.4.01 | Isotérmico | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.4.02 | Isobárico | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.4.03 | Isocórico | X06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.4.04 | Adiabático | X06, Y02 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X06 |
| 5.5.4.05 | Politrópico | X06 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO X06 (hueco de la V1) |

#### 5.6.1 Máquina térmica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.6.1.01 | Fuente caliente | Y02, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.1.02 | Fuente fría | Y02, X06 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.1.03 | Fluido de trabajo | X06, P03 | PARCIAL | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.1.04 | Ciclo | Y02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.1.05 | Trabajo | Y02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.1.06 | Rendimiento | Y02, P03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |

#### 5.6.2 Ciclos fundamentales

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.6.2.01 | Carnot | Y02 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.2.02 | Rankine | P03, K03, X05 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.2.03 | Brayton | P02, K07, X05 | COMPLETA | **COMPLETA** | E1 | ejercicios | Añadida Roorkee L31 |
| 5.6.2.04 | Otto | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.6.2.05 | Diesel | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.6.2.06 | Stirling | P02, K03, Z08 | COMPLETA | **COMPLETA** | E1 | proyecto | Añadido el proyecto de Stirling |
| 5.6.2.07 | Ericsson | P02, K03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |

#### 5.6.3 Comparación

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.6.3.01 | Rendimiento | K03 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.6.3.02 | Potencia específica | X26 | AUSENTE | **PARCIAL** | E3 | — | Ejercicio propuesto: tabla comparativa |
| 5.6.3.03 | Complejidad | K03 | AUSENTE | **PARCIAL** | E3 | — | Ejercicio propuesto |
| 5.6.3.04 | Temperatura | K03 | PARCIAL | **PARCIAL** | E3 | — | Ejercicio propuesto |
| 5.6.3.05 | Presión | K03 | PARCIAL | **PARCIAL** | E3 | — | Ejercicio propuesto |
| 5.6.3.06 | Combustible | S14 | AUSENTE | **PARCIAL** | E3 | — | Ejercicio propuesto |
| 5.6.3.07 | Aplicaciones | K03, X26 | PARCIAL | **PARCIAL** | E3 | — | Ejercicio propuesto |

#### 5.7.1 Producción de vapor

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.7.1.01 | Agua | X03 | PARCIAL | **PARCIAL** | E2 | — | Tratamiento del agua de caldera: sin recurso |
| 5.7.1.02 | Caldera | K05 | PARCIAL | **COMPLETA** | E1 | — | NUEVO K05 |
| 5.7.1.03 | Combustión | K05 | PARCIAL | **COMPLETA** | E1 | — | Temario de Roorkee: combustión en calderas |
| 5.7.1.04 | Evaporación | X03, X06 | PARCIAL | **COMPLETA** | E2 | ejercicios | Cambio de fase |
| 5.7.1.05 | Sobrecalentamiento | P03, K05 | PARCIAL | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.7.1.06 | Presión | K05 | PARCIAL | **COMPLETA** | E1 | — | Calderas de alta presión |
| 5.7.1.07 | Vapor saturado | X03, P03 | PARCIAL | **COMPLETA** | E2 | ejercicios | Tablas de vapor |
| 5.7.1.08 | Vapor sobrecalentado | X03, P03 | PARCIAL | **COMPLETA** | E2 | ejercicios | Tablas de vapor |

#### 5.7.2 Máquina de vapor

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.7.2.01 | Pistón | X09 | AUSENTE | **PARCIAL** | E1 | — | Texto histórico; audiovisual S/A inexistente → HUECO |
| 5.7.2.02 | Cilindro | X09 | AUSENTE | **PARCIAL** | E1 | — | Ídem |
| 5.7.2.03 | Válvulas | X09 | AUSENTE | **PARCIAL** | E1 | — | Ídem |
| 5.7.2.04 | Distribución | X09 | AUSENTE | **PARCIAL** | E1 | — | Ídem |
| 5.7.2.05 | Condensador | X09, B02 | PARCIAL | **PARCIAL** | E3 | — | Condensador separado de Watt |
| 5.7.2.06 | Regulador | X09, O05 | RECURSO INADECUADO | **PARCIAL** | E1 | — | El vídeo B de la V1 pasa a opcional |
| 5.7.2.07 | Volante de inercia | X09 | AUSENTE | **PARCIAL** | E3 | — | DEPENDENCIA del Bloque 4 (máquinas) |

#### 5.7.3 Evolución

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.7.3.01 | Fuego→caldera→vapor→pistón→movimiento→transmisión→máquina | X09, H02 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X09 (Thurston) |

#### 5.7.4 Turbinas de vapor

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.7.4.01 | Tobera | K12, K05 | AUSENTE | **COMPLETA** | E1 | — | Temario de Roorkee: flujo de vapor en toberas |
| 5.7.4.02 | Álabes | K06 | PARCIAL | **COMPLETA** | E1 | — | NUEVO K06 |
| 5.7.4.03 | Rotor | K06 | PARCIAL | **PARCIAL** | E3 | — | Implícito |
| 5.7.4.04 | Estator | K06 | PARCIAL | **PARCIAL** | E3 | — | Implícito |
| 5.7.4.05 | Expansión | K06, K12 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.7.4.06 | Etapas | K06 | AUSENTE | **PARCIAL** | E1 | — | Compounding (L22) sin URL |
| 5.7.4.07 | Condensación | B02, X03 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso específico |

#### 5.8.1 Conceptos del MCI

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.8.1.01 | Cilindro | X08, U01 | PARCIAL | **PARCIAL** | E2 | — | HUECO audiovisual S/A; X08 son diapositivas |
| 5.8.1.02 | Pistón | X08, U01 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.03 | Biela | X08 | PARCIAL | **PARCIAL** | E2 | — | DEPENDENCIA del Bloque 4 (biela-manivela) |
| 5.8.1.04 | Cigüeñal | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.05 | Volante | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.06 | Válvulas | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.07 | Árbol de levas | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.08 | Inyección | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |
| 5.8.1.09 | Encendido | X08 | PARCIAL | **PARCIAL** | E2 | — | Ídem |

#### 5.8.2 Ciclo Otto

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.8.2.01 | Admisión | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.2.02 | Compresión | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.2.03 | Combustión | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.2.04 | Expansión | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.2.05 | Escape | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |

#### 5.8.3 Ciclo Diesel

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.8.3.01 | Admisión | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.3.02 | Compresión | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.3.03 | Inyección | X08 | PARCIAL | **PARCIAL** | E2 | — | Solo diapositivas |
| 5.8.3.04 | Combustión | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.3.05 | Expansión | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.3.06 | Escape | P01, X08 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |

#### 5.8.4 Sistemas auxiliares

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.8.4.01 | Lubricación | X08 | AUSENTE | **PARCIAL** | E1 | — | MIT 2.61 L19 (fricción y tribología), solo diapositivas |
| 5.8.4.02 | Refrigeración | X08 | AUSENTE | **PARCIAL** | E1 | — | Transferencia de calor en el motor (diapositivas) |
| 5.8.4.03 | Alimentación | X08 | AUSENTE | **PARCIAL** | E2 | — | HUECO |
| 5.8.4.04 | Escape | X08 | AUSENTE | **PARCIAL** | E2 | — | HUECO |
| 5.8.4.05 | Encendido | X08 | AUSENTE | **PARCIAL** | E2 | — | HUECO |
| 5.8.4.06 | Inyección | X08 | AUSENTE | **PARCIAL** | E2 | — | HUECO |
| 5.8.4.07 | Sobrealimentación | X08 | AUSENTE | **PARCIAL** | E1 | — | MIT 2.61 L20 (turbocompresión) |

#### 5.8.5 Rendimiento del MCI

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.8.5.01 | Potencia | X08 | PARCIAL | **PARCIAL** | E2 | ejercicios | Ejercicios de MIT 2.61 |
| 5.8.5.02 | Par | X08 | AUSENTE | **PARCIAL** | E2 | ejercicios | Ídem |
| 5.8.5.03 | Consumo específico | X08 | AUSENTE | **PARCIAL** | E2 | ejercicios | Ídem |
| 5.8.5.04 | Eficiencia térmica | P01, X08 | COMPLETA | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.8.5.05 | Pérdidas | X08 | AUSENTE | **PARCIAL** | E1 | ejercicios | Fricción (L19) |

#### 5.9.1 Turbinas de vapor

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.9.1.01 | Impulso | K06 | PARCIAL | **COMPLETA** | E1 | — | NUEVO K06 |
| 5.9.1.02 | Reacción | K06 | AUSENTE | **PARCIAL** | E1 | — | L26 de Roorkee (acción-reacción) sin URL |
| 5.9.1.03 | Etapas | K06 | AUSENTE | **PARCIAL** | E1 | — | L22 (compounding) sin URL |
| 5.9.1.04 | Álabes | K06 | PARCIAL | **PARCIAL** | E3 | — | Triángulos de velocidades (no verificados) |

#### 5.9.2 Turbinas de gas

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.9.2.01 | Compresor | K07, X05 | PARCIAL | **PARCIAL** | E1 | — | Clases de compresores de Roorkee sin URL |
| 5.9.2.02 | Cámara de combustión | K07 | AUSENTE | **PARCIAL** | E1 | — | Ídem |
| 5.9.2.03 | Turbina | K07, X05, X26 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO K07 |
| 5.9.2.04 | Escape | K07 | PARCIAL | **PARCIAL** | E3 | — | Implícito en el ciclo |

#### 5.9.3 Turbinas hidráulicas

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.9.3.01 | Pelton | K08, Z07 | PARCIAL | **COMPLETA** | E1 | proyecto | Mantener K08 + proyecto |
| 5.9.3.02 | Francis | K09 | RECURSO INADECUADO | **PARCIAL** | E1 | — | La V1 lo daba por cubierto con B04 sin evidencia; K09 solo trata la regulación |
| 5.9.3.03 | Kaplan | K09 | RECURSO INADECUADO | **PARCIAL** | E1 | — | Ídem |

#### 5.9.4 Turbinas eólicas

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.9.4.01 | Rotor | D01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO D01 |
| 5.9.4.02 | Palas | D01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO D01 |
| 5.9.4.03 | Generador | D01, Z09 | PARCIAL | **COMPLETA** | E1 | proyecto | NUEVO D01 + proyecto |
| 5.9.4.04 | Multiplicadora | D01 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.9.4.05 | Control de paso | D01 | AUSENTE | **PARCIAL** | E3 | — | Curva de potencia (implícito) |

#### 5.10.1 Recursos hidráulicos

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.10.1.01 | Ríos | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.10.1.02 | Saltos de agua | S07, Z07 | COMPLETA | **COMPLETA** | E1 | proyecto | Mantener |
| 5.10.1.03 | Embalses | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.10.1.04 | Presas | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.10.1.05 | Caudal | S07, Z07 | PARCIAL | **COMPLETA** | E1 | proyecto | P = ρ·g·Q·H (proyecto de microhidráulica) |
| 5.10.1.06 | Altura | S07, Z07 | PARCIAL | **COMPLETA** | E1 | proyecto | Ídem |

#### 5.10.2 Conversión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.10.2.01 | Energía potencial→cinética→turbina→generador→electricidad | S07, B03, B04 | COMPLETA | **COMPLETA** | E1 | — | Mantener |

#### 5.10.3 Infraestructura

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.10.3.01 | Presa | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.10.3.02 | Aliviadero | — | AUSENTE | **AUSENTE** | — | — | Hueco (menor) |
| 5.10.3.03 | Tubería forzada | Z07 | AUSENTE | **COMPLETA** | E2 | proyecto | NUEVO Z07 |
| 5.10.3.04 | Turbina | S07, K08 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.10.3.05 | Generador | S07, K11 | PARCIAL | **PARCIAL** | E3 | — | Véase 5.20 |
| 5.10.3.06 | Transformador | X12, Z01 | AUSENTE | **PARCIAL** | E2 | simulación | Véase 5.21 |

#### 5.10.4 Tipos

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.10.4.01 | Hidroeléctrica convencional | S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.10.4.02 | Bombeo reversible | O01, X25, X28 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X25 (El Hierro) |
| 5.10.4.03 | Microhidráulica | Z07 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z07 |

#### 5.11.1 Solar térmica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.11.1.01 | Radiación | M03, Z03, S08 | COMPLETA | **COMPLETA** | E1 | simulación | Mantener (S08 como introducción) |
| 5.11.1.02 | Colectores | B06, X21 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X21 |
| 5.11.1.03 | Absorción | X21, B06 | PARCIAL | **COMPLETA** | E2 | — | NUEVO X21 |
| 5.11.1.04 | Circulación | X21 | AUSENTE | **COMPLETA** | E2 | — | Termosifón y circulación forzada (IDAE) |
| 5.11.1.05 | Almacenamiento térmico | X21, X13 | PARCIAL | **COMPLETA** | E2 | — | NUEVO X21/X13 |
| 5.11.1.06 | Agua caliente | X21 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X21 (ACS) |
| 5.11.1.07 | Concentración solar | X13 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X13 (lección 7 CSP) |

#### 5.11.2 Solar fotovoltaica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.11.2.01 | Fotones | M03, X07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.11.2.02 | Semiconductores | M05, X07 | COMPLETA | **COMPLETA** | E1 | — | Añadida L7 |
| 5.11.2.03 | Célula solar | M05, X07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.11.2.04 | Módulo | M04, X07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.11.2.05 | Panel | M04, X07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.11.2.06 | Inversor | X13 | AUSENTE | **COMPLETA** | E1 | — | Acondicionamiento de potencia (EME 812) |

#### 5.11.3 Sistemas solares

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.11.3.01 | Instalación aislada | Z03, D02 | PARCIAL | **COMPLETA** | E1 | simulación | NUEVO Z03 (PVGIS aislada) |
| 5.11.3.02 | Instalación conectada a red | X20, Z03 | PARCIAL | **COMPLETA** | E1 | simulación | Mantener X20 |
| 5.11.3.03 | Baterías | Z03, X11 | PARCIAL | **COMPLETA** | E1 | simulación | NUEVO |
| 5.11.3.04 | Reguladores | D02 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.11.3.05 | Seguimiento solar | X13 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X13 |

#### 5.12 Energía eólica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.12.01 | Viento | D01 | COMPLETA | **COMPLETA** | E1 | — | NUEVO D01 |
| 5.12.02 | Velocidad | D01 | PARCIAL | **COMPLETA** | E1 | — | Curva de potencia |
| 5.12.03 | Potencia disponible | D01 | PARCIAL | **COMPLETA** | E1 | ejercicios | Producción anual |
| 5.12.04 | Rotor | D01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO D01 |
| 5.12.05 | Palas | D01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO D01 |
| 5.12.06 | Aerodinámica | D01, S17 | PARCIAL | **COMPLETA** | E1 | — | D01 5.3 |
| 5.12.07 | Generador | D01, Z09, B07 | PARCIAL | **COMPLETA** | E1 | proyecto | NUEVO |
| 5.12.08 | Multiplicadora | D01 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.12.09 | Control de orientación | Z09 | AUSENTE | **PARCIAL** | E2 | proyecto | Orientación por cola en aerogeneradores pequeños |
| 5.12.10 | Control de paso | D01 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.12.11 | Parque eólico | D01 | AUSENTE | **COMPLETA** | E1 | — | Efecto estela y producción de parques |
| 5.12.12 | Eólica marina | D01 | AUSENTE | **COMPLETA** | E1 | — | Transmisión offshore |

#### 5.13 Energía geotérmica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.13.01 | Gradiente geotérmico | S09, B10 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.02 | Calor interno terrestre | S09 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.03 | Reservorios | S09 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.04 | Vapor | S09, B10 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.05 | Agua caliente | S09 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.06 | Bombas de calor geotérmicas | S09 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso específico |
| 5.13.07 | Generación eléctrica | S09, B10 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.13.08 | Uso directo | S09 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso específico |

#### 5.14 Energía marina

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.14.01 | Mareas | B08, X19 | COMPLETA | **PARCIAL** | E3 | — | Solo título de clase + ficha introductoria: no se puede demostrar cobertura completa |
| 5.14.02 | Corrientes | X19 | AUSENTE | **PARCIAL** | E1 | — | Solo ficha introductoria |
| 5.14.03 | Oleaje | B09, X19 | PARCIAL | **PARCIAL** | E3 | — | Mantener |
| 5.14.04 | Diferencias de nivel | B08 | PARCIAL | **PARCIAL** | E3 | — | Carrera de marea (solo título) |
| 5.14.05 | Turbinas submarinas | X19 | AUSENTE | **PARCIAL** | E1 | — | Solo ficha introductoria |
| 5.14.06 | Convertidores de oleaje | B09, X19 | PARCIAL | **PARCIAL** | E3 | — | Mantener |

#### 5.15.1 Fundamentos nucleares

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.15.1.01 | Núcleo atómico | M06, X04 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M06 |
| 5.15.1.02 | Isótopos | M06, X04 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M06 |
| 5.15.1.03 | Defecto de masa | M06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M06 |
| 5.15.1.04 | Energía de enlace | M06 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M06 |
| 5.15.1.05 | Radiactividad | M07, X04, X23 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M07 |
| 5.15.1.06 | Decaimiento | M07, X04 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO M07 |

#### 5.15.2 Fisión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.15.2.01 | Neutrón | X04, M08 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.15.2.02 | Uranio | S11, X15 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.2.03 | Plutonio | M08 | PARCIAL | **COMPLETA** | E1 | — | Reproducción de combustible |
| 5.15.2.04 | Reacción en cadena | S11, M08 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.2.05 | Masa crítica | X04 | PARCIAL | **COMPLETA** | E2 | — | Criticidad (DOE) |
| 5.15.2.06 | Moderador | M08 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.2.07 | Control de reactividad | M08, X04 | COMPLETA | **COMPLETA** | E1 | — | Mantener |

#### 5.15.3 Reactor

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.15.3.01 | Combustible | S11, M08 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.3.02 | Moderador | M08 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.3.03 | Refrigerante | S11 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.15.3.04 | Barras de control | X04 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.15.3.05 | Recipiente | S11 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso específico |
| 5.15.3.06 | Generador de vapor | S11, B05 | PARCIAL | **PARCIAL** | E3 | — | Sin recurso específico |
| 5.15.3.07 | Turbina | K06 | COMPLETA | **COMPLETA** | E1 | — | Véase 5.7.4 |
| 5.15.3.08 | Contención | S11 | PARCIAL | **PARCIAL** | E1 | — | Solo en el marco de la seguridad |

#### 5.15.4 Ciclo del combustible

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.15.4.01 | Extracción | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.02 | Concentración | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.03 | Conversión | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.04 | Enriquecimiento | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.05 | Fabricación | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.06 | Reactor | M08 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.15.4.07 | Combustible gastado | X15, X14 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |
| 5.15.4.08 | Gestión de residuos | X15 | AUSENTE | **COMPLETA** | E1 | — | NUEVO (solo texto) |

#### 5.15.5 Fusión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.15.5.01 | Plasma | X16, M11 | PARCIAL | **PARCIAL** | E1 | — | Nivel introductorio |
| 5.15.5.02 | Deuterio | X16 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X16 |
| 5.15.5.03 | Tritio | X16 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X16 (producción a partir de litio) |
| 5.15.5.04 | Confinamiento magnético | X16, M08, M11 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.15.5.05 | Confinamiento inercial | X30 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X30 (hueco de la V1) |
| 5.15.5.06 | Fusión termonuclear | X16, M08 | PARCIAL | **COMPLETA** | E1 | — | Mantener |

#### 5.16.1 Almacenamiento mecánico

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.16.1.01 | Volantes de inercia | X28 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X28 |
| 5.16.1.02 | Bombeo hidráulico | X28, X25, O01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X25/X28 |
| 5.16.1.03 | Aire comprimido | X28 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X28 |

#### 5.16.2 Almacenamiento térmico

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.16.2.01 | Agua caliente | X21 | PARCIAL | **COMPLETA** | E2 | — | NUEVO X21 |
| 5.16.2.02 | Sales fundidas | X13 | AUSENTE | **PARCIAL** | E3 | — | Lección 10 de EME 812 (solar + almacenamiento): contenido sin confirmar |
| 5.16.2.03 | Materiales de cambio de fase | X27 | AUSENTE | **PARCIAL** | E1 | — | Almacenamiento latente (semana 11), sin URL de clase |

#### 5.16.3 Electroquímico

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.16.3.01 | Baterías | S12, M09 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.16.3.02 | Plomo-ácido | X28, X29 | PARCIAL | **COMPLETA** | E1 | — | NUEVO |
| 5.16.3.03 | Níquel | X29 | AUSENTE | **PARCIAL** | E1 | — | Solo fuente B |
| 5.16.3.04 | Litio | M09, X10, X29 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X10 |
| 5.16.3.05 | Baterías de flujo | X28 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X28 |

#### 5.16.4 Químico

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.16.4.01 | Hidrógeno | S13 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.16.4.02 | Combustibles sintéticos | — | AUSENTE | **AUSENTE** | — | — | Hueco |

#### 5.16.5 Eléctrico

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.16.5.01 | Condensadores | X10 | AUSENTE | **PARCIAL** | E3 | — | DEPENDENCIA: electricidad (Bloque 6) |
| 5.16.5.02 | Supercondensadores | X10 | AUSENTE | **PARCIAL** | E1 | — | Solo texto de posgrado |

#### 5.17a Baterías — conceptos

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.17a.01 | Celda | M09, X11 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17a.02 | Ánodo | M09, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17a.03 | Cátodo | M09, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17a.04 | Electrolito | M09, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17a.05 | Separador | X10 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.17a.06 | Reacción redox | M09, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17a.07 | Voltaje | X10, X11 | PARCIAL | **COMPLETA** | E1 | ejercicios | Termodinámica de la celda |
| 5.17a.08 | Capacidad | X11 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X11 |
| 5.17a.09 | Energía | X11 | PARCIAL | **COMPLETA** | E2 | ejercicios | NUEVO X11 |
| 5.17a.10 | Potencia | X11 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO X11 |
| 5.17a.11 | Densidad energética | X29, X11 | PARCIAL | **COMPLETA** | E1 | — | NUEVO |
| 5.17a.12 | Ciclos | X11 | AUSENTE | **PARCIAL** | E2 | — | Sin evidencia específica |
| 5.17a.13 | Degradación | X11 | AUSENTE | **COMPLETA** | E1 | — | Estado de salud (SOH) |
| 5.17a.14 | Estado de carga | X11 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO X11 |
| 5.17a.15 | Gestión térmica | X11 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.17a.16 | BMS | X11 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO X11 |

#### 5.17b Baterías — familias

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.17b.01 | Plomo-ácido | X29, X28 | AUSENTE | **COMPLETA** | E1 | — | NUEVO |
| 5.17b.02 | NiCd | X29 | AUSENTE | **PARCIAL** | E1 | — | Solo fuente B |
| 5.17b.03 | NiMH | X29 | AUSENTE | **PARCIAL** | E1 | — | Solo fuente B |
| 5.17b.04 | Li-ion | M09, X10, X29 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.17b.05 | LiFePO₄ | X29 | AUSENTE | **PARCIAL** | E1 | — | Solo fuente B |
| 5.17b.06 | Estado sólido | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.17b.07 | Flujo | X28 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X28 |

#### 5.18a Hidrógeno — producción

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.18a.01 | Reformado | X17, S13 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X17 |
| 5.18a.02 | Gasificación | X17 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X17 |
| 5.18a.03 | Electrólisis | X17, S13 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.18a.04 | Electrólisis alcalina | X17 | AUSENTE | **PARCIAL** | E3 | — | Informe Hydrogen Shot (sin confirmar) |
| 5.18a.05 | PEM | X17 | AUSENTE | **PARCIAL** | E3 | — | Ídem |
| 5.18a.06 | Electrólisis de alta temperatura | X17 | AUSENTE | **PARCIAL** | E1 | — | Mencionada; sin desarrollo |

#### 5.18b Hidrógeno — almacenamiento

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.18b.01 | Gas comprimido | S13 | PARCIAL | **COMPLETA** | E1 | — | «Cómo movemos el hidrógeno» |
| 5.18b.02 | Líquido | S13, X17 | PARCIAL | **COMPLETA** | E1 | — | Licuefacción |
| 5.18b.03 | Hidruros | X17 | AUSENTE | **PARCIAL** | E1 | — | Almacenamiento basado en materiales (mencionado) |
| 5.18b.04 | Portadores químicos | S13 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |

#### 5.18c Hidrógeno — uso

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.18c.01 | Combustión | S13 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.18c.02 | Pilas de combustible | K10, S13 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.18c.03 | Industria química | S13 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.18c.04 | Transporte | S13 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.18c.05 | Almacenamiento energético | S13 | PARCIAL | **COMPLETA** | E1 | — | Mantener |

#### 5.19 Pilas de combustible

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.19.01 | Ánodo | K10, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.19.02 | Cátodo | K10, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.19.03 | Electrolito | K10, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.19.04 | Hidrógeno | K10 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.19.05 | Oxígeno | K10 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.19.06 | Reacción electroquímica | K10, X10 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.19.07 | PEMFC | K10 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.19.08 | SOFC | K10 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.19.09 | Eficiencia | X10 | PARCIAL | **COMPLETA** | E1 | — | Termodinámica de la celda |
| 5.19.10 | Gestión térmica | — | AUSENTE | **AUSENTE** | — | — | Hueco |

#### 5.20a Generación — conversión

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.20a.01 | Energía primaria→mecánica→generador→electricidad | S14, S07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.20a.02 | Energía solar→electricidad (directa) | M02, X07 | COMPLETA | **COMPLETA** | E1 | — | Mantener |

#### 5.20b Generadores

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.20b.01 | Inducción electromagnética | M10, Z01 | COMPLETA | **COMPLETA** | E1 | simulación | Añadida simulación |
| 5.20b.02 | Rotor | K11, X12 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO |
| 5.20b.03 | Estator | K11, X12 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO |
| 5.20b.04 | Campo magnético | M10, Z01 | COMPLETA | **COMPLETA** | E1 | simulación | Mantener |
| 5.20b.05 | Alternador | Z01, K11 | PARCIAL | **COMPLETA** | E1 | simulación | NUEVO |
| 5.20b.06 | Generador síncrono | X12, K11 | AUSENTE | **COMPLETA** | E1 | ejercicios | NUEVO X12 (cap. 9) |
| 5.20b.07 | Generador asíncrono | X12 | AUSENTE | **COMPLETA** | E1 | ejercicios | Máquinas de inducción (solo texto) |

#### 5.21a Redes — componentes

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.21a.01 | Generación | S15, S14, X24 | COMPLETA | **COMPLETA** | E1 | — | Mantener (X24: caso canario) |
| 5.21a.02 | Transformación | X12, Z01 | PARCIAL | **COMPLETA** | E1 | ejercicios | NUEVO |
| 5.21a.03 | Transmisión | S15, X12 | COMPLETA | **COMPLETA** | E1 | ejercicios | Mantener |
| 5.21a.04 | Distribución | S15 | PARCIAL | **COMPLETA** | E1 | — | Mantener |
| 5.21a.05 | Carga | S15, Z10 | PARCIAL | **COMPLETA** | E1 | simulación | NUEVO Z10 |

#### 5.21b Redes — infraestructura

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.21b.01 | Líneas | X12 | PARCIAL | **COMPLETA** | E1 | ejercicios | Hoja de problemas 5 (líneas de transmisión) |
| 5.21b.02 | Transformadores | X12, Z01 | PARCIAL | **COMPLETA** | E2 | ejercicios | NUEVO |
| 5.21b.03 | Subestaciones | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.21b.04 | Interruptores | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.21b.05 | Protecciones | X22 | AUSENTE | **PARCIAL** | E1 | — | Solo desde la seguridad laboral |
| 5.21b.06 | Medición | — | AUSENTE | **AUSENTE** | — | — | Hueco |

#### 5.21c Redes — conceptos

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.21c.01 | Demanda | S15, Z10 | PARCIAL | **COMPLETA** | E1 | simulación | NUEVO Z10 |
| 5.21c.02 | Oferta | Z10 | PARCIAL | **COMPLETA** | E1 | simulación | Mix de producción en tiempo real |
| 5.21c.03 | Potencia pico | Z10 | AUSENTE | **COMPLETA** | E1 | simulación | Máximos y mínimos diarios |
| 5.21c.04 | Factor de carga | Z10 | AUSENTE | **PARCIAL** | E1 | ejercicios | Calculable con datos reales; sin teoría |
| 5.21c.05 | Estabilidad | S15 | PARCIAL | **PARCIAL** | E1 | — | Solo fiabilidad |
| 5.21c.06 | Pérdidas | X12 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.21c.07 | Frecuencia | X12 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |
| 5.21c.08 | Tensión | X12 | AUSENTE | **PARCIAL** | E3 | — | Sin evidencia específica |

#### 5.22 Eficiencia energética

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.22.01 | Rendimiento | S16 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.22.02 | Pérdidas | S16, X01 | PARCIAL | **PARCIAL** | E2 | — | Mantener |
| 5.22.03 | Aislamiento | X02, X01 | PARCIAL | **COMPLETA** | E2 | ejercicios | Mantener |
| 5.22.04 | Recuperación de calor | X27 | AUSENTE | **PARCIAL** | E1 | — | Curso NPTEL sin URL de clase |
| 5.22.05 | Cogeneración | K05 | AUSENTE | **PARCIAL** | E1 | — | Clase de cogeneración de Roorkee (semana 1) sin URL |
| 5.22.06 | Trigeneración | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.22.07 | Recuperación energética | X27 | AUSENTE | **PARCIAL** | E1 | — | Ídem |
| 5.22.08 | Optimización | S16 | PARCIAL | **COMPLETA** | E1 | — | Diseño integrador |
| 5.22.09 | Gestión de demanda | S16, Z10 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso dedicado |

#### 5.23 Seguridad energética

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.23.01 | Incendios | H01 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.23.02 | Explosiones | H01 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.23.03 | Alta temperatura | H01 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso específico |
| 5.23.04 | Alta presión | H01, K05 | AUSENTE | **PARCIAL** | E3 | — | Calderas: sin guía de seguridad |
| 5.23.05 | Electricidad | X22 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X22 (INSST) |
| 5.23.06 | Radiación | X23, X04 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X23 (CSN) |
| 5.23.07 | Combustibles | X18, H01 | PARCIAL | **COMPLETA** | E1 | — | NUEVO X18 (H₂) |
| 5.23.08 | Almacenamiento | X18 | AUSENTE | **PARCIAL** | E1 | — | Sin recurso sobre seguridad de baterías de litio |
| 5.23.09 | Ventilación | X18 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X18 |
| 5.23.10 | Contención | X18 | AUSENTE | **PARCIAL** | E1 | — | Mantener |
| 5.23.11 | Protección | X22 | AUSENTE | **PARCIAL** | E1 | — | Mantener |
| 5.23.12 | Procedimientos de emergencia | X18 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X18 |

#### 5.24 Infraestructura energética

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.24.01 | Cadena recurso→extracción→…→consumo | S01, S14, S15, X01 | COMPLETA | **COMPLETA** | E1 | — | Mantener |
| 5.24.02 | Medición | Z10 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso dedicado |
| 5.24.03 | Control | S15 | AUSENTE | **PARCIAL** | E3 | — | Bloque 6 |
| 5.24.04 | Mantenimiento | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.24.05 | Seguridad | X22, X18, H01 | AUSENTE | **COMPLETA** | E1 | — | Véase 5.23 |
| 5.24.06 | Optimización | S16 | PARCIAL | **PARCIAL** | E1 | — | Mantener |

#### 5.25 Evolución tecnológica

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.25.01 | Fuego | H02 | AUSENTE | **PARCIAL** | E3 | — | Smil: nivel de charla |
| 5.25.02 | Biomasa | H02, S06 | RECURSO INADECUADO | **PARCIAL** | E1 | — | Sustituido el vídeo no verificado |
| 5.25.03 | Carbón | H02, S05 | RECURSO INADECUADO | **PARCIAL** | E1 | — | Ídem |
| 5.25.04 | Máquina de vapor | X09 | AUSENTE | **COMPLETA** | E1 | — | NUEVO X09 |
| 5.25.05 | Máquinas industriales | X09 | AUSENTE | **PARCIAL** | E1 | — | Mantener |
| 5.25.06 | Motores | X09 | AUSENTE | **PARCIAL** | E3 | — | Sin recurso dedicado |
| 5.25.07 | Generadores | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.25.08 | Electricidad | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.25.09 | Red eléctrica | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.25.10 | Electrónica | — | AUSENTE | **AUSENTE** | — | — | Hueco (Bloque 6) |
| 5.25.11 | Automatización | — | AUSENTE | **AUSENTE** | — | — | Hueco (Bloque 6) |
| 5.25.12 | Energía nuclear / renovables | S11, H02 | PARCIAL | **PARCIAL** | E1 | — | Mantener |
| 5.25.13 | Sistemas energéticos complejos | H02, X01 | PARCIAL | **PARCIAL** | E3 | — | Mantener |

#### 5.26 Proyectos integradores

| ID | Concepto | Recursos V2 | V1 | V2 | Evid. | Práctica | Acción |
|---|---|---|---|---|---|---|---|
| 5.26.01 | N1 Horno básico | Z06 | AUSENTE | **PARCIAL** | E1 | proyecto | Principios de cocinas; falta un horno de mampostería |
| 5.26.02 | N1 Cocina eficiente | Z06 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z06 |
| 5.26.03 | N1 Quemador | Z06, Z04 | AUSENTE | **PARCIAL** | E1 | proyecto | Sin guía de quemador de gas: ESCALA SEGURA |
| 5.26.04 | N1 Colector solar térmico | X21, B06 | AUSENTE | **PARCIAL** | E1 | proyecto | Diseño sí; guía de construcción no |
| 5.26.05 | N1 Molino de viento sencillo | Z09, D01 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z09 |
| 5.26.06 | N1 Rueda hidráulica | Z07 | AUSENTE | **PARCIAL** | E1 | proyecto | Microhidráulica; la rueda no es específica |
| 5.26.07 | N2 Motor Stirling sencillo | Z08, P02 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z08 |
| 5.26.08 | N2 Máquina de vapor experimental | X09 | AUSENTE | **PARCIAL** | E1 | proyecto | RIESGO: presión. Solo con caldera certificada o modelo comercial |
| 5.26.09 | N2 Turbina sencilla | Z07, K08 | AUSENTE | **PARCIAL** | E1 | proyecto | Pelton didáctica |
| 5.26.10 | N2 Sistema de transferencia de calor | X02, P04 | AUSENTE | **PARCIAL** | E2 | ejercicios | Ejercicios de Lienhard; falta guía de montaje |
| 5.26.11 | N3 Generador electromagnético | Z01, Z09 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO |
| 5.26.12 | N3 Microturbina | Z07 | AUSENTE | **PARCIAL** | E1 | proyecto | Mantener |
| 5.26.13 | N3 Microhidráulica | Z07 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z07 |
| 5.26.14 | N3 Sistema solar fotovoltaico | Z03, X20, X07 | PARCIAL | **COMPLETA** | E1 | proyecto | NUEVO Z03 |
| 5.26.15 | N3 Sistema eólico | Z09, D01 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO Z09 |
| 5.26.16 | N4 Batería | X11, M09 | AUSENTE | **PARCIAL** | E1 | — | Sin guía de laboratorio segura |
| 5.26.17 | N4 Sistema de almacenamiento térmico | X21 | AUSENTE | **PARCIAL** | E2 | — | Sin guía |
| 5.26.18 | N4 Almacenamiento mecánico | — | AUSENTE | **AUSENTE** | — | — | Hueco |
| 5.26.19 | N4 Sistema solar + batería | Z03, X11, X20 | AUSENTE | **COMPLETA** | E1 | proyecto | NUEVO |
| 5.26.20 | N5 Sistema energético completo | Z05, Z03, Z10, X01 | PARCIAL | **PARCIAL** | E1 | proyecto | Sin guía de diseño integrada |

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


### CURSO PRINCIPAL (42)

**S02 · Stanford — Introduction to Fossil Fuels Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=siTvGF5UBBI
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.2.1 → carbón, petróleo, gas (origen); 5.2.2 → disponibilidad (recursos frente a reservas), impacto ambiental
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S03 · Stanford — Oil Lecture**
- URL: https://www.youtube.com/watch?v=2I59Yf733Zo
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.2.1 → petróleo; 5.2.2 → extracción, transporte (midstream); 5.3.3 → gasolina y diésel (solo refino)
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S04 · Stanford — Natural Gas Lecture**
- URL: https://www.youtube.com/watch?v=gJUShPvkgTo
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy (atribución por serie; no confirmada en la ficha)
- Cubre: 5.2.1 → gas natural (qué es, dónde está, cómo funciona el sistema); 5.2.2 → economía, impacto; 5.3.3 → gas
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Cubre el hueco de la V1 (la clase de gas natural no se había localizado).

**S05 · Stanford — Coal Lecture**
- URL: https://www.youtube.com/watch?v=Ok4TprMotqE
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.2.1 → carbón; 5.2.2 → extracción (minería), transporte, impacto; 5.3.3 → carbón
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S06 · Stanford — Energy from Biomass Lecture**
- URL: https://www.youtube.com/watch?v=BpI4BMki2tE
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.2.1 → biomasa; 5.3.3 → biocombustibles (visión general)
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S07 · Stanford — Hydroelectric Power Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=rkQRBBwvhBs
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.10.1 → potencia del agua en movimiento, instalaciones; 5.10.2 → cadena de conversión; 5.10.3 → presa, turbina; 5.10.4 → convencional
- Conceptos de la matriz que apoya: 14
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S09 · Stanford — Geothermal Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=selKK3YjrSY
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.13 → funcionamiento, exploración, desarrollo, tecnología, economía, tendencias
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S13 · Stanford — Hydrogen Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=yB2vlk_PDw4
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Diana Gragg (Stanford)
- Cubre: 5.18 → qué es, producción, transporte, usos y futuro; 5.16.4 → hidrógeno como almacenamiento
- Conceptos de la matriz que apoya: 12
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S15 · Stanford — The Electricity Grid Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=u7TAYlMZ6_E
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.21 → transmisión, estructura del sector, fiabilidad de la red
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S16 · Stanford — Energy Efficiency Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=WyjgY0xmXHA
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Joel N. Swisher (Stanford, 24-05-2024)
- Cubre: 5.22 → dónde aplicar la eficiencia, diseño integrador, barreras, políticas
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B01 · NPTEL (Banerjee, IIT KGP) — L1 Thermodynamics: The Fundamentals of Energy**
- URL: https://www.youtube.com/watch?v=BBQ2o0LcmnQ
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Prof. Soumitro Banerjee, IIT Kharagpur
- Cubre: 5.1.1 → calidad de la energía (introducción a la exergía), leyes
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B02 · NPTEL (Banerjee) — L9 Thermal Power Plants (II)**
- URL: https://www.youtube.com/watch?v=8uwrMLrqQlU
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.7 → central térmica de vapor (visión de conjunto); 5.15.3 → turbina y ciclo de vapor (analogía)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Solo el título; el buscador lo da como «Thermal Power Plants II».

**B06 · NPTEL (Banerjee) — L15 Solar Thermal Energy Conversion (57:13)** · `CORE`
- URL: https://www.youtube.com/watch?v=mpHZWYpKDJg
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.11.1 → conversión solar térmica, colectores
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Duración indicada por el buscador.

**B08 · NPTEL (Banerjee) — L32 Tidal Energy** · `CORE`
- URL: https://www.youtube.com/watch?v=qu3vHW3mZ3E
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.14 → mareas, diferencias de nivel
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B09 · NPTEL (Banerjee) — L34 Solar Pond and Wave Power**
- URL: https://www.youtube.com/watch?v=a008raT0Jf8
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.14 → oleaje; 5.16.2 → estanque solar (almacenamiento térmico)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K02 · NPTEL (IIT Kanpur) — L09 Stoichiometric calculations for air gas mixture** · `CORE`
- URL: https://www.youtube.com/watch?v=EYKeBg4DmHI
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Prof. D. P. Mishra
- Cubre: 5.3.1 → estequiometría, comburente (aire), combustible
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K03 · NPTEL (IIT Bombay) — Mod-01 Lec-18 Rankine, Brayton, Stirling and Ericsson cycles** · `CORE`
- URL: https://www.youtube.com/watch?v=2x_wKoT0Y4A
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Profs. Bhaskar Roy y A. M. Pradeep, IIT Bombay
- Cubre: 5.6.2 → Rankine, Brayton, Stirling, Ericsson; 5.6.3 → comparación de rendimientos
- Conceptos de la matriz que apoya: 8
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K05 · NPTEL (IIT Roorkee, Ravi Kumar) — Steam and Gas Power Systems, L10 High Pressure Boilers (Part 1)** · `CORE`
- URL: https://www.youtube.com/watch?v=uVPp8wml9iU
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Ravi Kumar, IIT Roorkee
- Cubre: 5.7.1 → caldera, presión, generación de vapor (calderas de alta presión); 5.4.4 → calderas
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Temario del curso (40 clases de ~30 min): Rankine, cogeneración, calderas pirotubulares y acuotubulares, accesorios, calderas de alta presión, combustión en calderas, toberas, turbinas de acción y reacción, compounding, pérdidas, turbina de gas, compresores y cámaras de combustión.

**K06 · NPTEL (IIT Roorkee) — L23 Impulse Steam Turbine** · `CORE`
- URL: https://www.youtube.com/watch?v=qRTT_Hr_520
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Ravi Kumar
- Cubre: 5.7.4 y 5.9.1 → turbina de acción (impulso), álabes, expansión en toberas
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: L24 (rendimiento) y L26 (acción-reacción) existen, pero no se localizó su URL.

**K07 · NPTEL (IIT Roorkee) — L31 Gas turbine cycle** · `CORE`
- URL: https://www.youtube.com/watch?v=sR804kRNdTw
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Ravi Kumar
- Cubre: 5.9.2 → ciclo de la turbina de gas: compresor, combustión, turbina, escape; 5.6.2 → Brayton aplicado
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K10 · NPTEL (IIT KGP) — Lecture 61: Fuel Cells (curso Energy Conservation and Waste Heat Recovery)** · `CORE`
- URL: https://www.youtube.com/watch?v=L2VSOccUrSk
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CORREGIDO** · Evidencia: E1
- Autor/institución: IIT Kharagpur (docente de la clase no confirmado: el buscador cita a A. Bhattacharya y a P. K. Das)
- Cubre: 5.19 → principio, tipos y funcionamiento de las pilas de combustible (semana 11: almacenamiento y pilas)
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: La V1 atribuía la clase a un «curso de conservación de energía» sin nombre exacto: se corrige el curso.

**K11 · NPTEL (IISc, L. Umanand) — Basic Electrical Technology, Lecture 40 Synchronous Machine**
- URL: https://www.youtube.com/watch?v=b24jORRoxEc
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: Prof. L. Umanand, IISc Bangalore
- Cubre: 5.20 → generador síncrono, rotor, estator, alternador
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Llena el hueco de la V1 sobre la máquina síncrona.

**Y01 · Yale PHYS 200 (Shankar) — L22 The Boltzmann Constant and First Law of Thermodynamics** · `CORE`
- URL: https://oyc.yale.edu/physics/phys-200/lecture-22
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: R. Shankar, Yale
- Cubre: 5.1.1 → calor, temperatura (significado microscópico), conservación; 5.5.3 → primera ley; 5.5.2 → energía interna
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**Y02 · Yale PHYS 200 — L23 The Second Law of Thermodynamics and Carnot's Engine** · `CORE`
- URL: https://www.youtube.com/watch?v=DeNBWsZHXTE
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: R. Shankar
- Cubre: 5.5.3 → segunda ley; 5.6.1 → fuente caliente y fría, trabajo, rendimiento; 5.6.2 → Carnot
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**Y03 · Yale PHYS 200 — L24 The Second Law of Thermodynamics (cont.) and Entropy** · `CORE`
- URL: https://www.youtube.com/watch?v=ouSLRgkPzbI
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: R. Shankar
- Cubre: 5.1.1 y 5.5.2 → entropía (cálculo de ΔS, fórmula de Boltzmann, irreversibilidad)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Capítulos indexados: repaso de Carnot, cálculo de la variación de entropía, 2.ª ley en función de la entropía, base microscópica. Página oficial: https://oyc.yale.edu/node/1573

**M02 · MIT 2.627 Fundamentals of Photovoltaics — L1 Introduction** · `CORE`
- URL: https://www.youtube.com/watch?v=LOVZE9WalRE
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Tonio Buonassisi (MIT OCW, Fall 2011)
- Cubre: 5.11.2 → introducción a la FV
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: La lista de reproducción indica clases de 60–75 min.

**M03 · MIT 2.627 — L2 The Solar Resource**
- URL: https://www.youtube.com/watch?v=BcVzc6IGwS0
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: T. Buonassisi
- Cubre: 5.1.2 → energía radiante; 5.2.1 → radiación solar; 5.11.1 → radiación
- Conceptos de la matriz que apoya: 4
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**M04 · MIT 2.627 — L17 Modules, Systems, and Reliability** · `CORE`
- URL: https://www.youtube.com/watch?v=C42jXQLc_Jo
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: T. Buonassisi
- Cubre: 5.11.2 → módulo, panel; 5.11.3 → sistemas
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**M06 · MIT 22.01 — L4 Binding Energy, the Semi-Empirical Liquid Drop Nuclear Model, and Mass Parabolas** · `CORE`
- URL: https://www.youtube.com/watch?v=SgM2wxELF4U
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Michael Short (MIT OCW, Fall 2016)
- Cubre: 5.15.1 → núcleo, isótopos, defecto de masa, energía de enlace; 5.1.2 → energía nuclear
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**M07 · MIT 22.01 — L10 Radioactive Decay Continued (página OCW con vídeo)**
- URL: https://ocw.mit.edu/courses/22-01-introduction-to-nuclear-engineering-and-ionizing-radiation-fall-2016/resources/radioactive-decay-continued/
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Michael Short
- Cubre: 5.15.1 → radiactividad, decaimiento (modos, energética; L8 y L10)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**M08 · MIT 22.01 — L20 How Nuclear Energy Works** · `CORE`
- URL: https://www.youtube.com/watch?v=RW2DPHAoXiQ
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Michael Short
- Cubre: 5.15.2 → moderación, reacción en cadena, reproducción (plutonio), control; 5.15.3 → reactor; 5.15.5 → reactores de fusión
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**M09 · MIT 3.091 (Grossman) — The Battery Revolution (Lec 35)** · `CORE`
- URL: https://www.youtube.com/watch?v=SDrn8A4IzrA
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Jeffrey C. Grossman (MIT OCW, Fall 2018)
- Cubre: 5.17 → celda, ánodo, cátodo, electrolito, redox (nivel de 1.er curso)
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Página OCW: https://ocw.mit.edu/courses/3-091-introduction-to-solid-state-chemistry-fall-2018/resources/the-battery-revolution-lec35/

**M10 · MIT 8.02 (Lewin) — Lec 16 Electromagnetic Induction, Faraday's Law, Lenz Law** · `CORE`
- URL: https://www.youtube.com/watch?v=FUUMCT7FjaI
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Walter Lewin (MIT, primavera de 2002)
- Cubre: 5.20 → inducción electromagnética, campo magnético
- Conceptos de la matriz que apoya: 4
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Quién subió el vídeo a YouTube no está verificado. Espejo institucional: https://videolectures.net/videos/mit802s02_lewin_lec16 (MIT retiró de OCW los materiales de Lewin en 2014 por motivos no académicos).

**P01 · Cal Poly Pomona — Thermodynamics: Otto cycle, Diesel cycle (29 of 51)** · `CORE`
- URL: https://www.youtube.com/watch?v=OwcCS1hmJkc
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: A · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: CPPMechEngTutorials (Cal Poly Pomona; docente no verificado)
- Cubre: 5.6.2 → Otto, Diesel; 5.8.2 y 5.8.3 → ciclos ideales; 5.8.5 → rendimiento térmico
- Conceptos de la matriz que apoya: 13
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Sigue a Çengel y Boles (8.ª ed.).

**P02 · Cal Poly Pomona — Thermodynamics: Stirling and Ericsson cycles, Ideal and non-ideal simple Brayton cycle (31 of 51)**
- URL: https://www.youtube.com/watch?v=He3n4GF--qg
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: A · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: CPPMechEngTutorials
- Cubre: 5.6.2 → Stirling, Ericsson, Brayton ideal y real
- Conceptos de la matriz que apoya: 4
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**P04 · Cal Poly Pomona (J. Biddle) — Heat Transfer (01) … (37) (serie de clases)** · `CORE`
- URL: https://www.youtube.com/watch?v=7Bj3N1E7vZk
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: A · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Prof. John Biddle, Cal Poly Pomona (ME 4150)
- Cubre: 5.4.1–5.4.3 → conducción, convección, radiación (incluidas propiedades radiativas y factores de visión)
- Conceptos de la matriz que apoya: 16
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Última clase de la serie: https://www.youtube.com/watch?v=dbnUdPctD1s (ejemplos reales).

**D01 · TU Delft OCW — Sustainable Energy: Design a Renewable Future, módulo 5 Wind Energy (5.2 resource, 5.3 aerodynamics, 5.4 power curve, 5.5 energy yield, 5.6 electrical aspects)** · `CORE`
- URL: https://ocw.tudelft.nl/courses/sustainable-energy-design-renewable-future/subjects/5-wind-energy/
- Función: `CURSO PRINCIPAL` · Formato: vídeo · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: TU Delft
- Cubre: 5.12 → recurso eólico, velocidad, potencia disponible, aerodinámica (por qué tres palas), curva de potencia, producción anual, estelas y parques, transmisión offshore; 5.9.4 → rotor, palas, generador
- Conceptos de la matriz que apoya: 19
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Clases: https://ocw.tudelft.nl/course-lectures/5-2-wind-energy-resource/ · /5-3-aerodynamics/ · /5-4-power-curve/ · /5-5-energy-yield/ · /5-6-electrical-aspects/

**X06 · Yan — Introduction to Engineering Thermodynamics (LibreTexts / BCcampus, texto abierto)** · `CORE`
- URL: https://eng.libretexts.org/Bookshelves/Mechanical_Engineering/Introduction_to_Engineering_Thermodynamics_(Yan)
- Función: `CURSO PRINCIPAL` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Claire Yu Yan (UBC Okanagan)
- Cubre: 5.5.1 → conceptos y definiciones (sistemas, estado, proceso, ciclo); 5.5.2 → P, V, T, entalpía, energía interna; 5.5.4 → procesos isotérmico, isobárico, isocórico, adiabático, politrópico (trabajo de frontera); 5.1.1 → trabajo; 5.6.1 → máquina térmica (6.2); 5.6.2 → Rankine
- Conceptos de la matriz que apoya: 26
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: 7 capítulos, un cuatrimestre introductorio. PDF: https://batch.libretexts.org/print/Letter/Finished/eng-88813/Full.pdf · Cubre el hueco de procesos politrópicos de la V1.

**X11 · UCCS ECE5720 Battery Management and Control — apuntes y grabaciones** · `CORE`
- URL: http://mocha-java.uccs.edu/ECE5720/index.html
- Función: `CURSO PRINCIPAL` · Formato: curso · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Gregory Plett (Univ. of Colorado Colorado Springs)
- Cubre: 5.17 → estado de carga (SOC), estado de salud (degradación), BMS, modelos de celda, capacidad, potencia
- Conceptos de la matriz que apoya: 14
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Alternativa MOOC (auditoría gratuita): https://www.coursera.org/learn/battery-design-and-management · Sitio en HTTP (sin TLS).

**X13 · Penn State EME 812 Utility Solar Power and Concentration (curso abierto)**
- URL: https://www.e-education.psu.edu/eme812/syllabus
- Función: `CURSO PRINCIPAL` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Mark Fedkin (Penn State)
- Cubre: 5.11.1 → concentración solar (CSP, lección 7); 5.11.3 → seguimiento solar, acondicionamiento de potencia (inversor), solar + almacenamiento (lección 10); 5.16.2 → almacenamiento térmico en CSP
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Lección 7: https://www.e-education.psu.edu/eme812/node/527 · Lección 10: https://www.e-education.psu.edu/eme812/node/696

**X27 · NPTEL (IIT KGP) — Energy Conservation and Waste Heat Recovery (página del curso)**
- URL: https://nptel.ac.in/courses/112105221
- Función: `CURSO PRINCIPAL` · Formato: curso · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: IIT Kharagpur
- Cubre: 5.22 → recuperación de calor residual, intercambiadores; 5.16.2 → almacenamiento sensible y latente (PCM, semana 11)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Curso de la clase K10. No se localizaron los ID de YouTube de cada clase: REVISIÓN MANUAL.

**X31 · NPTEL (IIT Roorkee, Ravi Kumar) — Refrigeration and Air-conditioning (página del curso)**
- URL: https://nptel.ac.in/courses/112107208
- Función: `CURSO PRINCIPAL` · Formato: curso · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Ravi Kumar, IIT Roorkee
- Cubre: 5.4.4 → refrigeración (repaso de termodinámica, introducción, ciclos de refrigeración; semana 1)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Para quien parte de cero. No se localizaron los ID de YouTube de las clases: REVISIÓN MANUAL.


### INTRODUCCIÓN (13)

**S01 · Stanford Understand Energy — Energy Basics Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=TGvyZ7zEylk
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Diana Gragg (Stanford, CEE / Precourt Institute)
- Cubre: 5.1.1 → energía, potencia, rendimiento, eficiencia, transformación; 5.1.2 → formas y orígenes (visión general); 5.24 → cadena recurso→servicio
- Conceptos de la matriz que apoya: 12
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Descripción indexada: energía frente a potencia, leyes de la termodinámica, calidad de la energía, formas, conversión de recursos en servicios, rendimiento de conversión.

**S08 · Stanford — Solar Energy Lecture**
- URL: https://www.youtube.com/watch?v=B5Ejxu3ACd0
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Kirsten Stasio (Stanford)
- Cubre: 5.11 → visión general (temario no indexado)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Solo se confirmó el título y la autora.

**S11 · Stanford — Nuclear Fission Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=c4s9gN0qYpI
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.15.2 → fisión comercial; 5.15.3 → funcionamiento de la central; 5.23 → seguridad nuclear (visión general)
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**S12 · Stanford — Energy Storage Lecture** · `CORE`
- URL: https://www.youtube.com/watch?v=iu738Ugt7LQ
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Diana Gragg (Stanford)
- Cubre: 5.16 → por qué almacenar, tecnologías, despliegue a escala de red
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Hay otras versiones del mismo tema (FasqSXv_S5I, ZDCPEUPkcRA): no se añaden (duplicados).

**S14 · Stanford — Electricity Generation Lecture**
- URL: https://www.youtube.com/watch?v=b5vri-yVibY
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.20 → cómo se genera la electricidad; 5.2.2 → coste (LCOE), impacto
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K01 · NPTEL (IIT Kanpur, D. P. Mishra) — Fundamentals of Combustion I: Introducción**
- URL: https://www.youtube.com/watch?v=s57q7CiWrT8
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Prof. D. P. Mishra, IIT Kanpur
- Cubre: 5.3.1 → combustible (tipos de combustible, según el temario del curso)
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Temario del curso: tipos de combustible, termodinámica, estequiometría, calor de reacción, temperatura adiabática de llama (L13–L14; sin URL localizada).

**H02 · Vaclav Smil — Drivers of environmental change: focus on energy transitions (webcast de la UBC)**
- URL: https://www.youtube.com/watch?v=nJxmlNyu4sE
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: A · Nivel: A · Estado: **SUSTITUTO** · Evidencia: E1
- Autor/institución: Vaclav Smil (profesor emérito distinguido, Univ. de Manitoba); organizado por el Irving K. Barber Learning Centre y St. John's College, UBC
- Cubre: 5.25 → transiciones energéticas históricas (biomasa → carbón → petróleo → electricidad)
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Sustituye al vídeo de la V1 gWBigeRHD6o, cuya autoría no se pudo confirmar.

**U01 · Canal UNED — Motores de combustión interna alternativos**
- URL: https://canal.uned.es/video/5a6f99d7b1111f743a8b4c75
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Marta Muñoz Domínguez y Antonio J. Rovira de Antonio (UNED)
- Cubre: 5.8 → MCIA (en español)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: REVISIÓN MANUAL: no se sabe si es una clase completa o un vídeo de presentación.

**X14 · World Nuclear Association — Nuclear Fuel Cycle Overview**
- URL: https://world-nuclear.org/information-library/nuclear-fuel-cycle/introduction/nuclear-fuel-cycle-overview
- Función: `INTRODUCCIÓN` · Formato: texto · Autoridad: B · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: World Nuclear Association (asociación del sector)
- Cubre: 5.15.4 → minería, conversión, enriquecimiento (3,5–5 % de U-235), fabricación, combustible gastado, reprocesado
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Fuente del sector: contrastar con OIEA (X15).

**X16 · ITER — Making fusion work / FAQs**
- URL: https://www.iter.org/fusion-energy/making-it-work
- Función: `INTRODUCCIÓN` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: ITER Organization
- Cubre: 5.15.5 → plasma, deuterio, tritio (producción a partir de litio), tokamak (confinamiento magnético), plasma en combustión
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: FAQs: https://www.iter.org/faqs

**X19 · DOE Water Power Technologies Office — Marine Energy Basics**
- URL: https://www.energy.gov/eere/water/marine-energy-basics
- Función: `INTRODUCCIÓN` · Formato: texto · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: U.S. DOE
- Cubre: 5.14 → oleaje, mareas, corrientes, gradiente térmico oceánico (introducción)
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Nivel divulgativo institucional.

**X23 · CSN — Guía del profesor «El CSN y las radiaciones»**
- URL: https://www.csn.es/documents/10182/914813/OFC-04-01%20El%20CSN%20y%20la%20radiaciones%20(Gu%C3%ADa%20del%20profesor)
- Función: `INTRODUCCIÓN` · Formato: texto · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Consejo de Seguridad Nuclear (España)
- Cubre: 5.23 → radiación: dosis, protección radiológica; 5.15.1 → radiactividad (nivel básico)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Material educativo en español.

**X30 · LLNL HEDS Center — Inertial Confinement Fusion**
- URL: https://heds-center.llnl.gov/research/research-areas/inertial-confinement-fusion
- Función: `INTRODUCCIÓN` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Lawrence Livermore National Laboratory
- Cubre: 5.15.5 → confinamiento inercial (NIF, ataque indirecto, cápsula D-T)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Cubre el hueco de la V1 sobre el confinamiento inercial.


### PROFUNDIZACIÓN (15)

**S17 · Sanjiva Lele — Wind Energy (Stanford)**
- URL: https://www.youtube.com/watch?v=_Hj7K54lAEQ
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Sanjiva Lele (Stanford, Aero/Astro y Mecánica)
- Cubre: 5.12 → eólica (temario no indexado)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Conferencia de 2016; contenido exacto no verificado.

**B03 · NPTEL (Banerjee) — L10 Hydroelectric Power**
- URL: https://www.youtube.com/watch?v=i9yCpuiMze0
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.10 → hidroeléctrica (cálculo)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B04 · NPTEL (Banerjee) — L11 Hydroelectric Power**
- URL: https://www.youtube.com/watch?v=4LGxEhBmIKw
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CORREGIDO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.10 → hidroeléctrica (2.ª parte)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: La V1 afirmaba que cubría las turbinas Pelton, Francis y Kaplan; no hay evidencia de ello → ya no se cuenta como cobertura de 5.9.3.

**B05 · NPTEL (Banerjee) — L12 Nuclear Power Generation**
- URL: https://www.youtube.com/watch?v=uulD0KVkmWg
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.15.3 → central nuclear
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B07 · NPTEL (Banerjee) — L22 Wind Energy II**
- URL: https://www.youtube.com/watch?v=gMxPkVQYXz8
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.12 → eólica (2.ª parte)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**B10 · NPTEL (Banerjee) — L35 Geothermal Energy**
- URL: https://www.youtube.com/watch?v=x2Lxt-KS_v4
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Prof. S. Banerjee
- Cubre: 5.13 → geotermia (enfoque ingenieril)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**K08 · NPTEL (IIT KGP, S. K. Som) — Mod-01 Lec-08 Specific speed, Governing and Limitation of a Pelton Turbine**
- URL: https://www.youtube.com/watch?v=G4d2idmkEn8
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: Prof. S. K. Som, IIT Kharagpur
- Cubre: 5.9.3 → Pelton (velocidad específica, regulación, límites)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: En la V1 aparecía en el documento, pero no en el registro.

**K09 · NPTEL (IIT KGP, S. K. Som) — Mod-01 Lec-12 Governing of Reaction Turbine**
- URL: https://www.youtube.com/watch?v=UUjEPl1JAqo
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. S. K. Som (curso Introduction to Fluid Machines and Compressible Flow)
- Cubre: 5.9.3 → turbinas de reacción (Francis/Kaplan): regulación
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Cubre la regulación, no el diseño completo de Francis y Kaplan.

**K12 · NPTEL — Mod-01 Lec-09 Theory of Nozzles**
- URL: https://www.youtube.com/watch?v=-ldFk-eyqI8
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: NPTEL (curso y docente no verificados)
- Cubre: 5.7.4 → tobera, expansión
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: REVISIÓN MANUAL: identificar el curso.

**M01 · MIT 5.60 Thermodynamics & Kinetics (Spring 2008) — Lec 13 (energía libre de Gibbs)**
- URL: https://www.youtube.com/watch?v=srjNMMtPATo
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: MIT OCW 5.60 (docentes no confirmados en la ficha)
- Cubre: 5.5.2 → energía libre
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: REVISIÓN MANUAL: el vídeo se titula solo «Lec 13»; el tema (Gibbs) lo afirma el buscador.

**M05 · MIT 2.627 — L7 Toward a 1D Device Model, Part I: Device Fundamentals**
- URL: https://www.youtube.com/watch?v=dFF2DuEv-2c
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: T. Buonassisi
- Cubre: 5.11.2 → fotones, semiconductores, célula (unión p-n)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Estaba localizada en la V1, pero no se había seleccionado.

**M11 · Dennis Whyte — USask Engineering Cheriton Guest Lecture on Fusion Research**
- URL: https://www.youtube.com/watch?v=Al3JZyCnT5I
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E3
- Autor/institución: Dennis Whyte (director del MIT PSFC)
- Cubre: 5.15.5 → fusión por confinamiento magnético (estado del arte)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**D02 · TU Delft OCW — Solar Energy: Photovoltaic (PV) Systems**
- URL: https://ocw.tudelft.nl/courses/solar-energy-photovoltaic-pv-systems/
- Función: `PROFUNDIZACIÓN` · Formato: curso · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: TU Delft
- Cubre: 5.11.3 → sistemas FV (componentes, dimensionado; temario no indexado)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: REVISIÓN MANUAL del temario.

**X10 · MIT 10.626 Electrochemical Energy Systems (Spring 2014) — apuntes de clase**
- URL: https://ocw.mit.edu/courses/10-626-electrochemical-energy-systems-spring-2014/pages/lecture-notes
- Función: `PROFUNDIZACIÓN` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Martin Z. Bazant (MIT)
- Cubre: 5.17 → termodinámica (voltaje), cinética, transporte, baterías de litio (lec. 13); 5.19 → pilas de combustible; 5.16.5 → supercondensadores
- Conceptos de la matriz que apoya: 15
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Nivel de posgrado. Sin vídeos.

**X26 · MIT 2.60J Fundamentals of Advanced Energy Conversion (2020) — Lec 15 Thermo-mechanical Conversion: Gas Turbine Power Plants**
- URL: https://ocw.mit.edu/courses/2-60j-fundamentals-of-advanced-energy-conversion-spring-2020/af038332a2118037d1aa09498c369790_MIT2_60s20_lec15.pdf
- Función: `PROFUNDIZACIÓN` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: MIT OCW 2.60J
- Cubre: 5.9.2 → centrales de turbina de gas; 5.6.3 → comparación de ciclos (ciclo combinado)
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta


### REFERENCIA (12)

**X01 · MacKay — Sustainable Energy – without the hot air (2009)** · `CORE`
- URL: https://www.withouthotair.com/download.html
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E2
- Autor/institución: David J. C. MacKay (FRS)
- Cubre: 5.1.1 → densidad y flujo energético; 5.2.2 → escalabilidad, renovabilidad (cuantitativo); 5.22 → aislamiento y pérdidas en edificios; 5.24 → balance del sistema
- Conceptos de la matriz que apoya: 13
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Datos de coste de 2009 desfasados. Copia: https://archive.org/details/withouthotair

**X02 · Lienhard IV y V — A Heat Transfer Textbook, 5.ª ed. (2019)** · `CORE`
- URL: https://ahtt.mit.edu/
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: S · Estado: **CORREGIDO** · Evidencia: E2
- Autor/institución: J. H. Lienhard IV y J. H. Lienhard V (MIT)
- Cubre: 5.4.1–5.4.4 → conducción estacionaria y transitoria, aletas (disipadores), convección natural y forzada, radiación, intercambiadores; EJERCICIOS al final de cada capítulo
- Conceptos de la matriz que apoya: 20
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: El buscador indexa https://ahtt-dev.mit.edu/; ahtt.mit.edu es la dirección oficial citada. REVISIÓN MANUAL de la URL.

**X04 · DOE Fundamentals Handbook — Nuclear Physics and Reactor Theory (DOE-HDBK-1019/1-93, vols. 1–2)**
- URL: https://ncsp.llnl.gov/sites/ncsp/files/2024-03/doe_fundamentals_handbook_nuclear_physics_and_reactor_theory_vol_1_of_2.pdf
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: U.S. DOE (alojado por el LLNL)
- Cubre: 5.15.1–5.15.3 → física atómica y nuclear, neutrones, teoría del reactor, criticidad, control, operación
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Vol. 2: https://ncsp.llnl.gov/sites/ncsp/files/2024-03/doe_fundamentals_handbook_nuclear_physics_and_reactor_theory_vol_2_of_2.pdf

**X05 · MIT 16.Unified — Thermodynamics and Propulsion (apuntes)**
- URL: https://web.mit.edu/16.unified/www/FALL/thermodynamics/notes/notes.html
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: E. M. Greitzer, Z. S. Spakovszky, I. A. Waitz (MIT)
- Cubre: 5.5 → primera ley, entropía, trabajo perdido; 5.6.2 → Brayton (T-s), Rankine; 5.9.2 → turbina de gas
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**X07 · PVEducation (PVCDROM)** · `CORE`
- URL: https://www.pveducation.org/pvcdrom/welcome-to-pvcdrom
- Función: `REFERENCIA` · Formato: interactivo · Autoridad: S · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: C. Honsberg y S. Bowden (Arizona State University)
- Cubre: 5.11.2 → luz solar, unión p-n, funcionamiento, diseño y fabricación de células, módulos y campos, caracterización
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**X08 · MIT 2.61 Internal Combustion Engines (Spring 2017) — apuntes de clase, ejercicios y laboratorios** · `CORE`
- URL: https://ocw.mit.edu/courses/2-61-internal-combustion-engines-spring-2017/pages/lecture-notes/
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. Wai Cheng (MIT)
- Cubre: 5.8.1–5.8.5 → funcionamiento y diseño del MCI, rendimiento, combustión, transferencia de calor, fricción y tribología (L19, lubricación), turbocompresión (L20, sobrealimentación)
- Conceptos de la matriz que apoya: 34
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Ejercicios: https://ocw.mit.edu/courses/2-61-internal-combustion-engines-spring-2017/pages/assignments/ · Laboratorios: …/pages/labs/ · Los apuntes son diapositivas, no un texto autosuficiente.

**X09 · Thurston — A History of the Growth of the Steam-Engine (1886, Project Gutenberg)**
- URL: https://www.gutenberg.org/ebooks/35916
- Función: `REFERENCIA` · Formato: texto · Autoridad: A · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Robert H. Thurston (ingeniero, fuente primaria histórica)
- Cubre: 5.7.2 → máquina de vapor alternativa (pistón, cilindro, válvulas, condensador de Watt, regulador); 5.7.3 → evolución; 5.25 → máquina de vapor
- Conceptos de la matriz que apoya: 12
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Texto del siglo XIX: terminología antigua y sin termodinámica moderna.

**X12 · MIT 6.061 Introduction to Electric Power Systems (Spring 2011) — apuntes de Kirtley y 11 hojas de problemas** · `CORE`
- URL: https://ocw.mit.edu/courses/6-061-introduction-to-electric-power-systems-spring-2011/pages/readings
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Prof. J. L. Kirtley Jr. (MIT)
- Cubre: 5.20 → máquina síncrona y de inducción (cap. 9 y siguientes); 5.21 → líneas de transmisión, transformadores, operación del sistema; EJERCICIOS con soluciones
- Conceptos de la matriz que apoya: 12
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Cap. 9: https://ocw.mit.edu/courses/6-061-introduction-to-electric-power-systems-spring-2011/f99554aa923748fa210a30a874ee5fc8_MIT6_061S11_ch9.pdf

**X15 · OIEA — Getting to the Core of the Nuclear Fuel Cycle** · `CORE`
- URL: https://www.iaea.org/sites/default/files/18/10/nuclearfuelcycle.pdf
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Organismo Internacional de Energía Atómica
- Cubre: 5.15.4 → ciclo completo del combustible, de la minería a la eliminación de residuos
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**X17 · DOE Hydrogen and Fuel Cell Technologies Office — Hydrogen Production** · `CORE`
- URL: https://www.energy.gov/eere/fuelcells/hydrogen-production
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: U.S. DOE (EERE / HFTO)
- Cubre: 5.18 → reformado de gas natural, gasificación, electrólisis de baja y alta temperatura, vías solares y biológicas
- Conceptos de la matriz que apoya: 8
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Profundización en electrólisis (alcalina, PEM): https://www.energy.gov/sites/default/files/2024-12/hydrogen-shot-water-electrolysis-technology-assessment.pdf

**X28 · Sandia / U.S. DOE — Energy Storage Handbook (2020) y DOE/EPRI Electricity Storage Handbook (2015)** · `CORE`
- URL: https://www.sandia.gov/ess-ssl/eshb/
- Función: `REFERENCIA` · Formato: texto · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Sandia National Laboratories / U.S. DOE / EPRI / NRECA
- Cubre: 5.16.1 → volantes de inercia, aire comprimido (CAES), bombeo; 5.16.3 → plomo-ácido, baterías de flujo; comparación de costes y prestaciones
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Edición de 2015: https://www.sandia.gov/ess-ssl/publications/SAND2015-1002.pdf

**X29 · Battery University (Cadex) — BU-201 plomo-ácido, BU-203 níquel, BU-205 tipos de Li-ion, BU-214/215/216 tablas resumen**
- URL: https://www.batteryuniversity.com/article/bu-205-types-of-lithium-ion
- Función: `REFERENCIA` · Formato: texto · Autoridad: B · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Isidor Buchmann / Cadex Electronics (empresa)
- Cubre: 5.17 familias → plomo-ácido, NiCd, NiMH, tipos de Li-ion (LiFePO₄ incluido); 5.16.3 → plomo-ácido, níquel, litio
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Divulgación técnica de un fabricante: útil para comparar familias, no como fuente académica. BU-201: https://www.batteryuniversity.com/article/bu-201-how-does-the-lead-acid-battery-work/ · BU-215: https://www.batteryuniversity.com/article/bu-215-summary-table-of-nickel-based-batteries/


### DOCUMENTACIÓN TÉCNICA (7)

**X03 · DOE Fundamentals Handbook — Thermodynamics, Heat Transfer, and Fluid Flow (DOE-HDBK-1012/1-92, vols. 1–3)**
- URL: https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1012-92_VOL1.pdf
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: U.S. Department of Energy
- Cubre: 5.5 → propiedades y balances (vol. 1); 5.7.1 → vapor, tablas; 5.4 → conducción, convección, radiación, intercambiadores (vol. 2); DEPENDENCIA → fluidos (vol. 3)
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Vol. 2: https://www.standards.doe.gov/standards-documents/1000/1012-bhdbk-1992-v2 · Vol. 3: https://www.standards.doe.gov/standards-documents/1000/1012-bhdbk-1992-v3

**X18 · PNNL / H2Tools — Safety Planning for Hydrogen and Fuel Cell Projects (2025) + Hydrogen Safety Checklist**
- URL: https://h2tools.org/sites/default/files/Safety_Planning_for_Hydrogen_and_Fuel_Cell_Projects.pdf
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Pacific Northwest National Laboratory, Hydrogen Safety Panel
- Cubre: 5.23 → combustibles (H₂), ventilación, detección de fugas, contención, procedimientos de emergencia, planes de seguridad
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Checklist: https://h2tools.org/sites/default/files/HydrogenSafetyChecklist.pdf

**X20 · IDAE — Guía Profesional de Tramitación del Autoconsumo v.6 (2024)**
- URL: https://www.idae.es/sites/default/files/documentos/publicaciones_idae/20240709_Guia_Profesional_Tramitacion_autoconsumo_v.6.pdf
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: IDAE + ENERAGEN
- Cubre: 5.11.3 → instalación conectada a red / autoconsumo (marco legal español); 5.26 → N3–N5
- Conceptos de la matriz que apoya: 3
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**X21 · IDAE / ASIT — Guía Técnica de Energía Solar Térmica (2020)** · `CORE`
- URL: https://www.idae.es/publicaciones/guia-tecnica-de-energia-solar-termica
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: IDAE y ASIT
- Cubre: 5.11.1 → colectores, circulación, almacenamiento, ACS (de equipos prefabricados a grandes instalaciones); 5.26 → colector solar térmico (N1)
- Conceptos de la matriz que apoya: 8
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: 296 páginas. PDF: https://www.idae.es/sites/default/files/documentos/publicaciones_idae/guiasolartermica_idae-asit_v3.0_20210111_nipo.pdf

**X22 · INSST — Guía técnica para la evaluación y prevención de los riesgos relacionados con la protección frente al riesgo eléctrico (RD 614/2001)**
- URL: https://www.insst.es/documents/94886/789467/Gu%C3%ADa+t%C3%A9cnica+para+la+evaluaci%C3%B3n+y+prevenci%C3%B3n+de+los+riesgos+relacionados+con+la+protecci%C3%B3n+frente+al+riesgo+el%C3%A9ctrico.pdf
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Instituto Nacional de Seguridad y Salud en el Trabajo (España)
- Cubre: 5.23 → electricidad (evaluación y prevención del riesgo eléctrico, trabajos en instalaciones); 5.21 → protecciones (visión de seguridad)
- Conceptos de la matriz que apoya: 4
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**X24 · Red Eléctrica — El sistema eléctrico canario (díptico)**
- URL: https://www.ree.es/sites/default/files/downloadable/diptico_canarias_v2_1.pdf
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E3
- Autor/institución: Red Eléctrica (Redeia)
- Cubre: 5.21 → sistemas eléctricos insulares aislados (Canarias)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Contexto directo de tu objetivo en Tenerife.

**X25 · Gorona del Viento — Central hidroeólica de El Hierro**
- URL: https://www.goronadelviento.es/en/wind-pumped-hydro/
- Función: `DOCUMENTACIÓN TÉCNICA` · Formato: texto · Autoridad: A · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Gorona del Viento El Hierro, S.A. (operadora)
- Cubre: 5.10.4 → bombeo reversible; 5.16.1 → almacenamiento por bombeo; 5.24 → sistema integrado eólica + bombeo en una isla
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Fuente de la empresa operadora: contrastar las cifras de cobertura renovable.


### EJERCICIOS (1)

**P03 · Cal Poly Pomona — Thermodynamics: Ideal and non-ideal Rankine cycle, reheating (34 of 51)** · `CORE`
- URL: https://www.youtube.com/watch?v=biHGK7lbxC0
- Función: `EJERCICIOS` · Formato: vídeo · Autoridad: A · Nivel: S · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: CPPMechEngTutorials
- Cubre: 5.6.2 → Rankine; 5.7.1 → vapor (tablas); 5.1.1 → rendimiento isentrópico
- Conceptos de la matriz que apoya: 8
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Marcas de tiempo indexadas: ecuaciones, ejemplos ideales, Rankine no ideal, ejemplos, mejora del rendimiento (48:23).


### SIMULACIÓN (5)

**Z01 · PhET — Faraday's Electromagnetic Lab (simulación)**
- URL: https://phet.colorado.edu/en/simulations/faradays-electromagnetic-lab
- Función: `SIMULACIÓN` · Formato: interactivo · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: PhET, University of Colorado Boulder
- Cubre: 5.20 → inducción, bobinas, imanes, transformador, generador; 5.26 → generador electromagnético (N3, prediseño)
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**Z02 · PhET — Energy Skate Park (simulación)**
- URL: https://phet.colorado.edu/en/simulations/legacy/energy-skate-park
- Función: `SIMULACIÓN` · Formato: interactivo · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: PhET, University of Colorado Boulder
- Cubre: 5.1.1 → conservación y transformación; 5.1.2 → cinética, potencial gravitatoria, térmica (rozamiento)
- Conceptos de la matriz que apoya: 5
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Versión legacy (indexada).

**Z03 · JRC (Comisión Europea) — PVGIS 5: herramientas de FV conectada y aislada**
- URL: https://re.jrc.ec.europa.eu/pvg_tools/en/tools.html
- Función: `SIMULACIÓN` · Formato: interactivo · Autoridad: S · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Joint Research Centre, Comisión Europea
- Cubre: 5.2.1 → radiación solar (datos por ubicación); 5.11.3 → instalación aislada con baterías y conectada a red; 5.26 → sistema FV y solar + batería (N3, N4)
- Conceptos de la matriz que apoya: 8
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Permite simular en tu ubicación de Tenerife. Explicación del modo aislado: https://joint-research-centre.ec.europa.eu/photovoltaic-geographical-information-system-pvgis/using-pvgis-5/pvgis-5-tools/grid-pv-systems_en

**Z04 · Cantera — Calculating Adiabatic Flame Temperature (guía) + ejemplos de equilibrio y llama laminar**
- URL: https://cantera.org/dev/userguide/flame-temperature.html
- Función: `SIMULACIÓN` · Formato: interactivo · Autoridad: S · Nivel: S · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Proyecto Cantera (software científico abierto)
- Cubre: 5.3.1 → combustión completa e incompleta, productos (equilibrio); 5.3.2 → temperatura de combustión, velocidad de llama (ejemplo de llama laminar)
- Conceptos de la matriz que apoya: 7
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Documentación de la rama de desarrollo (4.0). Ejemplo de llama laminar: https://cantera.org/3.1/examples/python/onedim/adiabatic_flame.html · Requiere Python.

**Z10 · Red Eléctrica — Demanda canaria en tiempo real (por isla)**
- URL: https://www.redeia.com/es/actividades/sistema-electrico-canario/demanda-de-energia-en-tiempo-real
- Función: `SIMULACIÓN` · Formato: interactivo · Autoridad: S · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Red Eléctrica (Redeia)
- Cubre: 5.21 → demanda real, prevista y programada, puntas y valles, mix de producción; 5.2.2 → fiabilidad
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Datos reales cada 5–10 min; sirve para hacer ejercicios de factor de carga con datos de Tenerife.


### LABORATORIO (1)

**Z05 · MIT EC.711 D-Lab: Energy (Spring 2011)**
- URL: https://ocw.mit.edu/courses/ec-711-d-lab-energy-spring-2011/
- Función: `LABORATORIO` · Formato: curso · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: MIT OCW / D-Lab
- Cubre: 5.26 → medida de potencia solar (lab. 2), almacenamiento (semana 2); marco general de proyectos energéticos de pequeña escala
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: El resto del temario no está verificado.


### PROYECTO (4)

**Z06 · Aprovecho / EPA PCIA — Design Principles for Wood Burning Cook Stoves (EPA-402-K-05-004)**
- URL: http://www.bioenergylists.org/stovesdoc/Pcia/Design%20Principles%20for%20Wood%20Burning%20Cookstoves.pdf
- Función: `PROYECTO` · Formato: texto · Autoridad: A · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Bryden, Still, Scott, Hoffa, Ogle, Bailis y Goyer (Aprovecho Research Center, 2005)
- Cubre: 5.26 N1 → cocina eficiente, horno básico, quemador; 5.3.2 → llama, transferencia de calor, rendimiento; 5.3.3 → madera
- Conceptos de la matriz que apoya: 9
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Copia (Peace Corps): https://files.peacecorps.gov/documents/M0091_ANNEX_Cookstoves_TP_ICS_4a_Improved-Cookstoves-Handbook.pdf

**Z07 · Micro-hydro: Practical Action «Micro-Hydro Power» (technical brief) + NCAT/ATTRA «Micro-Hydro Power: A Beginner's Guide to Design»**
- URL: https://practicalactionpublishing.com/book/2846/micro-hydro-power
- Función: `PROYECTO` · Formato: texto · Autoridad: A · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Practical Action (ONG técnica) / NCAT-ATTRA
- Cubre: 5.10.1 → salto y caudal; 5.10.3 → tubería forzada; 5.10.4 → microhidráulica; 5.9.3 → tipos de turbina; 5.26 → microhidráulica, rueda hidráulica y microturbina (N1, N3)
- Conceptos de la matriz que apoya: 10
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: ATTRA: https://attradev.ncat.org/wp-content/uploads/2022/06/microhydrodesign.pdf

**Z08 · Ohio State University — Building a Stirling Engine: A STEM Education Program**
- URL: https://ece.osu.edu/sites/default/files/2021-06/istem-stirlingengine.pdf
- Función: `PROYECTO` · Formato: texto · Autoridad: A · Nivel: B · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: The Ohio State University (programa iSTEM)
- Cubre: 5.26 N2 → motor Stirling (materiales, instrucciones, seguridad, principios); 5.6.2 → Stirling
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta

**Z09 · Hugh Piggott / Practical Action — manual de aerogenerador con generador de imanes permanentes (PMG)**
- URL: https://kolibri.teacherinabox.org.au/modules/en-practical_action/Energy/Wind%20power/wind_turbine_pmg_manual.pdf
- Función: `PROYECTO` · Formato: texto · Autoridad: A · Nivel: A · Estado: **NUEVO** · Evidencia: E1
- Autor/institución: Hugh Piggott (Scoraig Wind Electric), con apoyo técnico de Practical Action
- Cubre: 5.26 → molino de viento sencillo (N1), sistema eólico y generador electromagnético (N3); 5.12 → generador, orientación
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Copia alojada en un repositorio educativo (Teacher in a Box), no en la web oficial: REVISIÓN MANUAL de la estabilidad del enlace.


### PRÁCTICA (1)

**H01 · U.S. Chemical Safety Board — Anatomy of a Disaster (BP Texas City, 2005)** · `CORE`
- URL: https://www.youtube.com/watch?v=XuJtdQOU_Z4
- Función: `PRÁCTICA` · Formato: vídeo · Autoridad: S · Nivel: A · Estado: **CONSERVADO** · Evidencia: E1
- Autor/institución: U.S. Chemical Safety and Hazard Investigation Board
- Cubre: 5.23 → incendios, explosiones, cultura de seguridad, factores humanos, diseño de equipos
- Conceptos de la matriz que apoya: 6
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Obra de 56 min según la CSB; no verificado si el enlace es la versión completa o la animación de 9 min. Copia: https://archive.org/details/CSB_Safety_Video_Anatomy_of_a_Disaster


### OPCIONALES (7)

**S10 · Stanford — Introduction to Nuclear Energy**
- URL: https://www.youtube.com/watch?v=RNkQeBxwrM0
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.15.2 y 5.15.5 → introducción a fisión y fusión
- Conceptos de la matriz que apoya: 0
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Solapa con S11; queda como opcional (redundante).

**K04 · NPTEL (IIT Bombay, Sukhatme y Gaitonde) — Lecture 1 Introduction on Heat and Mass Transfer**
- URL: https://www.youtube.com/watch?v=qa-PQOjS3zA
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **OPCIONAL** · Evidencia: E3
- Autor/institución: Profs. S. P. Sukhatme y U. N. Gaitonde
- Cubre: 5.4 → introducción
- Conceptos de la matriz que apoya: 0
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Duplica la función de P04; queda como alternativa.

**O01 · Stanford — Hydropower 10-Minute Take**
- URL: https://www.youtube.com/watch?v=EYl4Ap4qxRc
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.10 → resumen (incluye bombeo)
- Conceptos de la matriz que apoya: 2
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Resumen: no vale como recurso principal (F2).

**O02 · Stanford — Wind Energy 10-Minute Take**
- URL: https://m.youtube.com/watch?v=SmNhOwvT3Zc
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: Diana Gragg (Stanford)
- Cubre: 5.12 → resumen
- Conceptos de la matriz que apoya: 0
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Resumen.

**O03 · Stanford — Hydrogen 10-Minute Take**
- URL: https://www.youtube.com/watch?v=JfTT0Z6wQ1g
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: S · Nivel: B · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: Stanford Understand Energy
- Cubre: 5.18 → resumen
- Conceptos de la matriz que apoya: 0
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Resumen.

**O04 · Princeton-CEFRC — Combustion Theory (Matalon), Day 1 Part 1**
- URL: https://www.youtube.com/watch?v=k7GHxTz96do
- Función: `PROFUNDIZACIÓN` · Formato: vídeo · Autoridad: S · Nivel: S · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: Moshe Matalon (Princeton-CEFRC Summer School 2025)
- Cubre: 5.3.2 → teoría de llamas (posgrado)
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Demasiado avanzado para ser el recurso principal.

**O05 · mrpete222 (tubalcain) — How a steam engine governor works**
- URL: https://www.youtube.com/watch?v=WLBTKBgTogo
- Función: `INTRODUCCIÓN` · Formato: vídeo · Autoridad: B · Nivel: B · Estado: **OPCIONAL** · Evidencia: E1
- Autor/institución: mrpete222 (profesor de taller jubilado)
- Cubre: 5.7.2 → regulador centrífugo
- Conceptos de la matriz que apoya: 1
- Enlace: verificación parcial (URL y título en el índice del buscador, 2026-09-30); página no abierta
- Notas: Único audiovisual sobre el regulador; fuente B.


### ELIMINADOS (2)

- ~~E01 · «LECTURE 3:- IC Engine Components» (autor desconocido)~~ — https://www.youtube.com/watch?v=BJYSyA-u61U — Fuente sin autor ni institución; sustituida por MIT 2.61 (X08) como referencia.
- ~~E02 · «Energy and Civilization: A History by Vaclav Smil»~~ — https://www.youtube.com/watch?v=gWBigeRHD6o — Sustituido por H02 (conferencia del propio Smil en la UBC).

## 8. Huecos restantes

**Conceptos sin ningún recurso (AUSENTE), prioridad máxima para la siguiente pasada:**

- `5.3.2.01` Encendido (5.3.2 Procesos de combustión) — Hueco: NPTEL Fundamentals of Combustion part 2 (IIT Kanpur) sin clases localizadas
- `5.3.2.06` Presión (5.3.2 Procesos de combustión) — Hueco
- `5.3.3.03` Carbón vegetal (5.3.3 Combustibles) — Hueco
- `5.10.3.02` Aliviadero (5.10.3 Infraestructura) — Hueco (menor)
- `5.16.4.02` Combustibles sintéticos (5.16.4 Químico) — Hueco
- `5.17b.06` Estado sólido (5.17b Baterías — familias) — Hueco
- `5.19.10` Gestión térmica (5.19 Pilas de combustible) — Hueco
- `5.21b.03` Subestaciones (5.21b Redes — infraestructura) — Hueco
- `5.21b.04` Interruptores (5.21b Redes — infraestructura) — Hueco
- `5.21b.06` Medición (5.21b Redes — infraestructura) — Hueco
- `5.22.06` Trigeneración (5.22 Eficiencia energética) — Hueco
- `5.24.04` Mantenimiento (5.24 Infraestructura energética) — Hueco
- `5.25.07` Generadores (5.25 Evolución tecnológica) — Hueco
- `5.25.08` Electricidad (5.25 Evolución tecnológica) — Hueco
- `5.25.09` Red eléctrica (5.25 Evolución tecnológica) — Hueco
- `5.25.10` Electrónica (5.25 Evolución tecnológica) — Hueco (Bloque 6)
- `5.25.11` Automatización (5.25 Evolución tecnológica) — Hueco (Bloque 6)
- `5.26.18` N4 Almacenamiento mecánico (5.26 Proyectos integradores) — Hueco

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
