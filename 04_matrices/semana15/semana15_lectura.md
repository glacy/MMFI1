---
title: Diagonalización de matrices
description: Diagonalización de matrices
short_title: Diagonalización de matrices
author: " "
tags: [matrices, diagonalización]
subject: Operadores y matrices - Semana 12
keywords: [matrices, diagonalización]
exports:
 - format: pdf
   template: curvenote
   output: ./semana12_lectura.pdf
# downloads:
#   - file: ./semana12_lectura.md
#     title: semana12_lectura.md
#   - file: ./semana12_lectura.pdf
#     title: semana12_lectura.pdf
---

:::{aside} [Professor Michelle Simmons](https://www.sqc.com.au/)

es una ingeniera cuántica australiana reconocida a nivel mundial por su trabajo pionero en la fabricación de dispositivos electrónicos a escala atómica. Es directora del Centre for [Quantum Computation and Communication Technology (CQC²T)](https://www.cqc2t.org/) en la Universidad de Nueva Gales del Sur (UNSW), y fundadora de la empresa [Silicon Quantum Computing](https://www.sqc.com.au/), una de las primeras compañías en desarrollar procesadores cuánticos basados en silicio.

Su investigación combina los principios fundamentales de la mecánica cuántica  con el diseño y la ingeniería de materiales.

```{figure} ./Michelle_Simmons.webp
:label: fig-Michelle_Simmons
:alt: Retrato de la Dra. Michelle Simmons
:align: center
Professor Michelle Simmons (1967–)
:::

```{note} Objetivos de aprendizaje
Al finalizar esta lección, será capaz de:

1. **Explicar el concepto de diagonalización** de un operador lineal y su relación con los autovalores y autovectores, interpretando su significado físico en el contexto de observables cuánticos.

2. **Determinar la base ortonormal de autovectores** que permite representar un operador hermítico mediante una matriz diagonal, verificando la ortogonalidad y normalización de los estados propios.

3. **Aplicar el proceso de diagonalización** para obtener la **representación espectral** de operadores hermíticos, expresándolos como combinaciones lineales de proyectores asociados a sus autovalores.

4. **Interpretar los resultados físicos de la diagonalización**, analizando cómo los autovalores representan resultados posibles de una medición y cómo los autovectores determinan los estados propios del sistema.

5. **Utilizar la notación de Dirac** para expresar operadores diagonalizados, identificando la equivalencia entre las formas matricial, espectral y operatorial.
```



+++ {"part": "abstract"}

La diagonalización de operadores hermíticos es un procedimiento fundamental en el formalismo matemático de la mecánica cuántica. Permite representar observables —como la energía, el momento angular o el espín— en una base de autovectores ortonormales, donde la matriz del operador toma una forma diagonal. En esta representación, los autovalores corresponden directamente a los resultados posibles de una medición física, mientras que los autovectores describen los estados propios asociados a cada valor medible.  
Gracias a la diagonalización, es posible expresar cualquier operador hermítico mediante su descomposición espectral, $\mathcal{A} = \sum_i \lambda_i |\psi_i\rangle \langle \psi_i|$, lo que facilita el cálculo de valores esperados, proyecciones y la evolución temporal de sistemas cuánticos. En el contexto experimental, la diagonalización revela la estructura interna de los sistemas, mostrando simetrías, degeneraciones y las direcciones privilegiadas del espacio de Hilbert donde los observables adquieren significado físico.

+++


## Diagonalización de matrices hermíticas 

En el contexto de la mecánica cuántica y de los espacios de Hilbert, la
diagonalización de matrices hermíticas y la descomposición espectral son
conceptos clave que permiten analizar y resolver problemas relacionados
con operadores que describen observables físicos.

La diagonalización de una matriz consiste en **encontrar una base
ortonormal de vectores propios en la que la representación matricial del
operador se exprese de forma diagonal**. Dado que los operadores
hermíticos tienen autovalores reales y autovectores ortogonales, su
matriz correspondiente siempre se pueden diagonalizar.

Para diagonalizar una matriz $A$,

$$D=P^{-1}AP,$$ donde $P$ es la matríz que contiene los autovectores de
$A$ como columnas y $P^{-1}$, su inversa.

:::{note} Diagonalización

Consideremos el operador $\mathcal{A}$ en un espacio de dimensión 2,
cuya representación matricial es la siguiente:

```{math}
A = \begin{pmatrix}
2 & 1 \\
1 & 2
\end{pmatrix}.
```

Esta matriz no es diagonal, ya que tiene elementos no nulos fuera de la
diagonal. Diagonalizar $A$ significa encontrar una base de autovectores
donde su representación sea diagonal.

Para diagonalizar la matriz, necesitamos encontrar los autovalores
resolviendo la ecuación característica:

$$\det(A - \lambda I) = 0$$

Donde $I$ es la matriz identidad y $\lambda$ son los autovalores.

$$\det \begin{pmatrix} 2 - \lambda & 1 \\ 1 & 2 - \lambda \end{pmatrix} = (2 - \lambda)(2 - \lambda) - 1^2 = \lambda^2 - 4\lambda + 3,$$

de donde

$$\lambda^2 - 4\lambda + 3 = 0,$$

que resulta en

$$\lambda = \frac{-(-4) \pm \sqrt{(-4)^2 - 4(1)(3)}}{2(1)} = \frac{4 \pm \sqrt{16 - 12}}{2} = \frac{4 \pm 2}{2}.$$

Por lo tanto, los autovalores son
$$\lambda_1 = 3, \quad \lambda_2 = 1.$$

Ahora que tenemos los autovalores, encontramos los autovectores
correspondientes resolviendo 

```{math}
(A - \lambda I)\begin{pmatrix}
    \phi_1 \\ \phi_2
\end{pmatrix} =\begin{pmatrix}
    0 \\ 0
\end{pmatrix}.
```

Para $\lambda_1 = 3$:
```{math}
\begin{pmatrix} -1 & 1 \\ 1 & -1 \end{pmatrix} \begin{pmatrix} \phi_1 \\ \phi_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}.
```

Esto nos da el sistema de ecuaciones:

$$-\phi_1 + \phi_2 = 0 \quad \text{y} \quad \phi_1 - \phi_2 = 0,$$

de lo cual obtenemos que $\phi_1 = \phi_2$, por lo que el autovector
asociado a $\lambda_1 = 3$ es:

$$| \psi_1 \rangle = \begin{pmatrix} 1 \\ 1 \end{pmatrix}.$$

Para $\lambda_2 = 1$:
```{math}
\begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} \phi_1 \\ \phi_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
```

de donde

$$\phi_1 + \phi_2 = 0 \quad \text{y} \quad \phi_1 + \phi_2 = 0$$

De lo cual obtenemos que $\phi_1 = -\phi_2$, por lo que el autovector
asociado a $\lambda_2 = 1$ es:

$$| \psi_2 \rangle = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$$

Los autovalores de $A$ son $3$ y $1$, y los autovectores
correspondientes son
$| \psi_1 \rangle = \begin{pmatrix} 1 \\ 1 \end{pmatrix}$ y
$| \psi_2 \rangle = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$. Podemos
formar una matriz de cambio de base $P$ con estos autovectores como
columnas:

$$P = \begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}$$

La matriz $A$ se puede diagonalizar como:

$$D = P^{-1} A P = \begin{pmatrix} 3 & 0 \\ 0 & 1 \end{pmatrix}$$

Esta es la *matriz diagonal* de $A$, donde los elementos diagonales son
sus autovalores.
:::

## Descomposición espectral 

La **descomposición espectral** es una forma más general de
diagonalización, y aplica tanto a operadores hermíticos como a
operadores más generales en espacios de Hilbert.

Dado que los operadores hermíticos tienen autovalores reales y una base
ortonormal de autovectores, la descomposición espectral permite
expresar estos operadores en términos de sus autovalores y proyectores.

La idea central es que cualquier operador hermítico se puede descomponer
en términos de sus autovalores y proyectores sobre los autovectores
correspondientes.

En el caso de operadores con un espectro discreto (como el hamiltoniano
de un sistema cuántico confinado), la descomposición espectral toma la
forma discreta

$$\mathcal{A} = \sum_i \lambda_i |\psi_i\rangle \langle \psi_i|,$$

donde $|\psi_i\rangle$ son los autovectores ortogonales y $\lambda_i$
son los autovalores del operador; $|\psi_i\rangle \langle \psi_i|$ es un
proyector que proyecta sobre el estado $|\psi_i\rangle$.

:::{note} Descomposición espectral de una matriz de Pauli

La matriz de Pauli $\sigma_x$ es
$$\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$$ Para
encontrar los autovalores de $\sigma_x$, resolvemos la ecuación
característica $$\det(\sigma_x - \lambda I) = 0,$$ donde $I$ es la
matriz identidad y $\lambda$ son los autovalores:
$$\det\begin{pmatrix} 0 - \lambda & 1 \\ 1 & 0 - \lambda \end{pmatrix} = \lambda^2 - 1 = 0,$$
de donde sus autovalores son $$\lambda_1 = 1, \quad \lambda_2 = -1,$$ y
los correspondientes autovectores
$$|\psi_1\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 \end{pmatrix},$$
y
$$|\psi_2\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix}$$
El proyector $P_1$ asociado al autovalor $\lambda_1 = 1$ es
$$P_1 = |\psi_1\rangle \langle \psi_1| = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 \end{pmatrix} \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}.$$
El proyector $P_2$ asociado al autovalor $\lambda_2 = -1$ es
$$P_2 = |\psi_2\rangle \langle \psi_2| = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix} \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & -1 \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix}.$$
Finalmente, la descomposición espectral de $\sigma_x$ en términos de los
autovalores y los proyectores es 

```{math}
\begin{aligned}
    \sigma_x =& 1 \cdot P_1 + (-1) \cdot P_2 \\
             =& 1 \cdot \frac{1}{2} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} + (-1) \cdot \frac{1}{2} \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix} \\
             =& \frac{1}{2} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} - \frac{1}{2} \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix} \\
             =& \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}.
