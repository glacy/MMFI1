---
title: Espacios vectoriales
description: Espacios vectoriales
short_title: Espacios vectoriales
author: " "
tags: [espacios_vectoriales, espacio, vectores, expansión, ortogonalidad]
subject: Espacios vectoriales - Semana 8
keywords: [espacio, vectores, expansión, ortogonalidad]
exports:
 - format: pdf
   template: curvenote
   output: ./semana8_lectura.pdf
downloads:
  - file: ./semana8_lectura.md
    title: semana8_lectura.md
  - file: ./semana8_lectura.pdf
    title: semana8_lectura.pdf
---

:::{aside} [Donna Strickland](https://es.wikipedia.org/wiki/Donna_Strickland)

es una ingeniera física canadiense que recibió el Premio Nobel de Física en 2018 por su trabajo en la generación de pulsos ópticos ultracortos de alta intensidad, conocido como ``amplificación de pulso de chirp" (CPA). Este trabajo tiene aplicaciones directas en la óptica cuántica y en tecnologías como la cirugía lásers. Las matemáticas detrás de la óptica cuántica y la manipulación de pulsos de luz involucran la representación de estados de luz en espacios vectoriales complejos.

```{figure} ./DonnaStrickland_635x953.jpg
:label: fig-DonnaStrickland.jpg
:alt: retrato de Dra. Donna Strickland
:align: center
Dra. Donna Strickland (1959 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. Definir formalmente un espacio vectorial y reconocer sus axiomas básicos.

2. Explicar el concepto de base y dimensión de un espacio vectorial.

3. Explicar el concepto de espacio de Hilbert como una generalización de los espacios vectoriales de dimensión finita, definiendo su estructura a través del producto interno, la norma y la ortogonalidad de funciones.

4. Aplicar la notación de Dirac para representar estados cuánticos, operadores y probabilidades de transición en mecánica cuántica, interpretando el significado físico de bras, kets y productos internos en este contexto.


```

+++ { "part": "abstract" }  

Los espacios vectoriales proporcionan un marco unificador para describir fenómenos físicos y sistemas de ingeniería mediante estructuras algebraicas con propiedades lineales bien definidas. Conceptos como bases ortogonales y productos internos permiten representar estados, señales y soluciones de ecuaciones diferenciales en formas matemáticamente convenientes, facilitando el análisis y la simulación. En mecánica cuántica, la notación de Dirac introduce una formulación elegante para expresar estados y observables en espacios de Hilbert, donde la ortogonalidad y la normalización son esenciales para la interpretación probabilística de las mediciones. Estas herramientas, aplicadas a problemas que van desde la teoría cuántica de campos hasta el procesamiento de señales y la robótica, constituyen la base para el modelado y control de sistemas complejos en la ciencia y la ingeniería modernas.

+++



## Espacio vectorial 

Los [espacios vectoriales]([espacios vectoriales](https://es.wikipedia.org/wiki/Espacio_vectorial)) son una herramienta fundamental en física e
ingeniería, proporcionando un marco matemático poderoso para modelar y
resolver problemas complejos en diversas áreas, como la mecánica
cuántica, el procesamiento de señales, la simulación y la computación
cuántica o la dinámica de fluidos computacional (CFD).

Un espacio vectorial es un marco abstracto que generaliza las nociones
de [vectores](https://es.wikipedia.org/wiki/Vector). Estos espacios no se limitan a los vectores en
$\mathbb{R}^n$, sino que también pueden incluir funciones, polinomios y
otros objetos matemáticos que satisfacen las propiedades vectoriales.
En álgebra lineal, un espacio vectorial (o también llamado espacio
lineal) es una estructura algebraica creada a partir de un conjunto no
vacío, una operación interna (llamada suma, definida para los elementos
del conjunto) y una operación externa (llamada producto por un escalar,
definida entre dicho conjunto y otro conjunto, con estructura de
cuerpo[^1]) que satisface ciertas propiedades fundamentales.
A los elementos de un espacio vectorial se les llama vectores y a los
elementos del cuerpo se les conoce como escalares.

Formalmente, un espacio vectorial, $V$ sobre un cuerpo $K$ es un par
$(V, K)$ junto con dos operaciones:

1.  **Suma de vectores**:
    $$\text{Si } \mathbf{u}, \, \mathbf{v} \in V \Rightarrow \mathbf{w}=\mathbf{u}+\mathbf{v}\in V.$$

2.  **Multiplicación por un escalar**:
    $$\text{Si } a\in K \,\text{y } \mathbf{v} \in V \Rightarrow \mathbf{w}=a\cdot\mathbf{u}\in V.$$

Estas operaciones deben satisfacer las siguientes propiedades:

1.  **Cierre bajo adición conmutativa y asociativa**:\
    Para todo $\mathbf{u}, \mathbf{v}, \mathbf{w} \in V$ se cumple que
    :::{math}
    \begin{aligned}
    \mathbf{u}+\mathbf{v}=& \mathbf{v}+\mathbf{u}\\
            (\mathbf{u}+\mathbf{v})+\mathbf{w}=& \mathbf{u}+(\mathbf{v}+\mathbf{w})
    \end{aligned}
    :::

2.  **Cierre bajo multiplicación asociativa y distributiva por un
    escalar**:\
    Para todo $a,b \in K$ y $\mathbf{u},\mathbf{v} \in V$
    :::{math}
    \begin{aligned}
           a\cdot(\mathbf{u}+\mathbf{v})=&a\cdot\mathbf{u}+a\cdot\mathbf{v},\\
            (a+b)\cdot\mathbf{u}=&a\cdot\mathbf{u}+b\cdot\mathbf{u},\\
            a\cdot(b\cdot\mathbf{u})=&(ab)\cdot\mathbf{u}.
    \end{aligned}
    :::

3.  **Elemento neutro aditivo**:\
    Existe un vector $\mathbf{0}\in V$ tal que
    $$\mathbf{v}+\mathbf{0}=\mathbf{v}\, \forall \mathbf{v}\in V.$$

4.  **Elemento neutro multiplicativo**:\
    Para todo $\mathbf{v}\in V$ $$1\cdot\mathbf{v}=\mathbf{v},$$ donde 1
    es el elemento neutro de la multiplicación en el cuerpo $K$.

5.  **Elemento inverso aditivo**:\
    Para cada vector $\mathbf{v}\in V$, existe un $-\mathbf{v} \in V$,
    tal que $$\mathbf{v}+(-\mathbf{v})=\mathbf{0}.$$

:::{note} Espacio euclideo 
El conjunto
$\mathbb{R}^n=\{ (x_1,x_2,\ldots,x_n)|$
$x_i\in \mathbb{R}, i=1,2,\ldots,n \}$ con las operaciones comunes
(adición y el producto de un vector por un escalar) define un espacio
vectorial.
:::

:::{note} Espacio de funciones 
El conjunto de todas las funciones
continuas sobre un intervalo con las operaciones de suma de funciones y
multiplicación por un escalar es un espacio vectorial.
:::

:::{note} Espacio de matrices
El conjunto de todas las matrices de
tamaño $m\times n$ sobre un cuerpo $K$ con las operaciones de suma de
matrices y multiplicación por un escalar es un espacio vectorial.
:::

### Expansión lineal (span) de un conjunto de vectores

Si $\{\mathbf{v}_1,\mathbf{v}_2,\ldots,\mathbf{v}_n \}$ es un espacio
vectorial $V$, se define el $\text{span}(V)$ como el conjunto de todos
los vectores que pueden escribirse como una combinación lineal del
conjunto original, es decir, el conjunto $\mathbf{x}\in V$ tal que
$$\mathbf{x}=c_1 \cdot\mathbf{v}_1 +c_2 \cdot\mathbf{v}_2+\ldots + c_n \cdot \mathbf{v}_n,
    \label{eq:span}$$ donde $c_1,c_2,\ldots,c_n$ son escalares
pertenecientes al cuerpo sobre el cual está definido el espacio
vectorial.

Si $\mathbf{x}=\mathbf{0}$ para alguna escogencia de
$c_1, c_2, \ldots, c_n$; es decir
:::{math}
:label: eq-span
\mathbf{x}=c_1 \cdot\mathbf{v}_1 +c_2 \cdot\mathbf{v}_2+\ldots + c_n \cdot \mathbf{v}_n=\mathbf{0}
::: 
    
se dice que los vectores
$\mathbf{v}_1, \mathbf{v}_2, \ldots ,\mathbf{v}_n$ son *linealmente
dependientes*. En el caso contrario, es decir, si la [Ecuación %s](#eq-span)
 no
se satisface para ninguna escogencia de los coeficientes, se dice que
los vectores son *linealmente independientes*, y por lo tanto, ningún
vector del conjunto puede expresarse como una combinación lineal de los
otros.

:::{note} span de espacio vectorial 
Considere los vectores
$\mathbf{v}_1=(1,0)$ y $\mathbf{v}_2=(0,1)$.
Cualquier vector $\mathbf{w}=(a,b)$ en $\mathbb{R}^2$ (donde $a$ y $b$
son números reales) se puede escribir como
$$\mathbf{w}=a\cdot\mathbf{v}_1 + b\cdot\mathbf{v}_2=a\cdot (1,0)+b\cdot (0,1)=(a,b).$$
Es decir, $$\text{span}\{\mathbf{v}_1, \mathbf{v}_2 \}=\mathbb{R}^2$$
:::

La **dimensión de un espacio vectorial** es el número máximo de vectores
linealmente independientes que puede contener, y también es igual al
número de vectores en cualquier base del espacio.
Si un conjunto de vectores son linealmente independientes, el span de
esos vectores define un espacio cuya dimensión es igual al número de
vectores del conjunto.

### Vectores base

Una **base** de un espacio vectorial es un conjunto de vectores
linealmente independientes y cuyo span cubre todo el espacio. Cada
vector en el espacio puede expresarse de manera única como combinación
lineal de los vectores de la base.
Si $V$ es un espacio vectorial $N$-dimensional, cualquier conjunto de
$N$ vectores linealmente independientes
$\mathbf{e}_1,\mathbf{e}_2,\ldots,\mathbf{e}_N$ forman una *base* para
$V$; en cuyo caso, cualquier elemento $\mathbf{x}$ de $V$ puede
escribirse como una combinación lineal de
$\mathbf{e}_1,\mathbf{e}_2,\ldots,\mathbf{e}_N$:
$$\mathbf{x}=x_1 \cdot \mathbf{e}_1+x_2\cdot \mathbf{e}_2+\ldots +x_N \cdot \mathbf{e}_N = \sum_{i=1}^N x_i \cdot \mathbf{e}_i$$
Los coeficientes $x_i$ se llaman los *componentes* de $\mathbf{x}$ con
respecto a la base $\mathbf{e}_i$.

:::{note} Base de $\mathbb{R}^2$ (dimensión finita)
Los vectores
$\mathbf{v}_1=(1,0)$ y $\mathbf{v}_2=(0,1)$ son una base de
$\mathbb{R}^2$.
:::

:::{note} Base de $C([a,b])$ (dimensión infinita)
Considere el espacio
de funciones continuas definidas en un intervalo cerrado $[a,b]$:
$$f: [a,b]\rightarrow \mathbb{R}.$$

Este espacio suele denotarse como $C([a,b])$.
La dimensión de este espacio es infinita; pues no es posible encontrar
un conjunto finito de funciones $f_1,f_2,\ldots,f_n$ tales que cualquier
otra función continua en $[a,b]$ pueda ser expresada como una
combinación lineal de estas $n$ funciones.
:::

## Producto interno, ortogonalidad y norma 

El **producto interno** es una operación que asocia dos vectores en un
espacio vectorial con un número (un escalar).
Un producto interno en $V$ es una función
$\langle \cdot , \cdot \rangle : V \times V \rightarrow \mathbb{R} \,\text{\'o } \mathbb{C}$
que asigna a cada par de vectores $\mathbf{u}, \mathbf{v} \in V$ un
número $\langle \mathbf{u} , \mathbf{v} \rangle$ que satisface
:::{math}
\begin{aligned}
\langle \mathbf{u},\mathbf{v}\rangle =& \langle \mathbf{v},\mathbf{u}\rangle^*=\overline{\langle \mathbf{v},\mathbf{u}\rangle}\\
\langle \mathbf{u},a \mathbf{v}+b \mathbf{w}\rangle =& a \langle \mathbf{u},\mathbf{v}\rangle + b\langle \mathbf{u},\mathbf{w}\rangle \\
\langle a \mathbf{u}+b \mathbf{v}, \mathbf{w}\rangle =& a^* \langle \mathbf{u},\mathbf{w}\rangle + b^*\langle \mathbf{v},\mathbf{w}\rangle\\
\langle a \mathbf{u},b \mathbf{v}\rangle =&a^*b \langle \mathbf{u},\mathbf{v}\rangle
\end{aligned}
:::

para todos los vectores $\mathbf{u}, \mathbf{v}, \mathbf{w}\in V$ y
$a,b$ escalares.

:::{note} Producto punto
En el espacio euclidiano $\mathbb{R}^n$, el
producto interno estándar (o producto punto) entre dos vectores
$\mathbf{u} = (u_1, u_2, \dots, u_n)$ y
$\mathbf{v} = (v_1, v_2, \dots, v_n)$ se define como:
$$\langle \mathbf{u}, \mathbf{v} \rangle = \mathbf{u} \cdot \mathbf{v} = u_1 v_1 + u_2 v_2 + \dots + u_n v_n = \sum_{i=1}^n u_i v_i$$
:::

#### Ortogonalidad

Dos vectores, en un espacio vectorial general, se dice que son
*ortogonales* si

$$\langle \mathbf{u},\mathbf{v}\rangle =\mathbf{0}.$$

La *norma* de un vector se define como
$||\mathbf{u}||=\langle \mathbf{u},\mathbf{u}\rangle^{1/2}$. En general,
$\langle \mathbf{u},\mathbf{u}\rangle$ puede ser negativo o positivo.
Los espacios donde $\langle \mathbf{u},\mathbf{u}\rangle \geq 0$ se dice
que tienen *norma semidefinida positiva*.
Una base de un espacio vectorial $N$-dimensional se dice *ortonormal* si
$$\langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_j\rangle=\delta_{ij},$$
donde $$\delta_{ij}=\left\{\begin{matrix}
    1 & \mbox{para } i=j,\\
    0 & \mbox{para } i\neq j.\
\end{matrix}
\right.$$ se denomida la *delta de Kronecker*.
En dicha base, podemos expresar cualesquiera dos vectores $\mathbf{u}$ y
$\mathbf{v}$ como
$$\mathbf{u}=\sum_{i=1}^N a_i\hat{\mathbf{e}}_i \qquad \mbox{y} \qquad \mathbf{v}=\sum_{i=1}^N b_i\hat{\mathbf{e}}_i,$$
de donde
$$\langle \hat{\mathbf{e}}_j,\mathbf{u}\rangle = \sum_{i=1}^N \langle \hat{\mathbf{e}}_j,a_i  \hat{\mathbf{e}}_i\rangle= \sum_{i=1}^N a_i \langle\hat{\mathbf{e}}_j,\hat{\mathbf{e}}_i\rangle =a_j.$$

Por lo tanto, es posible expresar el producto interno de $\mathbf{u}$ y
$\mathbf{v}$ en términos de sus componentes en una base ortonormal:
:::{math}
\begin{aligned}
\langle \mathbf{u},\mathbf{v}\rangle = &\langle a_1\hat{\mathbf{e}}_1+a_2\hat{\mathbf{e}}_2+\ldots + a_N\hat{\mathbf{e}}_N,b_1\hat{\mathbf{e}}_1+b_2\hat{\mathbf{e}}_2+\ldots + b_N\hat{\mathbf{e}}_N \rangle \\
=& \sum_{i=1}^N a_i^*b_i \langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_i\rangle+\sum_{i=1}^N \sum_{j\neq i}^N a_i^*b_i \langle \hat{\mathbf{e}}_i,\hat{\mathbf{e}}_j\rangle \\
=& \sum_{i=1}^N a_i^*b_i.
\end{aligned}
:::

En general, si $\mathbf{e}_1, \mathbf{e}_2,\ldots, \mathbf{e}_N$ no son
ortogonales, pueden definirse $N^2$ números
$$G_{ij}=\langle \mathbf{e}_i,\mathbf{e}_j \rangle,$$ de manera que si
$\mathbf{u}=\displaystyle \sum_{i=1}^N a_i \mathbf{e}_i$ y
$\mathbf{v}=\displaystyle \sum_{i=1}^N b_i \mathbf{e}_i$
:::{math}
\begin{aligned}
    \langle \mathbf{u},\mathbf{v}\rangle =&\displaystyle \biggl\langle \sum_{i=1}^N a_i \mathbf{e}_i , \sum_{j=1}^N b_j \mathbf{e}_j\biggr\rangle \nonumber \\
    =& \sum_{i=1}^N \sum_{j=1}^N a_i^*b_j \langle \mathbf{e}_i,\mathbf{e}_j \rangle \nonumber \\
    =&\sum_{i=1}^N \sum_{j=1}^N a_i^*G_{ij}b_j.
\end{aligned}
:::

#### Norma

El producto interno es la base para definir **la norma** de un vector
$\mathbf{v}$, $\| \mathbf{v} \|$, como

$$\|\mathbf{v}\|^2 = \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle}$$

En aquellos espacios vectoriales donde
$\langle \mathbf{u},\mathbf{u}\rangle \geq 0$ para todo
$\mathbf{u}, \mathbf{v} \in V$ se cumplen las siguientes relaciones

1.  *Desigualdad de Schwarz*
    $$|\langle \mathbf{u}|\mathbf{v}\rangle|\leq ||\mathbf{u} || \, ||\mathbf{v} ||,$$
    donde la igualdad se cumple en caso que $\mathbf{u}=a \mathbf{v}$.

2.  *Desigualdad triangular*
    $$||\mathbf{u} +\mathbf{v} || \leq ||\mathbf{u} || + ||\mathbf{v} ||,$$

3.  *Desigualdad de Bessel*
    $$||\mathbf{u}||^2 \geq \sum_i |\langle \hat{\mathbf{e}}_i|\mathbf{u}\rangle|^2,$$
    o equivalentemente

    $$|\langle \mathbf{u},\mathbf{u}\rangle| \geq  \sum_i |a_i|^2,$$
    donde $\hat{\mathbf{e}}_i$ con $i=1,2,\ldots,N$ es una base
    ortonormal del espacio vectorial $N-$dimensional y $a_i$ son las
    componentes de $\mathbf{u}$ en dicha base.

4.  *Igualdad del paralelogramo*
    $$||\mathbf{u}+\mathbf{v}||^2 +||\mathbf{u}-\mathbf{v}||^2= 2(||\mathbf{u}||^2+||\mathbf{v}||^2),$$

## Espacio de Hilbert y notación de Dirac 

Un **espacio de Hilbert**[^2] es una generalización del concepto de
espacio euclídeo. Esta generalización extiende los métodos del álgebra
lineal y el cálculo aplicados en el espacio euclídeo de dos dimensiones
y tres dimensiones a los espacios de dimensión arbitraria, incluyendo
los espacios de dimensión infinita.

En términos generales, un espacio de Hilbert es un **espacio vectorial
completo con respecto a un producto interno**.

Considere el espacio de funciones continuas definidas en un intervalo
cerrado $[a,b]$: $$f: [a,b]\rightarrow \mathbb{R}.$$

Sean $y_n(x)$, $n=0,1,...,\infty$ un conjunto de funciones base, de
manera que cualquier función "bien portada\" en el intervalo
$a\leq x\leq b$ puede escribirse como una combinación lineal de dichas
funciones:

$$f(x)=\sum_{n=0}^\infty c_n y_n(x)$$

Se define el *producto interno* mediante
$$\langle f|g \rangle=\int_a^b f^*(x)g(x)\rho(x)dx,$$ donde $\rho(x)$ es
una función real no negativa en el intervalo $a\leq x\leq b$, denominada
*función de peso*.
Dos funciones se dicen *ortonormales* (respecto a la función de peso
$\rho (x)$) en el intervalo $[a,b]$ si
$$\langle f|g \rangle =\int_a^b f^*(x)g(x)\rho(x)dx=0,$$ y la *norma* de
la función se define como 
:::{math}
\begin{aligned}
    ||f||^{1/2}=\langle f|f \rangle^{1/2} =&\left[\int_a^b f^*(x)f(x)\rho(x)dx\right]^{1/2} \nonumber \\ 
    =&\left[\int_a^b |f(x)|^2 \rho(x)dx\right]^{1/2}.
\end{aligned}
:::

Es común definir un *función normalizada* como $\hat{f}=f/||f||$, la
cual tiene norma igual a la unidad.
Un espacio vectorial infinito-dimensional de funciones, que cuente con
un producto interno definido, se llama *espacio de Hilbert*.
La notación $\langle \phi | \psi \rangle$, conocida como ***formalismo
de Dirac*** (o notación bra-ket)[^3], es la notación estándar de la
mecánica cuántica para describir estados cuánticos y operaciones sobre
ellos en un espacio de Hilbert. El término $\langle \phi |$ se denomina
*bra* y el término $| \psi \rangle$, *ket*.

:::{note} Mecánica cuántica
En mecánica cuántica, el estado de un
sistema físico se identifica con un vector (ket) en el espacio de
Hilbert complejo, $\mathcal{H}$.
Las observables de un sistema (como la posición, el momento, y la
energía) se representan por operadores lineales en el espacio de
Hilbert. Estos operadores actúan sobre los vectores del espacio y sus
valores esperados se calculan utilizando el producto interno. Por
ejemplo, el operador Hamiltoniano describe la energía total del sistema.

-   $|\psi\rangle=\begin{pmatrix}
         1\\0
         \end{pmatrix}$ puede representar un estado en un espacio de dos
    dimensiones.

-   $\langle \phi |$ es el conjugado transpuesto de un ket. Representa
    un elemento del espacio dual del espacio de Hilbert.
    Por ejemplo, si $|\phi\rangle=\begin{pmatrix}
         1\\i
         \end{pmatrix}$ $\langle \phi |=(1\quad -i).$

-   Si $|\psi\rangle$ y $| \phi \rangle$ son estados cuánticos,
    $\langle \phi | \psi\rangle$ es una medida de la probabilidad de
    transición del estado $|\psi\rangle$ al $|\phi\rangle$.
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
    

[^3]: Paul A. M. Dirac, \"The Principles of Quantum Mechanics,\" Oxford
    University Press, 1930.


:::{seealso} Referencias

@boas2006mathematical [Cap. 3.14 "General Vector Spaces", pág. 72-81]

@riley2006mathematical [Cap. 8 "Matrices and vector spaces", pág. 241-247]

:::