---
title: Representación matricial de operadores, diagonalización y medición
description: Resumen de representación matricial de operadores, autovalores y autovectores, diagonalización, probabilidad, valores esperados e incertidumbre
short_title: Operadores y matrices
author: " "
tags: [matrices, operadores, representación, autovalores, autovectores, hermiticidad, diagonalización, probabilidad, valores esperados, incertidumbre]
subject: Operadores y matrices - Semana 12
keywords: [operadores, representación, matrices, autovalores, autovectores, diagonalización, probabilidad, valores esperados, incertidumbre]
exports:
 - format: pdf
   template: curvenote
   output: ./semana12_lectura.pdf
downloads:
  - file: ./semana12_lectura.md
    title: semana12_lectura.md
  - file: ./semana12_lectura.pdf
    title: semana12_lectura.pdf
---

:::{aside} [Dr. Sabrina Maniscalco](https://www.quantumlah.org/people/profile/sabrina_maniscalco)

es una física teórica italiana reconocida por su trabajo en *información cuántica, decoherencia y dinámica de sistemas cuánticos abiertos*. Es profesora en la Universidad de Helsinki y directora ejecutiva de la plataforma [*Algorithmiq*](https://algorithmiq.fi/). Su investigación se centra en entender cómo los sistemas cuánticos interactúan con su entorno y cómo estos efectos pueden aprovecharse en el desarrollo de tecnologías cuánticas prácticas.

```{figure} ./../images/SabrinaManiscalco.png
:label: fig-SabrinaManiscalco
:alt: Retrato de la Dra. Sabrina Maniscalco
:align: center
Dra. Sabrina Maniscalco (1974–)
:::

```{note} Objetivos de aprendizaje
Al finalizar esta lección, será capaz de:

1. **Expresar operadores lineales en forma matricial** en una base ortonormal, identificando cómo las componentes de la matriz representan la acción del operador sobre los vectores del espacio de Hilbert.

2. **Determinar los autovalores y autovectores** de un operador lineal, comprendiendo su significado físico en términos de los posibles resultados de una medición en mecánica cuántica, y **reconocer la degeneración espectral**.

3. **Reconocer las propiedades de los operadores hermíticos**: autovalores reales y autovectores que forman una base ortonormal del espacio de Hilbert.

4. **Aplicar el proceso de diagonalización** para obtener la **representación espectral** de operadores hermíticos, expresándolos como combinaciones lineales de proyectores asociados a sus autovalores.

5. **Calcular probabilidades, valores esperados e incertidumbre** de observables representados por operadores hermíticos mediante el formalismo matricial y la notación de Dirac.
```

+++ {"part": "abstract"}

Esta lección condensa, en una sola unidad, el estudio de la representación matricial de operadores, su diagonalización y el cálculo de magnitudes asociadas a la medición cuántica. En una base ortonormal $\{|\phi_i\rangle\}$, todo operador $\mathcal{A}$ queda representado por una matriz con elementos $A_{ij}=\langle \phi_i|\mathcal{A}|\phi_j\rangle$, lo que permite expresar su acción sobre un estado $|\psi\rangle$ como un producto matricial y hace explícitas propiedades como su espectro de autovalores, que corresponden a los posibles resultados medibles de una observación física. Dado que los operadores que representan observables son hermíticos —autovalores reales y autovectores ortogonales—, siempre pueden diagonalizarse: en la base de autovectores la matriz es diagonal y el operador admite una descomposición espectral en proyectores. Sobre esta base se formula la teoría de la medición: la probabilidad de obtener un resultado, el valor esperado del observable y su incertidumbre.

+++

# Representación matricial de operadores

La representación matricial permite representar operadores —que corresponden a observables físicos— como matrices, facilitando los cálculos de valores y vectores propios fundamentales para describir el comportamiento cuántico de sistemas.
Consideremos un operador $\mathcal{L}$, tal que
$$\mathcal{L}|\psi\rangle= |\phi\rangle,
    \label{eq:L}$$

donde $|\psi\rangle$ y $|\phi\rangle$ son vectores de un espacio expandido por un conjunto completo de estados base ortogonales $\{|\varphi_n\rangle;\;n=1,2,3,\ldots \}$; de manera que
$$\mathcal{L}|\psi\rangle= |\phi\rangle= \mathcal{L} \sum_m |\varphi_m\rangle \langle\varphi_m | \psi \rangle= \sum_m \mathcal{L}|\varphi_m\rangle \langle\varphi_m | \psi \rangle,$$
de donde
$$\langle \varphi_n | \phi \rangle=\sum_m\langle \varphi_n | \mathcal{L} |\varphi_m \rangle \langle \varphi_m |\psi \rangle.$$

Note que esta última expresión es equivalente a
:::{math}
:label: eq-componente-vector
\phi_n = \sum_m L_{nm}\psi_m,
:::
con
$$L_{nm}=\langle \varphi_n | \mathcal{L} |\varphi_m \rangle.$$ Por lo tanto, [Ecuación %s](#eq-componente-vector) puede escribirse como una ecuación matricial

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

Se dice, por lo tanto, que el operador $\mathcal{L}$ es **representado** por la matriz $L$. Los números complejos $L_{nm}$ se llaman los *elementos matriz del operador* $\mathcal{L}$ respecto a la base de estados $\{|\varphi_n \rangle;\, n=1,2,\ldots \}$.

:::{note} Representación matricial de un operador

Considere el operador
$\mathcal{A}$ definido por
$$\mathcal{A}|\pm\rangle=\pm \frac{1}{2}i\hbar |\mp \rangle,$$ donde
$|\pm\rangle$ son la base usual de estados para un sistema de medio espín.
Por lo tanto, la representación matricial de $\mathcal{A}$ es
$$\mathcal{A}=\begin{pmatrix}
\langle + | \mathcal{A} | +\rangle & \langle + | \mathcal{A} | -\rangle\\
\langle - | \mathcal{A} | +\rangle & \langle - | \mathcal{A} | -\rangle
\end{pmatrix}= \begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}.$$
:::

## Autovalores y autovectores

En el contexto de operadores lineales, un **autovalor** ($a_\phi$) y un **autovector** ($|\phi\rangle$) se definen mediante la ecuación característica:
$$\mathcal{A}|\phi\rangle = a_\phi |\phi\rangle.$$

En mecánica cuántica, los autovalores de los operadores que representan observables corresponden a los posibles resultados de las mediciones, mientras que los autovectores describen los estados en los que el sistema puede encontrarse.

La determinación de los estados y valores propios de un operador dado es equivalente, en notación matricial, a resolver el conjunto simultáneo de ecuaciones lineales homogéneas

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

la cual debe resolverse para encontrar *todos los posibles valores de* $a$ y los correspondientes valores de las componentes $\phi_1,\phi_2,\ldots,\phi_n$ de los autovectores.

El determinante de coeficientes debe anularse para garantizar una solución no trivial:
$$\begin{vmatrix}
A_{11}-a & A_{12} & \cdots \\
A_{21} & A_{22}-a & \cdots \\
\vdots & \vdots & \ddots & \\
\end{vmatrix}=0;$$

que genera la llamada *ecuación secular* (*polinomio característico*). Una vez resuelta esta ecuación para obtener los posibles autovalores $a$, estos deben sustituirse de nuevo en la [Ecuación %s](#eq-eigen-homogenea) para determinar las componentes de los autoestados asociados.

:::{note} Autovalores y autovectores de una matriz

Considere dos estados
$$|1\rangle=\frac{1}{\sqrt{2}}[|-\rangle - i|+\rangle] \quad \mbox{y} \quad |2\rangle=\frac{1}{\sqrt{2}}[|-\rangle + i|+\rangle],$$

donde $|\pm\rangle$ son la base usual de estados para un sistema de medio espín: $$|+\rangle= \begin{pmatrix}
1 \\
0
\end{pmatrix}, \quad |-\rangle= \begin{pmatrix}
0 \\
1
\end{pmatrix}.$$ Tomemos el operador $\mathcal{A}$ de la sección anterior. Por ejemplo

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

por lo que $|1\rangle$ es un autoestado de $\mathcal{A}$ con autovalor $\displaystyle\frac{\hbar}{2}$.
:::

:::{note} Operador de posición
Considera una partícula confinada en una caja con 3 posiciones discretas, representadas por los estados $|x_1\rangle$, $|x_2\rangle$ y $|x_3\rangle$. El operador de posición $\hat{x}$ en esta base está dado por la matriz:
$$\hat{x} = \begin{pmatrix} x_1 & 0 & 0 \\ 0 & x_2 & 0 \\ 0 & 0 & x_3 \end{pmatrix}.$$

En este caso, la matriz es diagonal, por lo que los valores propios son simplemente los elementos de la diagonal:
$$\lambda_1 = x_1, \quad \lambda_2 = x_2, \quad \lambda_3 = x_3$$
y los vectores propios son los vectores canónicos.
:::

### Degeneración

Un autovalor es **degenerado** cuando hay más de un autovector asociado a él; es decir, varios autovectores distintos comparten el mismo autovalor. La degeneración tiene importantes implicaciones en mecánica cuántica, ya que a menudo está relacionada con las simetrías del sistema: por ejemplo, en sistemas con simetría esférica los autovalores del operador $\hat{L}^2$ (con valores $\hbar^2 l(l+1)$) tienen una degeneración $(2l+1)$-ple, pues todos los estados $|l,m\rangle$ con $m=-l,\ldots,l$ comparten el mismo autovalor. El conjunto de todos los autovalores de un operador se conoce como su *espectro de autovalores*. Cuando una perturbación (como un campo magnético externo) rompe la simetría, la degeneración puede eliminarse — este fenómeno se conoce como [efecto Zeeman](wiki:Efecto_Zeeman).

## Operadores hermíticos

Un operador es **hermítico** si es igual a su adjunto, es decir:
$$\mathcal{A} = \mathcal{A}^\dagger.$$

En términos matriciales, la matriz que lo representa es igual a su traspuesta conjugada:
$$A^\dagger_{mn}=(A_{nm})^*.$$

Los operadores hermíticos son fundamentales en mecánica cuántica porque sus **autovalores** son **números reales**, lo cual es esencial: los autovalores de un operador hermítico corresponden a los resultados medibles de observables físicos. Además, los autoestados asociados a autovalores distintos son **ortogonales**: si el observable $\hat{H}$ tiene dos autovalores distintos $E_1$ y $E_2$, entonces $\langle \psi_1 | \psi_2 \rangle = 0$. Esta ortogonalidad garantiza que los resultados de mediciones diferentes sean independientes y mutuamente excluyentes.

Los operadores hermíticos son **diagonalizables**: su conjunto de autovectores forma una **base ortonormal** del espacio de Hilbert. Esto permite expandir cualquier estado cuántico como una combinación lineal de autovectores:
:::{math}
:label: eq-expansion
|\Psi\rangle = \sum_n c_n |\psi_n\rangle,
:::

donde los coeficientes $c_n = \langle \psi_n | \Psi \rangle$ representan las **amplitudes de probabilidad** de encontrar el sistema en cada estado propio.

:::{note} Operador de espín

Consideremos el operador de espín $\hat{S}_z$ para una partícula con espín ½:
```{math}
\hat{S}_z = \frac{\hbar}{2}
\begin{pmatrix}
1 & 0\\
0 & -1
\end{pmatrix}.
```

Sus autovalores y autovectores son:
```{math}
\hat{S}_z|+\rangle = \frac{\hbar}{2}|+\rangle, \qquad
\hat{S}_z|-\rangle = -\frac{\hbar}{2}|-\rangle,
```

con $\langle +|-\rangle = 0$: los estados "espín hacia arriba" y "espín hacia abajo" son ortogonales, es decir, **excluyentes** en una medición del espín en el eje $z$.
:::

# Diagonalización y descomposición espectral

La diagonalización de una matriz consiste en **encontrar una base ortonormal de vectores propios en la que la representación matricial del operador se exprese de forma diagonal**. Dado que los operadores hermíticos tienen autovalores reales y autovectores ortogonales, su matriz correspondiente siempre puede diagonalizarse.

Para diagonalizar una matriz $A$,
$$D=P^{-1}AP,$$ donde $P$ es la matriz que contiene los autovectores de $A$ como columnas y $P^{-1}$, su inversa.

:::{note} Diagonalización

Consideremos el operador $\mathcal{A}$ en un espacio de dimensión 2, con representación matricial

```{math}
A = \begin{pmatrix}
2 & 1 \\
1 & 2
\end{pmatrix}.
```

Diagonalizar $A$ significa encontrar una base de autovectores donde su representación sea diagonal. Los autovalores se obtienen de la ecuación característica $\det(A - \lambda I) = 0$:

$$\det \begin{pmatrix} 2 - \lambda & 1 \\ 1 & 2 - \lambda \end{pmatrix} = \lambda^2 - 4\lambda + 3 = 0,$$

de donde
$$\lambda_1 = 3, \quad \lambda_2 = 1.$$

Los autovectores se obtienen resolviendo $(A - \lambda I)\begin{pmatrix}\phi_1 \\ \phi_2\end{pmatrix} = \begin{pmatrix}0 \\ 0\end{pmatrix}$: para $\lambda_1 = 3$ resulta $\phi_1 = \phi_2$, y para $\lambda_2 = 1$ resulta $\phi_1 = -\phi_2$; es decir,

$$| \psi_1 \rangle = \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \qquad | \psi_2 \rangle = \begin{pmatrix} 1 \\ -1 \end{pmatrix}.$$

Formamos la matriz de cambio de base $P$ con estos autovectores como columnas:

$$P = \begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}$$

La matriz $A$ se puede diagonalizar como:

$$D = P^{-1} A P = \begin{pmatrix} 3 & 0 \\ 0 & 1 \end{pmatrix}$$

Esta es la *matriz diagonal* de $A$, donde los elementos diagonales son sus autovalores.
:::

## Representación de vectores bra y ket

En términos de la base de estados $\{|\varphi_n\rangle;\; n=1,2,\ldots \}$, un vector arbitrario $|\psi\rangle$ puede escribirse como
$$|\psi\rangle=\sum_n |\varphi_n\rangle\langle\varphi_n|\psi\rangle.$$
Si escribimos $$\langle\varphi_n|\psi\rangle = \psi_n,$$ se define
$$|\psi\rangle \dot{=}\begin{pmatrix}
        \psi_1 \\ \psi_2 \\ \psi_3 \\ \vdots
    \end{pmatrix}.$$

Esta es una representación de $|\psi\rangle$ como un vector columna respecto a la base $\{|\varphi_n\rangle\}$. De manera análoga, el bra asociado al estado $|\chi\rangle = \sum_n \chi_n |\varphi_n\rangle$ se representa como un vector fila con componentes conjugadas:
$$\langle \chi | \dot{=} \left( \chi_1^*\quad \chi_2^*\quad \chi_3^*\quad \ldots \right).$$

### Producto tensorial

En la representación matricial, un proyector se calcula por medio del **producto tensorial**. Si $|\psi\rangle$ es un vector columna de dimensión $n$ y $\langle \phi|$ un vector fila de dimensión $m$, el producto $|\psi\rangle \langle \phi|$ es una matriz $n \times m$ donde cada entrada multiplica los elementos correspondientes:

$$|\psi\rangle \langle \phi| = \begin{pmatrix}
\psi_1 \phi_1 & \psi_1 \phi_2 & \dots & \psi_1 \phi_m \\
\psi_2 \phi_1 & \psi_2 \phi_2 & \dots & \psi_2 \phi_m \\
\vdots & \vdots & \ddots & \vdots \\
\psi_n \phi_1 & \psi_n \phi_2 & \dots & \psi_n \phi_m
\end{pmatrix}.$$

## Descomposición espectral

La **descomposición espectral** es una forma más general de diagonalización. Dado que los operadores hermíticos tienen autovalores reales y una base ortonormal de autovectores, cualquier operador hermítico se puede descomponer en términos de sus autovalores y proyectores sobre los autovectores correspondientes. En el caso de operadores con un espectro discreto (como el hamiltoniano de un sistema cuántico confinado), la descomposición espectral toma la forma

:::{math}
:label: eq-espectral
\mathcal{A} = \sum_i \lambda_i |\psi_i\rangle \langle \psi_i|,
:::

donde $|\psi_i\rangle$ son los autovectores ortogonales, $\lambda_i$ son los autovalores del operador y $|\psi_i\rangle \langle \psi_i|$ es el proyector sobre el estado $|\psi_i\rangle$. En esta base de autovectores, la matriz del operador es **diagonal**, con los autovalores $\lambda_i$ como elementos diagonales.

:::{note} Descomposición espectral de una matriz de Pauli

La matriz de Pauli $\sigma_x$ es
$$\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}.$$
De la ecuación característica $\det(\sigma_x - \lambda I) = 0$ se obtiene $\lambda^2 - 1 = 0$, con autovalores $$\lambda_1 = 1, \quad \lambda_2 = -1,$$ y autovectores
$$|\psi_1\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \qquad
|\psi_2\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix}.$$
Los proyectores asociados son
$$P_1 = |\psi_1\rangle \langle \psi_1| = \frac{1}{2} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}, \qquad
P_2 = |\psi_2\rangle \langle \psi_2| = \frac{1}{2} \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix}.$$
La descomposición espectral de $\sigma_x$ es
```{math}
\begin{aligned}
    \sigma_x =& 1 \cdot P_1 + (-1) \cdot P_2 \\
             =& \frac{1}{2} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} - \frac{1}{2} \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix} \\
             =& \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}.
