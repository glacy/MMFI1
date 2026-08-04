---
title: Ecuaciones diferenciales parciales de primer orden
description: Ecuaciones diferenciales parciales de primer orden
short_title: Ecuaciones diferenciales parciales de primer orden
author: " "
tags: [edps, ecuación, diferencial, parcial, orden, problemas, contorno]
subject: EDPs - Semana 14
keywords: [ecuación, diferencial, parcial, orden, problemas,contorno]
exports:
 - format: pdf
   template: curvenote
   output: ./semana14_lectura.pdf
downloads:
  - file: ./semana14_lectura.md
    title: semana14_lectura.md
  - file: ./semana14_lectura.pdf
    title: semana14_lectura.pdf
---

:::{aside} [Lorena Barba](https://engineering.gwu.edu/lorena-barba)

es ingeniera chilena y referente global en simulación computacional, encarna la unión perfecta entre la investigación de vanguardia y el compromiso con el conocimiento abierto. Como pionera en dinámica de fluidos computacional, su trabajo consiste en resolver las complejas ecuaciones diferenciales parciales que gobiernan el comportamiento de fluidos. Pero su legado más transformador reside en su dedicación a la ciencia abierta: a través de sus innovadores cursos y la publicación completa de sus códigos, ha construido puentes que permiten a estudiantes e investigadores de todo el mundo aprender y aplicar estos métodos avanzados. Barba no solo expande las fronteras de la ingeniería, sino que garantiza que las herramientas para hacerlo sean accesibles para todos.
```{figure} ./barba.jpg
:label: fig-barba
:alt: Lorena Barba
:align: center
Dra. Lorena Barba
:::


```{note} Objetivos de aprendizaje

Al finalizar esta lección, serás capaz de:

1. Definir con precisión los conceptos básicos de una ecuación diferencial parcial (EDP), identificando sus componentes: función incógnita, variables independientes y derivadas parciales.

2. Clasificar una EDP dada según su orden.

3. Distinguir entre los conceptos de solución general (que incluye funciones arbitrarias) y solución particular de una EDP, explicando el rol de las condiciones iniciales y de frontera para obtener una solución única.
```



+++ {"part": "abstract"}

Las Ecuaciones Diferenciales Parciales (EDPs) constituyen la herramienta matemática fundamental para la descripción de una vasta gama de fenómenos físicos en el ámbito continuo. A diferencia de las ecuaciones diferenciales ordinarias, que describen la evolución de sistemas con una única variable independiente (como el tiempo), las EDPs relacionan una función multivariable (por ejemplo, una densidad, un potencial o una temperatura) con sus derivadas respecto a dos o más variables independientes, como las coordenadas espaciales y el tiempo. Las leyes fundamentales de la naturaleza —desde la mecánica de fluidos y la teoría de campos hasta la transferencia de calor y la mecánica cuántica— se formulan naturalmente mediante EDPs.

+++

# Definiciones y notación 

Las ecuaciones diferenciales parciales (EDPs) son **ecuaciones que
relacionan las derivadas parciales de una función desconocida** con
respecto a varias variables independientes. Las EDPs surgen al modelar
fenómenos físicos donde varias variables independientes afectan a un
sistema simultáneamente. Estas ecuaciones juegan un papel fundamental en
la descripción de sistemas físicos, ya que modelan una amplia gama de
fenómenos dinámicos y estacionarios. Desde el flujo de calor en un
material hasta la propagación de ondas en un medio, las EDPs permiten
capturar la evolución y el comportamiento de los sistemas bajo diversas
condiciones.


:::{note} EDPs y fenómenos físicos

- Ecuación de Poisson

$$\nabla^2 \phi = -\rho$$ Aquí, $\phi$ es el potencial escalar, y $\rho$
es la densidad de carga. Esta ecuación describe cómo se distribuye un
campo electrostático en el espacio debido a una distribución de cargas.
El Laplaciano actúa sobre el potencial, indicando cómo varía en el
espacio.


- Ecuación de calor (difusión)

$$\frac{\partial u}{\partial t} = \alpha \nabla^2 u$$ donde
$u(\vec{r},t)$ es la temperatura y $\alpha$ es el coeficiente de
difusión térmica. El operador Laplaciano aquí describe cómo el calor se
distribuye en el espacio, mientras que la derivada temporal muestra cómo
evoluciona con el tiempo.

- Ecuación de onda

$$\frac{\partial^2 u}{\partial t^2} = c^2 \nabla^2 u$$ donde
$u(\vec{r},t)$ representa el desplazamiento de la onda, y $c$ es la
velocidad de propagación de la onda. En esta ecuación, el operador de
onda, que incluye el Laplaciano, describe cómo una perturbación se
propaga a través del espacio.


- Ecuación de Schrödinger

$$i \hbar \frac{\partial \psi}{\partial t} = -\frac{\hbar^2}{2m} \nabla^2 \psi + V \psi$$
Esta ecuación es central en la mecánica cuántica y describe cómo
evoluciona la función de onda $\psi$ de un sistema cuántico. Aquí, el
operador de Laplace aparece para representar la energía cinética de las
partículas, mientras que el término $V \psi$ representa la energía
potencial.
:::

La **derivada parcial** de una función $u = u(x_1, x_2, \ldots, x_n)$,
donde $x_1, x_2, \ldots, x_n$ son variables independientes, mide el
cambio de la función respecto a una de estas variables mientras las
demás se mantienen constantes.

Si $u$ es una función que depende de $n$ variables independientes
$x_1, x_2, \ldots, x_n$, la **derivada parcial de $u$ con respecto a la
variable $x_i$**, denotada por

$$ \displaystyle \frac{\partial u}{\partial x_i},$$

se define formalmente como

$$\frac{\partial u}{\partial x_i} = \lim_{\Delta x_i \to 0} \frac{u(x_1, \ldots, x_i + \Delta x_i, \ldots, x_n) - u(x_1, \ldots, x_i, \ldots, x_n)}{\Delta x_i}$$

En esta definición:

-   el límite examina cómo cambia el valor de $u$ cuando la variable
    $x_i$ se incrementa por un pequeño valor $\Delta x_i$, mientras las
    demás variables $x_1, x_2, \ldots, x_{i-1}, x_{i+1}, \ldots, x_n$
    permanecen constantes.

-   la derivada parcial describe la *tasa de cambio* de $u$ con respecto
    a $x_i$, y refleja cómo responde la función a cambios en esa
    variable.

Este concepto es crucial cuando se estudian funciones de varias
variables, ya que permite analizar cómo un sistema cambia localmente con
respecto a cada una de las entradas independientes.


:::{note} Gradiente de un campo de temperatura

Supongamos que tenemos una función que describe la temperatura en un
punto $(x, y, z)$ del espacio, dada por
$$T(x, y, z) = 3x^2 y + 5yz^3 - 2xz$$ Calculemos
$\frac{\partial T}{\partial x}$.Para calcularla, derivamos cada término
de la función $T(x, y, z)$ que depende de $x$, mientras tratamos $y$ y
$z$ como constantes; de manera que
$$\frac{\partial T}{\partial x} = 6x y + 0 - 2z.$$ Esta derivada parcial
$\frac{\partial T}{\partial x}$ representa la tasa de cambio de la
temperatura en la dirección $x$, mientras las otras dos coordenadas $y$
y $z$ permanecen fijas. Si estamos midiendo la temperatura en una barra
tridimensional, este resultado nos indica cómo varía la temperatura a lo
largo del eje $x$.

A partir de este procedimiento, por ejemplo,
$$\nabla T= \left(6xy-2z, 3x^2+5z^3,15yz^2-2x \right)$$ describe cómo la
temperatura $T(x,y,z)$ cambia en todas las direcciones del espacio. Es
un vector que señala la dirección de mayor cambio de la temperatura, y
cuya magnitud indica la rapidez con la que la temperatura cambia en esa
dirección.
:::

Usando esta notación, una **EDP** se define como
:::{math}
:label: eq-edp
    f\left(x_1,x_2,\ldots, x_n,u, \frac{\partial u}{\partial x_1},\ldots, \frac{\partial u}{\partial x_n},\frac{\partial^m u}{\partial^{k_1} x_1 \partial^{k_2} x_2\cdots \partial^{k_n} x_n}\right)=0,
:::

donde $u=u(x_1,x_2,\ldots, x_n)$; $\{x_i,i=1,\ldots,n\}$ son variables
independientes y $\{k_i,i=1,\ldots,n\}$ son enteros no negativos tal que
$$k_1+k_2+\cdots+ k_n=m.$$ Si $f$ es una función lineal de $u$ y sus
derivadas, se dice que [Ecuacion %s](#eq-edp) es una **EDP lineal**.


:::{note} EDP lineal - Ley de Fourier de la conducción del calor

La **ley de Fourier** describe cómo se transfiere el calor en un
material en función del gradiente de temperatura $\nabla T$. La ley de
Fourier se expresa como $$\vec{q} = -\kappa \nabla T,$$ donde
$\vec{q}$ es el vector de flujo de calor, que representa la cantidad
de calor transferida por unidad de área y por unidad de tiempo; $\kappa$
es la *conductividad térmica* del material, una constante que mide la
capacidad del material para conducir el calor y $\nabla T$ es el
*gradiente de temperatura*, que indica cómo varía la temperatura en el
espacio. El signo negativo indica que el calor fluye en la dirección
opuesta al gradiente de temperatura (es decir, el calor se transfiere de
las zonas más calientes a las más frías).

Considere dos campos de temperatura "superpuestos" $T_1(x,y,z)$ y
$T_2(x,y,z)$, tal que
$$\vec{q}_1=-\kappa \nabla T_1 \quad \text{y} \quad \vec{q}_2=-\kappa \nabla T_2.$$
Si definimos
$$T_{\text{total}}=T_1+T_2,\quad \Rightarrow \quad \vec{q}_{\text{total}}=-\kappa \nabla T_{\text{total}}=-\kappa \nabla (T_1+T_2)=\vec{q}_1+\vec{q}_2,$$
es decir, a **ley de Fourier es una EDP lineal**.
:::

Se define el **orden de una EDP** al orden superior de las derivadas
parciales que figuran en la ecuación [Ecuacion %s](#eq-edp).

:::{note} Orden de una EDP 

Si $x$ y $y$ son variables independientes,
$u=u(x,y)$ es la función buscada

```{math}
\begin{aligned}
y\frac{\partial u}{\partial x}-x\frac{\partial u}{\partial y}=&0&\text{es una EDP de primer orden} \\
\frac{\partial^2 u}{\partial x^2}-\frac{\partial^2 u}{\partial y^2}=&0&\text{es una EDP de segundo orden} \\
\end{aligned}
```
:::

Es común utilizar la siguiente simplificación en la notación
$$u_x=\frac{\partial u}{\partial x}, \quad u_y=\frac{\partial u}{\partial y}, \quad u_{xx}=\frac{\partial^2 u}{\partial x^2}, \quad u_{xy}=\frac{\partial^2 u}{\partial x\partial y};$$
o
$$\partial_x u=\frac{\partial u}{\partial x}, \quad \partial_yu=\frac{\partial u}{\partial y}, \quad \partial_{xx}u=\frac{\partial^2 u}{\partial x^2}, \quad \partial_{xy}u=\frac{\partial^2 u}{\partial x\partial y}.$$

Se llama **solución de la EDP**
[Ecuacion %s](#eq-edp), en
cierta región, a cualquier función $u(x_1,x_2,\ldots, x_n)$ tal que al
sustituir $u$ y sus derivadas, la ecuación
[Ecuacion %s](#eq-edp) se
convierte en la identidad.

:::{note} Solución de la ecuación de calor en una dimensión

La ecuación de difusión de calor
$$\frac{\partial u}{\partial t} = \alpha \nabla^2 u$$ en una dimensión
toma la forma
$$\frac{\partial T}{\partial t} = \alpha \frac{\partial^2 T}{\partial x^2.}$$

Un ejemplo clásico de una función que resuelve esta ecuación es

$$T(x,t) = e^{-k^2 \alpha t} \sin(kx).$$

Esta función es una solución de la ecuación del calor en una dimensión
pues
$$\frac{\partial T}{\partial t} = \frac{\partial}{\partial t} \left( e^{-k^2 \alpha t} \sin(kx) \right) = -k^2 \alpha e^{-k^2 \alpha t} \sin(kx);$$

$$\frac{\partial^2 T}{\partial x^2} = \frac{\partial}{\partial x} \left( k e^{-k^2 \alpha t} \cos(kx) \right) = -k^2 e^{-k^2 \alpha t} \sin(kx)$$

de manera que al sustituir

$$\frac{\partial T}{\partial t} = \alpha \frac{\partial^2 T}{\partial x^2}$$

$$-k^2 \alpha e^{-k^2 \alpha t} \sin(kx) = \alpha (-k^2 e^{-k^2 \alpha t} \sin(kx))$$

Como ambos lados de la ecuación son iguales, la función
$T(x,t) = e^{-k^2 \alpha t} \sin(kx)$ es una solución válida de la
ecuación del calor.

La función $\sin(kx)$ describe la variación espacial de la temperatura,
donde $k$ es el número de onda que define la longitud de onda de la
distribución de temperatura. El término $e^{-k^2 \alpha t}$ describe la
disipación del calor en el tiempo. A medida que $t$ aumenta, el término
exponencial disminuye, lo que significa que la distribución de
temperatura se suaviza con el tiempo, como se espera en un sistema donde
el calor se difunde.

Esta solución se aplica a muchas situaciones físicas en las que el calor
se propaga a lo largo de una barra o en sistemas unidimensionales con
condiciones de contorno adecuadas.
:::

# Ecuaciones diferenciales parciales de primer orden 

Una EDP de primer orden (que contenga dos variables independientes)
puede expresarse de la forma
$$A(x,y)\frac{\partial u}{\partial x}+B(x,y)\frac{\partial u}{\partial y} +C(x,y)u=R(x,y),$$
donde $A(x,y)$, $B(x,y)$, $C(x,y)$ y $R(x,y)$ son funciones conocidas de
$x$ y $y$.

Dada la generalidad de esta expresión, analizaremos tres casos:

## $A(x,y)=0$ ó $B(x,y)=0$:

Si $A(x,y)=0$ ó $B(x,y)=0$, la EDP se reduce a una EDO; donde, si
$$\frac{dy}{dx}+P(x)y=Q(x),$$ la solución está dada a través del
*factor integrante* $$\mu(x)=\exp{\left\{\int P(x)dx\right\}}$$ y
$$\mu(x)y=\int\mu(x)Q(x)dx.$$

:::{note} factor integrante 

Para la EDO $$\frac{dy}{dx}+2xy=4x$$
tenemos que
$\mu(x)=\exp{\left\{\displaystyle \int 2xdx \right\}}=\exp{x^2},$ de
donde $$y=2+c\exp{(-x^2)}$$
:::

:::{note} factor integrante

Para la EDP
$$x\frac{\partial u}{\partial x}+3u=x^2$$ tenemos que
$\mu(x)=\exp{\left\{\displaystyle \int \frac{3}{x}dx \right\}}=\exp{(3\ln{x})}=x^3,$
de donde
$$\frac{\partial }{\partial x}(x^3 u)=x^4\quad \Rightarrow \quad x^3u=\frac{x^5}{5}+f(y),$$
donde $f(y)$ es una función arbitraria de $y$. Por lo tanto,
$$u(x,y)= \frac{x^2}{5}+\frac{f(y)}{x^3}$$
:::

## $C(x,y)=R(x,y)=0$
Si $C(x,y)=R(x,y)=0 \quad \Rightarrow \quad u(x,y)=f(p)$, donde $p$
    es alguna combinación de $x$ y $y$. La ecuación
    $$\frac{dx}{A(x,y)}=\frac{dy}{B(x,y)}$$ permite encontrar la forma
    de $p$. Las curvas para las que $p$ es constante se conocen como
    *curvas características*.

:::{note} $u(x,y)=f(p)$ 
Para la EDP
$$x\frac{\partial u}{\partial x}-2y\frac{\partial u}{\partial y}=0$$
tenemos que $$\frac{dx }{x}=\frac{dy }{-2y}$$ de donde
$x=cy^{-1/2}$.

Por lo tanto, $$u(x,y)= f(x^2y),$$ donde $f$ es una función
arbitraria.
:::

## $C(x,y)\neq 0$

Si $C(x,y)\neq 0 \quad \Rightarrow \quad u(x,y)=h(x,y)f(p)$

:::{note} $u(x,y)=h(x,y)f(p)$

Para la EDP
$$x\frac{\partial u}{\partial x}+2\frac{\partial u}{\partial y}-2u=0$$
buscamos una solución de la forma $u(x,y)=h(x,y)f(p)$, lo que
implica que 

```{math}
\begin{aligned}
\frac{\partial u}{\partial x}=&\frac{\partial h}{\partial x}f(p)+h\frac{df(p)}{dp}\frac{\partial p}{\partial x},\\
\frac{\partial u}{\partial y}=&\frac{\partial h}{\partial y}f(p)+h\frac{df(p)}{dp}\frac{\partial p}{\partial y}.
\end{aligned}
```

Sustituyendo estas expresiones en la EDP, se obtiene
$$\left(x\frac{\partial h}{\partial x}+2\frac{\partial h}{\partial y}-2h \right)f(p)+\left(x\frac{\partial p}{\partial x}+2\frac{\partial p}{\partial y} \right)h\frac{df(p)}{dp}=0,$$
donde el primer factor en paréntesis es precisamente la EDP original
con $u\rightarrow h$; por lo tanto $h$ es *cualquier* solución de la
EDP; por lo que
$$\left(x\frac{\partial p}{\partial x}+2\frac{\partial p}{\partial y} \right)=0,$$
de donde
$$\frac{dx}{x}=\frac{dy}{2} \quad \Rightarrow \quad p=x\exp{(-y/2)}.$$
Por lo tanto $$u(x,y)=h(x,y)f(x\exp{(-y/2)}),$$ donde $f(p)$ es
cualquier función de $p$ y $h(x,y)$ es cualquier solución de la
ecuación de la EDP.

Por ejemplo, que $h(x,y)=e^y$ y $g(x,y)=x^2$ son soluciones de la
EDP.
:::

En cada uno de los casos anteriores, podemos ver que en general, toda
EDP de primer orden posee una solución dependiente de una función
arbitraria, que se denomina usualmente **solución general de la EDP** .

Al momento de requerir que la solución cumpla con ciertas condiciones o
*valores de frontera*, hablamos de una **solución particular**.


:::{note} Solución particular

Para la EDP
$$x\frac{\partial u}{\partial x}-2y\frac{\partial u}{\partial y}=0$$
habíamos encontrado que $$u(x,y)= f(x^2y),$$ donde $f$ es una función
arbitraria. Si requerimos que la solución tome el valor $2y+1$ a lo
largo de la recta $x=1$, entre $y=0$ y $y=1$; la ecuación
$$u_1(x,y)=2(x^2y)+1$$ es una solución particular.

En la siguiente figura se muestran algunas de las curvas
características:

![curvas caracteristicas](./solucion_particular.png 'Soluciones particulares')

La región sombreada corresponde a la región donde la solución está
definida, bajo la condición que $x=1$ y $0<y<1$.
:::


:::{note} Problemas de frontera y su relación con las EDPs
:class: dropdown

Los **problemas de frontera** (también llamados **problemas de
contorno**) son situaciones en las que se busca resolver una EDP en una
región del espacio, sujetando la solución a ciertas condiciones
impuestas en la frontera (o el borde) de esa región. Estos problemas son
esenciales en la física y la ingeniería, ya que muchas situaciones del
mundo real involucran un sistema limitado por condiciones físicas
específicas, como las temperaturas en las paredes de un objeto, las
fuerzas aplicadas en un material, o las ondas en una superficie.

Existen tres tipos principales de condiciones de frontera que se
utilizan comúnmente en relación con las EDPs:

1.  **Problemas de Dirichlet**: En este tipo de problemas, la solución
    de la EDP se busca imponiendo condiciones sobre el valor de la
    función en la frontera de la región. Por ejemplo, si estamos
    resolviendo la ecuación de Laplace para describir el potencial
    electrostático en una región, las condiciones de Dirichlet
    impondrían un valor específico del potencial en el borde de dicha
    región: $$\nabla^2 u = 0$$ en una región $\Omega$ con la condición
    de que $u$ toma valores dados $g(x)$ en la frontera
    $\partial \Omega$:
    $$u(x) = g(x), \quad \text{para} \quad x \in \partial \Omega.$$

2.  **Problemas de Neumann**: Aquí, en lugar de fijar el valor de la
    función en la frontera, se fijan los valores de la derivada normal
    de la función (es decir, el flujo o la tasa de cambio en dirección
    perpendicular a la frontera). Este tipo de problema es común en
    situaciones donde se especifica un flujo de calor o una tasa de
    cambio en lugar de la cantidad en sí misma; por ejemplo

    $$ \frac{\partial u}{\partial t} = \alpha \nabla^2 u $$
    
    en una región con la condición de que el flujo de calor en la frontera es
    constante. En este caso, se impone

    $$ \frac{\partial u}{\partial n}(x) = g(x), \quad \text{para} \quad x \in \partial \Omega $$

    donde $\frac{\partial u}{\partial n}$ es la derivada de $u$ en la
    dirección normal a la frontera $\partial \Omega$.

3.  **Problemas de Robin**: En este tipo de problemas, la condición de
    frontera es una combinación lineal del valor de la función y su
    derivada normal. Los problemas de Robin son útiles para modelar
    situaciones donde hay una interacción entre la cantidad que se mide
    y su tasa de cambio en la frontera.

    Por ejemplo, al resolver una ecuación de difusión con una
    combinación de condiciones Dirichlet y Neumann en la frontera, se
    impone
    $$a u(x) + b \frac{\partial u}{\partial n}(x) = g(x), \quad \text{para} \quad x \in \partial \Omega$$
    donde $a$ y $b$ son constantes que determinan la naturaleza de la
    interacción en la frontera.

La solución de una EDP generalmente no está completamente determinada
hasta que se especifican condiciones de frontera. Estas condiciones
dictan cómo se comporta la solución en los límites de la región en la
que estamos resolviendo la ecuación.

En algunos casos, se combinan diferentes tipos de condiciones de
frontera en distintas partes del contorno. Por ejemplo, en una placa con
una parte del borde a temperatura fija (problema de Dirichlet) y otra
parte aislada (problema de Neumann). Estos problemas se llaman
**problemas de frontera mixtos** y surgen en una variedad de
aplicaciones físicas, como la transmisión de calor y la mecánica
estructural.
:::




:::{seealso} Referencias

@riley2006mathematical [Cap. 20 "Partial Differential Equations", pág. 675-687]

:::