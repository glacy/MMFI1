# Relación de la Tarea 3 (2026) con los Contenidos de 03_espacios_vectoriales y 04_matrices

Este documento detalla cómo cada ejercicio de la Tarea 3 (2026) se relaciona con los contenidos de la unidad de Espacios Vectoriales (semanas 9 y 10) y con la parte de autovalores, autovectores y medición de la semana 12 (04_matrices), proporcionando conexiones específicas entre los conceptos teóricos y las aplicaciones prácticas presentadas en los ejercicios.

## Visión General

La Tarea 3 (2026) está diseñada para evaluar la comprensión de la secuencia *espacio vectorial → producto interno → notación de Dirac → operadores*, a través de un ejercicio por semana (semanas 9 a 11):

- **Ejercicio 1** (Semana 9): Las matrices de Pauli como estructura del espacio de un cúbit (espacios vectoriales, bases, producto interno, vector de Bloch)
- **Ejercicio 2** (Semana 10): Operación de un cúbit en una base ortonormal dada (expansión ortogonal, proyectores, medición)
- **Ejercicio 3** (Semana 12): Medición del espín en una dirección arbitraria en el espacio de Pauli (ecuación secular, autovectores, proyectores, descomposición espectral y regla de Born)

## Ejercicio 1: Las Matrices de Pauli como Estructura del Espacio de un Cúbit

### Contenidos de la unidad relacionados

#### Semana 9: Espacios vectoriales

**Espacio vectorial y axiomas** (semana09_lectura.md, sección "Espacios vectoriales: la estructura común")
- El inciso (a) pide verificar el **cierre** de la suma y del producto por escalares reales en el conjunto $\mathcal{H}_2$ de matrices hermíticas y argumentar que las demás propiedades se heredan de $M_{2\times2}(\mathbb{C})$: replica el argumento con el que la lectura presenta el "espacio de las matrices" como ejemplo de espacio vectorial distinto de $\mathbb{R}^n$.

**Bases, componentes y dimensión** (semana09_lectura.md, secciones "Combinaciones lineales, span e independencia" y "Bases y componentes")
- Los incisos (b) y (c) muestran que toda matriz hermítica se expande de manera única en $\{I, \sigma_x, \sigma_y, \sigma_z\}$ (ecuación de expansión en base de la lectura) y verifican la independencia mostrando que solo la combinación trivial da el vector nulo; $\dim\mathcal{H}_2 = 4$ ilustra la relación base-dimensión.
- Esta es la misma estructura que la semana 12 usa al escribir cualquier observable de un cúbit como combinación de matrices de Pauli.

**Producto interno, normas y ortogonalidad** (semana09_lectura.md, sección "El producto interno: geometría sobre la estructura")
- El enunciado introduce el **producto interno** de Hilbert-Schmidt $\langle A,B\rangle = \text{tr}(A^\dagger B)$ y el inciso (d) lo usa para mostrar que la base de Pauli es **ortogonal** (trazas nulas y $\sigma_i\sigma_j = i\sigma_k$) y para calcular las normas ($\sqrt2$): geometría sobre la estructura algebraica.
- El inciso (e) aplica el producto interno y la fórmula $\cos\theta = \langle A,B\rangle/(\|A\|\,\|B\|)$ para obtener el producto interno, las normas y el ángulo entre dos observables del cúbit ($60^\circ$).

**Conexión hacia las semanas 11 y 12**
- Las matrices de Pauli reaparecen en la semana 11 en notación de Dirac (ecuación de Pauli) y en la semana 12 como matrices de espín y ejemplos de diagonalización y descomposición espectral; el ejercicio construye tempranamente familiaridad con ellas desde la perspectiva estructural de la semana 9.

### Aplicaciones prácticas en ingeniería

- **Computación cuántica**: la descomposición $H = \varepsilon I + \vec{B}\cdot\vec{\sigma}$ con el *vector de Bloch* es la forma estándar en que se especifica y controla un cúbit (pulsos de microondas, campos efectivos); el ejercicio la deduce como pura álgebra de base y componentes.
- **Resonancia magnética y espín**: las matrices de Pauli son el modelo del espín-$\tfrac12$ en NMR e imagen por resonancia; el inciso (g) obtiene el campo efectivo (vector de Bloch) del Hamiltoniano a partir de sus componentes en la base.

