# Relación de la Tarea 1 (2026) con los Contenidos de 01_analisis_vectorial

Este documento detalla cómo cada ejercicio de la Tarea 1 (2026) se relaciona con los contenidos de la unidad de Análisis Vectorial, proporcionando conexiones específicas entre los conceptos teóricos y las aplicaciones prácticas presentadas en los ejercicios.

## Visión General

La Tarea 1 (2026) está diseñada para evaluar la comprensión de los conceptos fundamentales de análisis vectorial a través de aplicaciones prácticas en ingeniería. Los tres ejercicios cubren de manera integral los contenidos de las tres semanas de la unidad:

- **Ejercicio 1**: Sistema de mezclado de fluidos (Operaciones vectoriales fundamentales)
- **Ejercicio 2**: Transformador eléctrico con núcleo toroidal (Coordenadas curvilíneas y teoremas integrales)
- **Ejercicio 3**: Sistema de refrigeración (Operador nabla y teorema de la divergencia)

## Ejercicio 1: Sistema de Mezclado de Fluidos

### Contenidos de la unidad relacionados

#### Semana 1: Operaciones vectoriales fundamentales

**Producto vectorial y torque** (líneas 144-193 en semana01_lectura.md)
- El ejercicio aplica directamente el concepto de producto vectorial en el cálculo del torque (momento de fuerza)
- La fórmula $\vec{\tau} = \vec{r} \times \vec{F}$ (línea 188) se utiliza para calcular el torque ejercido sobre el impulsor
- El concepto de "brazo de palanca" (línea 192) se aplica en el cálculo de la potencia mecánica

**Producto triple vectorial** (líneas 259-293 en semana01_lectura.md)
- La fuerza de arrastre $\vec{F}_{\text{arrastre}} = \vec{v}\times(\vec{\omega}\times\vec{v})$ es una aplicación directa del producto triple vectorial
- Se utiliza la identidad de Lagrange (bac-cab) mencionada en la línea 268: $\vec{A}\times(\vec{B}\times\vec{C})=(\vec{A}\cdot\vec{C})\vec{B}-(\vec{A}\cdot\vec{B})\vec{C}$
- Esta operación aparece en la dinámica rotacional como se menciona en la línea 275-279

**Producto triple escalar** (líneas 197-256 en semana01_lectura.md)
- El cálculo del volumen del impulsor utiliza el producto triple escalar $V = \vec{a} \cdot (\vec{b} \times \vec{c})$
- Se interpreta geométricamente como el volumen del paralelepípedo (líneas 199-211)
- Esta aplicación se conecta con el concepto de Jacobiano mencionado en las líneas 213-245

**Diferenciación de vectores** (líneas 296-328 en semana01_lectura.md)
- Aunque no se calculan derivadas explícitamente, el concepto de variación temporal de vectores es fundamental
- La velocidad angular $\vec{\omega}$ y su relación con la velocidad lineal reflejan las reglas de diferenciación vectorial
- El cálculo del caudal volumétrico requiere comprender cómo cambian los volúmenes con el tiempo

### Aplicaciones prácticas en ingeniería

El ejercicio contextualiza los conceptos teóricos en una aplicación real de ingeniería química y mecánica:
- **Diseño de sistemas de mezclado**: El análisis de fuerzas y torques es esencial para diseñar impulsores eficientes
- **Selección de motores**: El cálculo de potencia mecánica es fundamental para dimensionar el motor apropiado
- **Optimización de procesos**: El cálculo del volumen desplazado ayuda a optimizar la eficiencia del mezclado

### Habilidades evaluadas

1. Cálculo de productos vectoriales en un contexto tridimensional real
2. Interpretación física de los resultados vectoriales
3. Aplicación de identidades vectoriales para simplificar cálculos
4. Comprensión de la relación entre operaciones vectoriales y magnitudes físicas medibles

## Ejercicio 2: Transformador Eléctrico con Núcleo Toroidal

### Contenidos de la unidad relacionados

#### Semana 2: Operador nabla y coordenadas curvilíneas

**Coordenadas curvilíneas** (líneas 218-346 en semana02_lectura.md)
- El cálculo de factores de escala $h_\rho$, $h_\phi$, $h_z$ se basa directamente en la definición de factores de escala (líneas 228-242)
- La relación $h_i = \left|\frac{\partial \vec{r}}{\partial u_i}\right|$ (línea 240) se aplica para coordenadas cilíndricas
- Los resultados $h_\rho=1, \quad h_\phi=\rho, \quad h_z=1$ coinciden con los presentados en la línea 328

**Operador nabla en coordenadas cilíndricas** (líneas 278-346 en semana02_lectura.md)
- Aunque no se calcula directamente el nabla, el sistema de coordenadas cilíndricas es el apropiado para problemas con simetría axial
- El campo magnético $\vec{B}(\rho)=\frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi}$ es un ejemplo de campo con simetría cilíndrica
- Este campo es similar al presentado en el ejemplo de la línea 356 del conductor recto

