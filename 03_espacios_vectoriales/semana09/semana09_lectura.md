---
title: Espacios vectoriales
description: Espacios vectoriales
short_title: Espacios vectoriales
author: " "
tags: [espacios_vectoriales, espacio, vectores, expansión, ortogonalidad]
subject: Espacios vectoriales - Semana 9
keywords: [espacio, vectores, expansión, ortogonalidad]
exports:
  - format: pdf
    template: curvenote
    output: ./semana09_lectura.pdf
downloads:
  - file: ./semana09_lectura.md
    title: semana09_lectura.md
  - file: ./semana09_lectura.pdf
    title: semana09_lectura.pdf
---

:::{aside} [Donna Strickland](https://es.wikipedia.org/wiki/Donna_Strickland)

es una física canadiense, profesora de la Universidad de Waterloo y tercera mujer en la historia en recibir el Premio Nobel de Física (2018, junto con Gérard Mourou y Arthur Ashkin), por el desarrollo de la técnica de **amplificación de pulso con chirp** (CPA, por sus siglas en inglés) que presentó en su tesis doctoral (1985): estirar un pulso láser ultracorto, amplificarlo de forma segura y recomprimirlo para alcanzar intensidades extremas. Esa técnica es hoy la base de aplicaciones que van de la cirugía refractiva láser al mecanizado de precisión y a la física de campos intensos. La manipulación de pulsos de luz en la óptica cuántica — donde un estado de luz se representa como una superposición de modos en un espacio vectorial complejo — es un ejemplo directo del formalismo que construimos esta semana: **estados como vectores, mediciones como productos internos**.

```{figure} ./../images/DonnaStrickland_635x953.jpg
:label: fig-DonnaStrickland
:alt: retrato de Dra. Donna Strickland
:align: center
Donna Strickland (1959 - ). Foto: Ecole polytechnique / Paris / France ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3AEcole_polytechnique_-_49578486041_%28cropped%29.jpg), CC BY-SA 2.0).
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Definir formalmente un espacio vectorial** a partir de sus axiomas y **reconocer** objetos tan diversos como $\mathbb{R}^n$, las matrices y los espacios de funciones como instancias de una misma estructura.

2. **Construir bases y determinar dimensiones** usando combinaciones lineales, span e independencia lineal, y **expresar** cualquier vector mediante componentes en una base dada.

3. **Definir el producto interno, la norma y la ortogonalidad**, y **extender** estas nociones geométricas a espacios de dimensión infinita mediante los espacios de Hilbert, con bases ortonormales de funciones y productos internos con función de peso.

```

+++ { "part": "abstract" }

¿Qué tienen en común una flecha en $\mathbb{R}^3$, un polinomio de grado menor que cuatro, una matriz $m\times n$ y el estado de un cúbit? A primera vista, casi nada: unos son objetos geométricos, otros algebraicos, otros entidades abstractas de la mecánica cuántica. La respuesta del álgebra lineal es que todos son **vectores**: elementos de un conjunto dotado de dos operaciones — suma y producto por un escalar — que satisfacen una lista corta de axiomas. Esa es la definición de **espacio vectorial**, el marco unificador con el que esta semana abre la unidad de estructuras algebraicas del curso. Sobre la estructura algebraica, el **producto interno** añade lo que le faltaba: geometría. Con él se definen la **norma** (longitud), la **ortogonalidad** (ángulos rectos) y las **componentes** (proyecciones sobre una base), y las desigualdades de Schwarz y de Bessel certifican que esa geometría es consistente. El salto conceptual es la generalización a los **espacios de Hilbert**: espacios vectoriales completos con producto interno que admiten dimensión infinita, donde las funciones se expanden en bases ortonormales exactamente como las flechas se descomponen en ejes. En esa arena, la notación bra-ket de Dirac convierte el producto interno en lenguaje físico: los estados son kets, las amplitudes de transición son productos internos y las probabilidades son normas al cuadrado. 
+++

Las semanas anteriores dedicamos el curso a herramientas de cálculo: campos vectoriales y teoremas integrales primero, variable compleja después. Esta semana cambiamos de mirada. En lugar de *operar* con vectores, preguntamos qué **es** un vector — y la respuesta resulta ser mucho más general de lo que sugiere la flecha familiar del plano.

La pregunta que guía esta semana tiene tres capas. Primera, la estructural: ¿qué propiedad comparten los vectores de $\mathbb{R}^n$, los polinomios, las matrices y las funciones continuas que los convierte a todos en "vectores"? Segunda, la geométrica: ¿qué se necesita para hablar de *longitud* y *perpendicularidad* en un espacio cuyos elementos no son flechas? Tercera, la física: ¿dónde viven los estados de un sistema cuántico, y por qué su formalismo estándar es un producto interno disfrazado de notación? Las respuestas — espacio vectorial, producto interno, espacio de Hilbert — se apilan una sobre otra, y cada una hereda el lenguaje de la anterior.


# Espacios vectoriales: la estructura común

Los [espacios vectoriales](https://es.wikipedia.org/wiki/Espacio_vectorial) son una herramienta fundamental en física e ingeniería: proporcionan el marco matemático en el que se modelan problemas tan diversos como la mecánica cuántica, el procesamiento de señales, la computación cuántica o la dinámica de fluidos computacional (CFD). Su fuerza está precisamente en la abstracción: **una sola teoría, infinitos ejemplos**.

Un espacio vectorial es un marco que generaliza la noción intuitiva de [vector](https://es.wikipedia.org/wiki/Vector). Estos espacios no se limitan a los vectores de $\mathbb{R}^n$: también pueden incluir funciones, polinomios, matrices y otros objetos matemáticos que satisfagan las mismas reglas. Formalmente, un espacio vectorial $V$ sobre un cuerpo $K$[^1] es un par $(V, K)$ junto con dos operaciones:

1. **Suma de vectores**: a cada par de vectores $\mathbf{u}, \mathbf{v} \in V$ se le asigna un vector $\mathbf{u}+\mathbf{v} \in V$.

2. **Producto por un escalar**: a cada escalar $a \in K$ y cada vector $\mathbf{v} \in V$ se le asigna un vector $a\cdot\mathbf{v} \in V$.

Obsérvese lo esencial de la formulación: las dos operaciones **devuelven elementos del mismo conjunto** (propiedad de cierre). A los elementos de $V$ se les llama *vectores* y a los elementos de $K$, *escalares*. Pero el cierre no basta: las operaciones deben comportarse bien. Las propiedades que exigimos son las siguientes.

**Conmutatividad y asociatividad de la suma.** Para todo $\mathbf{u}, \mathbf{v}, \mathbf{w} \in V$:

$$
\mathbf{u}+\mathbf{v} = \mathbf{v}+\mathbf{u},
\qquad
(\mathbf{u}+\mathbf{v})+\mathbf{w} = \mathbf{u}+(\mathbf{v}+\mathbf{w}).
$$

**Distributividad y asociatividad con escalares.** Para todo $a, b \in K$ y $\mathbf{u}, \mathbf{v} \in V$:

$$
a\cdot(\mathbf{u}+\mathbf{v}) = a\cdot\mathbf{u}+a\cdot\mathbf{v},
\qquad
(a+b)\cdot\mathbf{u} = a\cdot\mathbf{u}+b\cdot\mathbf{u},
\qquad
a\cdot(b\cdot\mathbf{u}) = (ab)\cdot\mathbf{u}.
$$

**Elemento neutro aditivo.** Existe un vector $\mathbf{0}\in V$ tal que $\mathbf{v}+\mathbf{0}=\mathbf{v}$ para todo $\mathbf{v}\in V$.

**Elemento neutro multiplicativo.** Para todo $\mathbf{v}\in V$, $1\cdot\mathbf{v}=\mathbf{v}$, donde $1$ es el elemento neutro de la multiplicación en el cuerpo $K$.

**Elemento inverso aditivo.** Para cada vector $\mathbf{v}\in V$ existe $-\mathbf{v} \in V$ tal que $\mathbf{v}+(-\mathbf{v})=\mathbf{0}$.

Nada de esto es nuevo para las flechas del plano: la definición *destila* las reglas que ya conocíamos y las convierte en el molde que otros objetos deben llenar. La potencia de la definición está en su alcance: los tres conjuntos siguientes — de apariencias muy distintas — satisfacen todos los axiomas con sus operaciones naturales.

:::{note} El espacio euclidiano $\mathbb{R}^n$
El conjunto $\mathbb{R}^n = \{(x_1, x_2, \ldots, x_n)\,|\, x_i\in \mathbb{R},\; i=1,2,\ldots,n\}$, con la adición usual de n-adas y el producto de un vector por un escalar, define un espacio vectorial. Es el ejemplo prototípico.
:::

:::{note} El espacio de las funciones continuas
El conjunto de todas las funciones continuas sobre un intervalo, con la suma de funciones $(f+g)(x) = f(x)+g(x)$ y el producto por un escalar $(af)(x) = a\,f(x)$, es un espacio vectorial. Aquí el "vector" es una función completa: la estructura sobrevive al salto de lo discreto a lo continuo.
:::

:::{note} El espacio de las matrices
El conjunto de todas las matrices de tamaño $m\times n$ sobre un cuerpo $K$, con la suma de matrices y el producto por un escalar, es un espacio vectorial. Un objeto "tabular" resulta ser un vector como cualquier otro.
:::

## Combinaciones lineales, span e independencia

Si $\{\mathbf{v}_1,\mathbf{v}_2,\ldots,\mathbf{v}_n\}$ es un conjunto de vectores de un espacio vectorial $V$, se define el **span** del conjunto como el conjunto de todos los vectores que pueden escribirse como combinación lineal de los $\mathbf{v}_i$, es decir, los $\mathbf{x}\in V$ tales que

$$
\mathbf{x}=c_1 \cdot\mathbf{v}_1 +c_2 \cdot\mathbf{v}_2+\ldots + c_n \cdot \mathbf{v}_n,
$$

donde $c_1,c_2,\ldots,c_n$ son escalares del cuerpo $K$. En palabras: el span es **todo lo que se puede construir** con los vectores dados usando únicamente las dos operaciones del espacio.

La pregunta natural es si todos los vectores del conjunto son *necesarios*. Supóngase que el vector nulo puede escribirse como combinación lineal no trivial:

:::{math}
:label: eq-independencia
\mathbf{0}=c_1 \cdot\mathbf{v}_1 +c_2 \cdot\mathbf{v}_2+\ldots + c_n \cdot \mathbf{v}_n.
:::

Si {eq}`eq-independencia` se cumple para alguna escogencia de los $c_i$ con algún $c_i \neq 0$, se dice que los vectores $\mathbf{v}_1, \mathbf{v}_2, \ldots, \mathbf{v}_n$ son *linealmente dependientes*: al menos uno de ellos ya estaba "contenido" en los otros y no aporta direcciones nuevas. En el caso contrario — si {eq}`eq-independencia` solo se satisface con $c_1 = c_2 = \cdots = c_n = 0$ — los vectores son *linealmente independientes*, y ningún vector del conjunto puede expresarse como combinación lineal de los demás.

:::{note} Span de un conjunto en $\mathbb{R}^2$
Considere los vectores $\mathbf{v}_1=(1,0)$ y $\mathbf{v}_2=(0,1)$. Cualquier vector $\mathbf{w}=(a,b)$ en $\mathbb{R}^2$ se puede escribir como

$$
\mathbf{w}=a\cdot\mathbf{v}_1 + b\cdot\mathbf{v}_2=a\cdot (1,0)+b\cdot (0,1)=(a,b).
$$

Es decir, $\text{span}\{\mathbf{v}_1, \mathbf{v}_2 \}=\mathbb{R}^2$: dos vectores bastan para generar el plano entero.
:::

La **dimensión de un espacio vectorial** es el número máximo de vectores linealmente independientes que puede contener, y coincide con el número de vectores de cualquier base del espacio. En consecuencia, si un conjunto de $n$ vectores es linealmente independiente, su span define un espacio cuya dimensión es exactamente $n$: la independencia garantiza que ninguna dirección está repetida.

## Bases y componentes

Una **base** de un espacio vectorial es un conjunto de vectores linealmente independientes cuyo span cubre todo el espacio: el equilibrio exacto entre *suficientes* (generan todo) y *justos* (ninguno sobra). Cada vector del espacio puede expresarse de manera **única** como combinación lineal de los vectores de la base — y esa unicidad es la que hace de las coordenadas un lenguaje confiable.

Si $V$ es un espacio vectorial $N$-dimensional, cualquier conjunto de $N$ vectores linealmente independientes $\mathbf{e}_1,\mathbf{e}_2,\ldots,\mathbf{e}_N$ forma una base para $V$; en ese caso, cualquier elemento $\mathbf{x}$ de $V$ puede escribirse como

:::{math}
:label: eq-base-expansion
\mathbf{x}=x_1 \cdot \mathbf{e}_1+x_2\cdot \mathbf{e}_2+\ldots +x_N \cdot \mathbf{e}_N = \sum_{i=1}^N x_i \cdot \mathbf{e}_i.
:::

Los coeficientes $x_i$ se llaman las **componentes** de $\mathbf{x}$ con respecto a la base $\{\mathbf{e}_i\}$. El espacio entero queda así "digitalizado": para trabajar con $\mathbf{x}$ basta trabajar con la lista de números $(x_1,\ldots,x_N)$.

:::{note} Una base de $\mathbb{R}^2$ (dimensión finita)
Los vectores $\mathbf{v}_1=(1,0)$ y $\mathbf{v}_2=(0,1)$ forman una base de $\mathbb{R}^2$: son independientes y su span es el plano entero. La dimensión es 2, como sugiere el nombre.
:::

:::{note} El espacio $C([a,b])$ (dimensión infinita)
Considere el espacio de funciones continuas definidas en un intervalo cerrado $[a,b]$, $f: [a,b]\rightarrow \mathbb{R}$, denotado $C([a,b])$. La dimensión de este espacio es infinita: no existe un conjunto finito de funciones $f_1,f_2,\ldots,f_n$ tales que cualquier otra función continua en $[a,b]$ pueda expresarse como combinación lineal de ellas. Por muchas "direcciones" que se acumulen, siempre queda una función continua que escapa.
:::

Los dos ejemplos anteriores marcan la bifurcación de la semana: la teoría de dimensión finita es el terreno conocido del álgebra lineal, pero la física vive con frecuencia en dimensión infinita. Para cruzar el puente falta una pieza: la geometría.

# El producto interno: geometría sobre la estructura

La estructura de espacio vectorial permite **sumar** y **escalar**, pero no dice nada sobre longitudes, ángulos o perpendicularidad. Eso lo aporta una operación adicional.

El **producto interno** es una operación que asocia a dos vectores de un espacio vectorial un número (un escalar). Un producto interno en $V$ es una función $\langle \cdot , \cdot \rangle : V \times V \rightarrow \mathbb{R}$ (o $\mathbb{C}$) que asigna a cada par de vectores $\mathbf{u}, \mathbf{v} \in V$ un número $\langle \mathbf{u} , \mathbf{v} \rangle$ que satisface

:::{math}
:label: eq-axiomas-prod-interno
\begin{aligned}
\langle \mathbf{u},\mathbf{v}\rangle =& \langle \mathbf{v},\mathbf{u}\rangle^*=\overline{\langle \mathbf{v},\mathbf{u}\rangle}\\
\langle \mathbf{u},a \mathbf{v}+b \mathbf{w}\rangle =& a \langle \mathbf{u},\mathbf{v}\rangle + b\langle \mathbf{u},\mathbf{w}\rangle \\
\langle a \mathbf{u}+b \mathbf{v}, \mathbf{w}\rangle =& a^* \langle \mathbf{u},\mathbf{w}\rangle + b^*\langle \mathbf{v},\mathbf{w}\rangle\\
\langle a \mathbf{u},b \mathbf{v}\rangle =&a^*b \langle \mathbf{u},\mathbf{v}\rangle
\end{aligned}
:::

para todos los vectores $\mathbf{u}, \mathbf{v}, \mathbf{w}\in V$ y escalares $a,b$. 

:::{note} El producto punto como caso particular
En el espacio euclidiano $\mathbb{R}^n$, el producto interno estándar (o producto punto) entre dos vectores $\mathbf{u} = (u_1, u_2, \dots, u_n)$ y $\mathbf{v} = (v_1, v_2, \dots, v_n)$ es

$$
\langle \mathbf{u}, \mathbf{v} \rangle = \mathbf{u} \cdot \mathbf{v} = u_1 v_1 + u_2 v_2 + \dots + u_n v_n = \sum_{i=1}^n u_i v_i.
$$

Todas las reglas de {eq}`eq-axiomas-prod-interno` se verifican directamente para esta fórmula.
:::

## Ortogonalidad y bases ortonormales

Dos vectores de un espacio con producto interno se dicen *ortogonales* si

$$
\langle \mathbf{u},\mathbf{v}\rangle = 0.
$$

Es la generalización de la perpendicularidad: en $\mathbb{R}^2$ recupera los ejes que se cortan a $90^\circ$, pero la definición funciona igual para funciones o matrices.

La **norma** de un vector se define a partir del producto interno consigo mismo:

:::{math}
:label: eq-norma
\|\mathbf{u}\| = \langle \mathbf{u},\mathbf{u}\rangle^{1/2}.
:::

Nótese que los axiomas {eq}`eq-axiomas-prod-interno`, por sí solos, no garantizan que $\langle \mathbf{u},\mathbf{u}\rangle \geq 0$; los espacios donde esto se cumple se dicen de *norma semidefinida positiva*. (El espacio-tiempo de la relatividad especial, donde $\langle \mathbf{u},\mathbf{u}\rangle$ puede ser negativo, es el contraejemplo físico más famoso.) Todo lo que sigue asume espacios con producto interno positivo.

Una base $\{\hat{\mathbf{e}}_i\}$ de un espacio $N$-dimensional se dice *ortonormal* si

$$
\langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_j\rangle=\delta_{ij},
\qquad
\delta_{ij}=\begin{cases}
    1 & \text{para } i=j,\\
    0 & \text{para } i\neq j,
\end{cases}
$$

donde $\delta_{ij}$ se denomina *delta de Kronecker*. La condición compacta dos exigencias: ortogonalidad ($i\neq j$) y normalización ($i=j$). En una base así, dos vectores cualesquiera se escriben

$$
\mathbf{u}=\sum_{i=1}^N a_i\hat{\mathbf{e}}_i
\qquad \text{y} \qquad
\mathbf{v}=\sum_{i=1}^N b_i\hat{\mathbf{e}}_i,
$$

y las componentes se extraen con el propio producto interno:

:::{math}
:label: eq-componentes
\langle \hat{\mathbf{e}}_j,\mathbf{u}\rangle = \sum_{i=1}^N \langle \hat{\mathbf{e}}_j,a_i  \hat{\mathbf{e}}_i\rangle= \sum_{i=1}^N a_i \langle\hat{\mathbf{e}}_j,\hat{\mathbf{e}}_i\rangle =a_j,
:::

resultado con sabor a "proyección": la componente $a_j$ es lo que queda de $\mathbf{u}$ al medirlo contra la dirección $\hat{\mathbf{e}}_j$. Con ello, el producto interno de $\mathbf{u}$ y $\mathbf{v}$ se convierte en pura álgebra de componentes:

:::{math}
:label: eq-prod-interno-base
\begin{aligned}
\langle \mathbf{u},\mathbf{v}\rangle = &\biggl\langle \sum_{i=1}^N a_i\hat{\mathbf{e}}_i, \sum_{j=1}^N b_j\hat{\mathbf{e}}_j \biggr\rangle
= \sum_{i=1}^N a_i^*b_i \underbrace{\langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_i\rangle}_{=1}+\sum_{i=1}^N \sum_{j\neq i}^N a_i^*b_j \underbrace{\langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_j\rangle}_{=0} \\
=& \sum_{i=1}^N a_i^*b_i.
\end{aligned}
:::

En una base ortonormal, medir ángulos y longitudes equivale a multiplicar componentes. Pero ¿qué pasa si la base no es ortonormal? Entonces los términos cruzados no se anulan y deben llevarse la cuenta: si $\mathbf{e}_1, \mathbf{e}_2,\ldots, \mathbf{e}_N$ no son ortogonales, se definen los $N^2$ números

$$
G_{ij}=\langle \mathbf{e}_i,\mathbf{e}_j \rangle,
$$

de manera que para $\mathbf{u}=\sum_{i=1}^N a_i \mathbf{e}_i$ y $\mathbf{v}=\sum_{j=1}^N b_j \mathbf{e}_j$,

:::{math}
:label: eq-metrica
\langle \mathbf{u},\mathbf{v}\rangle
= \sum_{i=1}^N \sum_{j=1}^N a_i^*b_j \langle \mathbf{e}_i,\mathbf{e}_j \rangle
=\sum_{i=1}^N \sum_{j=1}^N a_i^*\,G_{ij}\,b_j.
:::

Los números $G_{ij}$ forman la llamada *matriz de Gram*, que codifica toda la geometría de la base elegida; en una base ortonormal $G$ es la identidad y {eq}`eq-metrica` se reduce a {eq}`eq-prod-interno-base`. La elección de base no cambia la física, pero decide cuánta geometría hay que arrastrar en los cálculos.

## La norma y sus desigualdades

La definición {eq}`eq-norma` cumple las propiedades esperadas de una longitud (positiva definida, homogénea, subaditiva) en todo espacio con producto interno positivo. En esos espacios valen además las siguientes relaciones, que usaremos una y otra vez:

1. **Desigualdad de Schwarz**

   $$
   |\langle \mathbf{u},\mathbf{v}\rangle|\leq \|\mathbf{u}\| \, \|\mathbf{v}\|,
   $$

   con igualdad si y solo si $\mathbf{u}=a \mathbf{v}$. En $\mathbb{R}^n$ es el enunciado $|\cos\theta|\leq 1$; en general, dice que ningún producto interno puede exceder el producto de las longitudes.

2. **Desigualdad triangular**

   $$
   \|\mathbf{u} +\mathbf{v}\| \leq \|\mathbf{u}\| + \|\mathbf{v}\|,
   $$

   el enunciado algebraico de que el camino directo nunca es más largo que el camino descompuesto: la distancia más corta entre dos puntos es la recta.

3. **Desigualdad de Bessel**

   $$
   \|\mathbf{u}\|^2 \geq \sum_i |\langle \hat{\mathbf{e}}_i,\mathbf{u}\rangle|^2 = \sum_i |a_i|^2,
   $$

   donde $\hat{\mathbf{e}}_i$ ($i=1,2,\ldots$) es un conjunto ortonormal y $a_i$ las componentes correspondientes de $\mathbf{u}$. Las componentes no pueden cargar más "longitud" que el propio vector; cuando el conjunto ortonormal es una base **completa** (como en dimensión finita), la desigualdad se convierte en la **igualdad de Pitágoras generalizada** $\|\mathbf{u}\|^2 = \sum_i |a_i|^2$.

4. **Igualdad del paralelogramo**

   $$
   \|\mathbf{u}+\mathbf{v}\|^2 +\|\mathbf{u}-\mathbf{v}\|^2= 2(\|\mathbf{u}\|^2+\|\mathbf{v}\|^2),
   $$

   la identidad geométrica del paralelogramo, que en espacios con producto interno es un teorema y no una suposición.

# Espacios de Hilbert y notación de Dirac

Con bases, productos internos y normas en mano, la generalización final es casi natural: ¿qué pasa cuando la dimensión se dispara a infinito?

Un **espacio de Hilbert**[^2] es una generalización del espacio euclidiano que extiende los métodos del álgebra lineal y del cálculo — de dos y tres dimensiones — a espacios de dimensión arbitraria, incluidos los de dimensión infinita. En términos generales, un espacio de Hilbert es un **espacio vectorial completo con respecto a un producto interno**: además de las estructuras que ya construimos, exige que toda sucesión de Cauchy de vectores converge a un vector *dentro del espacio*; el espacio no tiene "agujeros" a los que una aproximación legítima pueda acercarse sin llegar.

El escenario canónico es el de funciones. Considere funciones "bien portadas" en un intervalo cerrado $a\leq x\leq b$ y sea $\{y_n(x)\}$, $n=0,1,\ldots$ un conjunto de funciones base, de manera que cualquier función del conjunto puede escribirse como combinación lineal (ahora infinita) de dichas funciones:

:::{math}
:label: eq-serie-funciones
f(x)=\sum_{n=0}^\infty c_n y_n(x).
:::

Esta es la versión en dimensión infinita de la expansión {eq}`eq-base-expansion`: el papel de los ejes lo juegan funciones, y el de las componentes, los coeficientes $c_n$. El producto interno se define mediante la integral

:::{math}
:label: eq-prod-interno-funciones
\langle f|g \rangle=\int_a^b f^*(x)\,g(x)\,\rho(x)\,dx,
:::

donde $\rho(x)$ es una función real no negativa en $[a,b]$, denominada **función de peso**: el peso decide cuánto "cuenta" cada región del intervalo al medir. Dos funciones se dicen *ortogonales* (respecto de $\rho$) si $\langle f|g\rangle = 0$, y la **norma** de una función es

:::{math}
:label: eq-norma-funcion
\|f\| = \langle f|f \rangle^{1/2} =\left[\int_a^b f^*(x)f(x)\rho(x)\,dx\right]^{1/2} =\left[\int_a^b |f(x)|^2 \rho(x)\,dx\right]^{1/2}.
:::

Para que esta norma sea finita, el conjunto natural de funciones es el de las *de cuadrado integrables* respecto de $\rho$: un espacio vectorial infinito-dimensional de funciones dotado de un producto interno como {eq}`eq-prod-interno-funciones`, completado, es justamente un **espacio de Hilbert**. Es común definir la *función normalizada* $\hat{f}=f/\|f\|$, con norma igual a la unidad.

La notación $\langle \phi | \psi \rangle$ que ya empleamos en {eq}`eq-prod-interno-funciones` es más que una conveniencia de escritura: es el ***formalismo de Dirac*** (o notación bra-ket)[^3], la notación estándar de la mecánica cuántica para describir estados cuánticos y operaciones sobre ellos en un espacio de Hilbert. El término $\langle \phi |$ se denomina *bra* y el término $| \psi \rangle$, *ket*; su unión, $\langle \phi|\psi\rangle$, es un producto interno.

:::{attention} Resumen de la semana

| Concepto | Enunciado | Uso |
|---|---|---|
| Espacio vectorial | par $(V,K)$ con suma y producto por escalar que cumplen los axiomas | el molde común de $\mathbb{R}^n$, matrices, polinomios, funciones, estados |
| Span | conjunto de todas las combinaciones lineales de un conjunto dado | saber qué puede generarse con qué |
| Independencia lineal | $\sum_i c_i\mathbf{v}_i=\mathbf{0} \Rightarrow c_i=0$ | ninguna dirección está repetida |
| Base y componentes | $\mathbf{x}=\sum_i x_i\mathbf{e}_i$ con $\{\mathbf{e}_i\}$ independiente y generadora | coordenadas únicas para cada vector |
| Dimensión | número de vectores de cualquier base | finita ($\mathbb{R}^n$) o infinita ($C([a,b])$) |
| Producto interno | $\langle\mathbf{u},\mathbf{v}\rangle$ con simetría hermítica y linealidad | añade geometría: ángulos, longitudes, proyecciones |
| Ortogonalidad y ortonormalidad | $\langle\hat{\mathbf{e}}_i,\hat{\mathbf{e}}_j\rangle=\delta_{ij}$ | componentes por proyección, {eq}`eq-componentes` |
| Matriz de Gram | $G_{ij}=\langle\mathbf{e}_i,\mathbf{e}_j\rangle$, {eq}`eq-metrica` | geometría de bases no ortogonales |
| Norma | $\Vert\mathbf{u}\Vert=\langle\mathbf{u},\mathbf{u}\rangle^{1/2}$ | Schwarz, triangular, Bessel, paralelogramo |
| Espacio de Hilbert | espacio vectorial completo con producto interno | escenario de la mecánica cuántica; $\langle f\vert g\rangle$ integral con peso |
| Notación de Dirac | $\langle\phi\vert\psi\rangle$ (bra-ket) | amplitudes de transición; probabilidades como normas al cuadrado |
:::

:::{seealso} Referencias

@boas2006mathematical [Cap. 3.14 "General Vector Spaces", pág. 72-81]

@riley2006mathematical [Cap. 8 "Matrices and vector spaces", pág. 241-247]

:::

[^1]: un *cuerpo* (o *campo*) es una estructura algebraica que permite
    realizar operaciones aritméticas fundamentales con propiedades de
    cierre, conmutatividad, asociatividad, identidad, inversos y
    distributividad.
    Ejemplos de cuerpos son los números reales ($\mathbb{R}$), complejos
    ($\mathbb{C}$), racionales ($\mathbb{Q}$).

[^2]:
    David Hilbert (1862-1943) fue un matemático alemán, reconocido como
    uno de los más influyentes del siglo XIX y principios del XX.
    Hilbert y sus estudiantes proporcionaron partes significativas de la
    infraestructura matemática necesaria para la mecánica cuántica y la
    relatividad general.

[^3]: Paul A. M. Dirac, "The Principles of Quantum Mechanics," Oxford
    University Press, 1930.

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
