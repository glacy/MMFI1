---
title: Teoremas integrales   
description: Teoremas integrales  
short_title: Teoremas integrales 
author: " "
tags: [analisis_vectorial, teoremas, integrales, Gauss, Stokes, Green]
subject: Cálculo y análisis vectorial - Semana 3
keywords: [teoremas, integrales, Gauss, Stokes, Green]
exports:
 - format: pdf
   template: curvenote
   output: ./semana03_lectura.pdf
# downloads:
#   - file: ./semana3_lectura.md
#     title: semana3_lectura.md
#   - file: ./semana3_lectura.pdf
#     title: semana3_lectura.pdf
#   - file: ./superficie_normal.asy
#     title: superficie_normal.asy
#   - file: ./campo_vectorial_curva.asy
#     title: campo_vectorial_curva.asy
#   - file: ./ley_ampere.asy
#     title: ley_ampere.asy
---

:::{aside} [Sheila Widnall](https://es.wikipedia.org/wiki/Sheila_Widnall)
es una ingeniera aeronáutica estadounidense, profesora del [MIT](https://www.mit.edu/) y primera mujer en ocupar el cargo de Secretaria de la Fuerza Aérea de los Estados Unidos (1993-1997). Su investigación se centra en la dinámica de fluidos: aerodinámica de vórtices, estelas de helicópteros y aviones, y el análisis del flujo de aire alrededor de aeronaves. En estos problemas son esenciales los teoremas integrales: el teorema de Stokes relaciona la circulación alrededor de un ala con el flujo de vorticidad, y el teorema de la divergencia vincula el flujo de masa y cantidad de movimiento a través de superficies de control en el estudio de los chorros y estelas.

```{figure} ./../images/Sheila_Widnall.png
:label: fig-Sheila_Widnall
:alt: retrato de Dra. Sheila Widnall
:align: center
ScD. Sheila Widnall (1938 - ). Foto: Expert Infantry ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3ASheila_Widnall_%285467715818%29.jpg), CC BY 2.0).
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Interpretar y enunciar los teoremas integrales de Stokes, Green y Gauss**, comprendiendo su formulación matemática y su aplicación en el contexto del análisis vectorial.

2. **Aplicar los teoremas para simplificar el cálculo de integrales de campos vectoriales**, transformando integrales de línea, superficie y volumen según corresponda, y vinculando estos procesos con problemas reales de la ingeniería.

3. **Relacionar la formulación matemática de los teoremas con principios físicos fundamentales**, tales como la conservación de la masa, la energía y el flujo, reconociendo su importancia en disciplinas como la mecánica de fluidos, la electromagnetismo y el transporte de calor.
```

+++ { "part": "abstract" }  
Los teoremas integrales de Stokes, Green y Gauss constituyen pilares fundamentales del análisis vectorial, al establecer relaciones profundas entre integrales definidas sobre regiones y sus fronteras. El teorema de Green, formulado originalmente en dos dimensiones, vincula una integral de línea alrededor de una curva cerrada con una integral doble sobre la región que encierra, proporcionando una herramienta clave para el análisis de campos en planos. El teorema de Stokes generaliza este concepto a tres dimensiones, relacionando la circulación de un campo vectorial sobre una curva cerrada con el flujo de su rotacional a través de una superficie abierta delimitada por dicha curva. Por su parte, el teorema de Gauss (o de la divergencia) conecta el flujo de un campo vectorial a través de una superficie cerrada con la integral triple de la divergencia en el volumen que encierra.
En ingeniería y física, estos teoremas son esenciales para la formulación y resolución de leyes de conservación (masa, energía, cantidad de movimiento, carga eléctrica) y para la transición entre formulaciones diferenciales y globales de ecuaciones gobernantes. Su dominio permite interpretar fenómenos físicos de manera integral, optimizar cálculos numéricos y fundamentar métodos computacionales en mecánica de fluidos, electromagnetismo, transferencia de calor y otras áreas de la ingeniería.
+++



# Aspectos preliminares

(teorema-fundamental-calculo)=

## Teorema fundamental del Cálculo
La integral de la derivada de una función en un intervalo, es la diferencia de la función evaluada en los límites del intervalo:

$$\int_a^b \displaystyle \frac{d}{dt}f(t)dt = f(b)-f(a)$$

(integral_linea)=
## Integrales de línea (o de trayectoria) 

```{figure} ./../images/integral-linea.*
:label: fig-integral-linea
:alt: trayectoria en espacio 3d
:align: center
:width: 500px
Trayectoria de integración $C$.
```

Una [integral de trayectoria (o integral de línea)](https://es.wikipedia.org/wiki/Integral_de_l%C3%ADnea#Full_description_(English)) es una integral donde
la función a integrar se evalúa a lo largo de una curva ($C$) o
trayectoria en el espacio, por ejemplo:

$$\int_C \phi(x,y,z) d\vec{r}=\hat{\iota}\int_{x_1}^{x_2} \phi(x,y,z)dx+\hat{\jmath}\int_{y_1}^{y_2} \phi(x,y,z)dy+\hat{\kappa}\int_{z_1}^{z_2} \phi(x,y,z)dz$$

$$\int_C \vec{V}\cdot d\vec{r}=\int_{x_1}^{x_2} V_x(x,y,z)dx+\int_{y_1}^{y_2} V_y(x,y,z)dy+\int_{z_1}^{z_2} V_z(x,y,z)dz$$

La curva $C$ puede ser una _trayectoria abierta_ (los puntos $A$ y $B$ son distintos) o una _trayectoria cerrada_, es decir, la curva forma un bucle (los puntos $A$ y $B$ son coincidentes). En este último caso, la integral de línea se escribe $\oint_C$ para indicarlo.


:::{note} Trabajo como una integral de línea
La integral de línea se usa
para calcular el trabajo realizado por una fuerza $\vec{F}$ cuando un
objeto se mueve a lo largo de una trayectoria $C$:
$$W_C=\int_C \vec{F}\cdot d\vec{r}$$

Un campo de fuerza en el que $W=\int \vec{F}\cdot d\vec{r}$ NO depende
de la trayectoria de integración, se llama *campo conservativo*. Una
condición necesaria y suficiente para que un campo de fuerza sea
conservativo es que $\nabla \times \vec{F}=\vec{0}$, en cuyo caso
$\vec{F}$ puede escribirse como el gradiente de cierta función escalar,
es decir, $\vec{F}=-\nabla \phi$ donde $\phi$ se llama *potencial
escalar*.
:::

```{note} Trabajo realizado por una fuerza

El trabajo de la fuerza
$\vec{F}=xy\hat{\iota}-y^2\hat{\jmath}$ a lo largo de la parábola
$y=\frac{1}{4}x^2$, desde (0,0) a (2,1):
$$\vec{F}\cdot d\vec{r}=(xy\hat{\iota}-y^2\hat{\jmath})\cdot (dx\hat{\iota}+dy\hat{\jmath})=xydx-y^2dy$$

A partir de la parametrización de la curva, $dy=\frac{1}{2}xdx$, de
manera que
$$\Rightarrow W=\int_0^2 \left(\frac{1}{4}x^3-\frac{1}{32}x^5 \right)dx=\frac{2}{3}.$$


:::{figure} ./../images/campo_vectorial_curva.png
:alt: grafico del problema
:width: 500px
:align: center
:::

```

:::{note} Ley de Ampère
[La ley de Ampère](https://es.wikipedia.org/wiki/Ley_de_Amp%C3%A8re) es una de las ecuaciones
fundamentales del electromagnetismo, estableciendo una relación entre el
campo magnético y la corriente eléctrica que lo produce. En su forma
integral, establece que la integral de línea del campo magnético
$\vec{B}$ alrededor de una trayectoria cerrada $C$ es proporcional a la
corriente total $I_{\text{enc}}$ que atraviesa la superficie delimitada
por la trayectoria:
$$\oint_C \vec{B}\cdot d\vec{l}=\mu_0 I_{\text{enc}},$$ donde $d\vec{l}$
es un vector diferencial a lo largo de la curva $C$, $\mu_0$ es la
permeabilidad del vacío e $I_{\text{enc}}$ es la corriente neta
encerrada por la curva $C$.

En coordenadas cilíndricas, 
```{figure} ./../images/ampere_alambre.png
:alt: grafico del problema
:align: center
Aplicación de la Ley de Ampère en sistema con simetría cilíndrica. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

$$\vec{B}(r)=\frac{\mu_0 I}{2\pi r}\hat{\theta}$$
:::

:::{note} Fuerza magnética sobre un cable

Si un bucle de alambre $C$ por el que pasa una corriente $I$ se coloca en un campo magnético $\vec{B}$, este experimenta una fuerza 
$$\vec{F}=I\displaystyle \oint_C d\vec{r}\times \vec{B} $$

:::

(int_sup)=
## Integrales de superficie 

Una [integral de superficie](https://es.wikipedia.org/wiki/Integral_de_superficie#:~:text=La%20integral%20de%20superficie%20es,es%20evaluada%20sobre%20una%20superficie.) es una integral donde la función se evalúa
sobre una superficie en el espacio.

Si $\vec{F}$ es un campo vectorial y $S$ es una superficie en el
espacio, la integral de superficie de $\vec{F}$ sobre $S$ se define como

$$\iint_S \vec{F}\cdot d\vec{S}= \iint_S \vec{F}\cdot \hat{n}dS,$$ 

donde $d\vec{S}=\hat{n}dS$ es el vector diferencial de superficie, con
$\hat{n}$ el vector normal unitario a la superficie, como se muestra en la [Figura %s](#fig-superficie_normal).

```{figure} ./../images/superficie_normal.png
:width: 400px
:label: fig-superficie_normal
:alt: Vector normal a una superficie en un punto
:align: center
Vector normal a una superficie en un punto. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

Por convencion, si la superficie es cerrada, se toma la dirección de $\hat{n}$ hacia afuera de la superficie. Si la superficie es abierta, la dirección de $\hat{n}$ depende del sentido en que se recorra su perímetro, siguiendo la [regla de la mano derecha](https://es.wikipedia.org/wiki/Regla_de_la_mano_derecha):
> si los dedos de la mano derecha se colocan en la dirección de recorrido del perímetro, la 
> normal positiva es la del dedo pulgar.


Si $S=f(x,y)$ define la superfice de integración, el área $A$ de dicha
superficie está dada por

$$% Área de una Superficie z = f(x,y)
A = \iint dS = \iint \sqrt{\left(\frac{\partial f}{\partial x}\right)^2 + \left(\frac{\partial f}{\partial y}\right)^2 + 1} \, dx \, dy$$


```{figure} ./../images/integral_doble.*
:alt: grafico del problema
:align: center
```
Siguiendo la notación para integrales de línea, las integrales definidas sobre una superficie cerrada, se denotan como $\oiint_S$.

## Integrales de volumen

El volumen $V$, bajo una superficie $S=f(x,y)$ está dada por

$$% Volumen Debajo de una Superficie z = f(x,y)
V = \iiint_V dV = \iint_D f(x,y) \, dA$$ donde $D$ es la región en el
plano $xy$ sobre la cual se proyecta la superficie.


```{include} ./volumen_toroide.md

``` 

# Teoremas integrales

Los teoremas integrales vectoriales son herramientas fundamentales en el
análisis matemático, que establecen relaciones entre integrales de
funciones y sus derivadas en diferentes dimensiones. Los más relevantes
son el *Teorema de la divergencia* (también conocido como Teorema de
Gauss), el *Teorema de Stokes* y el *Teorema de Green*. Estos teoremas
son esenciales en física e ingeniería para el análisis de campos
vectoriales y escalares.

(green)=
## Teorema de Green 

Introducido por [George Green](https://es.wikipedia.org/wiki/George_Green_(matem%C3%A1tico)) (1793-1841); matemático británico, el
*Teorema de Green* es una versión en dos dimensiones del *Teorema de la
Divergencia*, que relaciona la integral de línea de un campo vectorial a
lo largo de una curva cerrada con la integral doble de la divergencia de
ese campo sobre la región delimitada por la curva.

Si $P(x,y)$ y $Q(x,y)$ son funciones con primeras derivadas continuas

:::{math}
\begin{align}
\iint_A \displaystyle \frac{\partial P(x,y)}{\partial y} dydx =& \int^b_a dx \int_{y_l}^{y_u} \frac{\partial P(x,y)}{\partial y}dy=\int^b_a[P(x,y_u)-P(x,y_l)]dx \\
=& -\int^b_a P(x,y_l)dx - \int^a_b P(x,y_u)dx;
\end{align}
:::
de manera que 
$$\oint_C P(x,y)dx =-\displaystyle \iint_A \frac{\partial P(x,y)}{\partial y} dxdy.$$

De manera análoga, 

:::{math}
\iint_A \displaystyle \frac{\partial Q(x,y)}{\partial x} dydx = \oint_C Q(x,y)dy;
:::
de manera que

$$\oint_C (Pdx+Qdy)=\iint_A \left( \frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dxdy,$$
donde $C$ es la curva que encierra el área $A$.

En ocasiones se escribe
$C=\partial A$ y se le llama _frontera del área $A$_.

Note que si $P$ y $Q$ son las componentes de un campo vectorial, por
ejemplo $\vec{V}(x,y)=P(x,y)\hat{\iota}+Q(x,y)\hat{\jmath}$,
$$P(x,y)dx+Q(x,y)dy=\vec{V}\cdot d\vec{r}$$

:::{note} Flujo a través de una superficie

Teorema de la divergencia en 2D 

Sean $Q=V_x$, $P=-V_y$; donde
$\vec{V}=V_x\hat{\iota}+V_y\hat{\jmath}$
$$\iint \limits_A \nabla \cdot \vec{V} dx dy = \oint_{C} \vec{V}\cdot d\vec{r}.$$

$\displaystyle \int_{\partial A} \vec{V}\cdot \hat{n}dS$ se interpreta como el _flujo_ de $\vec{V}$ a través de la superficie dada. 
:::

:::{note} Teorema de Stokes en 2D

Sean $Q=V_y$, $P=V_x$; donde $\vec{V}=V_x\hat{\iota}+V_y\hat{\jmath}$
$$\iint \limits_\sigma \nabla \times \vec{V} \cdot \hat{n}dS = \int_{\partial \sigma} \vec{V}\cdot d\hat{r}$$
:::

El teorema de Green es un caso especial en $ \mathbb {R} ^{2}$ del teorema de Stokes.

En **formulación diferencial**, si $\vec{F}=P\hat{\iota}+Q\hat{\jmath}$, se expresa como:
$$
\nabla \times \vec{F} = \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \, \hat{\kappa}
$$
lo que indica que la circulación de $\vec{F}$ por unidad de área está dada por la componente $ z $ del **rotacional**.

(stokes)=
## Teorema de Stokes. 

Formulado por [George Gabriel Stokes](https://es.wikipedia.org/wiki/George_Gabriel_Stokes) (1819-1903); matemático y físico
irlandés, el *Teorema de Stokes* relaciona la circulación de un campo
vectorial a lo largo de una curva cerrada con el flujo del rotacional de
ese campo a través de una superficie abierta delimitada por la curva.

Considere una superficie abierta, $S$, delimitada por una
curva, $C$

 $$\oint _C \vec{V}\cdot d\vec{l}=\iint \limits_{S} (\nabla \times \vec{V}) \cdot \hat{n} dS$$

El término $\oint _C
\vec{V}\cdot d\vec{l}$ se conoce como la [*circulación*](https://es.wikipedia.org/wiki/Circulaci%C3%B3n_(aerodin%C3%A1mica)) de $\vec{V}$
alrededor de una curva cerrada.

```{figure} ./../images/dS.png
:label: fig-dS
:alt: vector de superficie
:align: center
Vector de superficie. Imagen generada con [Inkscape](https://inkscape.org/).
```


:::{note} Ley de Ampère
  La Ley de Ampère establece que
$$\oint_C \vec{B}\cdot d\vec{r}=\mu_0 I$$ lo cual podemos escribir como
$$\oint_C \vec{H}\cdot d\vec{r}=I,$$ con $\vec{H}=\vec{B}/\mu_0$.

 Ahora, la *corriente* se relaciona con la *densidad de corriente* mediante
$\vec{J}$ $$I=\iint_\sigma \vec{J}\cdot \hat{n}d\sigma,$$ de donde
$$\oint_C \vec{H}\cdot d\vec{r}=\iint_\sigma \vec{J}\cdot \hat{n}d\sigma=\iint_\sigma (\nabla \times \vec{H})\cdot \hat{n}d\sigma;$$
por lo tanto, $$\nabla \times \vec{H}=\vec{J}.$$
:::

En **formulación diferencial**:
$$
\lim_{\Delta S \to 0} \frac{1}{\Delta S} \oint_{\partial S} \vec{F} \cdot d\vec{r} = (\nabla \times \vec{F}) \cdot \hat{n}
$$
Esto describe la **circulación local** por unidad de área en términos del rotacional del campo.

(gauss)=
## Teorema de Gauss (o de la divergencia) 

Desarrollado por [Carl Friedrich Gauss](https://es.wikipedia.org/wiki/Carl_Friedrich_Gauss) (1777-1855); matemático y físico
alemán, el *Teorema de la divergencia* relaciona la divergencia de un
campo vectorial en una región con el flujo de ese campo a través de la
superficie que encierra la región.

$$\iiint \limits_{\tau}\nabla \cdot  \vec{V}d \tau = \oiint_{\sigma} \vec{V}\cdot \hat{n}d\sigma,$$
donde $\hat{n}$ apunta hacia afuera de la superficie cerrada $\sigma$.

```{figure} ./../images/flujo.png
:label: fig-flujo
:alt: flujo a través de una superficie
:align: center
Flujo a través de una superficie. Imagen generada con [Inkscape](https://inkscape.org/).
```

Físicamente, el término $\nabla \cdot \vec{V}$ es el flujo neto por
unidad de volumen.

```{figure} ./../images/gauss_E.png
:label: fig-gauss_E
:alt: aaaaaaaa
:align: center
Gauss. Imagen generada con [Inkscape](https://inkscape.org/).
```

En **formulación diferencial**:
$$
\lim_{\Delta V \to 0} \frac{1}{\Delta V} \iint_{\partial V} \vec{F} \cdot \hat{n} \, dS = \nabla \cdot \vec{F}
$$
Esto significa que la divergencia en un punto es el **flujo neto por unidad de volumen** que emana de él.


:::{note} Teorema de la divergencia (Gauss) en electromagnetismo
:class: dropdown
```{include} ./ejercicio_divergencia.md

```
:::





:::{seealso} Referencias

@boas2006mathematical [Cap. 6 "Vector Analysis", pág. 299-336]

@arfken2005mathematical [Cap. 1 "Vector Analysis", pág. 55-68]

@riley2006mathematical [Cap. 11 "Line, surface and volume integrals", pág. 377-414]

:::