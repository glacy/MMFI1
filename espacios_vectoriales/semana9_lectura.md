---
title: Operadores lineales
description: Espacios vectoriales
short_title: Operadores lineales
author: " "
tags: [espacios_vectoriales, operador, ortogonalización, Gram-Schmidt, descomposición, identidad]
subject: Espacios vectoriales - Semana 9
keywords: [operador, ortogonalización, Gram-Schmidt, descomposición, identidad]
exports:
 - format: pdf
   template: curvenote
   output: ./semana9_lectura.pdf
downloads:
  - file: ./semana9_lectura.md
    title: semana9_lectura.md
  - file: ./semana9_lectura.pdf
    title: semana9_lectura.pdf
---

:::{aside} [Sarah Kaiser](https://www.sckaiser.com/)

es una física e ingeniera reconocida por su trabajo en óptica cuántica y computación cuántica. Se ha especializado en el diseño de sistemas cuánticos fotónicos y en el desarrollo de herramientas de software para la simulación y el control de experimentos cuánticos. Kaiser ha colaborado con empresas tecnológicas y comunidades de código abierto para promover la accesibilidad y el uso de tecnologías cuánticas emergentes.

Además de su investigación técnica, es conocida por su labor en divulgación científica y educación, buscando acercar la computación cuántica a estudiantes, ingenieros y científicos de diferentes disciplinas. Ha contribuido con proyectos de Q# (el lenguaje cuántico de Microsoft) y participa activamente en talleres y conferencias para promover la adopción de herramientas cuánticas en la ingeniería moderna.

```{figure} ./Sarah_Kaiser.jpg
:label: fig-Sarah_Kaiser.jpg
:alt: retrato de Dra. Sarah Kaiser
:align: center
Dra. Sarah Kaiser (1985 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. Aplicar el algoritmo de Gram–Schmidt para generar bases ortonormales a partir de conjuntos de vectores linealmente independientes en espacios de Hilbert finito-dimensionales.

2. Interpretar el significado físico y matemático de los operadores de proyección y de la descomposición de la identidad en una base ortonormal.

3. Construir operadores de proyección sobre estados cuánticos y utilizarlos para calcular probabilidades de medición.

4. Emplear la descomposición de la identidad para expresar operadores lineales y estados cuánticos en diferentes representaciones.

```

+++ { "part": "abstract" }  

En el marco de la mecánica cuántica, los espacios vectoriales, y en particular los espacios de Hilbert, proporcionan la estructura matemática esencial para describir estados y observables. La ortonormalización de Gram–Schmidt permite construir bases ortonormales a partir de conjuntos linealmente independientes, lo que facilita la representación de estados cuánticos y operadores en forma simple y computacionalmente eficiente. Sobre estas bases, los operadores de proyección actúan como herramientas clave para extraer componentes de estados en direcciones específicas, desempeñando un papel fundamental en la formulación del postulado de medición y en el cálculo de probabilidades de resultados experimentales. La descomposición de la identidad en una base ortonormal expresa al operador identidad como la suma de proyectores sobre cada vector base, lo que posibilita la expansión de cualquier estado o operador en términos de estos elementos, simplificando cálculos como el de valores esperados y la evolución temporal de sistemas cuánticos.

+++

En la mecánica cuántica, el estado de un sistema físico se representa mediante un _vector_ en un _espacio de Hilbert_. Los _operadores lineales_ actúan sobre estos vectores para extraer información física o transformar el sistema.  

- El operador de _posición_ $\hat{x}$ actúa sobre un estado para darnos la distribución de posiciones.
- El operador de _momento lineal_ $\hat{p}$ se relaciona con las derivadas espaciales de la función de onda.
- El _Hamiltoniano_ $\mathcal{H}$ nos dice cómo evoluciona el sistema en el tiempo y cuál es su energía.

Por ejemplo, la energía total del sistema se obtiene calculando el _valor esperado_ del Hamiltoniano:
$$
E = \langle \psi | \mathcal{H} | \psi \rangle
$$

Además, el _postulado de la medición_ en mecánica cuántica nos dice que:

1. Los resultados medibles son los _autovalores_ de operadores lineales hermíticos.
2. Los estados del sistema después de la medición corresponden a sus _autovectores_.

## Expansiones ortogonales 

Considere el espacio vectorial de las funciones "bien portadas" en un intervalo específico.

A partir del concepto de producto interno, es posible elegir una base de
funciones linealmente independientes $\hat{\phi}_n(x),\, n=0,1,2,\ldots$
que sean ortonormales
$$\langle \hat{\phi}_i,\hat{\phi}_j \rangle  =\int_a^b \hat{\phi}_i^*(x)\hat{\phi}_j(x)\rho(x)dx=\delta_{ij}$$
Si una función se expresa en términos de una *base ortonormal*
$\hat{\phi}_n(x)$ como

:::{math}
:label: eq-expansion-serie
f(x)=\sum_{0}^\infty c_n \hat{\phi}_n,
:::
entonces los coeficientes $c_n$ están dado por
$$c_n=\langle \hat{\phi}_n , f \rangle=\int^b_a \hat{\phi^*}_n (x) f(x) \rho(x) dx$$
La [Ecuación %s](#eq-expansion-serie) se denomina _expansión en serie de $f$ en la base $\{\hat{\phi}_n\}$_.  
:::{note} Expansión en serie
Los primero cuatro *polinomios de Laguerre* son
$$L_0=1, \quad L_1=1-x, \quad L_2=\frac{2-4x+x^2}{2}, \quad L_3=\frac{6-18x+9x^2-x^3}{6};$$
los cuales son ortonormales en el rango $0\leq x \leq \infty$.\
Usando la función de peso $\rho(x)=e^{-x}$, podemos *expandir* la función
$e^{-x}$ en polinomios de Laguerre:
$$e^{-x}=\frac{15}{16}-\frac{11}{16}x+\frac{5}{32}x^2-\frac{1}{96}x^3$$
```{figure} ./expansion_serie.png
:label: fig-expansion_serie
:alt: graficas de exp{-x} y su aproximacion
:align: center
Expansión en serie de $e^{-x}$, usando los primeros tres polinomios de Laguerre.
```
:::



## Ortogonalización de Gram-Schmidt 

La ortogonalización de Gram-Schmidt es un proceso que toma un conjunto
de vectores linealmente independientes y los convierte en un conjunto de
vectores ortogonales (o ortonormales, si se normalizan). Este
procedimiento es especialmente útil en espacios vectoriales con producto
interno, como los espacios de Hilbert en mecánica cuántica, ya que
permite construir bases ortogonales a partir de un conjunto de vectores
arbitrarios.

Si $y_n(x),\, n=0,1,2,\ldots$ forman una base de funciones linealmente
independientes, pero no ortogonales, para el espacio de Hilbert,
entonces se puede construir una base ortonormal siguiendo el siguiente
procedimiento: 
```{math}
\begin{align*}
    \phi_0 = & \,y_0\\
    \phi_1 = & \,y_1-\phi_0\langle \phi_0|y_1\rangle\\
    \phi_2 =& \, y_2-\phi_1\langle \phi_1|y_2\rangle-\phi_0\langle \phi_0|y_2\rangle\\
     \vdots & \,  \\
    \phi_n =&\, y_n-\phi_{n-1}\langle \phi_{n-1}|y_n\rangle-\ldots-\phi_0\langle \phi_0|y_n\rangle\\
   \vdots & \, 
\end{align*}
```

Este algoritmo se conoce como *ortogonalización de Gram-Schmidt*; en
honor los matemáticos Jørgen Pedersen Gram y Erhard Schmidt.\
Cada $\phi_{n}$ es ortogonal a sus predecesoras
$\phi_{i},\, i=0,1,2,\ldots ,n-1$.

:::{note} Ortogonalización de Gram-Schmidt


Partiendo del conjunto de funciones linealmente independientes
$$y_n(x)=x^n,\, n=0,1,2,\ldots;$$ podemos construir (tres) funciones
ortogonales en el rango $-1<x<1$; tomando una función de peso igual a la
unidad:
$$\phi_0=y_0=1, \quad \langle \phi_0 | \phi_0 \rangle^{1/2}=\left(\int^1_{-1}1\times 1 du\right)^{1/2}=\sqrt{2}$$

$$\Rightarrow \hat{\phi}_0=\frac{\phi_0}{\sqrt{2}}=\sqrt{\frac{1}{2}}.$$

$$\phi_1=x-\hat{\phi}_0\langle \hat{\phi}_0 | y_1 \rangle, \quad \langle \hat{\phi}_0 | y_1 \rangle=0,$$

$$\Rightarrow \hat{\phi}_1=\phi_1 \langle \phi_1 | \phi_1 \rangle^{-1/2}=x\left(\int^1_{-1}u\times u du\right)^{-1/2}=\sqrt{\frac{3}{2}}x$$
 ```{math} 
 \begin{align*}
\phi_2=&x^2-\hat{\phi}_1\langle \hat{\phi}_1 | x^2 \rangle-\hat{\phi}_0\langle \hat{\phi}_0 | x^2 \rangle\\
=&x^2-0-\frac{1}{3}
\end{align*}
```

 ```{math}
 \begin{align*}
\Rightarrow \hat{\phi}_2=\phi_2 \langle \phi_2 | \phi_2 \rangle^{-1/2}=&\left(x^2-\frac{1}{3} \right)\left(\int^1_{-1}\left(u^2-\frac{1}{3}\right)^{2} du\right)^{-1/2}\\
=&\frac{1}{2}\sqrt{\frac{5}{2}}\left(3x^2-1 \right)
\end{align*}
```
Estas tres funciones son los
primeros tres *polinomios de Legendre normalizados*.
:::

El proceso de Gram-Shcmidt es una herramienta poderosa para varias
aplicaciones, como procesamiento, anáilis y manipulación de señales y en
la solución de sistemas de ecuaciones lineales.\
En la mecánica cuántica, el proceso de Gram-Schmidt juega un papel
fundamental en la normalización de las funciones de onda, las cuales
representan los estados de una partícula en sistemas cuánticos.

:::{note} Sistema cuántico de dos estados


Dos estados cuánticos _no_ ortogonales de un electrón en un pozo
cuántico 1D están dados por $$|\psi_1 \rangle=\begin{pmatrix}
        1 \\1 
    \end{pmatrix}, \quad  |\psi_2 \rangle=\begin{pmatrix}
        1 \\0 
    \end{pmatrix}.$$ Aplicando el proceso de Gram-Schmidt se pueden
definir dos estados ortogonales $|\phi_1\rangle$ y $|\phi_2\rangle$:
$$|\phi_1\rangle = |\psi_1\rangle$$ y
$$|\phi_2\rangle= |\psi_2\rangle -\frac{\langle \psi_2|\phi_1\rangle}{\langle \phi_1|\phi_1\rangle}|\phi_1\rangle.$$
Calculando los productos internos

```{math}
  \begin{align*}
    \langle \psi_2|\phi_1\rangle=&\begin{pmatrix}
        1 & 0
    \end{pmatrix} \begin{pmatrix}
        1\\1
    \end{pmatrix}=1, \\
    \langle \phi_1|\phi_1\rangle=&\begin{pmatrix}
        1 & 1
    \end{pmatrix} \begin{pmatrix}
        1\\1
    \end{pmatrix}=2;
\end{align*}
```
 de donde $$|\phi_2 \rangle=\frac{1}{2}\begin{pmatrix}
    1 \\ -1
\end{pmatrix}.$$

Verifique que $\langle \phi_1 | \phi_2 \rangle =0.$
:::


## Operadores lineales

Un *operador lineal*, $\mathcal{L}$, es una aplicación (una
transformación, un mapa, una operación) entre dos espacios vectoriales,
que preserva las operaciones de adición de vectores y multiplicación por
un escalar; es decir, si $|A\rangle$ y $|B\rangle$ son vectores de un
espacio vectorial (de Hilbert) y $a$ y $b$ son escalares
```{math}
\begin{align*}
%\mathcal{L}a|A\rangle=&a\mathcal{L}|A\rangle, \\
\mathcal{L}(a|A\rangle+b|B\rangle)=&a\mathcal{L}|A\rangle +b\mathcal{L}|B\rangle.
\end{align*}
```

Debido a la linealidad, se puede determinar el efecto de un operador
sobre *cualquier vector* si se conoce el efecto del operador sobre cada
elemento de una base. Si $\{|\phi_k\rangle;\quad k=1,2,\ldots\}$
representa una base ortogonal
$$\mathcal{L}|\phi_n\rangle=\sum_m |\phi_m\rangle \langle \phi_m|(\mathcal{L}|\phi_n\rangle),$$

está caracterizado por el conjunto de números
$$\langle \phi_m|(\mathcal{L}|\phi_n\rangle)\equiv \langle \phi_m|\mathcal{L}|\phi_n\rangle=L_{mn},$$
llamados los *elementos matriz* de $\mathcal{L}$ en una base
particular.\
Adicionalmente, podemos escribir el efecto de un operador actuando sobre
un bra $$\langle\phi_n|\mathcal{L}=\sum_m L_{nm}\langle\phi_m|$$

:::{note} Sistemas de *medio espín* (spin half)

Considere los estados de espín $|+\rangle$ y $|-\rangle$ como la base de
un sistema de medio espín.

Si el sistema cuenta con un operador $\mathcal{A}$, con las
características 
```{math}
  \begin{align*}
  \mathcal{A}|+\rangle =&\frac{1}{2}i\hbar |-\rangle, \\
  \mathcal{A}|-\rangle =&-\frac{1}{2}i\hbar |+\rangle.
\end{align*}
```
Ahora, si un sistema de medio espín se encuentra en el estado $$|S\rangle=\frac{1}{\sqrt{2}}[|+\rangle+|-\rangle]$$ entonces
$$\mathcal{A}|S\rangle=-\frac{i\hbar}{2\sqrt{2}}[|+\rangle-|-\rangle]=|S^\prime\rangle,$$
por lo que el estado $|S\rangle$ es mapeado al estado $|S^\prime\rangle$
:::


:::{note} Operador actuando sobre un bra 
Considere un par de vectores
ortogonales $|\phi_1\rangle$ y $|\phi_2\rangle$ que expanden el espacio
de Hilbert $\mathcal{H}$ de cierto sistema. El operador $\mathcal{A}$
tiene el siguiente efecto sobre dichos estado base: 
```{math}
\begin{align*}
    \mathcal{A}|\phi_1\rangle=&+3|\phi_1\rangle-4i|\phi_2\rangle\\
    \mathcal{A}|\phi_2\rangle=&-4i|\phi_1\rangle-3|\phi_2\rangle
\end{align*}
```
Podemos evaluar $\langle\phi_1|\mathcal{A}$ y
$\langle\phi_2|\mathcal{A}$ de la siguiente manera: Considere un estado
arbitrario $|\psi\rangle=a|\phi_1\rangle+b|\phi_2\rangle$, de manera que

```{math}
\begin{align*}
    \langle \phi_1 |\mathcal{A}|\psi \rangle=&\langle\phi_1|\{a\mathcal{A}|\phi_1\rangle+b\mathcal{A}|\phi_2\rangle\}\\
    =&\langle \phi_1 | \{a[3|\phi_1\rangle-4i|\phi_2\rangle]+b[-4i|\phi_1\rangle-3|\phi_2\rangle] \} \\
    =&3a-4i\\
    =&3\langle \phi_1 | \psi \rangle-4i\langle \phi_2 | \psi \rangle \\
    \Rightarrow & \langle \phi_1 |\mathcal{A}=3\langle \phi_1| -4i\langle \phi_2 |.    
\end{align*}
```
De manera análoga,
$$\langle \phi_2 |\mathcal{A}=-4i\langle \phi_2| -3\langle \phi_2 |.$$
:::

### Propiedades de los operadores lineales

-   _Suma de operadores_: A partir de dos operadores lineales
    $\mathcal{L}_1$ y $\mathcal{L}_2$ se puede formar un nuevo operador
    lineal como una combinación lineal
    $$(c_1 \mathcal{L}_1+c_2 \mathcal{L}_2)|A\rangle=c_1 \mathcal{L}_1 |A\rangle+c_2 \mathcal{L}_2|A\rangle.$$

-   _Conmutatividad de la suma_:
    $$\mathcal{L}_1+\mathcal{L}_2=\mathcal{L}_2+\mathcal{L}_1.$$

-   _Multiplicación de operadores_: La aplicación sucesiva de dos
    operadores lineales es un operador lineal
    $$\mathcal{L}_1 (\mathcal{L}_2 | A \rangle)\equiv (\mathcal{L}_1 \mathcal{L}_2)| A \rangle.$$
    $\mathcal{L}_1 \mathcal{L}_2$ se conoce como el *producto* de
    $\mathcal{L}_1$ y $\mathcal{L}_2$. En general,
    $\mathcal{L}_1 \mathcal{L}_2\neq \mathcal{L}_2 \mathcal{L}_1$ por lo
    tanto el producto de operadores lineales es no conmutativo.

En la mecánica cuántica, esta característica es muy importante y
conviene definir el *conmutador* de dos operadores
$$[\mathcal{A},\mathcal{B}]=\mathcal{A}\mathcal{B}-\mathcal{B}\mathcal{A}.$$

:::{note} Propiedades del conmutador 
```{math}
  \begin{align*}
    [\mathcal{A},\mathcal{B}]=&-[\mathcal{B},\mathcal{A}] \\
    [\mathcal{A},\mathcal{B}\mathcal{C}]=&[\mathcal{A},\mathcal{B}]C+\mathcal{B}[\mathcal{A},\mathcal{C}]\\
    [\mathcal{A},\mathcal{B}+\mathcal{C}]=&[\mathcal{A},\mathcal{B}]+[\mathcal{A},\mathcal{C}]\\
    [\mathcal{A},[\mathcal{B},\mathcal{C}]]+[\mathcal{C},[\mathcal{A},\mathcal{B}]]+[\mathcal{B},[\mathcal{C},\mathcal{A}]]=&0, \qquad (\mbox{identidad de Jacobi})
\end{align*}
```
:::

En la mecánica cuántica, se dice que si dos operadores conmutan,
entonces la variable dinámica que representa son *observables* medibles
de forma simultánea.\
Si $[\mathcal{A},\mathcal{B}]=0$, decimos que los operadores conmutan,
lo que significa que aplicarlos en distinto orden da el mismo resultado.
En cambio, si el conmutador no es cero, los operadores no conmutan, lo
cual es importante en la mecánica cuántica, ya que indica que las
observables representadas por esos operadores no se pueden medir
simultáneamente con precisión arbitraria (principio de incertidumbre).

:::{note} Operadores lineales en la mecánica cuántica
Las variables dinámicas en la mecánica cuántica se pueden asociar con operadores
lineales actuando en el espacio de estado: 
```{math}
\begin{align*}
    \hat{x}\rightarrow & x,\\ 
    \hat{p}\rightarrow &(\hbar/i)\nabla,
\end{align*}
```
donde $\hbar=h/2\pi$ y $h=6,626 070 15 \times 10^{-34}\, \text{J/s}$ es la *constante de Planck*.
:::

:::{note} Cálculo de conmutador 

Para calcular el conmutador $[\hat{x}, \hat{p}]$, consideramos la acción
de los operadores de posición $\hat{x}$ y de momento $\hat{p}$ sobre una
función de onda $\psi(x)$:

$$[\hat{x}, \hat{p}] \psi(x) = (\hat{x} \hat{p} - \hat{p} \hat{x}) \psi(x)$$

Primero, calculamos $\hat{x} \hat{p} \psi(x)$:
$$\hat{x} \hat{p} \psi(x) = \hat{x} \left( -i \hbar \frac{d}{dx} \psi(x) \right) = -i \hbar x \frac{d}{dx} \psi(x)$$

Ahora calculamos $\hat{p} \hat{x} \psi(x)$:
$$\hat{p} \hat{x} \psi(x) = \hat{p} (x \psi(x)) = -i \hbar \frac{d}{dx} (x \psi(x)) = -i \hbar \left( \psi(x) + x \frac{d}{dx} \psi(x) \right)$$

Restando ambas expresiones:
$$[\hat{x}, \hat{p}] \psi(x) = -i \hbar x \frac{d}{dx} \psi(x) - \left( -i \hbar (\psi(x) + x \frac{d}{dx} \psi(x)) \right)$$
$$[\hat{x}, \hat{p}] \psi(x) = i \hbar \psi(x)$$

Por lo tanto, obtenemos el resultado esperado:
$$[\hat{x}, \hat{p}] = i \hbar$$
:::

### Descomposición de la identidad en una base ortonormal

Si $\{|\phi_m\rangle\}$ es una base ortonormal de un espacio de Hilbert,
se conoce como _descomposición de la identidad en la base ortonormal_
a: $$\mathbb{I} = \sum_m |\phi_m\rangle \langle \phi_m|$$ Esto indica
que cualquier vector en el espacio puede ser escrito como una
combinación lineal de los vectores de la base $|\phi_m \rangle$.\
La expresión $|\phi_m\rangle \langle \phi_m|$ es un tipo especial de
operador llamado _operador de proyección_. Este operador actúa sobre
cualquier estado cuántico $|\psi \rangle$ en el espacio de Hilbert y lo
proyecta sobre el estado $|\phi_m \rangle$. Es decir, al aplicar
$|\phi_m\rangle \langle \phi_m|$ sobre $|\psi\rangle$ se obtiene
$$(|\phi_m\rangle \langle \phi_m|)|\psi\rangle =|\phi_m\rangle \langle \phi_m| \psi\rangle,$$
donde $\langle \phi_m| \psi\rangle$ es el coeficiente de proyección (un
número complejo) que mide cuanto el estado $|\psi\rangle$ está alineado
con el estado $|\phi_m\rangle$, y el resultado es un estado que es
paralelo a $|\phi_m \rangle$, pero escalado por ese coeficiente.\
En otras palabras, este operador selecciona la componente del estado
$|\psi\rangle$ que está en la direción de $|\phi_m \rangle$.\
Estos operadores de proyección se usan frecuentemente en cálculos de
probabilidades y mediciones. Por ejemplo, si el sistema está en el
estado $|\phi\rangle$, la probabilidad de encontrar (medir) el sistema
en el estado $|\phi_m\rangle$ es el cuadrado del valor absoluto de la
proyección:
$$\text{Prob}(|\phi_m\rangle)=|\langle \phi_m|\psi \rangle|^2.$$ Esta
proyección se realiza aplicando el operador
$|\phi_m \rangle \langle \phi_m|$ sobre el estado $|\psi\rangle$, que
selecciona la componente en la dirección de $|\phi_m\rangle$.

:::{note} Operador de proyección y probabilidades

Considere de nuevo los estados de espín $|+\rangle$ y $|-\rangle$ como
la base de un sistema de medio espín.\
Si el sistema se encuentra en el estado
$$|\psi \rangle = \alpha |+\rangle + \beta |-\rangle,$$ donde $\alpha$ y
$\beta$ son números complejos que representan las amplitudes de
probabilidad del sistema de estar en los estados $|+\rangle$ y
$|-\rangle$, respectivamente.\
Se define el operador de proyección sobre el estado $|+\rangle$:
$$\hat{P}_+=|+\rangle \langle + |,$$

de manera que $$\hat{P}_+ |\psi\rangle=\alpha |+\rangle.$$

La probabilidad de medir el espín en el estado $|+\rangle$ es el valor
absoluto al cuadrado del coeficiente $\alpha$, que es la amplitud de la
proyección del estado $|\psi\rangle$ sobre $|+\rangle$. Esto se calcula
usando el producto interno $\langle + | \psi \rangle$:

$$\text{Prob}(+) = |\langle + | \psi \rangle|^2 = |\alpha|^2$$

Por lo tanto, la probabilidad de que el sistema esté en el estado
$|+\rangle$ es $|\alpha|^2$.
:::



:::{seealso} Referencias

@cresser [Chapter 10 Operations on States, pag. 143-155]

@riley2006mathematical [Cap. 18 "Eigenfunction methods for
differential equations", pág. 554-559]

:::