### Habilidades evaluadas

1. Verificación de axiomas de espacio vectorial (sobre $\mathbb{R}$) en un espacio de matrices complejas
2. Construcción de base y cálculo de dimensión de un espacio funcional relevante para ingeniería
3. Uso del producto interno para ortogonalidad, normas y ángulos entre observables
4. Interpretación física de las componentes en una base (energía media y vector de Bloch)

## Ejercicio 2: Operación de un Cúbit en una Base Ortonormal

### Contenidos de la unidad relacionados

#### Semana 10: Operadores lineales

**Notación de Dirac como lenguaje de trabajo** (semana10_lectura.md, sección "La notación de Dirac como lenguaje de trabajo")
- Todo el ejercicio se desarrolla en bra-ket: kets como columnas, bras como filas conjugadas, producto interno como amplitud y **producto externo** $|\phi\rangle\langle\phi|$ como operador.
- Los incisos (f) a (h) aplican la regla de contracción "de afuera hacia adentro" de la ecuación de producto externo.

**Bases ortonormales** (semana10_lectura.md, secciones "La notación de Dirac como lenguaje de trabajo" y "Expansiones ortogonales en bases ortonormales")
- El enunciado proporciona la base de calibración del hardware con $\langle u_m|u_n\rangle = \delta_{mn}$: exactamente la condición de ortonormalidad que la lectura exige para las expansiones, los coeficientes como proyecciones y la descomposición de la identidad.

**Expansión ortogonal** (semana10_lectura.md, sección "Expansiones ortogonales en bases ortonormales")
- El inciso (a) obtiene los coeficientes como proyecciones $c_n = \langle u_n|\psi\rangle$; esas amplitudes al cuadrado reaparecen en el inciso (e) como probabilidades de medición.

**Proyectores y descomposición de la identidad** (semana10_lectura.md, sección "Proyectores, descomposición de la identidad y medición")
- Los incisos (b) a (d) verifican en matrices las cuatro propiedades de los proyectores de la lectura: idempotencia, hermiticidad, exclusión mutua y completitud.
- El inciso (e) calcula las probabilidades $\text{Prob}(\phi_m) = |\langle\phi_m|\psi\rangle|^2 = \langle\psi|\hat{P}_m|\psi\rangle$ y su conservación ($\sum_m \text{Prob} = 1$): el postulado de medición de la semana.

**Elementos de matriz y descomposición de operadores** (semana10_lectura.md, ecuaciones de elementos matriz y descomposición en productos externos)
- Los incisos (f) a (h) construyen $A_{mn} = \langle u_m|\mathcal{A}|u_n\rangle$ a partir de la acción sobre la base, escriben la descomposición $\mathcal{A} = \sum_{m,n} A_{mn}|u_m\rangle\langle u_n|$ y calcula la acción sobre un bra con la regla de la fila $n$-ésima.
- El inciso (i) calcula el valor esperado $\langle\psi|\mathcal{A}|\psi\rangle$ y justifica su realidad a partir de la hermiticidad de $\mathcal{A}$: el puente hacia la semana 11.

**Valores esperados** (semana10_lectura.md, ecuación de valor esperado)
- El inciso (i) obtiene $\langle\psi|\mathcal{A}|\psi\rangle = 3$ y su interpretación como promedio (real por hermiticidad) cierra el hilo de la semana.

### Aplicaciones prácticas en ingeniería

- **Computación cuántica**: la operación de un cúbit sobre una base ortonormal de calibración — expansión del estado y medición — es el flujo básico de cualquier plataforma (iones atrapados, superconductores).
- **Procesamiento de señales cuánticas**: operar sobre bases ortonormales de calibración es el flujo básico de cualquier plataforma de medición y control cuántica (calibración de gates, tomografía de estados).

### Habilidades evaluadas

1. Operación fluida con kets, bras y productos externos
2. Expansión de un estado en una base ortonormal con coeficientes por proyección
3. Construcción de proyectores y verificación algebraica de sus propiedades en representación matricial
4. Aplicación del postulado de medición y cálculo de probabilidades
5. Construcción del observable desde su acción sobre la base: elementos de matriz, productos externos y acción sobre bras

## Ejercicio 3: Medición del Espín en el Espacio de Pauli

