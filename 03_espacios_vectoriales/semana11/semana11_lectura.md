---
title: Operadores hermíticos
description: Operadores hermíticos
short_title: Operadores hermíticos
author: " "
tags: [espacios_vectoriales, operador, hermítico, valores, propios]
subject: Espacios vectoriales - Semana 9
keywords: [operador, hermítico, valores, propios]
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

:::{aside} [Ana María Rey](https://es.wikipedia.org/wiki/Ana_Mar%C3%ADa_Rey)
es una física teórica colombiana reconocida internacionalmente por sus aportes al campo de la **física cuántica de muchos cuerpos** y la **computación cuántica**. Investigadora en el *JILA* (University of Colorado Boulder) y el *National Institute of Standards and Technology (NIST)*, Rey ha desarrollado modelos teóricos que describen la dinámica cuántica de átomos ultrafríos y redes ópticas, donde los operadores Hermíticos y las descomposiciones espectrales son esenciales para caracterizar los observables y las interacciones. 

Su trabajo ha sido fundamental para conectar los conceptos matemáticos de los **espacios de Hilbert**, los **operadores auto-adjuntos** y los **valores propios** con experimentos reales en **simuladores cuánticos** y **relojes atómicos** de precisión. En 2019 recibió la *Medalla Maria Goeppert Mayer* de la American Physical Society por su liderazgo en este campo.

```{figure} ./Ana-Maria-Rey.jpg
:label: fig-Ana-Maria-Rey.jpg
:alt: retrato de Dra. Ana Maria Rey
:align: center
[Dra. Ana Maria Rey (1970 - )](https://womeninscienceweadmire.icfo.eu/wiswa-2/ana-maria-rey/)

```

:::




```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Definir y distinguir** entre operadores adjuntos y operadores auto-adjuntos (Hermíticos), identificando su papel en la formulación de observables físicos dentro del espacio de Hilbert.

2. **Aplicar la notación de Dirac** para expresar operadores lineales, productos internos y proyecciones, interpretando su significado físico y matemático en el contexto de la mecánica cuántica.

3. **Analizar y realizar la descomposición espectral** de un operador Hermítico, relacionando sus autovalores y autovectores con los posibles resultados de medición y las probabilidades asociadas a los estados cuánticos.

```

+++ {"part": "abstract"}

En la mecánica cuántica, los operadores adjuntos y auto-adjuntos desempeñan un papel fundamental en la descripción matemática de las observables físicas.El adjunto de un operador describe la acción conjugada respecto al producto interno, manteniendo la estructura del espacio de Hilbert.  

Un operador se dice auto-adjunto (o Hermítico) si cumple $\mathcal{A} = \mathcal{A}^\dagger$. Estos operadores poseen autovalores reales y un conjunto completo de autovectores ortogonales, lo que permite construir bases ortonormales para representar estados cuánticos. En el formalismo de Dirac, los observables medibles —como posición, momento, espín o energía— están asociados precisamente a operadores auto-adjuntos.  

El carácter auto-adjunto de los operadores garantiza que los valores esperados $\langle \psi | \mathcal{A} | \psi \rangle$ sean reales, tal como se requiere para magnitudes físicas. Esta propiedad conecta de manera directa la estructura matemática de los espacios de Hilbert con la interpretación probabilística de la mecánica cuántica, permitiendo formular el proceso de medición como una descomposición espectral del operador Hermítico en sus autovalores y autovectores.  
+++


# Operador adjunto y auto-adjunto (o hermítico) 

Anteriormente vimos que si $\mathcal{L}|\psi\rangle=|\phi\rangle$, en
general, $\langle \psi |\mathcal{L}\neq \langle \phi |$.

En general, si un estado del espacio para un sistema expandido por un
conjunto completo de estados bases ortogonales
$\{|\varphi_n\rangle;\;n=1,2,3,\ldots \}$ y se conoce el efecto de un
operador $\mathcal{A}$ en cualquiera de los estados base
$|\varphi_n \rangle$
$$\mathcal{A}|\varphi_n\rangle = \sum_m |\varphi_m \rangle A_{mn},$$ entonces el efecto del operador sobre un estado bra,
$$\langle \varphi_n | \mathcal{A}=\sum_m A_{nm} \langle \varphi_m|,$$
donde $A_{mn}=\langle \varphi_m|\mathcal{A}|\varphi_n \rangle$ son los
elementos matríz del operador $\mathcal{A}$ con respecto a la base
$\{|\varphi_n\rangle;\;n=1,2,3,\ldots \}$.

Se define el *operador adjunto* (o *hermítico conjugado*) de
$\mathcal{A}$, como $\mathcal{A}^\dagger$, de manera que

$$\langle \xi | \mathcal{A} | \psi \rangle =\langle \xi |( \mathcal{A} | \psi \rangle)= (\langle  \xi |\mathcal{A}^\dagger )| \psi \rangle = \langle \psi | \mathcal{A}^\dagger |\xi \rangle^*,$$
de manera que
$$\text{si } \mathcal{A}|\psi\rangle=|\phi\rangle \text{  entonces  } \langle\psi|\mathcal{A}^\dagger=\langle \phi |.$$

Note que este nuevo operador está definido por su acción sobre vectores
bra.

Por lo tanto, tomar el conjugado complejo de
$\langle \xi|\mathcal{A}|\psi \rangle$ equivale a intercambiar el orden
de los factores y reemplazar el operador por su hermítico conjugado. A
partir de esta propiedad, es posible determinar el efecto o acción de
$\mathcal{A}^\dagger$ en un vector ket:

:::{math}
:label: eq-adj
\mathcal{A}^\dagger|\varphi_n \rangle = \sum_m |\varphi_m\rangle A^*_{nm}.  
:::

A partir de estas relaciones, se tiene que
$$\langle \varphi_m | \mathcal{A} | \varphi_n \rangle^*=A^*_{mn}=\langle \varphi_n | \mathcal{A}^\dagger | \varphi_m \rangle$$

:::{note} Acción del operador adjunto sobre los estado ket
Un operador
$\mathcal{B}$ definido para dos estados ortonormales $|\varphi_1\rangle$
y $|\varphi_2\rangle$ está dado por
$$\mathcal{B}|\varphi_1\rangle=2|\varphi_2\rangle \quad \mbox{y} \quad \mathcal{B}|\varphi_2\rangle=i|\varphi_1\rangle.$$

Considere un estado arbitrario de este sistema\
$$| \chi \rangle=c_1|\varphi_1\rangle + c_2|\varphi_2\rangle,$$ por lo
que
$$\langle \chi | \mathcal{B}^\dagger | \varphi_1 \rangle^*= \langle \varphi_1 | \mathcal{B} | \chi\rangle=\ldots=ic_2=i\langle\varphi_2|\chi\rangle,$$
de manera que
$$\langle \chi | \mathcal{B}^\dagger | \varphi_1 \rangle =  -i\langle \varphi_2 | \chi \rangle^*=-i\langle \chi | \varphi_2\rangle,$$
por lo que $$\mathcal{B}^\dagger|\varphi_1\rangle=-i|\varphi_2\rangle$$
:::

:::{note} Propiedades del operador adjunto 
Si $a$ es un escalar; $\mathcal{A}$ y
$\mathcal{B}$ son operadores y $\mathcal{A}^\dagger$ y
$\mathcal{B}^\dagger$ sus operadores adjuntos, 
```{math}
\begin{aligned}
        (a\mathcal{A})^\dagger=&a^*\mathcal{A}^\dagger \\
        (\mathcal{A}^\dagger)^\dagger=&\mathcal{A}\\
        (\mathcal{A}+\mathcal{B})^\dagger=&\mathcal{A}^\dagger+\mathcal{B}^\dagger\\
        (\mathcal{A}\mathcal{B})^\dagger=&\mathcal{B}^\dagger\mathcal{A}^\dagger \\
        (\mathcal{A}^n)^\dagger=&(\mathcal{A}^\dagger)^n
\end{aligned}
```
:::

:::{note} Operador de aniquilación de fotones 
Al estudiar los campos
electromagnéticos en el interior de una cavidad diseñada para soportar
un estado del campo; una base de estados para el campo electromagnético
está dada por los llamados *estados número*
$\{|n\rangle,\, n=0,1,2,\ldots\}$, donde el estado $|n\rangle$
corresponde al estado del campo con $n$ fotones presentes.

El operador
$$\hat{a}|n\rangle=\sqrt{n}|n-1\rangle, \qquad  \hat{a}|0\rangle=|0\rangle.$$

Si consideramos el efecto de $\hat{a}$ sobre un estado arbitrario
$$|\psi \rangle=\sum_m^{\infty}|m\rangle \langle m| \psi \rangle,$$
tenemos que 
```{math}
\begin{aligned}
    (\langle n | \hat{a}) | \psi \rangle=& (\langle n | \hat{a}) \sum_{m=0}^{\infty}|m\rangle \langle m| \psi \rangle \\
    =&  \sum_{m=0}^{\infty} (\langle n | \hat{a}) |m\rangle \langle m| \psi \rangle \\
    =&  \sum_{m=0}^{\infty} \langle n | (\hat{a} |m\rangle \langle m| \psi \rangle) \\
    =& \sum_{m=1}^{\infty} \sqrt{m}\langle n|m-1\rangle \langle m| \psi \rangle \\
    =& \sum_{m=0}^{\infty} \sqrt{m+1}\langle n|m\rangle \langle m+1| \psi \rangle \\
    =& \sum_{m=0}^{\infty} \sqrt{m+1}\delta_{nm} \langle m+1| \psi \rangle \\
    =&\left\{\sqrt{n+1} \langle n+1| \right\}|\psi\rangle,
\end{aligned}
```

de donde
$$\langle n | \hat{a}=\sqrt{n+1} \langle n+1|.$$
:::

## Operadores Hermíticos

Un operador lineal, $\mathcal{H}$, se dice *auto adjunto* (o
*hermítico*) si $$\mathcal{H}^\dagger=\mathcal{H}.$$

Los operadores auto-adjuntos son cruciales en mecánica cuántica porque
sus valores propios son reales, lo que permite interpretarlos como
observables físicos. Ejemplos de operadores auto-adjuntos son el
operador de posición y el operador de momento.

Si $\mathcal{A}$ es hermítico
$$\langle \psi | \mathcal{A}|\phi \rangle^* = \langle \phi | \mathcal{A}|\psi \rangle,$$
de donde $$A_{mn}=A^*_{nm}.$$

### Propiedades de los operadores hermíticos

- Si $\mathcal{H}_1$ y $\mathcal{H}_2$ son hermíticos, $r_1 \mathcal{H}_1+r_2\mathcal{H}_2$ es
hermítico solo si $r_1$ y $r_2$ son reales.

- $\mathcal{H}_1 \mathcal{H}_2$ es hermítico solo si
$\mathcal{H}_1 \mathcal{H}_2=\mathcal{H}_2 \mathcal{H}_1$, es decir, si
$[\mathcal{H}_1, \mathcal{H}_2]=0$.


## Operadores unitarios 

Un operador $\mathcal{U}$ se dice *unitario* si
$$\mathcal{U}^\dagger=\mathcal{U}^{-1},$$ donde $\mathcal{U}^{-1}$ es el
*operador inverso* de $\mathcal{U}$, es decir,
$$\mathcal{U}^{-1} \mathcal{U}= \mathcal{U} \mathcal{U}^{-1}=\mathcal{I};$$
donde $\mathcal{I}$ es el *operador identidad*
$$\mathcal{I}| \psi \rangle=| \psi \rangle$$

Los operadores unitarios son útiles en la Física pues permiten describir
transformaciones entre bases ortogonales. Representan transformaciones
que no cambian las longitudes ni los ángulos en el espacio de Hilbert,
como rotaciones, traslaciones temporales o cambios de base en la
mecánica cuántica.

Si $|\psi\rangle$ es un estado normalizado a la unidad,
$\langle \psi|\psi\rangle=1$. El estado
$|\phi\rangle=\mathcal{U}|\psi\rangle$ también estará normalizado a la
unidad:
$$\langle \phi|\phi\rangle=\langle \psi|\mathcal{U}^\dagger\mathcal{U}|\psi\rangle=\langle \psi|\mathcal{I}|\psi\rangle=\langle \psi|\psi\rangle=1;$$
es decir, los operadores unitarios mapean estados normalizados en
estados normalizados.

:::{note} Relación entre operadores unitarios y hermíticos
Cualquier
operador unitario $\mathcal{U}$ puede escribirse de la forma
$$\mathcal{U} = e^{-i\mathcal{A}},$$ donde $\mathcal{A}$ es hermítico.
:::

<!-- :::{note} "Escenario" de Schrödinger
Los estados de un sistema cuántico son
dependientes del tiempo. Un estado del sistema en un instante $t$ se
relaciona con el estado en un instante $t_0$ por medio de una
transformación unitaria:
$$| \psi(t) \rangle=\mathcal{U}(t,t_0)| \psi \rangle(t_0), \qquad \mathcal{U}(t_0,t_0)=I;$$
tomando la derivada temporal
$$\frac{\partial}{\partial t}| \psi(t) \rangle=\frac{\partial}{\partial t}\mathcal{U}(t,t_0)| \psi (t_0)\rangle=\frac{\partial}{\partial t}UU^\dagger| \psi (t) \rangle \equiv \frac{1}{i\hbar}H(t) | \psi (t) \rangle,$$
donde
$\mathcal{H}=i\hbar \dot{\mathcal{U}}\mathcal{U}^\dagger=\mathcal{H}^\dagger$
es llamado el *hamiltoniano* u *operador de energía*.

La ecuación diferencial resultante se llama *ecuación de Schrödinger.*
::: -->

# Valores y vectores propios (eigenvectors y eigenvalues) 

Puede suceder que para algún operador $\mathcal{A}$, exista un vector
estado $| \phi \rangle$ con la propiedad que 
:::{math}
:label: eq-eigen
    \mathcal{A}|\phi \rangle = a_\phi |\phi \rangle,
:::

 donde $a_\phi$
es, en general, un número complejo. En esta situación se dice que el
estado $|\phi \rangle$ es un *autovector* (o *eigenket* o *vector
propio*) del operador $\mathcal{A}$ con *autovalor* (o *eigenvalor* o
*valor propio*) $a_\phi$.

Generalmente se utiliza la notación
$$\mathcal{A}|a\rangle = a  |a\rangle,$$ en la cual el auto-vector se
etiqueta según su auto-valor correspondiente.

El concepto de eigenket se puede extender al de eigenbra:
$$\langle \phi | \mathcal{A}^\dagger = a^*_\phi \langle \phi |.$$

:::{note} Sistemas de *medio espín* (spin half)
Considere los estados
de espín $|+\rangle$ y $|-\rangle$, base de un sistema de medio espín y
que el sistema cuenta con un operador $\mathcal{B}$, con las
características 
```{math}
\begin{aligned}
      \mathcal{B}|+\rangle =&\frac{1}{2}i\hbar |-\rangle, \\
      \mathcal{B}|-\rangle =&\frac{1}{2}i\hbar |+\rangle.
\end{aligned}
```
Ahora, si un sistema de medio espín se encuentra en el
estado $$|S\rangle=\frac{1}{\sqrt{2}}[|+\rangle+|-\rangle]$$ entonces
$$\mathcal{B}|S\rangle=\frac{i\hbar}{2}|S\rangle$$ por lo que el estado
$|S\rangle$ es un eigenvector de $\mathcal{B}$, con eigenvalor
$i\hbar/2$.
:::

Determinar los autovectores y autovalores de un operador $\mathcal{A}$
suele referirse como resolver el problema de autovalores del operador y
corresponde con encontrar soluciones a
[Ecuación %s](#eq-eigen). Si
el espacio vectorial tiene dimensión finita, esto puede llevarse a cabo
por medio de métodos matriciales; mientras que si la dimensión del
espacio es infinita, resolver el problema de autovalores requiere
resolver una ecuación diferencial.

En mecánica cuántica, los valores propios de un operador auto-adjunto
representan los posibles resultados de medir la observable asociada a
ese operador. Es decir, las mediciones de observables (como la energía,
el momento, o la posición) corresponden a los valores propios de los
operadores que describen esas observables. Los estados cuánticos
asociados a esos resultados son los vectores propios.

Si más de un eigenvector tienen el mismo eigenvalor, se dice que el
eigenvector es *degenerado*.

:::{note} Ecuación de Schrödinger independiente del tiempo
$$\mathcal{H}\psi=\left[-\frac{\hbar^2}{2m}\nabla^2+V(r) \right]\psi=E\psi$$
es un problema de autovalores.
:::

En general, se cumple que

1.  un operador puede no tener auto-estados

2.  los autovalores pueden ser reales o complejos,

3.  un operador puede tener una coleción discreta de autovalores
    $a_1, a_2,\ldots$ y autovalores asociados
    $|a_1\rangle, |a_2\rangle, \ldots$,

4.  un operador puede tener un rango continuo de autovalores y
    autovectores,

5.  un operador puede tener una combinación de autovalores discretos y
    continuos,

6.  los valores propios de un operador hermítico son reales,

7.  un operador hermítico posee un conjunto ortogonal de funciones
    propias,

8.  las funciones propias de un operador hermítico forman un conjunto
    completo.

Al conjunto de todos los autovalores de un operador se le llama el
*espectro de autovalores del operador*.

Si $\mathcal{A}$ es hermítico y tiene un conjunto completo de
autoestados $\{|a_n\rangle; n=1,2,3,\ldots\}$, estos autoestados forman
una base ortonormal del sistema. Esto significa que un estado arbitrario
$|\psi \rangle$ puede escribirse como
$$| \psi \rangle = \sum_m | a_n\rangle \langle a_n | \psi \rangle$$

# Notación de Dirac para operadores 

Si $|\psi\rangle$ y $|\phi \rangle$ son estados arbitrarios, se define
el operador $| \psi \rangle \langle \phi |$ mediante 
```{math}
\begin{aligned}
    (|\phi \rangle \langle \psi |)|\alpha\rangle =& |\phi \rangle \langle\psi | \alpha \rangle \\
     \langle \alpha |(|\phi \rangle \langle \psi |) =& \langle \alpha | \phi \rangle \langle \psi|
\end{aligned}
```

:::{note} Operadores de espín de Pauli
Los tres *operadores de spin de
Pauli* para un sistema de medio espín, cuyos espacio de estados está
expandido por los estados base $\{|+\rangle, |-\rangle \}$ están
definidos, en notación de Dirac mediante 
```{math}
:label: eq-pauli
\begin{aligned}
    \hat{\sigma}_x=&|-\rangle \langle+|+|+\rangle \langle-| \\
    \hat{\sigma}_y=&i|-\rangle \langle+|-i|+\rangle \langle-| \\
    \hat{\sigma}_z=&|+\rangle \langle+|-|-\rangle \langle-|. 
\end{aligned}
```
De donde, por ejemplo,
$$\hat{\sigma}_x |+\rangle = \left[|-\rangle \langle+|+|+\rangle \langle-| \right]|+\rangle=|-\rangle\langle+|+\rangle+|+\rangle \langle -|+\rangle=|-\rangle.$$
Análogamente, por ejemplo
$$\langle - |\hat{\sigma}_z=\langle - |\left[|+\rangle \langle+|-|-\rangle \langle-|\right]=\langle-|+\rangle\langle+|-\langle-|-\rangle \langle-|=-\langle-|.$$
:::

## Descomposición espectral de un operador

Si $\mathcal{A}$ es un operador hermítico con autoestados
$|a_n\rangle;n=1,2,\ldots$ y correspondientes autovalores
$a_n; \, n=1,2,\ldots$; de manera que
$$\mathcal{A}|a_n\rangle=a_n |a_n\rangle$$
$$\mathcal{A}=\sum_n a_n |a_n\rangle \langle a_n|$$

En la mecánica cuántica, si una cierta cantidad observable $Q$ toma
valores $q_1, q_2, q_2, \ldots$, entonces este observabe es
representable como un operador Hermítico $\mathcal{Q}$ tal que

1.  los valores propios de $\mathcal{Q}$ son todos los posibles valores
    $q_1, q_2, q_2, \ldots$,

2.  si una medida de $Q$ resulta en $q_n$, el sistema estará el
    eigen-estado $|q_n\rangle$, donde
    $$\mathcal{Q}|q_n\rangle=q_n|q_n\rangle$$

3.  los eigen-estados $|q_1\rangle$, $|q_2\rangle$, $\ldots$ forman una
    base ortonormal completa; por lo que cualquier otro estado del
    sistema puede escribirse
    $$|\psi\rangle=|q_1\rangle\langle q_1|\psi \rangle + |q_2\rangle\langle q_2|\psi \rangle +\cdots$$

4.  si el sistema se encuentra en el estado $|\psi \rangle$, la
    probabilidad de obtener el resultado $q_n$ luego de medir $Q$ está
    dada por $$|\langle q_n |\psi\rangle|^2$$

Generalmente se le llama *observable* al operador $\mathcal{Q}$.

:::{note} Valor esperado de un observable
 En mecánica cuántica se define el valor
promedio de un observable $\mathcal{A}$ en un estado cuántico
$|\Psi\rangle$:
$$\langle \mathcal{A} \rangle= \langle \Psi | \mathcal{A}|\Psi \rangle$$
:::




:::{seealso} Referencias
@cresser [10.3 The Hermitean Adjoint of an Operator, 155-160]

@cresser [10.4 Eigenvalues and Eigenvectors, 160-165]

@riley2006mathematical [Cap. 17 "Eigenfunction methods for
differential equations", pág. 559-563]

:::