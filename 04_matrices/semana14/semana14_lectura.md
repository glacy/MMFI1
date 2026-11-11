---
title: Representacion matricial de operadores
description: Operadores y matrices
short_title: Operadores y matrices
author: " "
tags: [matrices, operadores, representación, determinantes, autovalores, autovectores]
subject: Operadores y matrices - Semana 11
keywords: [operadores,representación, matrices, determinantes, autovalores, autovectores]
exports:
 - format: pdf
   template: curvenote
   output: ./semana11_lectura.pdf
downloads:
  - file: ./semana11_lectura.md
    title: semana11_lectura.md
  - file: ./semana11_lectura.pdf
    title: semana11_lectura.pdf
---

:::{aside} [Dr. Sabrina Maniscalco](https://www.quantumlah.org/people/profile/sabrina_maniscalco)

es una física teórica italiana reconocida por su trabajo en *información cuántica, decoherencia y dinámica de sistemas cuánticos abiertos*. Es profesora en la Universidad de Helsinki y directora ejecutiva de la plataforma [*Algorithmiq*](https://algorithmiq.fi/), una empresa que desarrolla algoritmos cuánticos aplicados al descubrimiento de fármacos. Su investigación se centra en entender cómo los sistemas cuánticos interactúan con su entorno y cómo estos efectos pueden aprovecharse o mitigarse en el desarrollo de tecnologías cuánticas prácticas, como computadoras y sensores cuánticos.  


```{figure} ./SabrinaManiscalco.png
:label: fig-SabrinaManiscalco
:alt: Retrato de la Dra. Sabrina Maniscalco
:align: center
Dra. Sabrina Maniscalco (1974–)
:::

```{note} Objetivos de aprendizaje
Al finalizar esta lección, será capaz de:

1. **Expresar operadores lineales en forma matricial** en una base ortonormal, identificando cómo las componentes de la matriz representan la acción del operador sobre los vectores del espacio de Hilbert.

2. **Determinar los autovalores y autovectores** de un operador lineal, comprendiendo su significado físico en términos de los posibles resultados de una medición en mecánica cuántica.

3. **Analizar la degeneración espectral** de un operador, diferenciando entre autovalores no degenerados y degenerados.

4. **Reconocer las propiedades de los operadores hermíticos**, demostrando que sus autovalores son reales y sus autovectores forman una base ortonormal del espacio de Hilbert, y aplicando estos conceptos en la interpretación de observables cuánticos.
```

+++ {"part": "abstract"}

En el marco de la mecánica cuántica, los operadores lineales en espacios de Hilbert describen observables físicos, transformaciones y evoluciones temporales de los sistemas. Cada operador puede representarse de manera equivalente mediante una **matriz**, una forma particularmente útil para realizar cálculos numéricos y simbólicos. En una base ortonormal $\{|\phi_i\rangle\}$, los elementos de matriz del operador $\mathcal{A}$ se definen como $A_{ij}=\langle \phi_i|\mathcal{A}|\phi_j\rangle$, lo que permite expresar su acción sobre un estado $|\psi\rangle$ como un producto matricial. Esta representación matricial hace explícitas las propiedades del operador, como su adjunto, su hermiticidad y su espectro de autovalores, los cuales corresponden a los posibles resultados medibles de una observación física. En este sentido, la representación matricial constituye el puente entre la formulación abstracta del espacio de Hilbert y los métodos computacionales que permiten simular y predecir el comportamiento de sistemas cuánticos reales.

+++




# Representación matricial de operadores

La representación matricial de operadores en mecánica cuántica es un
concepto fundamental que surgió en el desarrollo temprano de la teoría
cuántica. Este enfoque permite representar operadores, que corresponden
a observables físicos, como matrices, facilitando los cálculos de
valores propios y vectores propios, fundamentales para describir el
comportamiento cuántico de sistemas.
Consideremos un operador $\mathcal{L}$, tal que
$$\mathcal{L}|\psi\rangle= |\phi\rangle.
    \label{eq:L}$$

donde $|\psi\rangle$ y $|\phi\rangle$ son vectores de un espacio
expandido por un conjunto completo de estados bases ortogonales
$\{|\varphi_n\rangle;\;n=1,2,3,\ldots \}$; de manera que
$$\mathcal{L}|\psi\rangle= |\phi\rangle= \mathcal{L} \sum_m |\varphi_m\rangle \langle\varphi_m | \psi \rangle= \sum_m \mathcal{L}|\varphi_m\rangle \langle\varphi_m | \psi \rangle,$$
de donde
$$\langle \varphi_n | \phi \rangle=\sum_m\langle \varphi_n | \mathcal{L} |\varphi_m \rangle \langle \varphi_m |\psi \rangle.$$

Note que esta última expresión es equivalente a
:::{math}
:label: eq-componente-vector
\phi_n = \sum_m L_{nm}\psi_m,
:::
con
$$L_{nm}=\langle \varphi_n | \mathcal{L} |\varphi_m \rangle.$$ Por lo
tanto, [Ecuación %s](#eq-componente-vector) puede escribirse como una ecuación matricial

$$\begin{pmatrix}
\phi_1 \\
\phi_2\\
\phi_3 \\
\vdots
\end{pmatrix} =
\begin{pmatrix}
L_{11} & L_{12} & L_{13} & \cdots \\
L_{21} & L_{22} & L_{23} & \cdots \\
L_{31} & L_{32} & L_{33} & \cdots \\
\vdots & \vdots & \vdots & \ddots \\
\end{pmatrix}\begin{pmatrix}
\psi_1 \\
\psi_2\\
\psi_3 \\
\vdots
\end{pmatrix}.$$

Se dice, por lo tanto, que el operador $\mathcal{L}$ es **representado**
por la matriz $L$: $$\mathcal{L}\rightarrow L=\begin{pmatrix}
L_{11} & L_{12} & L_{13} & \cdots \\
L_{21} & L_{22} & L_{23} & \cdots \\
L_{31} & L_{32} & L_{33} & \cdots \\
\vdots & \vdots & \vdots & \ddots\\
\end{pmatrix}.$$ 

Los números complejos $L_{nm}$ se llaman los *elementos
matriz de del operador* $\mathcal{L}$ respecto a la base de estados
$\{|\varphi_n \rangle;\, n=1,2,\ldots, \}$.

:::{note} Representación matricial de un operador

Considere el operador
$\mathcal{A}$ definido por
$$\mathcal{A}|\pm\rangle=\pm \frac{1}{2}i\hbar |\mp \rangle,$$ donde
$|\pm\rangle$ son la base usual de estados para un sistema de medio
espín.
Por lo tanto, la representación matricial de $\mathcal{A}$ es
$$\mathcal{A}=\begin{pmatrix}
\langle + | \mathcal{A} | +\rangle & \langle + | \mathcal{A} | -\rangle\\
\langle - | \mathcal{A} | +\rangle & \langle - | \mathcal{A} | -\rangle
\end{pmatrix}= \begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}.$$
:::

## Propiedades de la representación matricial de operadores

### Igualdad

Dos operadores son iguales si sus correspondientes elementos matriz son iguales, es decir, $\mathcal{A}=\mathcal{B}$ si $A_{mn}=B_{mn}$.

### Operador unidad y cero

El operador unidad $\hat{1}$ es el operardor para el cual $\hat{1}|\psi\rangle=|\psi\rangle$ para todos los estados $|\psi\rangle$. Tiene por representación matricial la matriz identidad, es decir $\hat{1}_{mn}=\delta_{mn}$. El operador unidad tiene la misma forma en todas las representaciones, es decir, sin importar la base del espacio.

El operador cero $\hat{0}$ es el operardor para el cual $\hat{0}|\psi\rangle=0$ para todos los estados $|\psi\rangle$. Sus elementos matriz son todos cero.


### Suma de operdores

Para dos operadores $\mathcal{A}$ y $\mathcal{B}$ con elementos matriz $A_{mn}$ y $B_{mn}$, los elementos matriz de su suma $\mathcal{A}+\mathcal{B}$ están dados por $$S_{mn}=A_{mn}+B_{mn}.$$

### Multiplicación por un número complejo

Si $\lambda$ es un número complejo, el elemento matriz del operador $\mathcal{C}=\lambda\mathcal{A}$ está dado por $$C_{mn}=\lambda A_{mn}. $$

### Producto de operadores

Dados dos operadores $\mathcal{A}$ y $\mathcal{B}$ con elementos matriz $A_{mn}$ y $B_{mn}$, los elementos matriz de su producto $\mathcal{P}=\mathcal{A}\mathcal{B}$ están dados por $$P_{mn}=\sum_{k}A_{mk}B_{kn},$$ es deicr, la regla usual de multiplicación de matrices; por lo tanto $\mathcal{A}\mathcal{B}\neq \mathcal{B}\mathcal{A}$

### Inversa de un operador

Encontrar la inversa de un operador, dada su representación matricial, es equivalente a encontrar la inversa de la matriz, sujeto, por supuesto, a que la inversa de la matriz exista.


## Autovalores y autovectores 

En el contexto de operadores lineales, un **autovalor** ($a_\phi$) y un
**autovector** ($|\phi\rangle$) se definen mediante la ecuación
característica: $$\mathcal{A}|\phi\rangle = a_\phi |\phi\rangle.$$

En mecánica cuántica, muchas observables físicas, como la energía, el
momento angular o la posición, son representados por operadores. Los
autovalores de estos operadores corresponden a los posibles resultados
de las mediciones, mientras que los autovectores describen los estados
en los que el sistema puede encontrarse.

La determinación de los estados y valores propios de un operador dado es
equivalente, en notación matricial, a resolver 

:::{math}
\begin{pmatrix}
A_{11} & A_{12} & \cdots \\
A_{21} & A_{22} & \cdots \\
A_{31} & A_{32} & \cdots \\
\vdots & \vdots & \ddots & \\
\end{pmatrix}\begin{pmatrix}
\phi_1 \\
\phi_2\\
\vdots
\end{pmatrix}=a \begin{pmatrix}
\phi_1 \\
\phi_2\\
\vdots
\end{pmatrix},
:::

lo que equivale al conjunto simultáneo de ecuaciones
lineales homogéneas 

:::{math}
:label: eq-eigen-homogenea
\begin{pmatrix}
A_{11}-a & A_{12} & \cdots \\
A_{21} & A_{22}-a & \cdots \\
\vdots & \vdots & \ddots & \\
\end{pmatrix}\begin{pmatrix}
\phi_1 \\
\phi_2\\
\vdots
\end{pmatrix}=0,
:::

la cual debe resolverse para encontrar *todos los
posibles valores de* $a$ y los correspondientes valores de las
componentes $\phi_1,\phi_2,\ldots,\phi_n$ de los eigen-vectores.

El determinante de coeficientes debe *desvanecerse* para garantizar una
solución no trivial para los componentes $\phi_1,\phi_2,\ldots$:
$$\begin{vmatrix}
A_{11}-a & A_{12} & \cdots \\
A_{21} & A_{22}-a & \cdots \\
\vdots & \vdots & \ddots & \\
\end{vmatrix}=0;$$ 

que genera la llamada *ecuación secular*
(*característica* o *polinomio característico*). Una vez resuelta esta
ecuación para obtener los posibles eigen-valores $a$, estos deben
susituirse de nuevo en la [Ecuación %s](#eq-eigen-homogenea) para determinar las componentes
$\phi_1,\phi_2,\ldots,\phi_n$ de los eigen-estados asociados.

:::{note} Autovalores y autovectores de una matríz

Considere dos
estados
$$|1\rangle=\frac{1}{\sqrt{2}}[|-\rangle - i|+\rangle] \quad \mbox{y} \quad |2\rangle=\frac{1}{\sqrt{2}}[|-\rangle + i|+\rangle],$$

donde $|\pm\rangle$ son la base usual de estados para un sistema de
medio espín: $$|+\rangle= \begin{pmatrix}
1 \\
0
\end{pmatrix}, \quad |-\rangle= \begin{pmatrix}
0 \\
1
\end{pmatrix},$$ de manera que
$$|1\rangle= \frac{1}{\sqrt{2}}\begin{pmatrix}
-i \\
1
\end{pmatrix}, \quad |2\rangle= \frac{1}{\sqrt{2}}\begin{pmatrix}
i \\
1
\end{pmatrix}.$$

Ahora, tomemos el operador $\mathcal{A}$ definido por

$$\mathcal{A}=\begin{pmatrix}
\langle + | \mathcal{A} | +\rangle & \langle + | \mathcal{A} | -\rangle\\
\langle - | \mathcal{A} | +\rangle & \langle - | \mathcal{A} | -\rangle
\end{pmatrix}= \begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}.$$

Por ejemplo 

```{math}
\begin{aligned}
\mathcal{A}|1\rangle=& \begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}\begin{pmatrix}
-i/\sqrt{2} \\
1/\sqrt{2} 
\end{pmatrix} \\
=&-\frac{1}{2}i\hbar\begin{pmatrix}
1/\sqrt{2} \\
i/\sqrt{2} 
\end{pmatrix}\\
=&\frac{1}{2}\hbar|1\rangle, 
\end{aligned}
```

por lo que $|1\rangle$ es un eigen-estado de
$\mathcal{A}$ con eigen-valor $\displaystyle\frac{\hbar}{2}$.
:::


:::{note} Operador de posición 
Considera una partícula confinada en
una caja con 3 posiciones discretas, las cuales están representadas por
los estados $|x_1\rangle$, $|x_2\rangle$ y $|x_3\rangle$. El operador de
posición $\hat{x}$ en esta base está dado por la matriz:
$$\hat{x} = \begin{pmatrix} x_1 & 0 & 0 \\ 0 & x_2 & 0 \\ 0 & 0 & x_3 \end{pmatrix}.$$

En este caso, la matriz es diagonal, por lo que los valores propios son
simplemente los elementos de la diagonal:

$$\lambda_1 = x_1, \quad \lambda_2 = x_2, \quad \lambda_3 = x_3$$ Los
vectores propios son los vectores canónicos:

```{math}
|v_1\rangle = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \quad |v_2\rangle = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \quad |v_3\rangle = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}
```
:::

### Degeneración 

Un autovalor es **degenerado** cuando hay más de un autovector (o estado
cuántico) asociado a él. Es decir, varios vectores propios distintos
pueden compartir el mismo autovalor. Esto se expresa como:

$$\mathcal{A}|\psi_1\rangle = a_\phi |\psi_1\rangle, \quad \mathcal{A}|\psi_2\rangle = a_\phi |\psi_2\rangle$$

En este caso, $|\psi_1\rangle$ y $|\psi_2\rangle$ son autovectores
distintos que corresponden al mismo autovalor $a_\phi$.
La degeneración tiene importantes implicaciones en mecánica cuántica, ya
que a menudo está relacionada con la estructura del sistema y sus
simetrías. Por ejemplo, en sistemas con simetría esférica, el momento
angular tiene autovalores degenerados.
En general, para un espacio de estados de dimensión finita, un operador
$\mathcal{A}$ tendrá uno o más eigen-valores discretos
$a_1, a_2, \ldots$ y eigen-vectores asociados
$|a_1\rangle, |a_2\rangle, \ldots$. El conjunto de todos los
eigen-valores de un operador se conoce como su *espectro de
eigen-valores* del operador.

:::{note} Degeneración de autovalores en sistemas con simetría esférica

En mecánica cuántica, muchos sistemas físicos poseen simetría esférica, como el átomo de hidrógeno o el oscilador armónico tridimensional.  

En estos casos, el **operador del momento angular cuadrado**, $\hat{L}^2$, y el operador de su componente en $z$, $\hat{L}_z$, desempeñan un papel central en la descripción de los estados cuánticos.

Los estados propios de estos operadores se denotan comúnmente por $|l,m\rangle$, donde:

- $l = 0, 1, 2, \ldots$ es el **número cuántico del momento angular**,
- $m = -l, -l+1, \ldots, l$ es el **número cuántico magnético**.

Estos satisfacen:

$$
\hat{L}^2 |l,m\rangle = \hbar^2 l(l+1) |l,m\rangle,
\quad
\hat{L}_z |l,m\rangle = \hbar m |l,m\rangle.
$$


El autovalor de $\hat{L}^2$ depende únicamente de $l$, no de $m$. Esto significa que **todos los estados con el mismo $l$ pero diferentes valores de $m$ comparten el mismo autovalor de energía angular**, lo cual constituye una **degeneración $(2l+1)$-ple**.

Por ejemplo, para $l = 1$:

$$
\hat{L}^2 |1,m\rangle = 2\hbar^2 |1,m\rangle,
\quad m = -1, 0, +1.
$$

Por lo tanto, el autovalor $\lambda = 2\hbar^2$ tiene **degeneración triple** (tres autovectores asociados).

---

En la base $\{|1,1\rangle, |1,0\rangle, |1,-1\rangle\}$, el operador $\hat{L}_z$ tiene la representación matricial:

```{math}
\hat{L}_z =
\hbar
\begin{pmatrix}
1 & 0 & 0\\
0 & 0 & 0\\
0 & 0 & -1
\end{pmatrix};
```

mientras que el operador $\hat{L}^2$ es proporcional a la identidad en esta base:

```{math}
\hat{L}^2 =
2\hbar^2
\begin{pmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
0 & 0 & 1
\end{pmatrix}.
```

Esto refleja que **todos los estados con el mismo $l$ tienen igual autovalor de $\hat{L}^2$**, pero distintos valores de $\hat{L}_z$.

---


Esta **degeneración triple** está directamente relacionada con la **simetría rotacional del espacio**.  

Dado que las leyes de la física son invariantes bajo rotaciones, no existe dirección preferida en el espacio, y por tanto, los tres estados con $m=-1,0,+1$ son físicamente equivalentes en energía angular.

En sistemas como el **átomo de hidrógeno**, esta simetría explica por qué los orbitales $p_x$, $p_y$ y $p_z$ (asociados a $l=1$) tienen la **misma energía**, a pesar de orientarse en direcciones espaciales distintas.

---

En resumen

| Operador | Autovalores | Estados propios | Grado de degeneración |
|:----------|:-------------|:----------------|:----------------------:|
| $\hat{L}^2$ | $\hbar^2 l(l+1)$ | $\left\|l,m\rangle\right.$ con $m=-l,\ldots,l$ | $2l+1$ |
| $\hat{L}_z$ | $\hbar m$ | $\left\|l,m\rangle \right.$ | 1 |

---



Para $l = 1$ (momento angular de un electrón en un orbital $p$):

```{math}
\begin{aligned}
\hat{L}^2 |1,1\rangle &= 2\hbar^2 |1,1\rangle,\\
\hat{L}^2 |1,0\rangle &= 2\hbar^2 |1,0\rangle,\\
\hat{L}^2 |1,-1\rangle &= 2\hbar^2 |1,-1\rangle.
\end{aligned}
```

Todos los estados tienen el **mismo autovalor de $\hat{L}^2$**, lo que evidencia la degeneración debida a la simetría rotacional.

Por tanto, el subespacio $\mathcal{H}_l$ de dimensión $2l+1=3$ asociado a $l=1$ está degenerado con respecto al operador $\hat{L}^2$.

---


La degeneración en los autovalores es un reflejo matemático de la simetría física del sistema.  Cuando una perturbación (como un campo magnético externo) rompe la simetría, la degeneración puede eliminarse — este fenómeno se conoce como [efecto Zeeman](wiki:Efecto_Zeeman).


:::

## Autovalores hermíticos 

Un operador es **hermítico** si es igual a su adjunto, es decir:

$$\mathcal{A} = \mathcal{A}^\dagger.$$

En términos matriciales, un operador hermítico tiene la propiedad de que
la matriz que lo representa es igual a su traspuesta conjugada

:::{math}
\mathcal{A}^\dagger \rightarrow A^\dagger=
    \begin{pmatrix}
(A^\dagger)_{11} & (A^\dagger)_{12} & \cdots \\
(A^\dagger)_{21} & (A^\dagger)_{22} & \cdots \\
\vdots & \vdots & \ddots & \\
\end{pmatrix}=\begin{pmatrix}
A^*_{11} & A^*_{21} & \cdots \\
A^*_{12} & A^*_{22} & \cdots \\
\vdots & \vdots & \ddots & \\
\end{pmatrix}
::: 

es decir
$$\langle \phi_m | \mathcal{A}^\dagger | \phi_n \rangle = (\langle \phi_n | \mathcal{A} | \phi_m \rangle)^*,$$

o equivalentemente

$$A^\dagger_{mn}=(A_{nm})^*.$$

:::{note} Operador hermítico

 Considere el operador
$$\mathcal{A}= \begin{pmatrix}
0 & -i  \\
i & 0 
\end{pmatrix},$$ por lo que $$\mathcal{A}^\dagger= \begin{pmatrix}
0 & -i  \\
i & 0 
\end{pmatrix},$$ es decir, $\mathcal{A}$ es hermítico.
:::

En la mecánica cuántica, los operadores hermíticos son fundamentales
porque sus **autovalores** son **números reales**, lo cual es esencial,
ya que los autovalores de un operador hermítico corresponden a los
resultados medibles de observables físicos. Esta propiedad implica que los **estados cuánticos asociados a distintos resultados de medición** de un mismo observable son **independientes y distinguibles**.

Por ejemplo, si el observable $\hat{H}$ (Hamiltoniano) tiene dos autovalores distintos $E_1$ y $E_2$, entonces los estados $|\psi_1\rangle$ y $|\psi_2\rangle$ satisfacen:
$$ \langle \psi_1 | \psi_2 \rangle = 0; 
$$
es decir, los estados de energía diferentes son ortogonales. Esta ortogonalidad garantiza que, al medir la energía del sistema en el estado $|\psi_1\rangle$, **nunca se obtendrá** el valor $E_2$ con probabilidad distinta de cero.

---

### Base ortonormal de autovectores

Los operadores hermíticos son además **diagonalizables**, lo cual significa que su conjunto de autovectores forma una **base ortonormal** del espacio de Hilbert.  

Esto permite expandir cualquier estado cuántico como una combinación lineal de autovectores:

:::{math}
|\Psi\rangle = \sum_n c_n |\psi_n\rangle,
:::

donde los coeficientes $c_n = \langle \psi_n | \Psi \rangle$ representan las **amplitudes de probabilidad** de encontrar el sistema en cada estado propio.

El operador puede entonces escribirse en su **forma espectral**:

:::{math}
\mathcal{A} = \sum_n a_n |\psi_n\rangle \langle \psi_n|,
:::

lo que permite expresar sus efectos de manera simple en cualquier estado del sistema.

```{note} Operador de espín

Consideremos el operador de espín $\hat{S}_z$ para una partícula con espín ½:

:::{math}
\hat{S}_z = \frac{\hbar}{2}
\begin{pmatrix}
1 & 0\\
0 & -1
\end{pmatrix}.
:::

Sus autovalores y autovectores son:

:::{math}
\hat{S}_z|+\rangle = \frac{\hbar}{2}|+\rangle, \qquad
\hat{S}_z|-\rangle = -\frac{\hbar}{2}|-\rangle.
:::

Estos satisfacen:
:::{math}
\langle +|-\rangle = 0,
:::
lo que refleja que los estados “espín hacia arriba” y “espín hacia abajo” son ortogonales, es decir, **excluyentes** en una medición del espín en el eje $z$.

```

En resumen,

-   Los **autovalores** representan los posibles resultados de las
    mediciones de un observable cuántico.

-   Los **autovectores** corresponden a los estados cuánticos asociados
    a esos valores medibles.

-   La **degeneración** de autovalores ocurre cuando múltiples estados
    tienen el mismo valor medible.

-   Los **autovalores hermíticos** garantizan que los resultados de las
    mediciones sean números reales, una condición esencial para la
    interpretación física en mecánica cuántica.

-   En el espacio de Hilbert, la ortogonalidad implica que los vectores de estado asociados a distintos autovalores apuntan en **direcciones perpendiculares**.  Por tanto, medir un observable en un estado dado es análogo a proyectar el vector sobre la dirección del autovector correspondiente.

-   Los **autovectores de un operador hermítico** correspondientes a autovalores distintos son ortogonales.  Esta propiedad asegura que los resultados de mediciones diferentes sean independientes y mutuamente excluyentes.

:::{seealso} Referencias

@cresser [11.2 Representations of State Vectors and Operators, 174-184]

@boas2006mathematical [Cap. 2, Sección 11 "EIGENVALUES AND EIGENVECTORS" pag. 148-149]

@riley2006mathematical [Cap. 8.13 "Eigenvectors and eigenvalues"; , pág. 272-282]

:::

