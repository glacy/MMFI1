---
title: Funciones de variable compleja (II)
description: Funciones de variable compleja (II)
short_title: Funciones de variable compleja (II)
author: " "
tags: [numeros_complejos, logaritmo, trigonometricas-inversas, hiperbolicas-inversas]
subject: Variable compleja - Semana 6
keywords: [funciones, logaritmo, trigonométricas, hiperbólicas, inversas]
exports:
 - format: pdf
   template: curvenote
   output: ./semana6_lectura.pdf
downloads:
  - file: ./semana6_lectura.md
    title: semana6_lectura.md
  - file: ./semana6_lectura.pdf
    title: semana6_lectura.pdf
---

:::{aside} [Naomi Halas](https://en.wikipedia.org/wiki/Naomi_Halas)
es profesora en la Universidad de Rice y una
pionera en el campo de la nanotecnología. Reconocida por su trabajo en
el desarrollo de nanopartículas de oro con propiedades ópticas únicas.
Sus investigaciones sobre plasmones han abierto nuevas posibilidades en
el control de la luz a escalas nanométricas, con aplicaciones que
incluyen la mejora de la eficiencia de las células solares y el
desarrollo de nuevas tecnologías de imagen médica.

```{figure} ./naomi_HALAS-lg.jpeg
:label: fig-naomi_HALAS-lg.jpg
:alt: retrato de Dra. Naomi Halas
:align: center
Dra. Naomi Halas (xxxxx - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Analizar la definición y propiedades fundamentales** del logaritmo complejo y de las funciones inversas trigonométricas e hiperbólicas en el plano complejo, destacando su multivaluación y regiones de ramificación.

2. **Visualizar mediante gráficas y representaciones geométricas** las distintas ramas de funciones multivaluadas, interpretando su significado físico y matemático.
```

+++ { "part": "abstract" }  

Las funciones logarítmica y exponencial de variable compleja, junto con las inversas de las funciones trigonométricas e hiperbólicas, son herramientas clave en física e ingeniería. Permiten describir oscilaciones, propagación de ondas y fenómenos de crecimiento o decaimiento, facilitando el cálculo de amplitudes, fases y modos de sistemas dinámicos, circuitos y estructuras vibrantes.

+++



Anteriormente, exploramos las funciones elementales de números
complejos, como las potencias y raíces, la función exponencial, así como
las funciones trigonométricas e hiperbólicas. Estas funciones son
fundamentales para el análisis y resolución de problemas en diversos
campos de la física y la ingeniería, ofreciendo una herramienta poderosa
para modelar fenómenos oscilatorios, la propagación de ondas y otras
aplicaciones clave.

Continuaremos el estudio de las funciones complejas, enfocándonos en
tres tipos de funciones que amplían y complementan las anteriores: las
funciones logarítmicas, trigonométricas inversas e hiperbólicas
inversas.

# Logarítmos 

La función logarítmica es la inversa natural de la función exponencial y
juega un papel crucial en la solución de ecuaciones diferenciales y en
el análisis de sistemas dinámicos, especialmente en el dominio de la
frecuencia.

Si $z=re^{i\theta}$ ($z\neq 0$), entonces
$$\text{Log} (z)=\text{Log} (re^{i\theta})=\ln r +i\theta=\ln |z| + i\arg (z),$$
Análogamente, se puede escribir que $$z=e^w,$$ donde
$$w=\ln |z| + i\arg (z).$$

Para todo número complejo $z \neq 0$ 

:::{math}
\begin{aligned}
    \Re (\text{Log} (z))=& \ln (|z|),\\
    \Im (\text{Log} (z))=&\arg{z};
\end{aligned}
:::

es decir, la función logartimo "separa" la información sobre el módulo y
el argumento de un número complejo.

Debido a la periodicidad del argumento $\arg (z)$, el **logaritmo
complejo es una función multivaluada**. El valor principal del logaritmo
se obtiene restringiendo el argumento al intervalo $(−\pi,\pi]$.\
Note que en el dominio complejo, es posible calcular el logarítmo de un
número (real) negativo.

:::{note} Ejemplo

Para el número $z=i+1$, $r=\sqrt{2}$ y $\theta=\pi/4\pm 2n\pi$,
entonces
$$\text{Log} (i+1)=\ln ( \sqrt{2}) + i \left( \frac{\pi}{4}\pm 2n\pi\right)$$

---

Considere el número $z=-2=(-2,0)$:
$$\text{Log} (-2)=\ln (2) + i \left( \pi\pm 2n\pi\right)$$
:::

## Propiedades de la función logarítmo

-   Logartimo de un producto: $$\text{Log} (z_1 z_2)=\text{Log} (z_1)+\text{Log} (z_2)$$

-   Logartimo de un cociente:
    $$\text{Log} \left(\frac{z_1}{z_2} \right)=\text{Log} (z_1)-\text{Log} (z_2)$$

-   Logartimo de una potencia: $$\text{Log} (z^n)=n\text{Log} (z)$$

-   Relación con la exponencial:
    $$\text{Log} (e^z)=z+2k\pi i, \quad k\in \mathbb{Z}$$


:::{note} Función logarítmica compleja en análisis de impedancia

En análisis de circuitos de corriente alterna, el voltaje puede representarse como  
$$
V(t) = V_0 e^{i(\omega t + \phi)}.
$$
Para obtener la fase $\phi$ a partir de $V(t)$, se utiliza $\phi = \Im (\text{Log} V(t))$.  
:::


En el análisis complejo, una función multivaluada es aquella que, para un mismo valor de la variable compleja $z$, puede tomar más de un valor. Este comportamiento suele originarse en procesos de inversión de funciones o en funciones definidas mediante integrales con dominios múltiples.

:::{attention} Funciones multivaluadas
:class: dropdown
Para manejar la multivaluación, se introduce el concepto de [superficie de Riemann](https://es.wikipedia.org/wiki/Superficie_de_Riemann), donde cada "hoja" de la superficie representa un valor posible de la función. Aun así, en muchas aplicaciones prácticas, se necesita trabajar con una sola rama de la función para evitar ambigüedades.

Un branch cut es una línea o curva en el plano complejo que conecta puntos de ramificación (branch points) y que sirve para "cortar" el dominio de la función, de modo que sobre la región restante la función sea de valor único (single-valued).

| Función $f(z)$            | Puntos de ramificación          | Corte de rama típico                  | Aplicaciones en física e ingeniería                              |
|-----------------------------|----------------------------------|---------------------------------------|------------------------------------------------------------------|
| $ \sqrt{z} $               | $ z = 0, \infty $              | Eje real negativo $ (-\infty, 0] $   | Potenciales en 2D, soluciones en elasticidad y flujo de fluidos   |
| $ \log(z) $                | $ z = 0, \infty $              | Eje real negativo $ (-\infty, 0] $   | Análisis de circuitos, óptica, mecánica cuántica                  |
| $ z^\alpha $ ($\alpha \notin \mathbb{Z}$) | $ z = 0, \infty $  | Eje real negativo $ (-\infty, 0] $   | Propagación de ondas, ecuaciones diferenciales                    |
| $ \arcsin(z) $             | $ z = \pm 1, \infty $          | $ (-\infty,-1] \cup [1,\infty) $     | Vibraciones, análisis estructural, transformaciones conformes     |
| $ \arccos(z) $             | $ z = \pm 1, \infty $          | $ (-\infty,-1] \cup [1,\infty) $     | Fenómenos oscilatorios, teoría de control                         |
| $ \arctan(z) $             | $ z = \pm i, \infty $          | $ i[-\infty,-1] \cup i[1,\infty] $   | Procesamiento de señales, telecomunicaciones                      |
| $ \sinh^{-1}(z) $            | $ z = \pm i, \infty $          | $ i[-\infty,-1] \cup i[1,\infty] $   | Propagación en medios dispersivos, relatividad                    |
| $ \cosh^{-1}(z) $            | $ z = \pm 1, \infty $          | $ (-\infty,1] $                      | Termodinámica, problemas en física estadística                    |


:::

:::{note} [Ondas evanescentes](https://es.wikipedia.org/wiki/Onda_evanescente)

En física e ingeniería, las **ecuaciones de ondas** describen la propagación de perturbaciones (sonido, electromagnetismo, elasticidad) en diferentes medios.  

En 2D, la ecuación de onda homogénea para un campo escalar $u(x,y,t)$ es  

$$
\nabla^2 u - \frac{1}{c^2}\frac{\partial^2 u}{\partial t^2} = 0,
$$

donde $c$ es la velocidad de propagación.  

Si buscamos soluciones armónicas en el tiempo del tipo  

$$
u(x,y,t) = U(x,y) e^{-i\omega t},
$$

la ecuación se transforma en la **ecuación de Helmholtz**:  

$$
\nabla^2 U + k^2 U = 0,
$$

con $k = \omega/c$ el número de onda.

La [función de Green](https://es.wikipedia.org/wiki/Funci%C3%B3n_de_Green) $G(z)$ para esta ecuación en el plano complejo aparece al resolver  

$$
\nabla^2 G + k^2 G = \delta(x)\delta(y),
$$

donde la delta representa una fuente puntual en el origen.

Usando coordenadas complejas $z = x + iy$, la distancia radial al punto fuente es  

$$
r^2 = x^2 + y^2 = z\,\bar{z}.
$$

Para fuentes en geometrías especiales, como **guías de ondas** o **medios estratificados**, la variable $z$ se transforma y aparece una forma generalizada  

$$
G(z) = \sqrt{z^2 - a^2},
$$

donde $a$ representa una distancia característica, por ejemplo:
- la distancia entre dos fuentes,
- el borde de una [guía de ondas](https://es.wikipedia.org/wiki/Gu%C3%ADa_de_onda),
- el límite entre regiones con propagación y regiones evanescentes.


![](./green.png)

---


Consideremos  
$$
G(z)=\sqrt{z^2-a^2} = \exp\!\Big(\tfrac{1}{2}\text{Log}(z^2-a^2)\Big),
$$
donde $\text{Log}$ denota la función logaritmo complejo (multivaluada).  

Los puntos donde el argumento del logaritmo se anula o se comporta singularmente son puntos de ramificación. Resolviendo
$$
z^2-a^2=0 \quad\Longrightarrow\quad z=\pm a.
$$
Además, en el plano de Riemann compacto el punto $z=\infty$ actúa también como punto de ramificación.  
Por tanto, los puntos de ramificación finitos son
$$
z=+a,\qquad z=-a,
$$
y se añade $z=\infty$ como ramificación en el infinito.

---


Para hacer $G(z)$ monovaluada sobre una región conectada, se introduce un *branch cut* (corte de rama) que conecte los puntos de ramificación. La elección estándar y conveniente es el segmento real que une $-a$ y $+a$:
$$
\text{branch cut: } [-a,a]\subset\mathbb{R}.
$$
Con este corte se define la *rama principal* tomando
$$
\arg (z^2-a^2)\in(-\pi,\pi],\qquad \sqrt{z^2-a^2}=\exp\!\Big(\tfrac{1}{2}\text{Log}(z^2-a^2)\Big)
$$

- Para $z$ reales y $|z|>a$ se obtiene $\sqrt{z^2-a^2}$ real.  
- Para $z$ en $-a<z<a$ (sobre el corte) la función presenta la discontinuidad de salto entre ramas.


---

Si $z$ es un número de onda o una variable espectral (típico en funciones de Green), entonces:

- Los puntos $z=\pm a$ son **umbrales** o transiciones:
  - $|z|>a$: $z^2-a^2>0$, $\sqrt{z^2-a^2}$ real → **modos propagantes**.
  - $|z|<a$: $z^2-a^2<0$, $\sqrt{z^2-a^2}$ imaginario → **modos evanescentes**.
- El *branch cut* $[-a,a]$ separa las regiones propagante y evanescente.  
- La elección de la rama principal fija la convención física (p.ej. solución de radiación saliente).

---

Los puntos $z=\pm a$ se conocen como [_puntos de ramificación_](https://es.wikipedia.org/wiki/Punto_de_ramificaci%C3%B3n) porque allí el argumento del radical se anula y la función cambia de hoja al rodearlos. 

:::
# Potencias

Si $a$ y $b$ son números complejos, $$a^b=e^{b\ln a}$$

:::{note} Ejemplo

$$i^{-2i}=e^{-2i\ln i}=e^{-2i\cdot i(\pi/2\pm2n\pi)}=e^{\pi\pm4n\pi}=e^\pi,e^{5\pi},e^{-3\pi},\ldots$$
:::

# Funciones trigonométricas inversas

Las funciones trigonométricas inversas, tales como el arcoseno,
arcocoseno y arcotangente, son esenciales para determinar ángulos en el
plano complejo y resolver ecuaciones que involucran relaciones
trigonométricas. En física, estas funciones son de particular
importancia en la mecánica cuántica y en la teoría de control, donde los
ángulos de fase y las respuestas de sistemas oscilatorios requieren un
análisis detallado.

Anteriormente definimos, por ejemplo que
$$w=\cos z= \frac{e^{iz}+e^{-iz}}{2},$$ es decir, para cada número
complejo $z$, la expresión anterior define el número complejo $w$. Se
define el coseno inverso o el arcocoseno de $w$
$$z=\cos^{-1} w=\arccos w \qquad \text{si } \quad w=\cos z.$$

Análogamente,
$$z=\arcsin w=\sin^{-1} w \qquad \mbox{si } \quad w=\sin z.$$

:::{note} Ejemplo

$$z=\arccos 2, \qquad \mbox{\'o} \qquad \cos z =2,$$

$$\displaystyle \frac{e^{iz}+e^{-iz}}{2}=2.$$ 

Sea $u=e^{iz}$. Entonces $e^{-iz}=u^{-1}$, de donde se obtiene
$$\displaystyle \frac{u+u^{-1}}{2}=2,$$

de donde

$$u^2-4u+1=0 \Rightarrow u=e^{iz}=2\pm\sqrt{3}.$$

Aplicando logaritmo a ambos lados
$$iz=\text{Log} (2\pm\sqrt{3})=\pm\ln (2+\sqrt{3})+2in\pi$$

$$z=\arccos 2=2n\pi \pm i\ln (2+\sqrt{3})$$
:::



Las funciones trigonométricas inversas en el dominio complejo se
definien explícitamente como: 

:::{math}
\begin{aligned}
    \sin^{-1}(z)=&-i\ln(iz+\sqrt{1-z^2})\\
    \cos^{-1}(z)=&-i\ln(z+i\sqrt{1-z^2})\\
    \tan^{-1}(z)=&\displaystyle \frac{i}{2}\ln \left (\frac{i+z}{i-z}\right),\quad z\neq \pm i\\
    \cot^{-1}(z)=&\displaystyle -\frac{i}{2}\ln \left (\frac{z+i}{z-i}\right),\quad z\neq \pm i \\
    \sec^{-1}(z)=&-i\ln \left(\frac{1+\sqrt{1-z^2}}{z} \right)\\
    \csc^{-1}(z)=&-i\ln \left(\frac{1+\sqrt{z^2-1}}{z} \right)
\end{aligned}
:::

# Funciones hiperbólicas inversas

Las soluciones de ciertas ecuaciones diferenciales que describen la
propagación de ondas y la transmisión de señales pueden expresarse en
términos de funciones hiperbólicas inversas.

Las funciones hiperbólicas inversas para un número complejo $z$ se
definen como: 

:::{math}
\begin{aligned}
    \sinh^{-1}(z)=&-\ln(z+\sqrt{z^2+1}),\\
    \cosh^{-1}(z)=&\ln(z+\sqrt{z^2-1}),\\
    \tanh^{-1}(z)=&\displaystyle \frac{1}{2}\ln \left (\frac{1+z}{1-z}\right).
\end{aligned}
:::

En ingeniería, la función arctangente hiperbólico se usa en la solución
de problemas de transferencia de calor en medios seminfinitos. En
física, la función arcoseno hiperbólico aparece en la descripción del
movimiento relativista de partículas, especialmente en la relación entre
el tiempo propio y el tiempo coordenado.


:::{note} Relaciones de las derivadas de funciones hiperbólicas inversas

| Función                    | Expresión de la derivada | 
|----------------------------|--------------------------|
| $\sinh^{-1}(z)$  | $\displaystyle \frac{1}{\sqrt{z^2+1}}$| 
| $\cosh^{-1}(z)$  | $\displaystyle \frac{1}{\sqrt{z^2-1}}$| 
| $\tanh^{-1}(z)$  | $\displaystyle \frac{1}{1-z^2}$       |

:::

:::{seealso} Referencias

@boas2006mathematical [Cap. 2 "Complex Numbers", pág. 72-81]


:::