### Contenidos de la unidad relacionados

#### Semana 12: Representación matricial de operadores, autovalores y medición

**Representación matricial de operadores y de estados** (semana12_lectura.md, secciones "Representación matricial de operadores" y "Representación de vectores bra y ket")
- El inciso (a) construye la matriz del observable $\hat{\sigma}_n = \cos\theta\,\hat{\sigma}_z + \sin\theta\,\hat{\sigma}_x$ como combinación lineal de matrices de Pauli: los elementos de matriz de la lectura materializados en el observable más usado de la computación cuántica.
- Para aplicar la regla de Born (inciso (i)), el estado preparado $|+\rangle$ se representa como columna y los bras $\langle n_\pm|$ como filas conjugadas, la convención de la subsección "Representación de vectores bra y ket".

**Autovalores y autovectores por métodos matriciales** (semana12_lectura.md, sección "Autovalores y autovectores")
- El inciso (c) plantea y resuelve la **ecuación secular** $\det(\hat{\sigma}_n - \lambda I) = 0$ (espectro $\pm 1$) y el inciso (d) sustituye cada autovalor en el sistema homogéneo para hallar los autovectores: el procedimiento exacto de la lectura.
- El inciso (b), $\left(\hat{\sigma}_n\right)^2 = I$, permite *anticipar* el espectro ($\lambda^2 = 1$) y el inciso (c) lo confirma: el álgebra de Pauli conecta la estructura del operador con su espectro — el rasgo físico de toda medición de espín, que devuelve siempre $\pm\hbar/2$ en cualquier dirección del eje de medición.

**Producto tensorial y descomposición espectral** (semana12_lectura.md, subsección "Producto tensorial" y ecuación espectral)
- Los incisos (g) y (h) construyen los proyectores como matrices mediante el producto tensorial $|n_\pm\rangle\langle n_\pm|$ y verifican la descomposición espectral $\hat{\sigma}_n = \hat{P}_+ - \hat{P}_-$ y la completitud $\hat{P}_+ + \hat{P}_- = I$, replicando en dimensión 2 la nota de la matriz de Pauli $\sigma_x$ de la lectura.
- La descomposición espectral además *explica* el inciso (b): $\left(\hat{\sigma}_n\right)^2 = \hat{P}_+^2 + \hat{P}_-^2 = \hat{P}_+ + \hat{P}_- = I$ por idempotencia de los proyectores.

**Regla de Born y probabilidades** (semana12_lectura.md, sección "Probabilidad, valores esperados e incertidumbre")
- El inciso (i) aplica la **regla de Born** $P(a_n) = |\langle a_n|\psi\rangle|^2$ — probabilidades $\tfrac{3}{4}$ y $\tfrac{1}{4}$, es decir $\cos^2(\theta/2)$ y $\sin^2(\theta/2)$ — para cada resultado posible de medir $S_n$, con el colapso del estado al autoestado correspondiente.

**Conexiones con los otros ejercicios de la tarea**
- Con el Ejercicio 1: la misma base de Pauli, que allí se estudió como *espacio vectorial* y aquí actúa como conjunto de *observables que se miden*.
- Con el Ejercicio 2: los proyectores de la medición de espín son los mismos objetos algebraicos construidos en esa semana, ahora generados por la diagonalización del observable.

### Aplicaciones prácticas en ingeniería

- **Computación cuántica**: las mediciones en bases arbitrarias ($\hat{\sigma}_n$) implementan cambios de base de medición en procesadores cuánticos; las probabilidades $\cos^2(\theta/2)$ y $\sin^2(\theta/2)$ son las fórmulas que se usan al calibrar y leer cúbits.
- **Instrumentación de espín**: un aparato de Stern-Gerlach rotado un ángulo $\theta$ mide exactamente $S_n = \frac{\hbar}{2}\hat{\sigma}_n$; el ejercicio describe su estadística de salida (resultados posibles y probabilidades).

### Habilidades evaluadas

1. Álgebra de matrices de Pauli aplicada a observables ($\left(\hat{n}\cdot\vec{\hat{\sigma}}\right)^2 = I$)
2. Resolución de la ecuación secular y cálculo del espectro de un observable de espín
3. Cálculo de autoestados normalizados y verificación de su ortogonalidad
4. Construcción de proyectores por producto tensorial y verificación de la descomposición espectral en forma matricial
5. Aplicación de la regla de Born a un observable de espín con resultados $\pm\hbar/2$

