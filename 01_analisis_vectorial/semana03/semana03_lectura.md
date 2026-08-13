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
downloads:
  - file: ./semana03_lectura.md
    title: semana03_lectura.md
  - file: ./semana03_lectura.pdf
    title: semana03_lectura.pdf
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



# ⌛ Aspectos preliminares

Antes de enunciar los teoremas integrales conviene repasar las herramientas que estos generalizan: el teorema fundamental del cálculo y las integrales de línea, superficie y volumen. Estas nociones, estudiadas en semanas anteriores, son el punto de partida de los resultados que se presentan en esta lección.

(teorema-fundamental-calculo)=

## Teorema fundamental del Cálculo

El punto de partida de todos los teoremas integrales es el teorema fundamental del cálculo, que conecta la derivada de una función con su integral definida sobre un intervalo. En una dimensión, la integral de la derivada de $f$ entre $a$ y $b$ es igual a la diferencia de los valores de $f$ en los extremos:

$$\int_a^b \displaystyle \frac{d}{dt}f(t)dt = f(b)-f(a)$$

(integral_linea)=
## Integrales de línea (o de trayectoria)

El teorema fundamental del cálculo se generaliza a curvas en el espacio mediante las integrales de línea. Una [integral de trayectoria (o integral de línea)](https://es.wikipedia.org/wiki/Integral_de_l%C3%ADnea#Full_description_(English)) es una integral donde
la función a integrar se evalúa a lo largo de una curva ($C$) o
trayectoria en el espacio, por ejemplo:

$$\int_C \phi(x,y,z) d\vec{r}=\hat{\iota}\int_{x_1}^{x_2} \phi(x,y,z)dx+\hat{\jmath}\int_{y_1}^{y_2} \phi(x,y,z)dy+\hat{\kappa}\int_{z_1}^{z_2} \phi(x,y,z)dz$$

$$\int_C \vec{V}\cdot d\vec{r}=\int_{x_1}^{x_2} V_x(x,y,z)dx+\int_{y_1}^{y_2} V_y(x,y,z)dy+\int_{z_1}^{z_2} V_z(x,y,z)dz$$

```{figure} ./../images/integral-linea.*
:label: fig-integral-linea
:alt: trayectoria en espacio 3d
:align: center
:width: 500px
Trayectoria de integración $C$.
```

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
$$\vec{F}(x,y)=xy\hat{\iota}-y^2\hat{\jmath}$$ a lo largo de la parábola
$$y=\frac{1}{4}x^2,$$ desde (0,0) a (2,1):
$$\vec{F}\cdot d\vec{r}=(xy\hat{\iota}-y^2\hat{\jmath})\cdot (dx\hat{\iota}+dy\hat{\jmath})=xydx-y^2dy$$

A partir de la parametrización de la curva, $dy=\frac{1}{2}xdx$, de
manera que
$$\Rightarrow W=\int_0^2 \left(\frac{1}{4}x^3-\frac{1}{32}x^5 \right)dx=\frac{2}{3}.$$


:::{figure} ./../images/campo_vectorial_curva.svg
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
$$\vec{B}(r)=\frac{\mu_0 I}{2\pi r}\hat{\theta}$$

```{figure} ./../images/ampere_alambre.png
:alt: grafico del problema
:align: center
Aplicación de la Ley de Ampère en sistema con simetría cilíndrica. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```


:::

:::{note} Fuerza magnética sobre un cable

La ley de Ampère describe cómo la corriente *genera* campo magnético, pero la relación entre electricidad y magnetismo es de doble sentido: un cable por el que circula corriente *dentro* de un campo magnético también experimenta una fuerza. La fuerza que el campo ejerce sobre cada carga en movimiento está dada por la fuerza de Lorentz, $\vec{F} = q\,\vec{v}\times\vec{B}$; al sumarla sobre todas las cargas de un conductor, la fuerza resultante sobre un elemento de cable de longitud $d\vec{r}$ por el que pasa una corriente $I$ es $d\vec{F} = I\,d\vec{r}\times\vec{B}$.

Integrando a lo largo de todo el bucle cerrado $C$:

$$\vec{F}=I\displaystyle \oint_C d\vec{r}\times \vec{B}.$$

En esta integral de línea aparece de nuevo el producto cruz con un vector diferencial, lo que anticipa la relación entre integrales de línea y campos vectoriales que se formaliza con los teoremas integrales de esta semana.
:::

(int_sup)=
## Integrales de superficie 

De forma análoga a como las integrales de línea extienden la integración a lo largo de curvas, las integrales de superficie extienden la integración sobre superficies en el espacio. Una [integral de superficie](https://es.wikipedia.org/wiki/Integral_de_superficie#:~:text=La%20integral%20de%20superficie%20es,es%20evaluada%20sobre%20una%20superficie.) es una integral donde la función se evalúa
sobre una superficie en el espacio.

Si $\vec{F}$ es un campo vectorial y $S$ es una superficie en el
espacio, la integral de superficie de $\vec{F}$ sobre $S$ se define como

$$\iint_S \vec{F}\cdot d\vec{S}= \iint_S \vec{F}\cdot \hat{n}dS,$$ 

donde $d\vec{S}=\hat{n}dS$ es el vector diferencial de superficie, con
$\hat{n}$ el vector normal unitario a la superficie, como se muestra en la [Figura %s](#fig-superficie_normal).

```{figure} ./../images/superficie_normal.svg
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

Finalmente, las integrales de volumen extienden la integración a regiones tridimensionales del espacio. El volumen $V$ bajo una superficie $z=f(x,y)$ está dado por

$$% Volumen Debajo de una Superficie z = f(x,y)
V = \iiint_V dV = \iint_D f(x,y) \, dA$$ donde $D$ es la región en el
plano $xy$ sobre la cual se proyecta la superficie.


```{include} ./volumen_toroide.md

``` 

# 🏛️ Teoremas integrales

Con las herramientas del teorema fundamental del cálculo y las integrales de línea, superficie y volumen ya definidas, estamos en condiciones de presentar los resultados centrales de esta lección. Los teoremas integrales vectoriales son herramientas fundamentales en el
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

Para deducir su expresión, considere funciones $P(x,y)$ y $Q(x,y)$ con primeras derivadas continuas. Integrando $\partial P/\partial y$ sobre la región $A$ y usando el teorema fundamental del cálculo en la dirección $y$:

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

En ocasiones se escribe $C=\partial A$ y se le llama *frontera del área $A$*. Esta notación enfatiza una idea central: la curva $C$ no es un objeto independiente del área, sino su **borde**. Así, el teorema de Green se puede leer como una relación entre una integral (doble) sobre la región $A$ y otra (de línea) sobre su frontera $\partial A$:

> El valor de una integral sobre una región queda determinado por lo que sucede en el borde de esa región.

Esta misma lectura se repetirá en los teoremas de Stokes y de la divergencia, donde la integral sobre una superficie o un volumen se relaciona siempre con una integral sobre su frontera.

Note que si $P$ y $Q$ son las componentes de un campo vectorial, por
ejemplo $\vec{V}(x,y)=P(x,y)\hat{\iota}+Q(x,y)\hat{\jmath}$,
$$P(x,y)dx+Q(x,y)dy=\vec{V}\cdot d\vec{r}$$

:::{note} Flujo a través de una superficie (teorema de la divergencia en 2D)

Hasta aquí el teorema de Green se ha usado para calcular la *circulación* de $\vec{V}$ alrededor de $C$. Pero el mismo teorema admite una segunda lectura física: el **flujo** de $\vec{V}$ a través de la frontera.

El flujo mide cuánto campo "atraviesa" la curva por unidad de longitud. Para ello se proyecta $\vec{V}$ sobre la normal exterior $\hat{n}$ a la frontera:

$$\Phi = \oint_{\partial A} \vec{V}\cdot\hat{n}\,ds.$$

Si $C$ se recorre en sentido antihorario, la normal exterior es $\hat{n}\,ds = dy\,\hat{\iota} - dx\,\hat{\jmath}$, de modo que

$$\vec{V}\cdot\hat{n}\,ds = V_x\,dy - V_y\,dx = -V_y\,dx + V_x\,dy.$$

Ahora bien, el teorema de Green con la elección $P = -V_y$ y $Q = V_x$ da

$$\oint_{\partial A}(-V_y\,dx + V_x\,dy) = \iint_A\left(\frac{\partial V_x}{\partial x} + \frac{\partial V_y}{\partial y}\right)dx\,dy.$$

Reconociendo el integrando como la divergencia $\nabla\cdot\vec{V}$ y el primer miembro como el flujo, obtenemos el **teorema de la divergencia en 2D**:

$$\boxed{\ \Phi = \oint_{\partial A} \vec{V}\cdot\hat{n}\,ds = \iint_A \nabla\cdot\vec{V}\,dx\,dy\ }$$

En palabras: el flujo neto de $\vec{V}$ a través de la frontera de $A$ es igual a la integral de su divergencia sobre $A$. La divergencia mide la tendencia del campo a "expandirse" desde un punto; sumándola sobre toda la región se obtiene exactamente el flujo que escapa por el borde.
:::

:::{note} Teorema de Stokes en 2D (la circulación en forma vectorial)

Así como en la nota anterior obtuvimos el flujo eligiendo $P=-V_y$ y $Q=V_x$, ahora recuperamos la **circulación** eligiendo $P=V_x$ y $Q=V_y$, es decir, tomando $\vec{V}=V_x\hat{\iota}+V_y\hat{\jmath}$. Con esta elección:

$$\vec{V}\cdot d\vec{r} = V_x\,dx + V_y\,dy = P\,dx + Q\,dy,$$

y el teorema de Green se escribe

$$\oint_{\partial A}\vec{V}\cdot d\vec{r} = \iint_A\left(\frac{\partial V_y}{\partial x} - \frac{\partial V_x}{\partial y}\right)dx\,dy.$$

El integrando del segundo miembro es precisamente la componente $z$ del rotacional: $\nabla\times\vec{V} = \left(\frac{\partial V_y}{\partial x} - \frac{\partial V_x}{\partial y}\right)\hat{\kappa}$. Como la región plana $A$ tiene normal $\hat{n}=\hat{\kappa}$, el integrando es $(\nabla\times\vec{V})\cdot\hat{n}$, y la integral doble es el flujo del rotacional a través de $A$:

$$\boxed{\ \oint_{\partial A}\vec{V}\cdot d\vec{r} = \iint_A (\nabla\times\vec{V})\cdot\hat{n}\,dS\ }$$

Esta es la **versión 2D del teorema de Stokes**: la circulación de $\vec{V}$ a lo largo de la frontera es igual al flujo de su rotacional sobre la superficie que encierra. La circulación mide cuánto "gira" el campo alrededor de la curva; el rotacional mide esa rotación localmente, y la integral los conecta. Esta forma vectorial es la que se generaliza en tres dimensiones en la siguiente sección.
:::

Resumiendo, el teorema de Green es un caso especial en $\mathbb{R}^2$ del teorema de Stokes que se presenta en la siguiente sección.

**Formulación diferencial.** Si $\vec{F}=P\hat{\iota}+Q\hat{\jmath}$ es un campo en el plano, el rotacional se reduce a su componente $z$:

$$
\nabla \times \vec{F} = \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \, \hat{\kappa}.
$$

En esta forma se aprecia que la circulación de $\vec{F}$ por unidad de área está dada por la componente $z$ del **rotacional**: el rotacional mide, punto a punto, cuánto tiende el campo a girar alrededor de cada punto del plano.

(stokes)=
## Teorema de Stokes

Formulado por [George Gabriel Stokes](https://es.wikipedia.org/wiki/George_Gabriel_Stokes) (1819-1903); matemático y físico
irlandés, el *Teorema de Stokes* relaciona la circulación de un campo
vectorial a lo largo de una curva cerrada con el flujo del rotacional de
ese campo a través de una superficie abierta delimitada por la curva.

Considere una superficie abierta $S$ delimitada por una curva cerrada $C$:

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


:::{note} Ley de Ampère: Stokes aplicado al electromagnetismo

Un ejemplo físico directo del teorema de Stokes es la [ley de Ampère](https://es.wikipedia.org/wiki/Ley_de_Amp%C3%A8re), que relaciona el campo magnético con la corriente que lo produce. En forma integral establece que la circulación de $\vec{B}$ alrededor de una curva cerrada $C$ es proporcional a la corriente total $I$ que atraviesa cualquier superficie $\sigma$ delimitada por $C$:

$$\oint_C \vec{B}\cdot d\vec{r}=\mu_0 I.$$

Dividiendo por $\mu_0$ e introduciendo el campo $\vec{H}=\vec{B}/\mu_0$:

$$\oint_C \vec{H}\cdot d\vec{r}=I.$$

La corriente se relaciona con la densidad de corriente $\vec{J}$ mediante la integral de flujo $I=\iint_\sigma \vec{J}\cdot\hat{n}\,d\sigma$. Por el teorema de Stokes, el primer miembro es el flujo de $\nabla\times\vec{H}$ sobre $\sigma$:

$$\iint_\sigma (\nabla\times\vec{H})\cdot\hat{n}\,d\sigma = \iint_\sigma \vec{J}\cdot\hat{n}\,d\sigma.$$

Como la superficie $\sigma$ es arbitraria, los integrandos deben coincidir, obteniendo la **ley de Ampère en forma diferencial**:

$$\boxed{\ \nabla \times \vec{H} = \vec{J}\ }$$

Este ejemplo ilustra el patrón que se repite en todo el análisis vectorial: el teorema de Stokes permite pasar de una ley expresada sobre una curva (forma integral) a una ley local válida en cada punto (forma diferencial).
:::

**Formulación diferencial del teorema de Stokes.** Si se considera una superficie $S$ muy pequeña con normal $\hat{n}$, el teorema de Stokes se puede reinterpretar tomando el límite $\Delta S \to 0$:

$$
\lim_{\Delta S \to 0} \frac{1}{\Delta S} \oint_{\partial S} \vec{F} \cdot d\vec{r} = (\nabla \times \vec{F}) \cdot \hat{n}.
$$

Esta expresión describe la **circulación local por unidad de área** en términos del rotacional del campo: fija el punto, orienta la pequeña superficie con normal $\hat{n}$ y mide cuánto gira el campo alrededor de ese punto; el resultado máximo se alcanza cuando $\hat{n}$ se alinea con el rotacional.

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
:alt: Superficie gaussiana encerrando una distribución de carga
:align: center
Superficie gaussiana para la aplicación del teorema de la divergencia. Imagen generada con [Inkscape](https://inkscape.org/).
```

:::{note} Ley de Gauss: la divergencia aplicada al electromagnetismo

Como ocurrió con Stokes y la ley de Ampère, el teorema de la divergencia tiene un ejemplo físico fundamental: la [ley de Gauss](https://es.wikipedia.org/wiki/Ley_de_Gauss) de la electrostática.

En su forma integral, la ley de Gauss establece que el flujo del campo eléctrico $\vec{E}$ a través de una superficie cerrada $\sigma$ es igual a la carga neta $Q_{\text{enc}}$ que encierra, dividida por $\epsilon_0$:

$$\oiint_\sigma \vec{E}\cdot\hat{n}\,d\sigma = \frac{Q_{\text{enc}}}{\epsilon_0}.$$

La carga encerrada se escribe en términos de la densidad volumétrica de carga como $Q_{\text{enc}}=\iiint_\tau \rho\,d\tau$. Por el teorema de la divergencia, el primer miembro es la integral de $\nabla\cdot\vec{E}$ sobre el volumen $\tau$:

$$\iiint_\tau \nabla\cdot\vec{E}\,d\tau = \frac{1}{\epsilon_0}\iiint_\tau \rho\,d\tau.$$

Como el volumen $\tau$ es arbitrario, los integrandos deben coincidir, obteniendo la **ley de Gauss en forma diferencial**:

$$\boxed{\ \nabla\cdot\vec{E} = \frac{\rho}{\epsilon_0}\ }$$

Al igual que en los casos anteriores, el teorema de la divergencia convierte una ley global (sobre una superficie cerrada) en una ley local válida en cada punto del espacio.
:::

**Formulación diferencial del teorema de la divergencia.** Considerando un volumen $\tau$ muy pequeño, se toma el límite $\Delta V \to 0$:

$$
\lim_{\Delta V \to 0} \frac{1}{\Delta V} \iint_{\partial V} \vec{F} \cdot \hat{n} \, dS = \nabla \cdot \vec{F}.
$$

Esto significa que la divergencia en un punto es el **flujo neto por unidad de volumen** que emana de él: si en un punto $\nabla\cdot\vec{F}>0$, el campo "sale" de ese punto (fuente); si es negativo, "entra" (sumidero); si es nulo, el campo es divergente-free (sin fuentes ni sumideros), como en los fluidos incompresibles.


:::{seealso} Referencias

@boas2006mathematical [Cap. 6 "Vector Analysis", pág. 299-336]

@arfken2005mathematical [Cap. 1 "Vector Analysis", pág. 55-68]

@riley2006mathematical [Cap. 11 "Line, surface and volume integrals", pág. 377-414]

:::