**Rotacional del campo magnético** (líneas 143-166 en semana02_lectura.md)
- El cálculo del rotacional $\nabla \times \vec{B}$ aplica la definición del rotacional en coordenadas cilíndricas
- El resultado $\nabla \times \vec{B} = \vec{0}$ (fuera de las bobinas) refleja que el campo magnético es irrotacional en esa región
- Esto conecta con el concepto de campo irrotacional mencionado en la línea 157

#### Semana 3: Teoremas integrales

**Teorema de Stokes** (líneas 306-357 en semana03_lectura.md)
- La verificación de la ley de Ampère utiliza directamente el teorema de Stokes
- La relación $\oint_C \vec{B} \cdot d\vec{l} = \iint_S (\nabla \times \vec{B}) \cdot d\vec{S}$ (línea 315) se aplica para conectar la formulación integral con la diferencial
- El ejemplo de la ley de Ampère (líneas 329-348) es directamente aplicable al ejercicio

**Ley de Ampère** (líneas 116-139 en semana03_lectura.md)
- La aplicación de la ley de Ampère en forma integral $\oint_C \vec{B}\cdot d\vec{l}=\mu_0 I_{\text{enc}}$ (línea 124) se verifica para el sistema toroidal
- La transición entre la forma integral y diferencial de la ley (líneas 329-347) se demuestra explícitamente

**Ley de Faraday** (implícita en el ejercicio)
- Aunque no se presenta explícitamente en el contenido, el cálculo de la fem inducida aplica la ley de Faraday
- Esta ley es complementaria a las ecuaciones de Maxwell presentadas en la línea 160 de semana02_lectura.md

### Aplicaciones prácticas en ingeniería

El ejercicio contextualiza los conceptos teóricos en una aplicación real de ingeniería eléctrica:
- **Diseño de transformadores**: El análisis del flujo magnético es fundamental para el diseño eficiente de transformadores
- **Selección de materiales**: El cálculo de la fem inducida ayuda a seleccionar materiales magnéticos apropiados
- **Optimización energética**: La comprensión de los campos magnéticos permite optimizar la eficiencia energética

### Habilidades evaluadas

1. Aplicación de sistemas de coordenadas curvilíneas a problemas con simetría
2. Cálculo de factores de escala y su interpretación física
3. Uso del teorema de Stokes para conectar formulaciones integrales y diferenciales
4. Aplicación de leyes fundamentales del electromagnetismo en contextos prácticos
5. Cálculo de cantidades físicas derivadas (flujo, fem inducida) a partir de campos vectoriales

## Ejercicio 3: Sistema de Refrigeración

### Contenidos de la unidad relacionados

#### Semana 2: Operador nabla

**Gradiente** (líneas 72-110 en semana02_lectura.md)
- El cálculo del gradiente de temperatura $\nabla T$ aplica directamente la definición de gradiente en coordenadas cilíndricas
- La interpretación física del gradiente como "dirección de máximo crecimiento" (línea 74) se aplica al campo de temperatura
- La conexión entre gradiente y campos de fuerza (línea 108-110) se refleja en la relación entre gradiente de temperatura y flujo de calor

**Divergencia** (líneas 112-132 en semana02_lectura.md)
- El cálculo de la divergencia del flujo de calor $\nabla \cdot \vec{q}$ aplica la definición de divergencia en coordenadas cilíndricas
- La interpretación física de la divergencia como "medida de cuánto un campo converge o diverge" (línea 113) se aplica al flujo de calor
- El concepto de campo solenoidal (línea 116-118) se relaciona con el flujo neto de calor

**Laplaciano** (líneas 168-212 en semana02_lectura.md)
- El cálculo del laplaciano de temperatura $\nabla^2 T$ aplica la definición del laplaciano en coordenadas cilíndricas
- La conexión del laplaciano con ecuaciones fundamentales (líneas 182-192) se aplica a la ecuación de Poisson del calor
- La interpretación del laplaciano como "qué tan lejos se encuentra una cantidad del promedio de sus vecinos" (línea 169) es relevante para la distribución de temperatura

#### Semana 3: Teoremas integrales

**Teorema de la divergencia** (líneas 359-412 en semana03_lectura.md)
- El cálculo del flujo de calor total aplica directamente el teorema de la divergencia
- La relación $\iiint_V \nabla \cdot \vec{q} \, dV = \oiint_S \vec{q} \cdot d\vec{S}$ (línea 366) se utiliza para conectar el flujo neto con la divergencia
- La interpretación física de la divergencia como "flujo neto por unidad de volumen" (línea 376) se aplica al flujo de calor

**Ecuación de Poisson** (implícita en el ejercicio)
- Aunque no se presenta explícitamente en el contenido, la ecuación $\nabla\cdot(k\nabla T) + q_{\text{gen}} = 0$ es una forma de la ecuación de Poisson
- Esta ecuación se relaciona con las ecuaciones fundamentales presentadas en las líneas 182-192 de semana02_lectura.md