## Integración de Conceptos entre Ejercicios

### Conexiones transversales

**El hilo conductor de la unidad.** Los tres ejercicios recorren la escalera que construyen las lecturas:

- Ejercicio 1: *qué es* un vector (espacio, base, producto interno) — en el espacio de matrices hermíticas que estructura un cúbit.
- Ejercicio 2: *cómo se opera* (Dirac, expansión ortogonal, proyectores, medición como proyección).
- Ejercicio 3: *cómo se mide* (ecuación secular, autovectores, proyectores, descomposición espectral, regla de Born).

**Bases ortonormales: dadas vs. construidas.** El Ejercicio 2 opera sobre una base ortonormal dada por la calibración del hardware; el Ejercicio 3 obtiene su base ortonormal de los autoestados del observable — las bases que usa el físico salen de la diagonalización.

**Proyectores: álgebra y matrices.** Los proyectores se construyen como productos externos $|u_n\rangle\langle u_n|$ y se verifican como matrices $2\times2$ en el Ejercicio 2, con las cuatro propiedades de la lectura; el Ejercicio 3 los reconstruye como los proyectores de una medición de espín (descomposición espectral).

**El postulado de medición como teorema.** El Ejercicio 2 calcula las probabilidades de medición con proyectores y verifica su conservación con la descomposición de la identidad; el Ejercicio 3 aplica la regla de Born sobre los autoestados de un observable de espín: la garantía de que algún resultado debe ocurrir siempre.

### Progresión en dificultad

- **Ejercicio 1** es verificacional y algebraico: espacio vectorial, base de Pauli, producto interno y la forma de Bloch del Hamiltoniano; no requiere la notación de operadores de la semana 10.
- **Ejercicio 2** exige fluidez en Dirac y encadena base ortonormal → expansión → proyectores → medición.
- **Ejercicio 3** integra el problema de autovalores y la medición en el espacio de Pauli: álgebra de matrices, ecuación secular, autovectores, proyectores, descomposición espectral y regla de Born.

## Evaluación de Competencias

### Competencias matemáticas

1. **Estructuras algebraicas abstractas**: evaluadas en los Ejercicios 1 y 2
2. **Geometría de espacios con producto interno** (normas, ángulos, ortogonalidad): Ejercicio 1
3. **Manipulación de operadores y sus adjuntos**: Ejercicio 2
4. **Resolución del problema de autovalores en dimensión finita**: Ejercicio 3

### Competencias físicas

1. **Formalismo de la mecánica cuántica** (estados, observables, postulado de medición): evaluado en los Ejercicios 2 y 3
2. **Interpretación física del espectro** (resultados posibles de medición): Ejercicio 3
3. **Estadística de la medición cuántica** (regla de Born, probabilidades y su conservación): Ejercicios 2 y 3

### Competencias de ingeniería

1. **Modelado de dispositivos cuánticos reales** (iones atrapados, cúbits superconductores) con el formalismo de espacios vectoriales: los tres ejercicios
2. **Selección de la herramienta apropiada** (representación Dirac vs. matricial): Ejercicios 2 y 3
3. **Verificación sistemática de resultados** (normalizaciones, completitud, sumas de probabilidad, doble vía en los cálculos): los tres ejercicios

## Conclusión

La Tarea 3 (2026) proporciona una evaluación integral de la unidad de Espacios Vectoriales (semanas 9 y 10) y de la parte de autovalores y medición de la unidad de Matrices (semana 12), siguiendo el hilo conductor de las lecturas: la abstracción del concepto de vector (semana 9), la notación de Dirac y los operadores lineales como lenguaje de trabajo (semana 10) y la maquinaria de autovalores, autovectores y medición (semana 12). Los ejercicios están diseñados para evaluar tanto la capacidad de cálculo — verificaciones algebraicas explícitas en cada inciso — como la comprensión conceptual de por qué cada estructura existe: el espectro como catálogo de los resultados posibles de medición, los proyectores como la maquinaria de la medición, y la regla de Born como puente entre el álgebra lineal y la estadística de los experimentos.