\end{aligned}
```
:::

### Representación de vectores bra y ket

En esta representación, la matriz asociada al operador $\mathcal{A}$ es
**diagonal** en la base de autovectores, con los autovalores $\lambda_i$
como elementos diagonales. La diagonalización simplifica enormemente el
análisis de operadores y permite calcular fácilmente los resultados de
las mediciones cuánticas.

En términos de la base de estados
$\{|\varphi_n\rangle;\; n=1,2,\ldots \}$, un vector arbitrario
$|\psi\rangle$ puede escribirse como
$$|\psi\rangle=\sum_n |\varphi_n\rangle\langle\varphi_n|\psi\rangle.$$
Si escribimos $$\langle\varphi_n|\psi\rangle = \psi_n,$$ se define
$$|\psi\rangle \dot{=}\begin{pmatrix}
        \psi_1 \\ \psi_2 \\ \psi_3 \\ \vdots
    \end{pmatrix}.$$

Esta es una representación de $|\psi\rangle$ como un vector columna con
respecto a la base $\{|\varphi_n\rangle;\; n=1,2,\ldots \}$.
Particularmente, los estados base $|\varphi_n \rangle$ tendrán
componentes
$$(\varphi_m)_n=\langle \varphi_n | \varphi_m \rangle = \delta_{mn}$$
por lo que estarían representados por vectores columna de la forma
$$|\varphi_1\rangle\dot{=}\begin{pmatrix}
        1 \\ 0 \\ 0 \\ \vdots
    \end{pmatrix}, \quad
    |\varphi_2\rangle\dot{=}\begin{pmatrix}
        0 \\ 1 \\ 0 \\ \vdots
    \end{pmatrix}, \quad \ldots$$

Si consideramos otro estado
$$|\chi\rangle = \sum_n \chi_n |\varphi_n\rangle,$$

entonces $$\langle \chi | \varphi_n \rangle = \chi^*_n,$$ de donde,
podemos representar el bra como un vector fila
$$\langle \chi | \dot{=} \left( \chi_1^*\quad \chi_2^*\quad \chi_3^*\quad \ldots \right)$$
respecto a la base $\{|\varphi_n\rangle;\; n=1,2,\ldots \}$.

Utilizando la representación de vectores bra y operadores, la acción de
un operador sobre un vector bra está dada por

```{math}
\langle \psi | \mathcal{A}\rightarrow (\psi_1^* \quad \psi_2^* \quad \psi_3^* \quad \ldots )\begin{pmatrix}
A_{11} & A_{12} & A_{13} & \cdots \\
A_{21} & A_{22} & A_{23} & \cdots \\
A_{31} & A_{32} & A_{33} & \cdots \\
\vdots & \vdots & \vdots & \ddots \\
\end{pmatrix},
```
de manera que
$$\langle \psi | \mathcal{A}=(\psi_1^* A_{11}+\psi_2^* A_{21}+\ldots \quad \psi_1^* A_{12}+\psi_2^* A_{22}+\ldots \quad \psi_1^* A_{13}+\psi_2^* A_{23}+\ldots \quad \ldots).$$

:::{note} Efecto de un operador en un bra

Considere dos estados
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
\end{pmatrix}$$

y

$$\mathcal{A}=\begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}.$$

En notación matricial, tenemos, por ejemplo 
```{math}
\begin{aligned}
\langle 1| \mathcal{A}=& \begin{pmatrix}
i/\sqrt{2} & 
1/\sqrt{2} 
\end{pmatrix} \begin{pmatrix}
0 & -\frac{1}{2}i\hbar\\
\frac{1}{2}i\hbar & 0
\end{pmatrix}\\
=&\frac{1}{2}i\hbar\begin{pmatrix}
1/\sqrt{2} &
-i/\sqrt{2} 
\end{pmatrix}\\
=&\frac{1}{2}\hbar\langle 1|.
\end{aligned}
```
:::

En la representación matricial, un proyector se calcula por medio del
**producto tensorial**.

### Producto tensorial

Si tenemos dos vectores:

-   Un *vector columna* $|\psi\rangle$ de dimensión $n$, que es un
    elemento de un espacio vectorial $V$.

-   Un *vector fila* $\langle \phi|$ de dimensión $m$, que es un
    elemento del espacio dual $V^*$.

El **producto tensorial** $|\psi\rangle \langle \phi|$ es una matriz de
tamaño $n \times m$, donde cada entrada de la matriz se obtiene
multiplicando los elementos correspondientes de $|\psi\rangle$ y
$\langle \phi|$:

$$|\psi\rangle = \begin{pmatrix} \psi_1 \\ \psi_2 \\ \vdots \\ \psi_n \end{pmatrix}, \quad \langle \phi| = \begin{pmatrix} \phi_1 & \phi_2 & \dots & \phi_m \end{pmatrix},$$

entonces, el producto tensorial $|\psi\rangle \langle \phi|$ es una
matriz $n \times m$:

$$|\psi\rangle \langle \phi| = \begin{pmatrix}
\psi_1 \phi_1 & \psi_1 \phi_2 & \dots & \psi_1 \phi_m \\
\psi_2 \phi_1 & \psi_2 \phi_2 & \dots & \psi_2 \phi_m \\
\vdots & \vdots & \ddots & \vdots \\
\psi_n \phi_1 & \psi_n \phi_2 & \dots & \psi_n \phi_m
\end{pmatrix}.$$






:::{seealso} Referencias

<!-- @cresser [Chapter 12 Observables and Measurements in Quantum Mechanics, 174-184] -->

@boas2006mathematical [Cap. 2, Sección 11 "EIGENVALUES AND EIGENVECTORS" pag. 150-162]

@riley2006mathematical [Cap. 8.16 "Diagonalisation of matrices"; , pág. 285-288]

:::