\end{aligned}
```
:::

# Probabilidad, valores esperados e incertidumbre

## Probabilidad

Si $A$ es un observable para un sistema con un conjunto discreto de valores $\{a_1, a_2, \ldots \}$, el observable se representa por un operador hermítico $\mathcal{A}$ que tiene dichos valores como *valores propios* y los correspondientes *autoestados* $\{ |a_n\rangle \}$, los cuales satisfacen $\mathcal{A}|a_n\rangle=a_n |a_n\rangle$. Estos autoestados forman un conjunto ortogonal completo, de manera que cualquier estado $|\psi\rangle$ del sistema puede escribirse como en la [Ecuación %s](#eq-expansion). Entonces, si $\langle \psi | \psi \rangle=1$, la probabilidad de obtener el valor $a_n$ al medir $A$ está dada por la **regla de Born**:
:::{math}
:label: eq-born
P(a_n)=|\langle a_n |\psi \rangle|^2.
:::

:::{note} Probabilidad en un sistema de medio espín

Considere un sistema de medio espín preparado en el estado
$$|S\rangle=2|+\rangle+(1+\sqrt{3}i)|-\rangle.$$ Como $\langle S | S \rangle=8$, el estado normalizado es
$$|\hat{S}\rangle=\frac{|S\rangle}{\sqrt{8}}.$$
Por lo tanto, la probabilidad de encontrar al sistema en el estado $|+\rangle$ es
$$|\langle +|\hat{S} \rangle |^2=\left|\frac{2}{2\sqrt{2}}\right|^2=\frac{1}{2}.$$
:::

## Valores esperados

El valor esperado de un observable es el promedio ponderado de los posibles resultados de la medición, según la probabilidad de obtener cada uno de ellos:
:::{math}
:label: eq-valor-esperado
\langle \mathcal{A} \rangle=\sum_n |\langle a_n|\psi\rangle|^2a_n=\langle \psi | \mathcal{A}|\psi \rangle,
:::

y, de forma análoga, $\langle f(\mathcal{A}) \rangle=\langle \psi | f(\mathcal{A})|\psi \rangle$ para cualquier función del observable.

:::{note} Valor esperado de la matriz de Pauli $\sigma_x$

Para un qubit en el estado de superposición $|\psi\rangle = \frac{1}{\sqrt{2}} |0\rangle + \frac{1}{\sqrt{2}} |1\rangle$, es decir,
$$|\psi\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 \end{pmatrix},$$
el valor esperado de $\sigma_x$ es
$$\langle \sigma_x \rangle = \langle \psi | \sigma_x | \psi \rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} \frac{1}{\sqrt{2}} \\ \frac{1}{\sqrt{2}} \end{pmatrix} = 1.$$
:::

## Incertidumbre

La incertidumbre de un observable $\mathcal{A}$, denotada por $\Delta \mathcal{A}$, es una medida de la distribución de resultados alrededor del valor esperado $\langle \mathcal{A} \rangle$:
:::{math}
:label: eq-incertidumbre
(\Delta \mathcal{A})^2=\sum_n |\langle a_n|\psi\rangle|^2 (a_n-\langle \mathcal{A} \rangle)^2=\langle \mathcal{A}^2 \rangle - \langle \mathcal{A} \rangle^2,
:::

de donde $\Delta \mathcal{A} = \sqrt{\langle \mathcal{A}^2 \rangle - \langle \mathcal{A} \rangle^2}$.

:::{note} Incertidumbre del operador $\sigma_z$

Para el operador $\sigma_z$, se cumple $\sigma_z^2 = I$, por lo que $\langle \sigma_z^2 \rangle = 1$ y
$$\Delta \sigma_z = \sqrt{1 - \langle \sigma_z \rangle^2}.$$
En el estado $|\psi\rangle = \frac{1}{\sqrt{2}} |0\rangle + \frac{1}{\sqrt{2}} |1\rangle$, donde $\langle \sigma_z \rangle = 0$, la incertidumbre es máxima: $\Delta \sigma_z = 1$. Esto refleja una incertidumbre máxima, ya que las probabilidades de medir $+\hbar/2$ ó $-\hbar/2$ son iguales.
:::

En resumen,

-   La **representación matricial** expresa la acción de un operador como un producto matricial en una base ortonormal dada.

-   Los **autovalores** representan los posibles resultados de las mediciones de un observable cuántico; los **autovectores**, los estados asociados; la **degeneración** ocurre cuando múltiples estados comparten el mismo autovalor.

-   Los **operadores hermíticos** garantizan autovalores reales y una base ortonormal de autovectores, condición esencial para la interpretación física.

-   La **diagonalización** expresa el operador en la base de autovectores, donde su matriz es diagonal, y conduce a la **descomposición espectral** en proyectores.

-   La **probabilidad** de un resultado de medición está dada por la regla de Born; el **valor esperado** es el promedio ponderado de los resultados y la **incertidumbre** cuantifica su dispersión.

:::{seealso} Referencias

@cresser [11.2 Representations of State Vectors and Operators, 174-184]

@cresser [Chapter 13 Probability, Expectation Value and Uncertainty, 219-227]

@boas2006mathematical [Cap. 2, Sección 11 "EIGENVALUES AND EIGENVECTORS" pag. 148-162]

@riley2006mathematical [Cap. 8.13 "Eigenvectors and eigenvalues", pág. 272-282; Cap. 8.16 "Diagonalisation of matrices", pág. 285-288]

:::