### Aplicaciones prácticas en ingeniería

El ejercicio contextualiza los conceptos teóricos en una aplicación real de ingeniería térmica:
- **Diseño de sistemas de refrigeración**: El análisis del gradiente de temperatura es fundamental para el diseño eficiente de disipadores de calor
- **Gestión térmica**: La comprensión del flujo de calor permite optimizar la gestión térmica de equipos electrónicos
- **Eficiencia energética**: El cálculo de la generación interna de calor ayuda a optimizar la eficiencia energética

### Habilidades evaluadas

1. Cálculo del gradiente en sistemas de coordenadas curvilíneas
2. Interpretación física del gradiente en contextos de transferencia de calor
3. Aplicación del teorema de la divergencia para conectar formulaciones integrales y diferenciales
4. Cálculo del laplaciano y su interpretación física
5. Resolución de problemas de transferencia de calor usando herramientas de análisis vectorial

## Integración de Conceptos entre Ejercicios

### Conexiones transversales

**Sistemas de coordenadas**
- Los tres ejercicios aplican diferentes sistemas de coordenadas según la simetría del problema:
  - Ejercicio 1: Coordenadas cartesianas (sistema de mezclado con geometría rectangular)
  - Ejercicio 2: Coordenadas cilíndricas (simetría axial del transformador)
  - Ejercicio 3: Coordenadas cilíndricas (geometría cilíndrica del disipador)

**Teoremas integrales**
- Los Ejercicios 2 y 3 aplican teoremas integrales de manera complementaria:
  - Ejercicio 2: Teorema de Stokes (relaciona circulación con rotacional)
  - Ejercicio 3: Teorema de la divergencia (relaciona flujo con divergencia)

**Aplicaciones del operador nabla**
- Los Ejercicios 2 y 3 aplican diferentes componentes del operador nabla:
  - Ejercicio 2: Rotacional (análisis de campos magnéticos)
  - Ejercicio 3: Gradiente y divergencia (análisis de campos de temperatura)

### Progresión en dificultad

**Ejercicio 1** se centra en operaciones algebraicas con vectores:
- Aplicación directa de productos vectoriales y triples
- Interpretación física de resultados algebraicos
- Conexión con magnitudes físicas medibles

**Ejercicio 2** introduce el análisis de campos:
- Aplicación de sistemas de coordenadas curvilíneas
- Análisis de campos vectoriales con simetría
- Uso de teoremas integrales para conectar formulaciones

**Ejercicio 3** integra conceptos más avanzados:
- Aplicación completa del operador nabla
- Conexión entre gradientes, divergencias y laplacianos
- Resolución de problemas de transferencia de calor usando múltiples herramientas

## Evaluación de Competencias

### Competencias matemáticas

1. **Manipulación algebraica de vectores**: Evaluada principalmente en el Ejercicio 1
2. **Cálculo en sistemas de coordenadas curvilíneas**: Evaluada en los Ejercicios 2 y 3
3. **Aplicación de teoremas integrales**: Evaluada en los Ejercicios 2 y 3
4. **Resolución de ecuaciones diferenciales**: Implícita en el Ejercicio 3

### Competencias físicas

1. **Interpretación física de operaciones matemáticas**: Evaluada en los tres ejercicios
2. **Aplicación de leyes fundamentales de la física**: Evaluada en los Ejercicios 2 y 3
3. **Modelado de fenómenos físicos usando herramientas vectoriales**: Evaluada en los tres ejercicios
4. **Conexión entre formulaciones matemáticas y magnitudes físicas**: Evaluada en los tres ejercicios

### Competencias de ingeniería

1. **Selección del sistema de coordenadas apropiado**: Evaluada en los tres ejercicios
2. **Aplicación de herramientas matemáticas a problemas prácticos**: Evaluada en los tres ejercicios
3. **Interpretación de resultados en contextos de diseño**: Evaluada en los tres ejercicios
4. **Optimización de sistemas basada en análisis matemático**: Implícita en los tres ejercicios

## Conclusión

La Tarea 1 (2026) proporciona una evaluación integral de los contenidos de la unidad de Análisis Vectorial, conectando de manera coherente los conceptos teóricos con aplicaciones prácticas en diferentes áreas de la ingeniería. Los ejercicios están diseñados para evaluar no solo la capacidad de realizar cálculos matemáticos, sino también la comprensión profunda de los conceptos físicos subyacentes y su aplicación en contextos de ingeniería real.

La progresión en dificultad entre ejercicios permite evaluar el desarrollo gradual de competencias, desde la manipulación algebraica de vectores hasta el análisis completo de campos físicos usando el operador nabla y teoremas integrales. Esta estructura asegura una evaluación comprehensiva de los objetivos de aprendizaje de la unidad de Análisis Vectorial.