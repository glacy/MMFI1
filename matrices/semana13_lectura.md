---
title: Probabilidad, valores esperados e incertidumbre
description: Probabilidad, valores esperados e incertidumbre
short_title: Probabilidad, valores esperados e incertidumbre
author: " "
tags: [matrices, probabilidad, valores, esperados, incertidumbre]
subject: Operadores y matrices - Semana 13
keywords: [probabilidad, valores, esperados, incertidumbre]
exports:
 - format: pdf
   template: curvenote
   output: ./semana13_lectura.pdf
downloads:
  - file: ./semana13_lectura.md
    title: semana13_lectura.md
  - file: ./semana13_lectura.pdf
    title: semana13_lectura.pdf
---

:::{aside} [Debbie Leung](https://uwaterloo.ca/institute-for-quantum-computing/people-profiles/debbie-leung)

 es una física teórica y profesora en el [*Institute for Quantum Computing* (IQC)](https://uwaterloo.ca/institute-for-quantum-computing/) de la Universidad de Waterloo, Canadá.  
Es reconocida internacionalmente por sus contribuciones en teoría de la información cuántica, comunicación cuántica segura y procesamiento de información en sistemas cuánticos.
Entre sus aportes más destacados se encuentra el desarrollo de protocolos de comunicación cuántica.
```{figure} ./Debbie-Leung.avif
:label: fig-debbie-leung
:alt: Debbie Leung 
:align: center
Dra. Debbie Leung
:::


```{note} Objetivos de aprendizaje

Al finalizar esta lección, serás capaz de:

1. **Interpretar** el significado físico y matemático de la probabilidad cuántica a partir del producto interno entre estados en el espacio de Hilbert.

2. **Calcular** valores esperados de observables representados por operadores hermíticos mediante el formalismo matricial y la notación de Dirac.

3. **Determinar** la incertidumbre asociada a una observable, comprendiendo su relación con la dispersión estadística de los resultados de medición.

```



+++ {"part": "abstract"}

En el formalismo matricial de la mecánica cuántica, los conceptos de probabilidad, valor esperado e incertidumbre adquieren una formulación rigurosa mediante el uso de operadores hermíticos y vectores de estado. 

Cada observable físico, como la posición, el momento o la energía, se representa por un operador hermítico cuya matriz actúa sobre los kets que describen el estado cuántico del sistema. La probabilidad de obtener un valor particular en una medición se calcula como el cuadrado del módulo del producto interno entre el estado del sistema y el autovector correspondiente al resultado medido.  

El valor esperado de un observable $\mathcal{A}$ en un estado $|\psi\rangle$ se expresa como  
$$\langle \mathcal{A} \rangle = \langle \psi | \mathcal{A} | \psi \rangle,$$  
representando el promedio ponderado de los resultados posibles, de acuerdo con la probabilidad cuántica.  
Por su parte, la incertidumbre o desviación estándar de una observable se define como  
$$\Delta A = \sqrt{\langle \mathcal{A}^2 \rangle - \langle \mathcal{A} \rangle^2},$$  
lo que cuantifica la dispersión estadística de las mediciones de $\mathcal{A}$ sobre el estado $|\psi\rangle$.  

+++



# Probabilidad 

En la mecánica cuántica, la descripción de los sistemas físicos se basa
en principios probabilísticos.

En 1926, Schrödinger formuló su famosa ecuación de onda cuántica, que
describe el comportamiento de las partículas a nivel cuántico. Sin
embargo, el significado físico de la función de onda $\psi$ no estaba
claro en ese momento. Fue Max Born quien interpretó la función de onda
como una amplitud de probabilidad. En su famosa **regla de Born**,
estableció que el cuadrado del valor absoluto de la función de onda
$|\psi(x)|^2$ representaba la densidad de probabilidad de encontrar una
partícula en una determinada posición $x$.

Si $A$ es un observable para un sistema con un conjunto discreto de
valores $\{a_1, a_2, \ldots \}$, entonces el observable se representa
por un operador Hermítico $\mathcal{A}$ que tiene dichos valores como
*valores propios* y los correspondientes *auto-estados*
$\{ |a_n\rangle, \, n=1,2,3,\ldots \}$; los cuales satisfacen la
ecuación de autovalores $\mathcal{A}|a_n\rangle=a_n |a_n\rangle$. Estos
auto-estados forman un conjunto ortogonal completo, de manera que
cualquier estado $|\psi\rangle$ del sistema puede escribirse como
$$|\psi\rangle=\sum_n |a_n\rangle \langle a_n | \psi \rangle,$$ donde si
$\langle \psi | \psi \rangle=1$, entonces la probabilidad de obtener el
valor $a_n$ al medir $A$, $P(a_n)$, está dada por
$$P(a_n)=|\langle a_n |\psi \rangle|^2.$$

:::{note} Probabilidad en un sistema de medio espín

Considere un sistema de medio espín preparado en el estado
$$|S\rangle=2|+\rangle+(1+\sqrt{3}i)|-\rangle.$$ ¿Cuál es la
probabilidad de de encontrar el sistema en el estado $|+\rangle$, para
el cual $S_z=\frac{1}{2}\hbar$?\
Primero revisemos si el estado está normalizado. El *bra*
correspondiente a este estado es
$$\langle S|=2\langle+|+(1-\sqrt{3}i)\langle-|,$$ de manera que
$$\langle S | S \rangle=8;$$ por lo que definimos el *estado
normalizado*
$$|\hat{S}\rangle=\frac{|S\rangle}{\sqrt{8}}=\frac{1}{2\sqrt{2}}\left(2|+\rangle+(1+\sqrt{3}i)|-\rangle \right).$$
Por lo tanto, la probabilidad de encontrar al sistema en el estado
$|+\rangle$ es $$|\langle +|S \rangle |^2=|2/2\sqrt{2}|^2=\frac{1}{2}.$$
:::

:::{note} Superposición de qubits
Consideremos un qubit en un estado
de superposición $$|\psi\rangle = \alpha |0\rangle + \beta |1\rangle$$

La probabilidad de medir el estado $|0\rangle$ es $$P(0) = |\alpha|^2,$$
mientras que la probabilidad de medir el estado $|1\rangle$ es
$$P(1) = |\beta|^2.$$ Debido a la normalización del estado, se cumple
que $|\alpha|^2 + |\beta|^2 = 1.$
:::

# Valores esperados 

El valor esperado de un observable, representado por un operador
hermítico, es el promedio ponderado de los posibles resultados de la
medición del observable, según la probabilidad de obtener cada uno de
ellos.

El valor esperado de $\mathcal{A}$, denotado por
$\langle \mathcal{A} \rangle$,
$$\langle \mathcal{A} \rangle=\sum_n |\langle a_n|\psi\rangle|^2a_n=\langle \psi | \mathcal{A}|\psi \rangle,$$
y de forma análoga, se define el valor esperado de una función del
observable $\mathcal{A}$

$$\langle f(\mathcal{A}) \rangle=\sum_n |\langle a_n|\psi\rangle|^2f(a_n)=\langle \psi | f(\mathcal{A})|\psi \rangle.$$

:::{note} Valor esperado de la matriz de Pauli $\sigma_x$

Consideremos un sistema cuántico de un qubit en el siguiente estado de
superposición:

$$|\psi\rangle = \frac{1}{\sqrt{2}} |0\rangle + \frac{1}{\sqrt{2}} |1\rangle$$

Para calcular el valor esperado del observable correspondiente al
operador de Pauli $\sigma_x$, que está dado por la matriz

$$\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}.$$

requerimos calcular

$$\langle \sigma_x \rangle = \langle \psi | \sigma_x | \psi \rangle$$

En notación de vectores columna
```{math}
|\psi\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 0 \end{pmatrix} + \frac{1}{\sqrt{2}} \begin{pmatrix} 0 \\ 1 \end{pmatrix} = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 
\end{pmatrix}
```

por lo que

$$\langle \psi | = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \end{pmatrix}.$$
Tenemos entonces que
$$\sigma_x |\psi\rangle = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} \frac{1}{\sqrt{2}} \\ \frac{1}{\sqrt{2}} \end{pmatrix} = \begin{pmatrix} \frac{1}{\sqrt{2}} \\ \frac{1}{\sqrt{2}} \end{pmatrix},$$
por lo que
$$\langle \psi | \sigma_x | \psi \rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \end{pmatrix} \begin{pmatrix} \frac{1}{\sqrt{2}} \\ \frac{1}{\sqrt{2}} \end{pmatrix}.$$
Realizando el producto matricial
$$\langle \psi | \sigma_x | \psi \rangle = \frac{1}{\sqrt{2}} \left( 1 \cdot \frac{1}{\sqrt{2}} + 1 \cdot \frac{1}{\sqrt{2}} \right)$$
$$\langle \sigma_x \rangle = \frac{1}{\sqrt{2}} \left( \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{2}} \right) = \frac{1}{\sqrt{2}} \cdot \frac{2}{\sqrt{2}} = 1.$$
:::

En el caso de observables con un espectro continuo,
$$\langle \mathcal{A} \rangle=\int_{a_1}^{a^2} \langle a | \psi \rangle^2 a da.$$

:::{note} Valor esperado de $\hat{x}$

En el caso que el observable sea la posición de una partícula, su valor
esperado está dado por
$$\langle \hat{x} \rangle = \int_{-\infty}^{+\infty} |\langle \hat{x}|\psi\rangle|^2 x dx.$$
:::

# Incertidumbre 

La incertidumbre de un observable $\mathcal{A}$, denotada por
$\Delta \mathcal{A}$, es una medida de la distribución de resultados
alrededor de valor esperado $\langle \mathcal{A} \rangle$:
$$(\Delta \mathcal{A})^2=\sum_n |\langle a_n|\psi\rangle|^2 (a_n-\langle \mathcal{A} \rangle)^2=\langle \mathcal{A}^2 \rangle - \langle \mathcal{A} \rangle^2.$$

:::{note} Ión $\mbox{O}^-_2$

Para el ion $\mbox{O}^-_2$, calculemos el valor esperado y la desviación
estandar de la posición del electrón si el ión se prepara en el estado
$|\psi\rangle=\alpha|+a\rangle+\beta|-a\rangle.$

Tenemos que $$\hat{x}=a|+a\rangle\langle+a|-a|-a\rangle\langle-a|,$$ por
lo que $$\hat{x}|\psi\rangle=a\alpha|+a\rangle-a\beta|-a\rangle,$$ por
lo que el valor esperado de la posición del electrón es
$$\langle\psi|\hat{x}|\psi\rangle=\langle\hat{x}\rangle=a(|\alpha|^2-|\beta|^2)$$
lo que puede interpretarse como
$$(+a)\times\mbox{probabilidad }|\alpha|^2\mbox{ de medir la posici\'on del electr\'on en }+a$$
$$+$$
$$(-a)\times\mbox{probabilidad }|\beta|^2\mbox{ de medir la posici\'on del electr\'on en }-a.$$

En particular, si la probabilidad de encontrar al electrón en cualquiera
de los átomos de oxígeno es igual, es decir, si
$|\alpha|^2=|\beta|^2=\frac{1}{2}$, el valor esperado de la posición es
$\langle\hat{x}\rangle=0$.

La incertidumbre en la posición del electrón está dada por
$$(\Delta \hat{x})^2=\langle \hat{x}^2\rangle-\langle\hat{x}\rangle^2.$$

Ahora, para calcular $\langle\hat{x}^2\rangle$, notemos que
```{math}
\begin{aligned}
        \hat{x}^2|\psi\rangle=&\hat{x}[a\alpha|+a\rangle-a\beta|-a\rangle]\\
        =&a^2[\alpha|+a\rangle+\beta|-a\rangle]\\
        =&a^2|\psi \rangle;
\end{aligned}
```

por lo tanto
$\langle\psi|\hat{x}^2|\psi\rangle=\langle\hat{x}^2\rangle=a^2$; de
manera que
$$(\Delta \hat{x})^2=a^2-a^2(|\alpha|^2-|\beta|^2)^2=4a^2|\alpha|^2|\beta|^2,$$
de donde $$\Delta \hat{x}=2a|\alpha \beta|.$$
:::

:::{note} Incertidumbre del operador $\sigma_z$

Para el operador $\sigma_z$, sabemos que $\sigma_z^2 = I$. Por lo tanto,
$\langle \sigma_z^2 \rangle = 1$, y la incertidumbre es

$$\Delta \sigma_z = \sqrt{1 - \langle \sigma_z \rangle^2}.$$

En el estado
$|\psi\rangle = \frac{1}{\sqrt{2}} |0\rangle + \frac{1}{\sqrt{2}} |1\rangle$,
donde $\langle \sigma_z \rangle = 0$, la incertidumbre es máxima:

$$\Delta \sigma_z = 1.$$

Esto refleja una máxima incertidumbre, ya que las probabilidades de
medir $+\hbar/2$ ó $-\hbar/2$ son iguales.
:::

:::{note} Propiedades de las matrices de Pauli

Las tres matrices de Pauli
```{math}
\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad
\sigma_y = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad
\sigma_z = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix},
```

satisfacen las siguientes propiedades:

1.  *Hermiticidad*: Todas las matrices de Pauli son *hermíticas*. Esto
    significa que cada matriz es igual a su conjugado transpuesto:
    $$\sigma_i^\dagger = \sigma_i, \quad \text{para } i = x, y, z.$$
    donde $\sigma_i^\dagger$ denota la conjugada transpuesta de
    $\sigma_i$.

2.  *Determinante*: El determinante de cada matriz de Pauli es $-1$:
    $$\det(\sigma_x) = \det(\sigma_y) = \det(\sigma_z) = -1.$$

3.  Traza: La *traza* de cada una de las matrices de Pauli es $0$:
    $$\text{Tr}(\sigma_x) = \text{Tr}(\sigma_y) = \text{Tr}(\sigma_z) = 0.$$

4.  *Propiedades de multiplicación*: Las matrices de Pauli no conmutan
    entre sí. Su producto satisface las siguientes relaciones de
    conmutación y anticonmutación:

    -   *Relación de conmutación*:
        $$[\sigma_i, \sigma_j] = \sigma_i \sigma_j - \sigma_j \sigma_i = 2i \epsilon_{ijk} \sigma_k.$$
        donde $\epsilon_{ijk}$ es el símbolo de Levi-Civita y $i, j, k$
        son $x, y, z$.

    -   *Relación de anticonmutación*:
        $$\{\sigma_i, \sigma_j\} = \sigma_i \sigma_j + \sigma_j \sigma_i = 2 \delta_{ij} I,$$
        donde $\delta_{ij}$ es el delta de Kronecker, e $I$ es la matriz
        identidad.

5.  *Cuadrado de las matrices de Pauli*: El cuadrado de cada matriz de
    Pauli es la matriz identidad $I$:
    ```{math}
    \sigma_x^2 = \sigma_y^2 = \sigma_z^2 = I = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}.
    ```

6.  *Relación con la matriz identidad*: Las matrices de Pauli, junto con
    la matriz identidad $I$, forman una base para todas las matrices
    $2 \times 2$ hermíticas. Cualquier matriz $2 \times 2$ hermítica
    puede expresarse como una combinación lineal de estas cuatro
    matrices:
    $$M = a_0 I + a_x \sigma_x + a_y \sigma_y + a_z \sigma_z,$$ donde
    $a_0, a_x, a_y, a_z$ son números reales.

7.  *Norma y producto interno*: El producto interno entre dos matrices
    de Pauli está dado por
    $$\text{Tr}(\sigma_i \sigma_j) = 2\delta_{ij}.$$ Esto significa que
    las matrices de Pauli son ortogonales entre sí en términos del
    producto traza.

8.  *Simetría y antisimetría*:

    -   $\sigma_x$ y $\sigma_z$ son *simétricas*, es decir,
        $\sigma_i^\text{T} = \sigma_i$ para $i = x, z$.

    -   $\sigma_y$ es *antisimétrica*, es decir,
        $\sigma_y^\text{T} = -\sigma_y$.

9.  *Rotaciones en el espacio de Hilbert*: Las matrices de Pauli están
    relacionadas con las rotaciones de espines en la mecánica cuántica.
    Las rotaciones de un espín-1/2 en el espacio de Hilbert se pueden
    representar mediante los exponentes de matrices de Pauli:
    $$R(\theta, \hat{n}) = e^{-i \frac{\theta}{2} \hat{n} \cdot \vec{\sigma}};$$
    donde $\hat{n}$ es un vector unitario que indica el eje de rotación,
    $\theta$ es el ángulo de rotación, y
    $\vec{\sigma} = (\sigma_x, \sigma_y, \sigma_z)$ es el vector de
    matrices de Pauli.
:::







:::{seealso} Referencias

@cresser [Chapter 13 Probability, Expectation Value and Uncertainty, 219-227]

<!-- @boas2006mathematical [Cap. 2, Sección 11 "EIGENVALUES AND EIGENVECTORS" pag. 150-162]

@riley2006mathematical [Cap. 8.16 "Diagonalisation of matrices"; , pág. 285-288] -->

:::