---
title: Operaciones vectoriales   
description: Operaciones vectoriales 
short_title: Operaciones vectoriales
author: " "
tags: [analisis_vectorial, producto, escalar, vector]
subject: Cálculo y análisis vectorial - Semana 1
keywords: [producto, escalar, vector]
exports:
 - format: pdf
   template: curvenote
   output: ./semana01_lectura.pdf
downloads:
  - file: ./semana01_lectura.md
    title: semana01_lectura.md
  - file: ./semana01_lectura.pdf
    title: semana01_lectura.pdf
  - file: ./componentes-cartesianas.asy
    title: componentes-cartesianas.asy
  - file: ./paralelogramo.asy
    title: paralelogramo.asy
  - file: ./paralelepipedo.asy
    title: paralelepipedo.asy
---

:::{aside} <wiki:Anne_L%27Huillier>
es una física francesa premiada con el Nobel de Física 2023 por sus métodos experimentales que generan pulsos de attosegundos de luz para estudiar la dinámica de electrones en la materia. Su investigación revolucionó la física óptica mediante la generación de armónicos de alta frecuencia en gases, donde el análisis de campos electromagnéticos oscilatorios y vectores de onda es fundamental. Su trabajo requiere el uso de productos vectoriales para describir la interacción entre campos eléctricos y magnéticos, y análisis de vectores de polarización para comprender los procesos de ionización atómica en escalas de tiempo extremadamente cortas.

```{figure} ../images/Huillier.webp
:label: fig-Anne_LHuiller
:alt: retrato de Dra. Anne L'Huillier
:align: center
Dra. Anne L'Huillier (1958 - )  [Créditos](https://www.unesco.org/en/virtual-science-museum/women-science/anne-lhuillier)
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Aplicar operaciones vectoriales fundamentales**, incluyendo el producto escalar, el producto vectorial y los productos triples, para resolver problemas geométricos y físicos en el espacio tridimensional.

2. **Interpretar el significado geométrico y físico de los productos vectoriales y sus combinaciones** (producto mixto y vectorial doble), vinculándolos con conceptos como área, volumen, momento angular y torque.

3. **Analizar la variación temporal de vectores**, utilizando las reglas de diferenciación vectorial para describir trayectorias, velocidades y aceleraciones en contextos dinámicos de la física clásica.
```

+++ { "part": "abstract" }  
El cálculo vectorial es una herramienta fundamental en física e ingeniería, ya que proporciona el lenguaje matemático para describir magnitudes con dirección y sentido, así como las variaciones espaciales y temporales de campos físicos. Estos temas sientan las bases para introducir el cálculo diferencial e integral sobre campos vectoriales, los sistemas de coordenadas curvilíneas y los teoremas fundamentales del análisis vectorial.
+++

(notacion-vectorial)= 
# ↗️ Vectores y notación vectorial

