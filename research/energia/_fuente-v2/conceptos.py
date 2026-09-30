# Matriz concepto a concepto del Bloque 5.
# Formato de línea: concepto | estado V1 | estado V2 | recursos V2 | evidencia | práctica | acción
# Estados: C=COMPLETA, P=PARCIAL, A=AUSENTE, R=REDUNDANTE, I=RECURSO INADECUADO
# Práctica: E=ejercicios/problemas, S=simulación, L=laboratorio/proyecto, -=ninguna

BLOQUE = [
("5.1.1", "Conceptos fundamentales", """
Energía|C|C|S01,X01,B01|E1|S|Mantener
Trabajo|P|C|X06,Y01|E1|E|Añadido X06 (4.4 Work)
Potencia|C|C|S01,X01|E1|E|Mantener
Calor|C|C|Y01,X06|E1|E|Mantener
Temperatura|C|C|Y01|E1|-|Mantener
Entropía|P|C|Y03,Y02,X05|E1|E|Añadida Yale L24 (faltaba en la V1)
Exergía|P|C|K25,B01,S01|E1|-|NUEVO K25 (IIT Kanpur, L26 Exergy): falta el enlace directo a la clase
Eficiencia|C|C|S01,P03|E1|E|Mantener
Rendimiento|C|C|S01,P03|E1|E|Mantener
Conservación de la energía|C|C|Y01,Z02|E1|S|Añadida simulación
Transformación de energía|C|C|S01,Z02|E1|S|Mantener
Transferencia de energía|P|C|Y01,X06|E1|E|Calor y trabajo como transferencias (1.ª ley)
Densidad energética|P|P|X01,X28|E2|-|Falta una tabla comparativa de referencia; ejercicio propuesto en la ruta
Flujo energético|P|P|X01,S01|E2|-|Diagramas Sankey: sin recurso específico
"""),
("5.1.2", "Formas de energía", """
Cinética|P|C|Z02,S01|E1|S|Añadida simulación PhET
Potencial gravitatoria|P|C|Z02,S01|E1|S|Añadida simulación PhET
Potencial elástica|P|P|S01|E3|-|Sin recurso dedicado (DEPENDENCIA del Bloque 2, mecánica)
Térmica|C|C|Y01,Z02|E1|S|Mantener
Química|P|P|K01,S01|E1|-|El calor de reacción (L12 de IIT Kanpur) no tiene URL localizada
Eléctrica|P|P|S14,M10|E3|-|Cubierta indirectamente en 5.20
Magnética|P|P|M10|E3|-|Energía del campo magnético: 8.02 L20 no localizada
Nuclear|P|C|M06,X04|E1|-|Añadida MIT 22.01 L4 (energía de enlace)
Radiante|P|C|M03,X02|E1|-|Mantener
"""),
("5.2.1", "Recursos primarios", """
Biomasa|C|C|S06|E1|-|Mantener
Madera|P|P|S06,Z06|E1|L|Sin recurso sobre la madera como recurso (poder calorífico, humedad)
Carbón|C|C|S05,S02|E1|-|Mantener
Petróleo|C|C|S03,S02|E1|-|Mantener
Gas natural|A|C|S04,S02|E1|-|NUEVO: Stanford Natural Gas Lecture
Uranio|P|C|X15,X14,S11|E1|-|Añadido el ciclo del combustible (OIEA/WNA)
Agua|C|C|S07|E1|-|Mantener
Viento|C|C|D01,S17|E1|-|Añadido TU Delft 5.2 (recurso eólico)
Radiación solar|C|C|M03,Z03|E1|S|Añadido PVGIS (datos de Tenerife)
Geotermia|C|C|S09|E1|-|Mantener
Mareas|C|P|B08,X19|E3|-|Solo título de clase + ficha introductoria: no se puede demostrar cobertura completa
Oleaje|P|P|B09,X19|E3|-|Solo una clase compartida con el estanque solar + ficha introductoria
"""),
("5.2.2", "Caracterización", """
Densidad energética|P|P|X01|E2|-|Véase 5.1.1
Disponibilidad|C|C|S02|E1|-|Recursos frente a reservas
Renovabilidad|P|P|X01|E2|-|Sin recurso dedicado
Extracción|C|C|S03,S05|E1|-|Mantener
Transporte|C|C|S03,S05|E1|-|Mantener
Almacenamiento|P|P|S12|E3|-|Almacenamiento de combustibles: sin recurso
Coste energético|P|P|S14|E1|-|LCOE sí; EROI/TRE no
Impacto ambiental|C|C|S02,S05,S07|E1|-|Mantener
Fiabilidad|P|P|S15,Z10|E1|S|Añadidos datos REE
Escalabilidad|P|P|X01|E2|-|Sin recurso dedicado
"""),
("5.3.1", "Química de la combustión", """
Combustible|C|C|K01|E1|-|Mantener
Comburente|P|C|K02|E1|E|Aire estequiométrico
Reacción de oxidación|P|P|K01|E1|-|DEPENDENCIA: química (redox)
Estequiometría|C|C|K02,Z04|E1|S|Añadida simulación Cantera
Poder calorífico|P|P|K01|E1|-|L12 «Heat of reaction» sin URL localizada
Combustión completa|P|C|Z04,K01|E1|S|Cantera compara completa e incompleta
Combustión incompleta|P|C|Z04,K01|E1|S|Cantera compara completa e incompleta
Productos de combustión|P|P|Z04|E1|S|Solo simulación; falta teoría
"""),
("5.3.2", "Procesos de combustión", """
Encendido|A|C|K26|E1|-|NUEVO K26 (encendido y energía mínima de ignición)
Llama|P|C|K26,Z06,O04|E1|L|NUEVO K26 (llama premezclada laminar): cubre el nivel intermedio que faltaba
Transferencia de calor|P|P|Z06,P04|E1|L|Aplicación en cocinas
Temperatura de combustión|P|C|K16,Z04,K01|E1|S|NUEVO K16 (teoría) + Z04 (simulación)
Velocidad de combustión|A|C|K26,Z04|E1|S|NUEVO K26 (medición de la velocidad de combustión)
Presión|A|P|K17|E3|-|Combustión en MEP/MEC (semana 6 del curso de IIT Guwahati): sin evidencia específica
Rendimiento|P|P|Z06,K05|E1|L|Rendimiento de cocinas y calderas
"""),
("5.3.3", "Combustibles", """
Madera|P|C|Z06,S06|E1|L|Principios de diseño de cocinas de leña
Carbón|C|C|S05|E1|-|Mantener
Carbón vegetal|A|C|X32|E1|L|NUEVO X32 (FAO)
Alcoholes|A|C|K20,S06|E1|-|NUEVO K20 (metanol y etanol como combustibles de motor)
Gas|P|C|S04|E1|-|NUEVO S04
Gasolina|P|C|K20,S03|E1|-|Índice de octano (K20) + refino (S03)
Diésel|P|C|K20,S03|E1|-|Índice de cetano (K20) + refino (S03)
Hidrógeno|C|C|S13|E1|-|Mantener
Biocombustibles|P|P|S06|E1|-|Visión general
"""),
("5.4.1", "Conducción", """
Gradiente térmico|C|C|P04,X02,X03|E1|E|Mantener
Conductividad|C|C|P04,X02,X03|E1|E|Mantener
Resistencia térmica|C|C|P04,X02|E2|E|Mantener
Conducción estacionaria|C|C|P04,X02|E2|E|Mantener
Conducción transitoria|P|C|X02,P04|E2|E|Lienhard, cap. de conducción transitoria (índice conocido)
"""),
("5.4.2", "Convección", """
Convección natural|P|C|X02,P04|E2|E|Mantener
Convección forzada|P|C|X02,P04|E2|E|Mantener
Flujo|P|P|X03|E1|-|DEPENDENCIA: mecánica de fluidos (DOE vol. 3)
Coeficiente de transferencia|C|C|X02,P04|E2|E|Mantener
"""),
("5.4.3", "Radiación", """
Radiación térmica|C|C|P04,X02|E1|E|Mantener
Emisión|C|C|P04,X02|E1|E|Mantener
Absorción|C|C|P04,X02|E1|E|Mantener
Reflexión|C|C|P04,X02|E1|E|Mantener
Emisividad|C|C|P04,X02|E1|E|Mantener
Cuerpo negro|C|C|P04,X02|E1|E|Mantener
"""),
("5.4.4", "Aplicaciones", """
Aislamiento|P|C|X02,X01|E2|E|Mantener
Intercambiadores de calor|P|C|X02,X03|E2|E|Mantener
Calderas|P|C|K05,K15|E1|-|NUEVO K05 + K15 (pirotubulares)
Hornos|A|P|Z06|E1|L|Solo cocinas y hornos domésticos; los industriales no
Refrigeración|A|C|K22,X31|E1|-|NUEVO K22 (L02 Introduction to Refrigeration; espejo)
Disipadores|P|C|X02|E2|E|Aletas (Lienhard)
"""),
("5.5.1", "Sistemas", """
Sistema abierto|P|C|X06,X05|E1|E|NUEVO X06
Sistema cerrado|P|C|X06|E1|E|NUEVO X06
Sistema aislado|P|C|X06|E1|E|NUEVO X06
Estado|P|C|X06|E1|E|NUEVO X06
Equilibrio|P|C|X06,Y01|E1|E|NUEVO X06
Proceso|P|C|X06|E1|E|NUEVO X06
Ciclo|P|C|X06,Y02|E1|E|NUEVO X06
"""),
("5.5.2", "Variables", """
Presión|C|C|X06|E1|E|Mantener
Volumen|C|C|X06|E1|E|Mantener
Temperatura|C|C|Y01,X06|E1|E|Mantener
Entalpía|P|C|X06,X05,X03|E2|E|NUEVO X06
Entropía|P|C|Y03|E1|E|NUEVO Y03
Energía interna|C|C|Y01,X06|E1|E|Mantener
Energía libre|A|P|M01|E3|-|REVISIÓN MANUAL: la clase MIT 5.60 L13 solo está verificada por el título
"""),
("5.5.3", "Leyes", """
Ley cero|P|C|X06|E2|-|Cap. 1 de Yan
Primera ley|C|C|Y01,X06|E1|E|Mantener
Segunda ley|C|C|Y02,Y03|E1|E|Mantener
Tercera ley|A|P|M01|E3|-|Sin recurso dedicado verificado
"""),
("5.5.4", "Procesos", """
Isotérmico|P|C|X06|E1|E|NUEVO X06
Isobárico|P|C|X06|E1|E|NUEVO X06
Isocórico|P|C|X06|E1|E|NUEVO X06
Adiabático|P|C|X06,Y02|E1|E|NUEVO X06
Politrópico|A|C|X06|E1|E|NUEVO X06 (hueco de la V1)
"""),
("5.6.1", "Máquina térmica", """
Fuente caliente|C|C|Y02,X06|E1|E|Mantener
Fuente fría|C|C|Y02,X06|E1|E|Mantener
Fluido de trabajo|P|C|X06,P03|E1|E|Mantener
Ciclo|C|C|Y02|E1|E|Mantener
Trabajo|C|C|Y02|E1|E|Mantener
Rendimiento|C|C|Y02,P03|E1|E|Mantener
"""),
("5.6.2", "Ciclos fundamentales", """
Carnot|C|C|Y02|E1|E|Mantener
Rankine|C|C|P03,K03,X05|E1|E|Mantener
Brayton|C|C|P02,K07,X05|E1|E|Añadida Roorkee L31
Otto|C|C|P01,X08,X43|E2|E|Mantener
Diesel|C|C|P01,X08,X43|E2|E|Mantener
Stirling|C|C|P02,K03,Z08|E1|L|Añadido el proyecto de Stirling
Ericsson|C|C|P02,K03|E1|E|Mantener
"""),
("5.6.3", "Comparación", """
Rendimiento|C|C|K03|E1|E|Mantener
Potencia específica|A|P|X26|E3|-|Ejercicio propuesto: tabla comparativa
Complejidad|A|P|K03|E3|-|Ejercicio propuesto
Temperatura|P|P|K03|E3|-|Ejercicio propuesto
Presión|P|P|K03|E3|-|Ejercicio propuesto
Combustible|A|P|S14|E3|-|Ejercicio propuesto
Aplicaciones|P|P|K03,X26|E3|-|Ejercicio propuesto
"""),
("5.7.1", "Producción de vapor", """
Agua|P|P|X03|E2|-|Tratamiento del agua de caldera: sin recurso
Caldera|P|C|K05,K15|E1|-|NUEVO K05 + K15
Combustión|P|C|K05|E1|-|Temario de Roorkee: combustión en calderas
Evaporación|P|C|X03,X06|E2|E|Cambio de fase
Sobrecalentamiento|P|C|P03,K05|E1|E|Mantener
Presión|P|C|K05|E1|-|Calderas de alta presión
Vapor saturado|P|C|X03,P03|E2|E|Tablas de vapor
Vapor sobrecalentado|P|C|X03,P03|E2|E|Tablas de vapor
"""),
("5.7.2", "Máquina de vapor", """
Pistón|A|P|X09|E1|-|Texto histórico; audiovisual S/A inexistente → HUECO
Cilindro|A|P|X09|E1|-|Ídem
Válvulas|A|P|X09|E1|-|Ídem
Distribución|A|P|X09|E1|-|Ídem
Condensador|P|P|X09,B02|E3|-|Condensador separado de Watt
Regulador|I|P|X09,O05|E1|-|El vídeo B de la V1 pasa a opcional
Volante de inercia|A|P|X09|E3|-|DEPENDENCIA del Bloque 4 (máquinas)
"""),
("5.7.3", "Evolución", """
Fuego→caldera→vapor→pistón→movimiento→transmisión→máquina|A|C|X09,H02|E1|-|NUEVO X09 (Thurston)
"""),
("5.7.4", "Turbinas de vapor", """
Tobera|A|C|K12,K05|E1|-|Temario de Roorkee: flujo de vapor en toberas
Álabes|P|C|K06|E1|-|NUEVO K06
Rotor|P|P|K06|E3|-|Implícito
Estator|P|P|K06|E3|-|Implícito
Expansión|P|C|K06,K12|E1|-|Mantener
Etapas|A|P|K06|E1|-|Compounding (L22) sin URL
Condensación|P|P|B02,X03|E3|-|Sin recurso específico
"""),
("5.8.1", "Conceptos del MCI", """
Cilindro|P|C|K17,X08,U01|E1|-|NUEVO K17 (L01 engine components)
Pistón|P|C|K17,X08,U01|E1|-|NUEVO K17
Biela|P|C|K17,X08|E1|-|NUEVO K17 · DEPENDENCIA del Bloque 4
Cigüeñal|P|C|K17,X08|E1|-|NUEVO K17
Volante|P|P|K17,X08|E3|-|No consta de forma explícita en el temario
Válvulas|P|C|K17,X08|E1|-|NUEVO K17
Árbol de levas|P|P|K17,X08|E3|-|No consta de forma explícita en el temario
Inyección|P|C|K19,X08|E1|-|NUEVO K19 (tipos de inyectores)
Encendido|P|C|K19,X08|E1|-|NUEVO K19 (encendido por batería y por magneto)
"""),
("5.8.2", "Ciclo Otto", """
Admisión|P|C|P01,X08,X43|E2|E|Mantener
Compresión|C|C|P01,X08,X43|E2|E|Mantener
Combustión|P|C|P01,X08,X43|E2|E|Mantener
Expansión|C|C|P01,X08,X43|E2|E|Mantener
Escape|P|C|P01,X08,X43|E2|E|Mantener
"""),
("5.8.3", "Ciclo Diesel", """
Admisión|P|C|P01,X08|E2|E|Mantener
Compresión|C|C|P01,X08|E2|E|Mantener
Inyección|P|C|K19,X08|E1|-|NUEVO K19
Combustión|P|C|P01,X08|E2|E|Mantener
Expansión|C|C|P01,X08|E2|E|Mantener
Escape|P|C|P01,X08|E2|E|Mantener
"""),
("5.8.4", "Sistemas auxiliares", """
Lubricación|A|P|X08|E1|-|MIT 2.61 L19 (fricción y tribología), solo diapositivas
Refrigeración|A|P|X08|E1|-|Transferencia de calor en el motor (diapositivas)
Alimentación|A|P|K17,X08|E1|-|Carburación (semana 4 de IIT Guwahati) sin enlace directo a la clase
Escape|A|P|X08|E2|-|HUECO
Encendido|A|C|K19|E1|-|NUEVO K19
Inyección|A|C|K19,X08|E1|-|NUEVO K19 (semana 5: sistemas de inyección)
Sobrealimentación|A|P|X08|E1|-|MIT 2.61 L20 (turbocompresión)
"""),
("5.8.5", "Rendimiento del MCI", """
Potencia|P|P|K18,X08|E3|E|NUEVO K18 (características de funcionamiento): contenido sin confirmar
Par|A|P|K18,X08|E3|E|Ídem
Consumo específico|A|P|K18,X08|E3|E|Ídem
Eficiencia térmica|C|C|P01,X08|E2|E|Mantener
Pérdidas|A|P|X08|E1|E|Fricción (L19)
"""),
("5.9.1", "Turbinas de vapor", """
Impulso|P|C|K06|E1|-|NUEVO K06
Reacción|A|C|K13|E1|-|NUEVO K13 (L26 Impulse Reaction Steam Turbine)
Etapas|A|P|K06|E1|-|L22 (compounding) sin URL
Álabes|P|C|K06,K13|E1|-|K06 + K13 (álabes de acción y de reacción)
"""),
("5.9.2", "Turbinas de gas", """
Compresor|P|C|K14,K07,X05|E1|-|NUEVO K14 (compresores centrífugos)
Cámara de combustión|A|P|K07|E1|-|Ídem
Turbina|P|C|K07,X05,X26|E1|E|NUEVO K07
Escape|P|P|K07|E3|-|Implícito en el ciclo
"""),
("5.9.3", "Turbinas hidráulicas", """
Pelton|P|C|K08,Z07|E1|L|Mantener K08 + proyecto
Francis|I|C|K24,K09|E1|-|NUEVO K24 (IIT Madras: Francis, partes 1 y 2); enlace al curso
Kaplan|I|C|K24,K09|E1|-|NUEVO K24 (IIT Madras: Kaplan); enlace al curso
"""),
("5.9.4", "Turbinas eólicas", """
Rotor|P|C|D01|E1|-|NUEVO D01
Palas|P|C|D01|E1|-|NUEVO D01
Generador|P|C|D01,Z09|E1|L|NUEVO D01 + proyecto
Multiplicadora|A|P|D01|E3|-|Sin evidencia específica
Control de paso|A|P|D01|E3|-|Curva de potencia (implícito)
"""),
("5.10.1", "Recursos hidráulicos", """
Ríos|C|C|S07|E1|-|Mantener
Saltos de agua|C|C|S07,Z07|E1|L|Mantener
Embalses|C|C|S07|E1|-|Mantener
Presas|C|C|S07|E1|-|Mantener
Caudal|P|C|S07,Z07|E1|L|P = ρ·g·Q·H (proyecto de microhidráulica)
Altura|P|C|S07,Z07|E1|L|Ídem
"""),
("5.10.2", "Conversión", """
Energía potencial→cinética→turbina→generador→electricidad|C|C|S07,B03,B04|E1|-|Mantener
"""),
("5.10.3", "Infraestructura", """
Presa|C|C|S07|E1|-|Mantener
Aliviadero|A|C|X33|E1|-|NUEVO X33 (USBR Design of Small Dams)
Tubería forzada|A|C|Z07|E2|L|NUEVO Z07
Turbina|P|C|S07,K08|E1|-|Mantener
Generador|P|P|S07,K11|E3|-|Véase 5.20
Transformador|A|P|X12,Z01|E2|S|Véase 5.21
"""),
("5.10.4", "Tipos", """
Hidroeléctrica convencional|C|C|S07|E1|-|Mantener
Bombeo reversible|P|C|O01,X25,X28|E1|-|NUEVO X25 (El Hierro)
Microhidráulica|A|C|Z07|E1|L|NUEVO Z07
"""),
("5.11.1", "Solar térmica", """
Radiación|C|C|M03,Z03,S08|E1|S|Mantener (S08 como introducción)
Colectores|P|C|B06,X21|E1|-|NUEVO X21
Absorción|P|C|X21,B06|E2|-|NUEVO X21
Circulación|A|C|X21|E2|-|Termosifón y circulación forzada (IDAE)
Almacenamiento térmico|P|C|X21,X13|E2|-|NUEVO X21/X13
Agua caliente|A|C|X21|E1|-|NUEVO X21 (ACS)
Concentración solar|P|C|X13|E1|-|NUEVO X13 (lección 7 CSP)
"""),
("5.11.2", "Solar fotovoltaica", """
Fotones|C|C|M03,X07|E1|-|Mantener
Semiconductores|C|C|M05,X07,X41|E1|E|Añadida L7
Célula solar|C|C|M05,X07,X41|E1|E|Mantener
Módulo|C|C|M04,X07,X41|E1|E|Mantener
Panel|C|C|M04,X07,X41|E1|E|Mantener
Inversor|A|C|X13|E1|-|Acondicionamiento de potencia (EME 812)
"""),
("5.11.3", "Sistemas solares", """
Instalación aislada|P|C|Z03,D02|E1|S|NUEVO Z03 (PVGIS aislada)
Instalación conectada a red|P|C|X20,Z03|E1|S|Mantener X20
Baterías|P|C|Z03,X11|E1|S|NUEVO
Reguladores|A|P|D02|E3|-|Sin evidencia específica
Seguimiento solar|A|C|X13|E1|-|NUEVO X13
"""),
("5.12", "Energía eólica", """
Viento|C|C|D01|E1|-|NUEVO D01
Velocidad|P|C|D01|E1|-|Curva de potencia
Potencia disponible|P|C|D01|E1|E|Producción anual
Rotor|P|C|D01|E1|-|NUEVO D01
Palas|P|C|D01|E1|-|NUEVO D01
Aerodinámica|P|C|D01,S17|E1|-|D01 5.3
Generador|P|C|D01,Z09,B07|E1|L|NUEVO
Multiplicadora|A|P|D01|E3|-|Sin evidencia específica
Control de orientación|A|P|Z09|E2|L|Orientación por cola en aerogeneradores pequeños
Control de paso|A|P|D01|E3|-|Sin evidencia específica
Parque eólico|A|C|D01|E1|-|Efecto estela y producción de parques
Eólica marina|A|C|D01|E1|-|Transmisión offshore
"""),
("5.13", "Energía geotérmica", """
Gradiente geotérmico|C|C|S09,B10|E1|-|Mantener
Calor interno terrestre|C|C|S09|E1|-|Mantener
Reservorios|C|C|S09|E1|-|Mantener
Vapor|C|C|S09,B10|E1|-|Mantener
Agua caliente|C|C|S09|E1|-|Mantener
Bombas de calor geotérmicas|P|P|S09|E3|-|Sin recurso específico
Generación eléctrica|C|C|S09,B10|E1|-|Mantener
Uso directo|P|P|S09|E3|-|Sin recurso específico
"""),
("5.14", "Energía marina", """
Mareas|C|P|B08,X19|E3|-|Solo título de clase + ficha introductoria: no se puede demostrar cobertura completa
Corrientes|A|P|X19|E1|-|Solo ficha introductoria
Oleaje|P|P|B09,X19|E3|-|Mantener
Diferencias de nivel|P|P|B08|E3|-|Carrera de marea (solo título)
Turbinas submarinas|A|P|X19|E1|-|Solo ficha introductoria
Convertidores de oleaje|P|P|B09,X19|E3|-|Mantener
"""),
("5.15.1", "Fundamentos nucleares", """
Núcleo atómico|P|C|M06,X04,X42|E1|E|NUEVO M06
Isótopos|P|C|M06,X04,X42|E1|E|NUEVO M06
Defecto de masa|P|C|M06,X42|E1|E|NUEVO M06
Energía de enlace|P|C|M06,X42|E1|E|NUEVO M06
Radiactividad|P|C|M07,X04,X23,X42|E1|E|NUEVO M07
Decaimiento|P|C|M07,X04,X42|E1|E|NUEVO M07
"""),
("5.15.2", "Fisión", """
Neutrón|P|C|X04,M08|E1|-|Mantener
Uranio|C|C|S11,X15|E1|-|Mantener
Plutonio|P|C|M08|E1|-|Reproducción de combustible
Reacción en cadena|C|C|S11,M08|E1|-|Mantener
Masa crítica|P|C|X04|E2|-|Criticidad (DOE)
Moderador|C|C|M08|E1|-|Mantener
Control de reactividad|C|C|M08,X04|E1|-|Mantener
"""),
("5.15.3", "Reactor", """
Combustible|C|C|S11,M08|E1|-|Mantener
Moderador|C|C|M08|E1|-|Mantener
Refrigerante|P|C|S11|E1|-|Mantener
Barras de control|P|C|X04|E1|-|Mantener
Recipiente|P|P|S11|E3|-|Sin recurso específico
Generador de vapor|P|P|S11,B05|E3|-|Sin recurso específico
Turbina|C|C|K06|E1|-|Véase 5.7.4
Contención|P|P|S11|E1|-|Solo en el marco de la seguridad
"""),
("5.15.4", "Ciclo del combustible", """
Extracción|A|C|X15,X14|E1|-|NUEVO (solo texto)
Concentración|A|C|X15,X14|E1|-|NUEVO (solo texto)
Conversión|A|C|X15,X14|E1|-|NUEVO (solo texto)
Enriquecimiento|A|C|X15,X14|E1|-|NUEVO (solo texto)
Fabricación|A|C|X15,X14|E1|-|NUEVO (solo texto)
Reactor|C|C|M08|E1|-|Mantener
Combustible gastado|A|C|X15,X14|E1|-|NUEVO (solo texto)
Gestión de residuos|A|C|X15|E1|-|NUEVO (solo texto)
"""),
("5.15.5", "Fusión", """
Plasma|P|P|X16,M11|E1|-|Nivel introductorio
Deuterio|P|C|X16|E1|-|NUEVO X16
Tritio|P|C|X16|E1|-|NUEVO X16 (producción a partir de litio)
Confinamiento magnético|P|C|X16,M08,M11|E1|-|Mantener
Confinamiento inercial|A|C|X30|E1|-|NUEVO X30 (hueco de la V1)
Fusión termonuclear|P|C|X16,M08|E1|-|Mantener
"""),
("5.16.1", "Almacenamiento mecánico", """
Volantes de inercia|P|C|X28|E1|-|NUEVO X28
Bombeo hidráulico|P|C|X28,X25,O01|E1|-|NUEVO X25/X28
Aire comprimido|P|C|X28|E1|-|NUEVO X28
"""),
("5.16.2", "Almacenamiento térmico", """
Agua caliente|P|C|X21|E2|-|NUEVO X21
Sales fundidas|A|P|X13|E3|-|Lección 10 de EME 812 (solar + almacenamiento): contenido sin confirmar
Materiales de cambio de fase|A|P|X27|E1|-|Almacenamiento latente (semana 11), sin URL de clase
"""),
("5.16.3", "Electroquímico", """
Baterías|C|C|S12,M09|E1|-|Mantener
Plomo-ácido|P|C|X28,X29|E1|-|NUEVO
Níquel|A|P|X29|E1|-|Solo fuente B
Litio|P|C|M09,X10,X29|E1|-|NUEVO X10
Baterías de flujo|A|C|X28|E1|-|NUEVO X28
"""),
("5.16.4", "Químico", """
Hidrógeno|C|C|S13|E1|-|Mantener
Combustibles sintéticos|A|C|X35|E1|-|NUEVO X35 (IEA e-fuels)
"""),
("5.16.5", "Eléctrico", """
Condensadores|A|P|X10|E3|-|DEPENDENCIA: electricidad (Bloque 6)
Supercondensadores|A|P|X10|E1|-|Solo texto de posgrado
"""),
("5.17a", "Baterías — conceptos", """
Celda|P|C|M09,X11|E1|-|Mantener
Ánodo|P|C|M09,X10|E1|-|Mantener
Cátodo|P|C|M09,X10|E1|-|Mantener
Electrolito|P|C|M09,X10|E1|-|Mantener
Separador|A|P|X10|E3|-|Sin evidencia específica
Reacción redox|P|C|M09,X10|E1|-|Mantener
Voltaje|P|C|X10,X11|E1|E|Termodinámica de la celda
Capacidad|P|C|X11|E1|E|NUEVO X11
Energía|P|C|X11|E2|E|NUEVO X11
Potencia|P|C|X11|E1|E|NUEVO X11
Densidad energética|P|C|X29,X11|E1|-|NUEVO
Ciclos|A|P|X11|E2|-|Sin evidencia específica
Degradación|A|C|X11|E1|-|Estado de salud (SOH)
Estado de carga|A|C|X11|E1|E|NUEVO X11
Gestión térmica|A|C|X44,X11|E1|-|NUEVO X44 (modelado térmico de celdas, Plett)
BMS|A|C|X11|E1|E|NUEVO X11
"""),
("5.17b", "Baterías — familias", """
Plomo-ácido|A|C|X29,X28|E1|-|NUEVO
NiCd|A|P|X29|E1|-|Solo fuente B
NiMH|A|P|X29|E1|-|Solo fuente B
Li-ion|P|C|M09,X10,X29|E1|-|Mantener
LiFePO₄|A|P|X29|E1|-|Solo fuente B
Estado sólido|A|P|X38|E3|-|NUEVO X38: solo título verificado
Flujo|A|C|X28|E1|-|NUEVO X28
"""),
("5.18a", "Hidrógeno — producción", """
Reformado|P|C|X17,S13|E1|-|NUEVO X17
Gasificación|A|C|X17|E1|-|NUEVO X17
Electrólisis|P|C|X17,S13|E1|-|Mantener
Electrólisis alcalina|A|P|X17|E3|-|Informe Hydrogen Shot (sin confirmar)
PEM|A|P|X17|E3|-|Ídem
Electrólisis de alta temperatura|A|P|X17|E1|-|Mencionada; sin desarrollo
"""),
("5.18b", "Hidrógeno — almacenamiento", """
Gas comprimido|P|C|S13|E1|-|«Cómo movemos el hidrógeno»
Líquido|P|C|S13,X17|E1|-|Licuefacción
Hidruros|A|P|X17|E1|-|Almacenamiento basado en materiales (mencionado)
Portadores químicos|A|P|S13|E3|-|Sin evidencia específica
"""),
("5.18c", "Hidrógeno — uso", """
Combustión|A|P|S13|E3|-|Sin evidencia específica
Pilas de combustible|C|C|K10,S13|E1|-|Mantener
Industria química|P|C|S13|E1|-|Mantener
Transporte|P|C|S13|E1|-|Mantener
Almacenamiento energético|P|C|S13|E1|-|Mantener
"""),
("5.19", "Pilas de combustible", """
Ánodo|P|C|K10,X10|E1|-|Mantener
Cátodo|P|C|K10,X10|E1|-|Mantener
Electrolito|P|C|K10,X10|E1|-|Mantener
Hidrógeno|C|C|K10|E1|-|Mantener
Oxígeno|C|C|K10|E1|-|Mantener
Reacción electroquímica|P|C|K10,X10|E1|-|Mantener
PEMFC|A|C|X39,K10|E1|-|NUEVO X39 (cuadro comparativo del DOE)
SOFC|A|C|X39,K10|E1|-|NUEVO X39
Eficiencia|P|C|X10|E1|-|Termodinámica de la celda
Gestión térmica|A|P|X40|E2|-|NUEVO X40 (manual de pilas del NETL)
"""),
("5.20a", "Generación — conversión", """
Energía primaria→mecánica→generador→electricidad|C|C|S14,S07|E1|-|Mantener
Energía solar→electricidad (directa)|C|C|M02,X07|E1|-|Mantener
"""),
("5.20b", "Generadores", """
Inducción electromagnética|C|C|M10,Z01|E1|S|Añadida simulación
Rotor|A|C|K11,X12|E1|E|NUEVO
Estator|A|C|K11,X12|E1|E|NUEVO
Campo magnético|C|C|M10,Z01|E1|S|Mantener
Alternador|P|C|Z01,K11|E1|S|NUEVO
Generador síncrono|A|C|X12,K11|E1|E|NUEVO X12 (cap. 9)
Generador asíncrono|A|C|X12|E1|E|Máquinas de inducción (solo texto)
"""),
("5.21a", "Redes — componentes", """
Generación|C|C|S15,S14,X24|E1|-|Mantener (X24: caso canario)
Transformación|P|C|X12,Z01|E1|E|NUEVO
Transmisión|C|C|S15,X12|E1|E|Mantener
Distribución|P|C|S15|E1|-|Mantener
Carga|P|C|S15,Z10|E1|S|NUEVO Z10
"""),
("5.21b", "Redes — infraestructura", """
Líneas|P|C|X12|E1|E|Hoja de problemas 5 (líneas de transmisión)
Transformadores|P|C|X12,Z01|E2|E|NUEVO
Subestaciones|A|P|K21|E3|-|NUEVO K21 (contexto de protecciones)
Interruptores|A|C|K21|E1|-|NUEVO K21 (aparamenta)
Protecciones|A|C|K21,X22|E1|-|NUEVO K21 (relés de protección)
Medición|A|C|K27|E1|-|NUEVO K27 (contador de energía)
"""),
("5.21c", "Redes — conceptos", """
Demanda|P|C|S15,Z10|E1|S|NUEVO Z10
Oferta|P|C|Z10|E1|S|Mix de producción en tiempo real
Potencia pico|A|C|Z10|E1|S|Máximos y mínimos diarios
Factor de carga|A|P|Z10|E1|E|Calculable con datos reales; sin teoría
Estabilidad|P|P|S15|E1|-|Solo fiabilidad
Pérdidas|A|P|X12|E3|-|Sin evidencia específica
Frecuencia|A|P|X12|E3|-|Sin evidencia específica
Tensión|A|P|X12|E3|-|Sin evidencia específica
"""),
("5.22", "Eficiencia energética", """
Rendimiento|C|C|S16|E1|-|Mantener
Pérdidas|P|P|S16,X01|E2|-|Mantener
Aislamiento|P|C|X02,X01|E2|E|Mantener
Recuperación de calor|A|P|X27|E1|-|Curso NPTEL sin URL de clase
Cogeneración|A|C|K28,X36|E1|-|NUEVO K28 (L04) + X36 (DOE)
Trigeneración|A|P|X36|E3|-|Sin evidencia específica en X36
Recuperación energética|A|P|X27|E1|-|Ídem
Optimización|P|C|S16|E1|-|Diseño integrador
Gestión de demanda|A|P|S16,Z10|E3|-|Sin recurso dedicado
"""),
("5.23", "Seguridad energética", """
Incendios|C|C|H01|E1|-|Mantener
Explosiones|C|C|H01|E1|-|Mantener
Alta temperatura|A|P|H01|E3|-|Sin recurso específico
Alta presión|A|P|H01,K05|E3|-|Calderas: sin guía de seguridad
Electricidad|A|C|X22|E1|-|NUEVO X22 (INSST)
Radiación|A|C|X23,X04|E1|-|NUEVO X23 (CSN)
Combustibles|P|C|X18,H01|E1|-|NUEVO X18 (H₂)
Almacenamiento|A|C|X37,X18|E1|-|NUEVO X37 (UL FSRI: fuga térmica de baterías de litio)
Ventilación|A|C|X18|E1|-|NUEVO X18
Contención|A|P|X18|E1|-|Mantener
Protección|A|P|X22|E1|-|Mantener
Procedimientos de emergencia|A|C|X18|E1|-|NUEVO X18
"""),
("5.24", "Infraestructura energética", """
Cadena recurso→extracción→…→consumo|C|C|S01,S14,S15,X01|E1|-|Mantener
Medición|A|C|K27,Z10|E1|S|NUEVO K27
Control|A|P|S15|E3|-|Bloque 6
Mantenimiento|A|P|X34,X33|E1|-|NUEVO X34 (solo FV y almacenamiento) + X33 (presas)
Seguridad|A|C|X22,X18,H01|E1|-|Véase 5.23
Optimización|P|P|S16|E1|-|Mantener
"""),
("5.25", "Evolución tecnológica", """
Fuego|A|P|H02|E3|-|Smil: nivel de charla
Biomasa|I|P|H02,S06|E1|-|Sustituido el vídeo no verificado
Carbón|I|P|H02,S05|E1|-|Ídem
Máquina de vapor|A|C|X09|E1|-|NUEVO X09
Máquinas industriales|A|P|X09|E1|-|Mantener
Motores|A|P|X09|E3|-|Sin recurso dedicado
Generadores|A|A|—|—|-|Hueco
Electricidad|A|A|—|—|-|Hueco
Red eléctrica|A|A|—|—|-|Hueco
Electrónica|A|A|—|—|-|Hueco (Bloque 6)
Automatización|A|A|—|—|-|Hueco (Bloque 6)
Energía nuclear / renovables|P|P|S11,H02|E1|-|Mantener
Sistemas energéticos complejos|P|P|H02,X01|E3|-|Mantener
"""),
("5.26", "Proyectos integradores", """
N1 Horno básico|A|P|Z06,X32|E1|L|Z06 (cocinas) + X32 (hornos de carbonización); falta un horno de mampostería
N1 Cocina eficiente|A|C|Z06|E1|L|NUEVO Z06
N1 Quemador|A|P|Z06,Z04|E1|L|Sin guía de quemador de gas: ESCALA SEGURA
N1 Colector solar térmico|A|P|X21,B06|E1|L|Diseño sí; guía de construcción no
N1 Molino de viento sencillo|A|C|Z09,D01|E1|L|NUEVO Z09
N1 Rueda hidráulica|A|P|Z07|E1|L|Microhidráulica; la rueda no es específica
N2 Motor Stirling sencillo|A|C|Z08,P02|E1|L|NUEVO Z08
N2 Máquina de vapor experimental|A|P|X09|E1|L|RIESGO: presión. Solo con caldera certificada o modelo comercial
N2 Turbina sencilla|A|P|Z07,K08|E1|L|Pelton didáctica
N2 Sistema de transferencia de calor|A|P|X02,P04|E2|E|Ejercicios de Lienhard; falta guía de montaje
N3 Generador electromagnético|A|C|Z01,Z09|E1|L|NUEVO
N3 Microturbina|A|P|Z07|E1|L|Mantener
N3 Microhidráulica|A|C|Z07|E1|L|NUEVO Z07
N3 Sistema solar fotovoltaico|P|C|Z03,X20,X07|E1|L|NUEVO Z03
N3 Sistema eólico|A|C|Z09,D01|E1|L|NUEVO Z09
N4 Batería|A|P|X11,M09,X37|E1|-|Sin guía de laboratorio segura; X37 para riesgos
N4 Sistema de almacenamiento térmico|A|P|X21|E2|-|Sin guía
N4 Almacenamiento mecánico|A|A|—|—|-|Hueco
N4 Sistema solar + batería|A|C|Z03,X11,X20|E1|L|NUEVO
N5 Sistema energético completo|P|P|Z05,Z03,Z10,X01|E1|L|Sin guía de diseño integrada
"""),
]

