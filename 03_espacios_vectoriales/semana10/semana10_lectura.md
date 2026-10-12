---
title: Operadores lineales
description: Operadores lineales en notación de Dirac
short_title: Operadores lineales
author: " "
tags: [espacios_vectoriales, notacion_dirac, operador, proyectores, descomposición, identidad, expansiones_ortogonales]
subject: Espacios vectoriales - Semana 10
keywords: [notación de Dirac, operador, elementos de matriz, proyectores, descomposición de la identidad, expansión ortogonal, Gram-Schmidt]
exports:
  - format: pdf
    template: curvenote
    output: ./semana10_lectura.pdf
downloads:
  - file: ./semana10_lectura.md
    title: semana10_lectura.md
  - file: ./semana10_lectura.pdf
    title: semana10_lectura.pdf
---

:::{aside} [Sarah Kaiser](https://www.sckaiser.com/)

es una física e ingeniera reconocida por su trabajo en óptica cuántica y computación cuántica. Se ha especializado en el diseño de sistemas cuánticos fotónicos y en el desarrollo de herramientas de software para la simulación y el control de experimentos cuánticos. Kaiser ha colaborado con empresas tecnológicas y comunidades de código abierto para promover la accesibilidad y el uso de tecnologías cuánticas emergentes.

Además de su investigación técnica, es conocida por su labor en divulgación científica y educación, buscando acercar la computación cuántica a estudiantes, ingenieros y científicos de diferentes disciplinas. Ha contribuido con proyectos de Q# (el lenguaje cuántico de Microsoft) y participa activamente en talleres y conferencias para promover la adopción de herramientas cuánticas en la ingeniería moderna.

```{figure} ./../images/Sarah_Kaiser.jpg
:label: fig-Sarah_Kaiser
:alt: retrato de Dra. Sarah Kaiser
:align: center
Dra. Sarah Kaiser (1985 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Usar la notación de Dirac** (kets, bras, productos internos y productos externos) como lenguaje operativo para representar estados, calcular amplitudes, normas y probabilidades en un espacio de Hilbert.

2. **Expandir estados en bases ortonormales**, obteniendo los coeficientes como proyecciones, y **describir el algoritmo de Gram–Schmidt** como el procedimiento que construye una base ortonormal a partir de un conjunto linealmente independiente.

3. **Representar operadores lineales** mediante sus elementos de matriz $\langle\phi_m|\mathcal{L}|\phi_n\rangle$ y su descomposición en productos externos, y **evaluar** su acción sobre kets y bras, incluida la noción de conmutador.

4. **Aplicar los proyectores y la descomposición de la identidad** para formular el postulado de medición, calcular probabilidades de resultados y valores esperados de observables.

```

+++ { "part": "abstract" }

La semana anterior se construyó la escalera completa — espacio vectorial, producto interno, espacio de Hilbert — y al final asomó el formalismo de Dirac: los estados como kets y los productos internos como amplitudes. Esta semana ese formalismo deja de ser un adorno y se convierte en el **lenguaje de trabajo**. Primero se le da contenido operativo al bra-ket: el ket es el estado, el bra es su dual, el producto interno es una amplitud y — la pieza nueva — el *producto externo* $|\phi\rangle\langle\phi|$ es un operador. Sobre esa base, las expansiones en bases ortonormales de la semana anterior se reescriben de forma compacta: los coeficientes son proyecciones $\langle\hat\phi_n|\psi\rangle$ y la completitud de la base se lee como la **descomposición de la identidad**, $\mathbb{I}=\sum_m|\phi_m\rangle\langle\phi_m|$. El algoritmo de Gram–Schmidt aparece como la receta que garantiza que tales bases ortonormales existen y pueden construirse a partir de un conjunto linealmente independiente cualquiera. El corazón de la semana son los **operadores lineales**: definidos por su acción sobre kets, quedan completamente determinados por sus elementos de matriz $L_{mn}=\langle\phi_m|\mathcal{L}|\phi_n\rangle$, se expanden como $\mathcal{L}=\sum_{m,n}L_{mn}|\phi_m\rangle\langle\phi_n|$ y su no conmutatividad — medida por el conmutador — separa lo clásico de lo cuántico. Todo converge en la física de la medición: los **proyectores** seleccionan componentes de un estado, sus valores esperados son probabilidades y la descomposición de la identidad certifica que la probabilidad total se conserva.

+++

En mecánica cuántica, el estado de un sistema se representa mediante un *vector* — un ket $|\psi\rangle$ — en un espacio de Hilbert, y los *operadores lineales* actúan sobre esos vectores para extraer información o transformar el estado:

- el operador de _posición_ $\hat{x}$ actúa sobre un estado para dar la distribución de posiciones;
- el operador de _momento lineal_ $\hat{p}$ se relaciona con las derivadas espaciales de la función de onda;
- el _Hamiltoniano_ $\mathcal{H}$ dice cómo evoluciona el sistema en el tiempo y cuál es su energía.

La energía total del sistema, por ejemplo, se obtiene calculando el _valor esperado_ del Hamiltoniano:

$$
E = \langle \psi | \mathcal{H} | \psi \rangle.
$$

Esa expresión — un bra, un operador, un ket — es la gramática de la semana. El _postulado de la medición_ la completa: los resultados medibles son los _autovalores_ de operadores lineales hermíticos, y el estado después de la medición corresponde a sus _autovectores_. Para entender por qué el producto interno $\langle\psi|\mathcal{H}|\psi\rangle$ es un promedio de resultados, hace falta el instrumental completo: expansiones, proyectores y descomposición de la identidad.

# La notación de Dirac como lenguaje de trabajo

La semana anterior se definieron los productos internos con la notación $\langle \mathbf{u},\mathbf{v}\rangle$ para vectores y $\langle f|g\rangle$ para funciones. La notación de Dirac unifica ambas bajo un mismo dibujo y les da estructura algebraica propia.

El **ket** $|\psi\rangle$ denota el vector de estado: el elemento del espacio de Hilbert que codifica todo lo que puede saberse del sistema. Sobre el conjunto de kets actúan las dos operaciones de siempre — suma de kets y producto por un escalar — con los axiomas de espacio vectorial de la semana anterior. En una base ortonormal dada, un ket se representa como una **columna** de componentes.

El **bra** $\langle\phi|$ es el *dual* del ket $|\phi\rangle$: un objeto que "espera" un ket a su derecha para devolver un número. En la representación matricial, el bra es la fila **conjugada** transpuesta del ket: si $|\phi\rangle \leftrightarrow \begin{pmatrix}c_1\\ c_2\\ \vdots\end{pmatrix}$, entonces $\langle\phi| \leftrightarrow (c_1^*,\, c_2^*,\, \ldots)$.

La unión de un bra y un ket es el producto interno:

:::{math}
:label: eq-dirac-par
\langle\phi|\psi\rangle \equiv \langle \phi, \psi \rangle,
:::

con las propiedades hermíticas ya conocidas — $\langle\phi|\psi\rangle = \langle\psi|\phi\rangle^*$, $\langle\psi|\psi\rangle \geq 0$ — y las reglas de linealidad que las fijan:

:::{math}
:label: eq-dirac-reglas
\begin{align*}
\langle\phi|\,\bigl(a|\psi_1\rangle + b|\psi_2\rangle\bigr) =& a\langle\phi|\psi_1\rangle + b\langle\phi|\psi_2\rangle,
\\
\bigl(a\langle\phi_1| + b\langle\phi_2|\bigr)\,|\psi\rangle =& a^*\langle\phi_1|\psi\rangle + b^*\langle\phi_2|\psi\rangle.
\end{align*}
:::

Lineal en el ket, antilineal en el bra: es exactamente el patrón de los axiomas {eq}`eq-axiomas-prod-interno` de la semana anterior, escrito sin comas. La **norma** sigue siendo $\|\psi\| = \langle\psi|\psi\rangle^{1/2}$, y un estado *normalizado* cumple $\langle\psi|\psi\rangle = 1$ — la condición que, como se verá, convierte componentes en probabilidades.

Falta una pieza, y es la que convierte a la notación de Dirac en un álgebra completa: los productos *no cerrados*. El **producto externo** $|\phi\rangle\langle\phi|$ — un ket a la izquierda, un bra a la derecha — ya no devuelve un número: devuelve un **operador**, un objeto que actúa sobre kets y produce kets. Su acción es la de una proyección seguida de un reescalado:

:::{math}
:label: eq-producto-externo
\bigl(|\phi\rangle\langle\phi|\bigr)|\psi\rangle = |\phi\rangle\,\langle\phi|\psi\rangle.
:::

El bra "interior" se contrae con el ket $|\psi\rangle$ y produce el número $\langle\phi|\psi\rangle$; el resultado es un ket paralelo a $|\phi\rangle$, escalado por la amplitud de proyección. Esta lectura mecánica — *los pares bra-ket adyacentes se contraen de afuera hacia adentro* — es la regla de cálculo que gobierna todo lo que sigue.

:::{note} Kets, bras y columnas en $\mathbb{C}^2$

En la base ortonormal estándar, el ket $|\psi\rangle = \frac{1}{\sqrt{2}}\bigl(|0\rangle + i|1\rangle\bigr)$ se representa como la columna $\frac{1}{\sqrt{2}}\begin{pmatrix}1\\ i\end{pmatrix}$, y su bra como la fila $\frac{1}{\sqrt{2}}(1 \;\; -i)$ — nótese la **conjugación** de las componentes. El producto interno es el producto fila por columna de la semana 9: $\langle\phi|\psi\rangle = \sum_i \phi_i^*\psi_i$. En particular $\langle\psi|\psi\rangle = \frac{1}{2}(1 + i^*i) = \frac{1}{2}(1+1) = 1$: el estado está normalizado.
:::

# Expansiones ortogonales en bases ortonormales

Con la gramática bra-ket en mano, las expansiones de la semana anterior se reescriben en su forma más compacta.

Sea $\{|\hat\phi_n\rangle\}$ una base ortonormal de un espacio de Hilbert — de dimensión finita o infinita:

$$
\langle\hat\phi_m|\hat\phi_n\rangle = \delta_{mn},$$

con la realización integral

$$\int_a^b \hat\phi_m^*(x)\,\hat\phi_n(x)\,\rho(x)\,dx = \delta_{mn}.$$

Cualquier estado del espacio se expande como

:::{math}
:label: eq-expansion-dirac
|\psi\rangle = \sum_{n} c_n |\hat\phi_n\rangle,
:::

la versión en Dirac de la expansión {eq}`eq-base-expansion` de la semana anterior: las funciones base son los ejes y los $c_n$ las componentes. Para encontrarlos se proyecta con $\langle\hat\phi_m|$ y la ortonormalidad hace el resto:

:::{math}
:label: eq-coeficientes
\langle\hat\phi_m|\psi\rangle = \sum_n c_n\langle\hat\phi_m|\hat\phi_n\rangle = \sum_n c_n \delta_{mn} = c_m,
:::
es decir, 

:::{math}
:label: eq-coeficientes-q
c_n = \langle\hat\phi_n|\psi\rangle
= \int_a^b \hat\phi_n^*(x)\,\psi(x)\,\rho(x)\,dx.
:::

En forma integral se reconoce la fórmula de los coeficientes de la semana anterior; en forma bra-ket se ve lo que son: **proyecciones**. La componente $c_n$ es la amplitud que queda del estado al medirlo contra el eje $|\hat\phi_n\rangle$ — exactamente el "sabor a proyección" de {eq}`eq-componentes`.

La norma al cuadrado se convierte en pura álgebra de coeficientes:

:::{math}
:label: eq-pitagoras
\|\psi\|^2 = \langle\psi|\psi\rangle = \sum_n |c_n|^2,
:::

la **igualdad de Pitágoras generalizada** — la desigualdad de Bessel de la semana anterior, convertida en igualdad por la completitud de la base. Para un estado normalizado, $1 = \sum_n |c_n|^2$: si los $|c_n|^2$ van a interpretarse como probabilidades, esta es la ecuación que garantiza que suman uno.

La expansión {eq}`eq-expansion-dirac` admite una lectura de operador que anticipa el resto de la semana. Sustituyendo {eq}`eq-coeficientes-q` en {eq}`eq-expansion-dirac`,

$$
|\psi\rangle = \sum_n |\hat\phi_n\rangle\langle\hat\phi_n|\psi\rangle
\qquad\Longleftrightarrow\qquad
\mathbb{I} = \sum_n |\hat\phi_n\rangle\langle\hat\phi_n|
$$

para *cualquier* ket $|\psi\rangle$ del espacio: la base ortonormal descompone la identidad como suma de productos externos. Esta **descomposición de la identidad** es la formalización de la completitud, y será la herramienta de trabajo de las secciones siguientes.

:::{note} Expansión en serie

Los primeros cuatro *polinomios de Laguerre* son
$$L_0=1, \quad L_1=1-x, \quad L_2=\frac{2-4x+x^2}{2}, \quad L_3=\frac{6-18x+9x^2-x^3}{6};$$
los cuales son ortonormales en el rango $0\leq x \leq \infty$ con la función de peso $\rho(x)=e^{-x}$.\
Podemos *expandir* la función $e^{-x}$ en polinomios de Laguerre. Los coeficientes son las proyecciones
$$c_n=\langle L_n|e^{-x}\rangle = \int_0^\infty L_n(x)\,e^{-x}\,e^{-x}\,dx = \int_0^\infty L_n(x)\,e^{-2x}\,dx,$$
y se evalúan con las integrales estándar $\int_0^\infty x^n e^{-2x}\,dx = \frac{n!}{2^{n+1}}$:

```{math}
\begin{align*}
c_0 =& \int_0^\infty e^{-2x}\,dx = \frac{0!}{2} = \frac{1}{2},\\
c_1 =& \int_0^\infty (1-x)\,e^{-2x}\,dx = \frac{1}{2} - \frac{1!}{4} = \frac{1}{4},\\
c_2 =& \frac{1}{2}\int_0^\infty (2-4x+x^2)\,e^{-2x}\,dx
= \frac{1}{2}\left(2\cdot\frac{1}{2} - 4\cdot\frac{1}{4} + \frac{2!}{8}\right) = \frac{1}{8},\\
c_3 =& \frac{1}{6}\int_0^\infty (6-18x+9x^2-x^3)\,e^{-2x}\,dx \\
=& \frac{1}{6}\left(6\cdot\frac{1}{2} - 18\cdot\frac{1}{4} + 9\cdot\frac{1}{4} - \frac{3!}{16}\right) = \frac{1}{16}.
\end{align*}
```

La expansión {eq}`eq-expansion-dirac` queda entonces

$$e^{-x}=\frac{1}{2}L_0+\frac{1}{4}L_1+\frac{1}{8}L_2+\frac{1}{16}L_3
=\frac{15}{16}-\frac{11}{16}x+\frac{5}{32}x^2-\frac{1}{96}x^3,$$

donde la última igualdad es solo la sustitución de los polinomios. La serie aproxima a $e^{-x}$ tanto mejor cuanto más términos se acumulen — y el peso $e^{-x}$ garantiza que la convergencia sea "en promedio", no punto a punto. Nótese además el patrón de los coeficientes: $c_n = 1/2^{n+1}$ decrece geométricamente, reflejo de que $e^{-x}$ "se parece" cada vez menos a los polinomios de grado alto.

```{figure} ./../images/expansion_serie.svg
:label: fig-expansion_serie
:alt: graficas de exp{-x} y su aproximacion
:align: center
Expansión en serie de $e^{-x}$, usando los primeros cuatro polinomios de Laguerre.
```
:::

# Ortogonalización de Gram–Schmidt

Las expansiones anteriores presuponen una base ortonormal. Pero ¿qué pasa cuando se parte de una base *cualquiera* — linealmente independiente, pero ni ortogonal ni normalizada? El algoritmo de **Gram–Schmidt** responde: una base ortonormal siempre puede construirse, y da la receta explícita.[^1]

La idea geométrica es sencilla y vale para vectores, matrices o funciones. Dado un conjunto linealmente independiente $\{|y_0\rangle, |y_1\rangle, |y_2\rangle, \ldots\}$, se procesa un vector a la vez:

1. **Normalizar** el primero: $|\hat\phi_0\rangle = |y_0\rangle/\|y_0\|$.
2. **Ortogonalizar** cada nuevo vector restando sus proyecciones sobre todos los ya aceptados: si $|\hat\phi_0\rangle,\ldots,|\hat\phi_{n-1}\rangle$ ya son ortonormales, defínase

:::{math}
:label: eq-gs-algoritmo
|\tilde\phi_n\rangle = |y_n\rangle - \sum_{i=0}^{n-1} |\hat\phi_i\rangle\langle\hat\phi_i|y_n\rangle,
\qquad\text{y luego}\qquad
|\hat\phi_n\rangle = \frac{|\tilde\phi_n\rangle}{\|\tilde\phi_n\|}.
:::

El término $|\hat\phi_i\rangle\langle\hat\phi_i|y_n\rangle$ es, por {eq}`eq-producto-externo`, la proyección de $|y_n\rangle$ sobre la dirección $|\hat\phi_i\rangle$: el algoritmo **resta de cada vector todo lo que ya está contenido en las direcciones anteriores**. Lo que sobrevive a la resta es, necesariamente, una dirección nueva. La ortogonalidad se verifica en una línea:

$$
\langle\hat\phi_1|\tilde\phi_2\rangle
= \langle\hat\phi_1|y_2\rangle - \underbrace{\langle\hat\phi_1|\hat\phi_0\rangle}_{0}\langle\hat\phi_0|y_2\rangle - \underbrace{\langle\hat\phi_1|\hat\phi_1\rangle}_{1}\langle\hat\phi_1|y_2\rangle = 0,
$$

y el mismo argumento vale para cada $\hat\phi_n$ contra todos sus predecesores: la delta de Kronecker — de nuevo ella — mata los términos cruzados.

En dos dimensiones el algoritmo tiene una lectura de dibujo escolar: $|\tilde\phi_1\rangle$ es la "altura" del triángulo formado por $|y_1\rangle$ y $|\hat\phi_0\rangle$ — la componente de $|y_1\rangle$ perpendicular a $|\hat\phi_0\rangle$. Gram–Schmidt es la generalización de esa resta a cualquier dimensión y a cualquier espacio con producto interno.

:::{note} Ortogonalización de Gram–Schmidt con funciones

Partiendo del conjunto de funciones linealmente independientes
$$y_n(x)=x^n,\, n=0,1,2,\ldots$$
se pueden construir funciones ortonormales en el rango $-1<x<1$ con función de peso $\rho(x)=1$.

**Paso 0: normalizar.**
$$\hat\phi_0(x) = \frac{y_0}{\|y_0\|} = \frac{1}{\left(\int_{-1}^1 du\right)^{1/2}} = \frac{1}{\sqrt2}.$$

**Paso 1: ortogonalizar y normalizar.** La proyección a restar se anula porque el producto interno entre una función par (la constante, $x^2$) y una impar ($x$) sobre un intervalo simétrico es cero:
$$\tilde\phi_1(x) = x - \hat\phi_0\langle\hat\phi_0|x\rangle = x - 0 = x$$

$$\hat\phi_1(x) = \frac{x}{\left(\int_{-1}^1 u^2\,du\right)^{1/2}} = \sqrt{\frac{3}{2}}\,x.$$

**Paso 2: ortogonalizar contra los dos ejes previos y normalizar.**
$$\tilde\phi_2(x) = x^2 - \hat\phi_0\langle\hat\phi_0|x^2\rangle - \hat\phi_1\underbrace{\langle\hat\phi_1|x^2\rangle}_{0}
= x^2 - \frac{1}{\sqrt2}\cdot\frac{2}{3\sqrt2} = x^2 - \frac{1}{3},$$
$$\hat\phi_2(x) = \frac{x^2-\frac13}{\left[\int_{-1}^1\left(u^2-\frac13\right)^2 du\right]^{1/2}}
= \frac{1}{2}\sqrt{\frac{5}{2}}\left(3x^2-1\right).$$

Estas tres funciones son los primeros tres *polinomios de Legendre normalizados*. El residuo $\tilde\phi_2 = x^2-\frac13$ — lo que quedó de $x^2$ tras restar sus proyecciones — reaparecerá en el ejercicio 7 de la práctica, donde se interpreta como componente ortogonal no capturada por una base incompleta.
:::

:::{note} Sistema cuántico de dos estados

Dos estados cuánticos _no_ ortogonales de un electrón en un pozo cuántico 1D están dados por
$$|y_1\rangle=\begin{pmatrix} 1 \\1 \end{pmatrix},
\qquad
|y_2\rangle=\begin{pmatrix} 1 \\0 \end{pmatrix}.$$
Gram–Schmidt en la forma de {eq}`eq-gs-algoritmo`:

$$|u_1\rangle = \frac{|y_1\rangle}{\|y_1\|} = \frac{1}{\sqrt2}\begin{pmatrix}1\\1\end{pmatrix},$$

$$|\tilde u_2\rangle = |y_2\rangle - |u_1\rangle\langle u_1|y_2\rangle
= \begin{pmatrix}1\\0\end{pmatrix}
- \frac{1}{\sqrt2}\begin{pmatrix}1\\1\end{pmatrix}\cdot\frac{1}{\sqrt2}
= \begin{pmatrix}1\\0\end{pmatrix} - \frac12\begin{pmatrix}1\\1\end{pmatrix}
= \frac12\begin{pmatrix}1\\-1\end{pmatrix},$$

$$\Rightarrow\quad |u_2\rangle = \frac{|\tilde u_2\rangle}{\|\tilde u_2\|} = \frac{1}{\sqrt2}\begin{pmatrix}1\\-1\end{pmatrix}.$$

Verifique que $\langle u_1|u_2\rangle = 0$ y $\langle u_i|u_i\rangle = 1$: la nueva base es ortonormal. Obsérvese que el signo de $|\tilde u_2\rangle$ es irrelevante — la normalización absorbe las fases globales.
:::

Gram–Schmidt es una herramienta poderosa en procesamiento, análisis y manipulación de señales, y en la solución de sistemas de ecuaciones lineales. En mecánica cuántica su papel es más bien de garantía: asegura que siempre hay una base ortonormal disponible para aplicar las expansiones y la descomposición de la identidad. En la práctica, sin embargo, las bases que usa el físico casi nunca salen de Gram–Schmidt, sino de la diagonalización de operadores hermíticos — como se verá la próxima semana.

# Operadores lineales

Un *operador lineal*, $\mathcal{L}$, es una aplicación (una transformación, un mapa) entre espacios vectoriales que preserva las operaciones de adición y multiplicación por un escalar; es decir, si $|A\rangle$ y $|B\rangle$ son vectores del espacio de Hilbert y $a$, $b$ son escalares,

:::{math}
:label: eq-operador-lineal
\mathcal{L}\bigl(a|A\rangle+b|B\rangle\bigr)=a\mathcal{L}|A\rangle +b\mathcal{L}|B\rangle.
:::

Debido a la linealidad, el efecto de un operador sobre *cualquier* vector queda determinado por su efecto sobre cada elemento de una base. Aquí la descomposición de la identidad hace su primer trabajo. Sea $\{|\phi_n\rangle\}$ una base ortonormal e insertemos $\mathbb{I} = \sum_m|\phi_m\rangle\langle\phi_m|$ delante del vector:

$$
\mathcal{L}|\phi_n\rangle
= \mathbb{I}\,\mathcal{L}|\phi_n\rangle
= \sum_m |\phi_m\rangle \langle \phi_m|\,\mathcal{L}|\phi_n\rangle.
$$

El operador queda así caracterizado por el conjunto de números

:::{math}
:label: eq-elementos-matriz
L_{mn} \equiv \langle \phi_m|\mathcal{L}|\phi_n\rangle,
:::

llamados los *elementos matriz* de $\mathcal{L}$ en la base particular: $L_{mn}$ es la componente de $\mathcal{L}|\phi_n\rangle$ a lo largo de $|\phi_m\rangle$ — la proyección del vector imagen sobre el eje $m$. La estructura es la misma de siempre: operador sobre un ket, bra que proyecta, número resultante. En la representación matricial, el índice del bra etiqueta **filas** y el del ket etiqueta **columnas**.

Y hay más: no solo el vector imagen se expande — el propio operador se expande en la base. Sustituyendo {eq}`eq-elementos-matriz` en la inserción de la identidad, o directamente actuando sobre un ket arbitrario $|\psi\rangle = \sum_n c_n|\phi_n\rangle$, se obtiene la **descomposición en productos externos**:

:::{math}
:label: eq-descomposicion-outer
\mathcal{L} = \sum_{m}\sum_{n} L_{mn}\,|\phi_m\rangle\langle\phi_n| = \sum_{m,n} \langle\phi_m|\mathcal{L}|\phi_n\rangle\,|\phi_m\rangle\langle\phi_n|.
:::

Un operador lineal queda completamente determinado por sus elementos de matriz sobre una base ortonormal — esta es la versión operador de la "digitalización" de la semana anterior: para trabajar con $\mathcal{L}$ basta trabajar con la lista de números $L_{mn}$.

El mismo truco da la acción del operador sobre un bra. Insertando la identidad a la derecha,

:::{math}
:label: eq-bra-action
\langle\phi_n|\mathcal{L}
= \langle\phi_n|\mathcal{L}\,\mathbb{I}
= \sum_m \langle\phi_n|\mathcal{L}|\phi_m\rangle \langle\phi_m|
= \sum_m L_{nm}\langle\phi_m|.
:::

El operador "empuja" el bra a lo largo de la fila $n$-ésima de la matriz. Con las reglas {eq}`eq-dirac-reglas`, un bra a la izquierda de un operador se maneja igual que un vector fila: multiplica por la izquierda y recorre las columnas.

:::{note} Sistemas de *medio espín* (spin half)

Considere los estados de espín $|+\rangle$ y $|-\rangle$ como base ortonormal de un sistema de medio espín. Un operador $\mathcal{A}$ queda definido por su acción sobre la base:

```{math}
\begin{align*}
  \mathcal{A}|+\rangle =&\frac{1}{2}i\hbar |-\rangle, \\
  \mathcal{A}|-\rangle =&-\frac{1}{2}i\hbar |+\rangle.
\end{align*}
```

Los elementos matriz {eq}`eq-elementos-matriz` se leen directamente: $A_{++} = \langle+|\mathcal{A}|+\rangle = 0$, $A_{-+} = \frac{i\hbar}{2}$, $A_{+-} = -\frac{i\hbar}{2}$, $A_{--} = 0$, de donde la descomposición {eq}`eq-descomposicion-outer` da

$$
\mathcal{A} = \frac{i\hbar}{2}\left(|-\rangle\langle+| - |+\rangle\langle-|\right).
$$

Si el sistema se encuentra en el estado $$|S\rangle=\frac{1}{\sqrt{2}}\bigl[|+\rangle+|-\rangle\bigr]$$ entonces

$$\mathcal{A}|S\rangle=-\frac{i\hbar}{2\sqrt{2}}\bigl[|+\rangle-|-\rangle\bigr]=|S^\prime\rangle,$$

por lo que el estado $|S\rangle$ es mapeado al estado $|S^\prime\rangle$.
:::

:::{note} Operador actuando sobre un bra

Considere un par de vectores ortonormales $|\phi_1\rangle$ y $|\phi_2\rangle$ que generan el espacio de Hilbert $\mathcal{H}$ de cierto sistema. El operador $\mathcal{A}$ tiene el siguiente efecto sobre dichos estados base:

```{math}
\begin{align*}
    \mathcal{A}|\phi_1\rangle=&+3|\phi_1\rangle-4i|\phi_2\rangle\\
    \mathcal{A}|\phi_2\rangle=&-4i|\phi_1\rangle-3|\phi_2\rangle.
\end{align*}
```

Para hallar $\langle\phi_1|\mathcal{A}$, considere un estado arbitrario $|\psi\rangle=a|\phi_1\rangle+b|\phi_2\rangle$:

```{math}
\begin{align*}
    \langle \phi_1 |\mathcal{A}|\psi \rangle
    =&\langle\phi_1|\bigl\{a\mathcal{A}|\phi_1\rangle+b\mathcal{A}|\phi_2\rangle\bigr\}\\
    =&\langle \phi_1 | \bigl\{a[3|\phi_1\rangle-4i|\phi_2\rangle]+b[-4i|\phi_1\rangle-3|\phi_2\rangle] \bigr\} \\
    =&3a-4ib\\
    =&3\langle \phi_1 | \psi \rangle-4i\langle \phi_2 | \psi \rangle.
\end{align*}
```

Como $|\psi\rangle$ es arbitrario, se concluye que

$$\langle \phi_1 |\mathcal{A}=3\langle \phi_1| -4i\langle \phi_2 |.$$

De manera análoga,

$$\langle \phi_2 |\mathcal{A}=-4i\langle \phi_1| -3\langle \phi_2 |.$$

En términos de la regla {eq}`eq-bra-action`: la matriz de $\mathcal{A}$ tiene por columnas las imágenes de la base, y cada bra actúa como la fila conjugada correspondiente.
:::

## El adjunto de un operador y los operadores hermíticos

Con kets, bras y elementos de matriz en mano, ya se puede definir la operación que el símbolo $\dagger$ ("dagger") denota. El **adjunto** $\mathcal{L}^\dagger$ de un operador $\mathcal{L}$ es el operador cuyo efecto en los productos internos es

:::{math}
:label: eq-adjunto
\langle\phi|\mathcal{L}^\dagger|\psi\rangle = \langle\psi|\mathcal{L}|\phi\rangle^*
\qquad\text{para todos los estados } |\psi\rangle, |\phi\rangle.
:::

En la representación matricial, el adjunto se obtiene **transponiendo y conjugando** — exactamente la misma operación que convierte un ket en su bra:

:::{math}
:label: eq-adjunto-matriz
(L^\dagger)_{mn} = L_{nm}^*.
:::

Dos reglas de manipulación se usan constantemente: el adjunto es una involución, $(\mathcal{L}^\dagger)^\dagger = \mathcal{L}$, y revierte el orden de los productos, $(\mathcal{A}\mathcal{B})^\dagger = \mathcal{B}^\dagger\mathcal{A}^\dagger$.

El patrón es el mismo de la simetría hermítica del producto interno de la semana anterior — $\langle\phi|\psi\rangle = \langle\psi|\phi\rangle^*$ — elevado de números a operadores. El caso especial más importante ocurre cuando el adjunto devuelve el mismo operador: $\mathcal{L}$ se dice **hermítico** (o *autoadjunto*) si

$$
\mathcal{L}^\dagger = \mathcal{L}
\qquad\Longleftrightarrow\qquad
L_{mn} = L_{nm}^*,
$$

es decir, si su matriz coincide con su conjugada transpuesta. Las consecuencias son físicas: la diagonal es real ($L_{mm} = L_{mm}^*$) y todo valor esperado es real, pues

$$
\langle\psi|\mathcal{L}|\psi\rangle^*
= \langle\psi|\mathcal{L}^\dagger|\psi\rangle
= \langle\psi|\mathcal{L}|\psi\rangle.
$$

Un número que no puede dejar de ser real es un candidato natural a resultado de medición: este es el motivo por el que los observables de la mecánica cuántica se representan con operadores hermíticos, y por el que sus autovalores — los posibles resultados de medición — resultan ser reales.

:::{note} ¿Es hermítico el operador de espín?

En la nota del sistema de medio espín, la matriz del operador $\mathcal{A}$ tenía $A_{+-} = -\frac{i\hbar}{2}$ y $A_{-+} = \frac{i\hbar}{2}$. Se verifica $A_{+-} = \left(\frac{i\hbar}{2}\right)^* = A_{-+}^*$ y diagonal nula (real): $A^\dagger = A$, el operador es hermítico.
:::

## Propiedades de los operadores lineales

-   _Combinación lineal de operadores_: a partir de dos operadores lineales
    $\mathcal{L}_1$ y $\mathcal{L}_2$ se puede formar un nuevo operador
    lineal como una combinación lineal
    $$(c_1 \mathcal{L}_1+c_2 \mathcal{L}_2)|A\rangle=c_1 \mathcal{L}_1 |A\rangle+c_2 \mathcal{L}_2|A\rangle.$$

-   _Conmutatividad de la suma_:
    $$\mathcal{L}_1+\mathcal{L}_2=\mathcal{L}_2+\mathcal{L}_1.$$

-   _Multiplicación de operadores_: la aplicación sucesiva de dos
    operadores lineales es un operador lineal
    $$\mathcal{L}_1 (\mathcal{L}_2 | A \rangle)\equiv (\mathcal{L}_1 \mathcal{L}_2)| A \rangle.$$
    $\mathcal{L}_1 \mathcal{L}_2$ se conoce como el *producto* de
    $\mathcal{L}_1$ y $\mathcal{L}_2$. En general,
    $\mathcal{L}_1 \mathcal{L}_2\neq \mathcal{L}_2 \mathcal{L}_1$: el
    producto de operadores lineales es **no conmutativo**.

En mecánica cuántica esta característica es fundamental, y conviene definir el *conmutador* de dos operadores:

:::{math}
:label: eq-conmutador
[\mathcal{A},\mathcal{B}]=\mathcal{A}\mathcal{B}-\mathcal{B}\mathcal{A}.
:::

:::{note} Propiedades del conmutador

```{math}
\begin{align*}
    [\mathcal{A},\mathcal{B}]=&-[\mathcal{B},\mathcal{A}] \\
    [\mathcal{A},\mathcal{B}\mathcal{C}]=&[\mathcal{A},\mathcal{B}]\mathcal{C}+\mathcal{B}[\mathcal{A},\mathcal{C}]\\
    [\mathcal{A},\mathcal{B}+\mathcal{C}]=&[\mathcal{A},\mathcal{B}]+[\mathcal{A},\mathcal{C}]\\
    [\mathcal{A},[\mathcal{B},\mathcal{C}]]+[\mathcal{C},[\mathcal{A},\mathcal{B}]]+[\mathcal{B},[\mathcal{C},\mathcal{A}]]=&0, \qquad (\mbox{identidad de Jacobi})
\end{align*}
```
:::

En la mecánica cuántica se dice que si dos operadores conmutan, entonces las variables dinámicas que representan son *observables* medibles de forma simultánea.\
Si $[\mathcal{A},\mathcal{B}]=0$, los operadores conmutan: aplicarlos en distinto orden da el mismo resultado. En cambio, si el conmutador no es cero, los operadores no conmutan, lo cual indica que los observables representados por esos operadores no se pueden medir simultáneamente con precisión arbitraria (principio de incertidumbre).

:::{note} Operadores lineales en la mecánica cuántica

Las variables dinámicas en la mecánica cuántica se pueden asociar con operadores lineales actuando en el espacio de estado:

```{math}
\begin{align*}
    \hat{x}\rightarrow & x,\\
    \hat{p}\rightarrow &(\hbar/i)\nabla,
\end{align*}
```

donde $\hbar=h/2\pi$ y $h=6{,}626\,070\,15\times 10^{-34}\,\text{J}\cdot\text{s}$ es la *constante de Planck*.
:::

:::{note} Cálculo de conmutador

Para calcular el conmutador $[\hat{x}, \hat{p}]$, considere la acción de los operadores de posición $\hat{x}$ y de momento $\hat{p}$ sobre una función de onda $\psi(x)$:

$$[\hat{x}, \hat{p}] \psi(x) = (\hat{x} \hat{p} - \hat{p} \hat{x}) \psi(x).$$

Primero, $\hat{x} \hat{p} \psi(x)$:
$$\hat{x} \hat{p} \psi(x) = \hat{x} \left( -i \hbar \frac{d}{dx} \psi(x) \right) = -i \hbar x \frac{d}{dx} \psi(x).$$

Ahora, $\hat{p} \hat{x} \psi(x)$:
$$\hat{p} \hat{x} \psi(x) = \hat{p} (x \psi(x)) = -i \hbar \frac{d}{dx} (x \psi(x)) = -i \hbar \left( \psi(x) + x \frac{d}{dx} \psi(x) \right).$$

Restando ambas expresiones:

$$[\hat{x}, \hat{p}] \psi(x) = -i \hbar x \frac{d}{dx} \psi(x) + i \hbar \left( \psi(x) + x \frac{d}{dx} \psi(x) \right) = i \hbar \psi(x),$$

de donde el resultado esperado:

$$[\hat{x}, \hat{p}] = i \hbar \neq 0.$$

Posición y momento no conmutan: no pueden conocerse simultáneamente con precisión arbitraria. La no conmutatividad, visible aquí como una consecuencia de que $\hat{p}$ *diferencia* lo que $\hat{x}$ *multiplica*, es una de las fronteras entre la física clásica y la cuántica.
:::

# Proyectores, descomposición de la identidad y medición

Todo está listo para la pieza central del postulado de medición.

Si $\{|\phi_m\rangle\}$ es una base ortonormal de un espacio de Hilbert, la _descomposición de la identidad en la base ortonormal_ es

:::{math}
:label: eq-identidad
\mathbb{I} = \sum_m |\phi_m\rangle \langle \phi_m|.
:::

Ya se encontró como lectura de la completitud de las expansiones; ahora se lee en sentido operador. Cada término

$$
\hat{P}_m = |\phi_m\rangle\langle\phi_m|
$$

es un tipo especial de operador llamado _operador de proyección_ o **proyector**. Aplicado a un estado $|\psi\rangle$, el proyector selecciona la componente del estado en la dirección de $|\phi_m\rangle$:

$$
\hat{P}_m|\psi\rangle = |\phi_m\rangle\langle\phi_m|\psi\rangle = c_m|\phi_m\rangle,
$$

donde $c_m = \langle\phi_m|\psi\rangle$ es la amplitud de proyección. Los proyectores tienen propiedades algebraicas inmediatas, todas consecuencia de la ortonormalidad de la base:

$$
\hat{P}_m^2 = |\phi_m\rangle\langle\phi_m|\phi_m\rangle\langle\phi_m| = \hat{P}_m
\qquad\text{(idempotencia)},
\qquad
\hat{P}_m^\dagger = \hat{P}_m
\qquad\text{(hermiticidad)},
$$

$$
\hat{P}_m\hat{P}_n = |\phi_m\rangle\underbrace{\langle\phi_m|\phi_n\rangle}_{\delta_{mn}}\langle\phi_n| = \delta_{mn}\hat{P}_m
\qquad\text{(exclusión mutua)},
\qquad
\sum_m \hat{P}_m = \mathbb{I}
\qquad\text{(completitud)}.
$$

La idempotencia dice que "proyectar dos veces es proyectar una": una vez extraída la componente, no queda nada más que extraer. La exclusión mutua dice que los filtros de estados distintos no se traslapan. Y la completitud dice que, entre todos, cubren todo el espacio: ninguna componente del estado se pierde.

## Probabilidades de medición

Estas propiedades son exactamente las que la interpretación probabilística exige. El _postulado de medición_ en mecánica cuántica establece que, si el sistema está en el estado $|\psi\rangle$ normalizado:

1. los resultados posibles de la medición son los _autovalores_ de operadores hermíticos;
2. la probabilidad del resultado asociado al estado $|\phi_m\rangle$ es el cuadrado del valor absoluto de la proyección:

:::{math}
:label: eq-probabilidad
\text{Prob}(\phi_m)=|\langle \phi_m|\psi \rangle|^2 = \langle\psi|\hat{P}_m|\psi\rangle.
:::

La primera forma es la amplitud al cuadrado; la segunda, el valor esperado del proyector. Ambas dicen lo mismo: la probabilidad es cuánto de $|\psi\rangle$ apunta en la dirección $|\phi_m\rangle$.

3. inmediatamente después de la medición con resultado $\phi_m$, el estado colapsa a la proyección normalizada: $\hat{P}_m|\psi\rangle/\|\hat{P}_m|\psi\rangle\| = |\phi_m\rangle$.

La conservación de la probabilidad total es ahora un teorema, no una suposición:

$$
\sum_m \text{Prob}(\phi_m)
= \sum_m \langle\psi|\hat{P}_m|\psi\rangle
= \langle\psi|\underbrace{\sum_m\hat{P}_m}_{\mathbb{I}}|\psi\rangle
= \langle\psi|\psi\rangle = 1.
$$

La descomposición de la identidad {eq}`eq-identidad` *es* el enunciado matemático de que algún resultado debe ocurrir siempre: no hay probabilidades "perdidas" fuera de la base.

:::{note} Operador de proyección y probabilidades

Considere de nuevo los estados de espín $|+\rangle$ y $|-\rangle$ como la base de un sistema de medio espín.\
Si el sistema se encuentra en el estado

$$|\psi \rangle = \alpha |+\rangle + \beta |-\rangle,$$

donde $\alpha$ y $\beta$ son números complejos — las _amplitudes de probabilidad_ del sistema de estar en $|+\rangle$ y $|-\rangle$, respectivamente — se define el operador de proyección sobre el estado $|+\rangle$:

$$\hat{P}_+=|+\rangle \langle + |,$$

de manera que

$$\hat{P}_+ |\psi\rangle=\alpha |+\rangle.$$

La probabilidad de medir el espín en el estado $|+\rangle$ es el valor absoluto al cuadrado de la amplitud de la proyección del estado $|\psi\rangle$ sobre $|+\rangle$:

$$\text{Prob}(+) = |\langle + | \psi \rangle|^2 = |\alpha|^2 = \langle\psi|\hat{P}_+|\psi\rangle.$$

Y la suma de probabilidades:

$$|\alpha|^2 + |\beta|^2 = \langle\psi|\bigl(\hat{P}_+ + \hat{P}_-\bigr)|\psi\rangle = \langle\psi|\psi\rangle = 1$$

si el estado está normalizado: el postulado es consistente.
:::

## Valores esperados

La descomposición de la identidad también convierte el valor esperado de un observable en álgebra de componentes. Insertando $\mathbb{I}$ a ambos lados de $\langle\psi|\mathcal{A}|\psi\rangle$ y usando {eq}`eq-descomposicion-outer`,

$$
\langle\mathcal{A}\rangle = \langle\psi|\mathcal{A}|\psi\rangle = \sum_{m,n} A_{mn}\,\langle\psi|\phi_m\rangle\langle\phi_n|\psi\rangle,
$$

y en el caso especial — frecuente en física — de un observable *diagonal* en la base, $\mathcal{A} = \sum_m a_m \hat{P}_m = \sum_m a_m|\phi_m\rangle\langle\phi_m|$:

:::{math}
:label: eq-valor-esperado
\langle\mathcal{A}\rangle = \sum_m a_m\,|\langle\phi_m|\psi\rangle|^2 = \sum_m a_m\,\text{Prob}(\phi_m).
:::

El valor esperado es el **promedio ponderado por probabilidades** de los posibles resultados: cada autovalor $a_m$ pesa exactamente la probabilidad de que ocurra. La expresión con la que abrimos la semana, $E = \langle\psi|\mathcal{H}|\psi\rangle$, es una instancia de {eq}`eq-valor-esperado`. Como los autovalores de un operador hermítico son reales y las probabilidades no negativas, el promedio es real — este es el porqué profundo de que los observables se representen con operadores hermíticos.

:::{attention} Resumen de la semana

| Concepto | Enunciado | Uso |
|---|---|---|
| Ket / bra | $\vert\psi\rangle$ estado (columna); $\langle\phi\vert$ dual (fila conjugada) | el lenguaje estándar de la mecánica cuántica |
| Producto interno | $\langle\phi\vert\psi\rangle$, {eq}`eq-dirac-par`, hermítico y antilineal en el bra | amplitudes de transición; norma |
| Producto externo | $\vert\phi\rangle\langle\phi\vert$, {eq}`eq-producto-externo` | convierte pares bra-ket en operadores |
| Expansión ortogonal | $\vert\psi\rangle=\sum_n c_n\vert\hat\phi_n\rangle$, {eq}`eq-expansion-dirac` | estados como listas de componentes |
| Coeficientes | $c_n=\langle\hat\phi_n\vert\psi\rangle$, {eq}`eq-coeficientes` | componentes como proyecciones |
| Pitágoras generalizada | $\Vert\psi\Vert^2=\sum_n\vert c_n\vert^2$, {eq}`eq-pitagoras` | normalización = probabilidad total 1 |
| Gram–Schmidt | resta de proyecciones + normalización, {eq}`eq-gs-algoritmo` | garantiza bases ortonormales |
| Operador lineal | linealidad sobre kets, {eq}`eq-operador-lineal` | transforma estados; observables |
| Elementos matriz | $L_{mn}=\langle\phi_m\vert\mathcal{L}\vert\phi_n\rangle$, {eq}`eq-elementos-matriz` | representación del operador en una base |
| Descomposición de operadores | $\mathcal{L}=\sum_{m,n}L_{mn}\vert\phi_m\rangle\langle\phi_n\vert$, {eq}`eq-descomposicion-outer` | álgebra de operadores como álgebra de matrices |
| Adjunto / hermítico | $\mathcal{L}^\dagger$: conjugado transponer, {eq}`eq-adjunto`; hermítico si $\mathcal{L}^\dagger=\mathcal{L}$ | observables; autovalores y promedios reales |
| Conmutador | $[\mathcal{A},\mathcal{B}]=\mathcal{A}\mathcal{B}-\mathcal{B}\mathcal{A}$, {eq}`eq-conmutador` | $[\hat x,\hat p]=i\hbar$; simultaneidad de mediciones |
| Descomposición de la identidad | $\mathbb{I}=\sum_m\vert\phi_m\rangle\langle\phi_m\vert$, {eq}`eq-identidad` | completitud; inserción en cálculos |
| Proyector | $\hat{P}_m=\vert\phi_m\rangle\langle\phi_m\vert$: idempotente, hermítico | selecciona componentes; colapso del estado |
| Probabilidad | $\text{Prob}(\phi_m)=\vert\langle\phi_m\vert\psi\rangle\vert^2=\langle\psi\vert\hat{P}_m\vert\psi\rangle$, {eq}`eq-probabilidad` | postulado de medición |
| Valor esperado | $\langle\mathcal{A}\rangle=\sum_m a_m\,\text{Prob}(\phi_m)$, {eq}`eq-valor-esperado` | promedio de resultados medibles |
:::

:::{seealso} Referencias

@cresser [Chapter 10 Operations on States, pag. 143-155]

@riley2006mathematical [Cap. 18 "Eigenfunction methods for differential equations", pág. 554-559]

:::

[^1]: El procedimiento fue presentado por Erhard Schmidt (1907), basándose
    en trabajos de Jørgen Pedersen Gram (1883).

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