Las operaciones vectoriales son operaciones matemáticas realizadas entre [vectores](https://es.wikipedia.org/wiki/Vector). Los vectores son entidades que tienen magnitud y dirección y se representan comúnmente como flechas en un espacio tridimensional. Estas operaciones permiten analizar y manipular vectores para aplicaciones en diversas áreas como la mecánica, el electromagnetismo, y la dinámica de fluidos.

:::{note} Algunas ecuaciones vectoriales
% Ecuación de Navier-Stokes (fluido viscoso)
$$\rho \left[ \frac{\partial \vec{v}}{\partial t} + (\vec{v} \cdot \nabla)\vec{v} \right] = -\nabla p + \mu \nabla^2 \vec{v} + \vec{f}$$
% Ley de Gauss para el campo eléctrico
$$\nabla \cdot \vec{E} = \frac{\rho}{\varepsilon_0}$$
% Ley de Ampère-Maxwell
$$\nabla \times \vec{B} = \mu_0 \vec{J} + \mu_0 \varepsilon_0 \frac{\partial \vec{E}}{\partial t}$$
:::

Formalmente, un vector es un elemento de un [espacio vectorial](https://es.wikipedia.org/wiki/Espacio_vectorial), una [estructura algebraica](https://es.wikipedia.org/wiki/Estructura_algebraica) definida sobre un [cuerpo](https://es.wikipedia.org/wiki/Cuerpo_(matem%C3%A1ticas)) (como $\mathbb{R}$ o $\mathbb{C}$), que permite realizar dos operaciones:

- Suma de vectores: $\vec{u}+\vec{v}$
- Multiplicación por un escalar:  $\lambda \vec{v}$
 
Estas operaciones deben satisfacer ciertas propiedades: asociatividad, conmutatividad, existencia de elemento neutro, entre otras. A los elementos de un espacio vectorial se les llama vectores y a los elementos del cuerpo se les conoce como [escalares](https://es.wikipedia.org/wiki/Escalar_(matem%C3%A1tica)).

En el caso de los vectores en $\mathbb{R}^n$, un vector se representa como una tupla ordenada

$$\vec{v}=(v_1,v_2,\ldots,v_n). $$

En un espacio tridimensional, una manera común de representar un vector es indicando sus *componentes cartesianas* o *rectangulares* respecto a un *sistema de referencia cartesiano*. Un *[sistema cartesiano](https://es.wikipedia.org/wiki/Coordenadas_cartesianas)* es un conjunto de ejes mutuamente perpendiculares. En la [Figura %s](#fig-vector) se muestra un *sistema de coordenadas cartesiano*.

En términos generales, si $\vec{A}$ es una cantidad vectorial,
denotaremos 

$$\begin{aligned}
\vec{A}=&(A_x,A_y,A_z)\\
=&A_x\hat{\iota}+A_y\hat{\jmath}+A_z\hat{\kappa},
\end{aligned}$$ donde $A_x$, $A_y$ y $A_z$ corresponden a las
*componentes cartesianas* del vector $\vec{A}$, respectivamente. Las cantidades $\hat{\iota}$, $\hat{\jmath}$ y $\hat{\kappa}$ se llaman
*[vectores directores](https://es.wikipedia.org/wiki/Vector_director) [unitarios](https://es.wikipedia.org/wiki/Vector_unitario)* y son vectores de magnitud uno y
dirección a lo largo de los ejes $x$, $y$ y $z$, respectivamente.

```{figure} ../images/componentes-cartesianas.png
:label: fig-vector
:alt: sistema cartesiano
:align: center

Componentes cartesianas de un vector. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

# 💻 Operaciones vectoriales

## Producto escalar de dos vectores

El [producto escalar](https://es.wikipedia.org/wiki/Producto_escalar) (también llamado producto punto o interno) es una operación fundamental en álgebra vectorial que asocia a cada par de vectores un número real. Representa la forma más sencilla de combinar dos vectores para obtener un valor escalar que captura aspectos tanto algebraicos como geométricos de su relación mutua.

Dados dos vectores $\vec{A}$ y $\vec{B}$, su producto escalar está definido por 
$$\begin{aligned}
\vec{A}\cdot\vec{B}=&A_xB_x+A_yB_y+A_zB_z\\
=&|\vec{A}||\vec{B}|\cos \theta\\
=&\vec{B}\cdot\vec{A}.
\end{aligned}$$

donde $|\vec{A}|$ y $|\vec{B}|$ representan las magnitudes de $\vec{A}$
y $\vec{B}$ respectivamente, y $\theta$ el ángulo entre ellos.



:::{note} Trabajo mecánico
El trabajo ($W$) de un fuerza ($\vec{F}$) cuando actúa a lo
largo de un desplazamiento ($\vec{s}$) está dado por
$$W=\vec{F}\cdot \vec{s}=Fs\cos \theta,$$ donde $\theta$ es el ángulo
entre $\vec{F}$ y $\vec{s}$.
:::

Note que
$$|\vec{A}|=\sqrt{\vec{A}\cdot\vec{A}}= \sqrt{A_x^{2}+A_y^{2}+A_z^{2}}.$$
Además, si dos vectores son perpendiculares, es decir si
$\theta=90^{\circ}$, $\vec{A}\cdot\vec{B}=0$.

A partir de esta operación, se pueden calcular los *cosenos
directores* de un vector $$\begin{aligned}
\vec{A}\cdot\hat{\iota}=&|A||\hat{\iota}|\cos\theta_{x}=A\cos\theta_{x}=A_{x}, \\
\vec{A}\cdot\hat{\jmath}=&|A||\hat{\jmath}|\cos\theta_{y}=A\cos\theta_{y}=A_{y}, \\
\vec{A}\cdot\hat{\kappa}=&|A||\hat{\kappa}|\cos\theta_{z}=A\cos\theta_{z}=A_{z},
\end{aligned}$$ donde $\theta_{x}$, $\theta_{y}$ y $\theta_{z}$,
llamados *ángulos directores*, son los ángulos que forma el vector con
los ejes $x$, $y$ y $z$; respectivamente.


✨ El producto escalar conecta álgebra con geometría. Permite definir conceptos fundamentales como ángulo entre vectores, longitud, y ortogonalidad, y se extiende naturalmente a espacios vectoriales de dimensión arbitraria, incluso en el marco del álgebra lineal y del análisis funcional.✨

Dados dos vectores en $\mathbb{R}^n$,
$$\vec{A}=(A_1,A_2,\ldots,A_n),\quad \vec{B}=(B_1,B_2,\dots,B_n) $$
el producto escalar se define como
$$\vec{A}\cdot\vec{B}=\sum_i^n A_iB_i.$$


## Producto vectorial de dos vectores

El [producto vectorial](https://es.wikipedia.org/wiki/Producto_vectorial) (también llamado producto cruz) es una operación binaria entre dos vectores en el espacio tridimensional que da como resultado un nuevo vector, perpendicular a ambos vectores originales.

Dados $\vec{A}=(A_x,A_y,A_z)$ y $\vec{B}=(B_x,B_y,B_z)$, el producto vectorial se define como

$$\vec{A}\times \vec{B}=\vec{C},$$ donde 

:::{math}
\begin{aligned}
C_x=&A_yB_z-A_zB_y,\\
C_y=&A_zB_x-A_xB_z,\\
C_z=&A_xB_y-A_yB_y.
\end{aligned}
:::

ó 
:::{math}
\vec{C}=\begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\ 
A_x & A_y & A_z\\
B_x & B_y & B_z
\end{vmatrix}=(A_yB_z-A_zB_y)\hat{\iota}-(A_xB_z-A_zB_x)\hat{\jmath}+(A_xB_y-A_yB_x)\hat{\kappa}
:::

Se cumple además que
$$|\vec{A}\times\vec{B}|=|\vec{A}||\vec{B}|\sin \theta,$$ siendo
$\theta$ el ángulo entre $\vec{A}$ y $\vec{B}$. Geométricamente, esta
magnitud equivale al área del paralelogramo que se forma entre $\vec{A}$
y $\vec{B}$ (ver [Figura %s](#fig-paralelogramo))

```{figure} ../images/paralelogramo.png
:label: fig-paralelogramo
:alt: parelelogramo formado por vectores
:align: center

Paralelogramo formado por dos vectores. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```


Note que el producto cruz entre vectores paralelos $(\theta=0)$ es
nulo.

:::{note} La torca
La torca ($\vec{\tau}$) de un fuerza ($\vec{F}$) cuando actúa a
una distancia ($\vec{r}$) del eje de giro de un cuerpo rígido está
dado por $$\vec{\tau}=\vec{r}\times \vec{F}$$ Si el eje de giro ($z$)
permanece constante, $$\tau_z=Fr\sin \theta=Fr_{\perp},$$ donde
$r_{\perp}$ se conoce como *brazo de palanca* de la fuerza.
:::



## Producto triple escalar

El [producto triple escalar](https://es.wikipedia.org/wiki/Producto_mixto) (o producto mixto) es una operación vectorial que combina tres vectores en el espacio tridimensional y da como resultado un escalar. Se interpreta geométrica y físicamente como el volumen orientado del paralelepípedo definido por esos tres vectores, lo que lo convierte en una herramienta esencial para el análisis de geometría espacial y sistemas físicos tridimensionales.

Dados tres vectores $\vec{A}$,$\vec{B}$,$\vec{C}\in \mathbb{R}^3$ el producto triple escalar se define como
:::{math}
:label: eq-producto-triple-escalar
\vec{A}\cdot (\vec{B}\times \vec{C})=\begin{vmatrix}
A_x & A_y & A_z\\
B_x & B_y & B_z\\
C_x & C_y & C_z
\end{vmatrix}
:::

Este resultado es un número real (escalar), que puede ser positivo, negativo o cero. Su magnitud representa el volumen del paralelepípedo formado por los tres vectores.

:::{note} El Jacobiano

 Boas, M (2005): Example 2 - Section 3 - Chapter 6

En coordenadas cartesianas, el elemento de volumen es una caja
rectangular de volumen $dxdydz$. En otro sistema de coordenadas, el
volumen puede ser aproximado por una paralelepípedo.


Considere un cambio de coordenadas $\{x,y,z\}\rightarrow\{u,v,w\}$.

En la Figura considere que $\vec{A}$ está a lo largo de la
dirección en la cual $u$ aumenta y $v$ y $w$ permanecen constantes.
Entonces, si $d\vec{r}=\hat{\iota}dx+\hat{\jmath}dy+\hat{\kappa}dz$ es
un vector en esa dirección, tenemos que
$$\vec{A}=\displaystyle \frac{\partial \vec{r}}{\partial u}du=\left(\displaystyle \frac{\partial x}{\partial u}\hat{\iota}+\displaystyle \frac{\partial y}{\partial u}\hat{\jmath} +\displaystyle \frac{\partial z}{\partial u}\hat{\kappa}\right)du.$$

De igual manera, si $\vec{B}$ y $\vec{C}$ están a lo largo de la
dirección en la cual $v$ y $w$ aumentan; respectivamente, tenemos que
$$\begin{aligned}
\vec{B}=&\displaystyle \frac{\partial \vec{r}}{\partial v}dv=\left(\displaystyle \frac{\partial x}{\partial v}\hat{\iota}+\displaystyle \frac{\partial y}{\partial v}\hat{\jmath} +\displaystyle \frac{\partial z}{\partial v}\hat{\kappa}\right)dv\\
\vec{C}=&\displaystyle \frac{\partial \vec{r}}{\partial w}dw=\left(\displaystyle \frac{\partial x}{\partial w}\hat{\iota}+\displaystyle \frac{\partial y}{\partial w}\hat{\jmath} +\displaystyle \frac{\partial z}{\partial w}\hat{\kappa}\right)dw
\end{aligned}$$ de donde
$$\vec{A}\cdot (\vec{B}\times \vec{C})=\begin{vmatrix}
\displaystyle \frac{\partial x}{\partial u} & \displaystyle \frac{\partial y}{\partial u} & \displaystyle \frac{\partial z}{\partial u}\\ 
\displaystyle \frac{\partial x}{\partial v} & \displaystyle \frac{\partial y}{\partial v} & \displaystyle \frac{\partial z}{\partial v}\\ 
\displaystyle \frac{\partial x}{\partial w} & \displaystyle \frac{\partial y}{\partial w} & \displaystyle \frac{\partial z}{\partial w}\\
\end{vmatrix}dudvdw=Jdudvdw$$ donde $J$ es el Jacobiano de la
transformación de $x$, $y$ y $z$ a $u$, $v$ y $w$.

Ver [Figura %s](#fig-paralelepipedo).

:::


```{figure} ../images/paralelepipedo.png
:label: fig-paralelepipedo
:alt: paralelepípedo
:align: center

Paralelepípedo formado por tres vectores. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/)
```

✨ El producto triple escalar permite relacionar cantidades vectoriales con volúmenes y orientaciones en el espacio físico, algo esencial para interpretar estructuras tridimensionales en ingeniería, mecánica y electromagnetismo. Además, conecta el álgebra lineal con la geometría del espacio, facilitando el análisis estructural, dinámico y de simetría en múltiples contextos.✨


## Producto triple vectorial

El [producto triple vectorial](https://en.wikipedia.org/wiki/Triple_product) es una operación que combina tres vectores en el espacio tridimensional, generando como resultado un nuevo vector. Esta operación se presenta cuando se toma el producto vectorial de un vector con el producto vectorial de otros dos, y aparece con frecuencia en formulaciones de la mecánica clásica, dinámica rotacional, electromagnetismo, y análisis de sistemas de referencia móviles.


produce un nuevo vector que yace en el plano generado por $\vec{B}$ y $\vec{C}$. De hecho, el resultado es siempre una combinación lineal de $\vec{B}$ y $\vec{C}$:

:::{math}
:label: eq-bac-cab
\vec{A}\times(\vec{B}\times\vec{C})=(\vec{A}\cdot\vec{C})\vec{B}-(\vec{A}\cdot\vec{B})\vec{C}=a\vec{B}-b\vec{C}
:::

Esta identidad se conoce como _Identidad de Lagrange_ (o identidad de bac–cab).

:::{note} 🔹 Aplicaciones físicas

- **Dinámica rotacional**: en cuerpos en rotación, el término $ \vec{\omega} \times (\vec{\omega} \times \vec{r}) $ aparece como parte de la **aceleración centrífuga**:

  $$
  \vec{a}_\text{centrífuga} = \vec{\omega} \times (\vec{\omega} \times \vec{r}) = \omega^2 \vec{r}_\perp - (\vec{\omega} \cdot \vec{r}) \vec{\omega}
  $$

- **Electromagnetismo**: aparece al evaluar expresiones de campos variables en medios móviles, por ejemplo, en la parte inducida del campo eléctrico.

- **Proyección vectorial**: la proyección de un vector $ \vec{A} $ en el plano ortogonal a un vector unitario $ \hat{n} $ se puede expresar como:

  $$
  \vec{A}_\perp = \hat{n} \times (\vec{A} \times \hat{n})
  $$

- **Mecánica clásica**: en la formulación de sistemas no inerciales, aceleraciones relativas y fuerzas ficticias.

:::

✨ El producto triple vectorial es clave en el análisis de interacciones vectoriales complejas. Permite expresar proyecciones, componentes ortogonales y análisis de sistemas de partículas y campos. Su identidad asociada permite una reducción algebraica eficaz y conecta el álgebra vectorial con la geometría del espacio físico tridimensional. ✨


## Diferenciación de vectores 

La diferenciación de vectores es una extensión natural del cálculo diferencial al contexto de cantidades vectoriales que varían en el espacio y/o en el tiempo. 


Si $\vec{A}=A_x\hat{\iota}+A_y\hat{\jmath}+A_z\hat{\kappa}$ es un
vector, donde $\hat{\iota}$, $\hat{\jmath}$ y $\hat{\kappa}$ son
vectores unitarios (fijos) y $A_x$, $A_y$ y $A_z$ son funciones de $t$,
se cumplen las siguientes relaciones:

$$\frac{d\vec{A}}{dt}=\frac{dA_x}{dt}\hat{\iota}+\displaystyle \frac{dA_y}{dt}\hat{\jmath}+\frac{dA_z}{dt}\hat{\kappa} $$

$$    \frac{d}{dt}(a\vec{A})=\displaystyle \frac{da}{dt}\vec{A}+ a\frac{d\vec{A}}{dt}$$

$$    \frac{d}{dt}(\vec{A}\cdot\vec{B})= \displaystyle  \frac{d\vec{A}}{dt}\cdot \vec{B}+ \vec{A}\cdot\frac{d\vec{B}}{dt} $$

$$\frac{d}{dt}(\vec{A}\times\vec{B})= \displaystyle  \frac{d\vec{A}}{dt}\times \vec{B}+ \vec{A}\times\frac{d\vec{B}}{dt} $$


En el caso de distintos sistemas de coordenadas, por ejemplo coordenadas
polares, los vectores unitarios depende de la posición de cada punto, de manera que

$$\frac{d\vec{A}}{dt}=\sum_i \left(\frac{dA_i}{dt}\hat{e}_i+A_i\frac{d\hat{e}_i}{dt} \right) $$

donde $\hat{e}_i$ son los vectores unitarios de la base.

:::{seealso} Referencias
@boas2006mathematical [Cap. 6 "Vector Analysis" pag. 276-289]

@arfken2005mathematical [Cap. 1 "Vector Analysis", pag. 25-32]

@riley2006mathematical [Cap. 7 "Vector Algebra", pag. 212-226]
:::