# Dependencias necesarias (NO se cuentan como conceptos del bloque)
DEPENDENCIAS = [
("DN-01", "Cálculo diferencial e integral básico", "5.4, 5.5, 5.6", "— (bloque de Matemáticas)", "Requisito previo"),
("DN-02", "Mecánica: trabajo, energía, potencia (Bloque 2)", "5.1", "Z02; Yale PHYS 200 (clases 5–6, sin URL localizada)", "PARCIAL"),
("DN-03", "Mecánica de fluidos: caudal, Bernoulli, pérdidas de carga", "5.4.2, 5.9, 5.10", "X03 (vol. 3)", "PARCIAL"),
("DN-04", "Química: redox, entalpía de reacción", "5.3, 5.17, 5.19", "M09; K01", "PARCIAL"),
("DN-05", "Electromagnetismo: flujo magnético, ley de Faraday", "5.20", "M10, Z01", "COMPLETA"),
("DN-06", "Circuitos de corriente alterna: fasores, potencia activa y reactiva, trifásica", "5.20, 5.21", "X12 (primeros capítulos)", "PARCIAL"),
("DN-07", "Física de semiconductores: unión p-n", "5.11.2", "M05, X07", "COMPLETA"),
("DN-08", "Física atómica básica", "5.15", "M06, X04", "COMPLETA"),
("DN-09", "Mecanismos: biela-manivela, levas, volantes (Bloque 4)", "5.7.2, 5.8.1", "— (Bloque 4)", "Requisito previo"),
]
