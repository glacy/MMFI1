---
title: Operador nabla   
description: Operador nabla  
short_title: Operador nabla 
author: " "
tags: [analisis_vectorial, nabla, operador, coordenadas, curvilíneas]
subject: Cálculo y análisis vectorial - Semana 2
keywords: [nabla, operador, coordenadas, curvilíneas]
exports:
 - format: pdf
   template: curvenote
   output: ./semana02_lectura.pdf
# downloads:
#   - file: ./semana02_lectura.md
#     title: semana02_lectura.md
#   - file: ./semana02_lectura.pdf
#     title: semana02_lectura.pdf
#   - file: ./dV_coordenadas_cilindricas.asy
#     title: dV_coordenadas_cilindricas.asy
#   - file: ./coordenadas_esfericas.asy
#     title: coordenadas_esfericas.asy
#   - file: ./dV_coordenadas_esfericas.asy
#     title: dV_coordenadas_esfericas.asy
---

:::{aside} <wiki:Annalisa_Buffa>
ha hecho contribuciones significativas al desarrollo de métodos numéricos para ecuaciones diferenciales parciales sobre dominios con geometría no trivial, usando técnicas basadas en coordenadas curvilíneas, variedades diferenciables y operadores vectoriales generalizados. Es reconocida por su trabajo en la formulación y análisis de modelos físicos en geometrías complejas, como las que aparecen en mecánica estructural, electrodinámica y biomecánica.

```{figure} ./../images/Annalisa_Buffa.jpg
:label: fig-Annalisa_Buffa.jpg
:alt: retrato de Dra. Annalisa Buffa
:align: center
Dra. Annalisa Buffa (1973 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Expresar transformaciones entre coordenadas cartesianas y curvilíneas**, e interpretar geométricamente los vectores base asociados y los factores de escala.
2. **Generalizar el operador nabla** $(\nabla)$ a coordenadas curvilíneas, utilizando los factores de escala, y deducir expresiones para:
    - Gradiente de un campo escalar.
    - Divergencia de un campo vectorial.
    - Rotacional de un campo vectorial.
    - Laplaciano de un campo escalar.
3. **Aplicar operadores vectoriales en coordenadas curvilíneas** para resolver problemas físicos relevantes, como campos de velocidad en flujo axial simétrico o potenciales eléctricos esféricamente simétricos.
```

+++ { "part": "abstract" }  
El estudio de sistemas de coordenadas curvilíneas es fundamental para modelar y analizar fenómenos físicos que presentan simetrías no cartesianas o que se desarrollan en geometrías complejas. Mientras que las coordenadas cartesianas son adecuadas para sistemas homogéneos y de simetría rectangular, muchas situaciones en física e ingeniería —como el flujo en una tubería cilíndrica, el campo eléctrico alrededor de una carga puntual o la propagación de ondas en una cavidad esférica— requieren el uso de sistemas curvilíneos como el cilíndrico, el esférico o sistemas más generales. Por otro lado, el operador vectorial diferencial nabla, $\nabla$, desempeña un papel central en física e ingeniería como herramienta para cuantificar la variación espacial de magnitudes escalares y vectoriales. Al actuar como gradiente, divergencia o rotacional, $\nabla$ permite describir cómo cambian los campos en el espacio, ya sea midiendo la dirección y magnitud de su crecimiento, evaluando la densidad de fuentes o sumideros, o caracterizando la rotación local de un flujo. Este enfoque unificado resulta esencial en disciplinas como la mecánica de fluidos, la transferencia de calor, el electromagnetismo y la mecánica del continuo, donde las ecuaciones de conservación —de masa, cantidad de movimiento y energía— se expresan de forma compacta y generalizada mediante $\nabla$, adaptándose a distintos sistemas de coordenadas según la geometría del problema.
+++


(nabla)=
# 💉 Operador nabla

El [operador nabla](https://es.wikipedia.org/wiki/Nabla) ($\nabla$) es un [operador vectorial](https://es.wikipedia.org/wiki/Operador_diferencial) que se utiliza
ampliamente en cálculo vectorial. Su versatilidad y utilidad lo convierten en una herramienta fundamental en física e ingeniería,
especialmente en el análisis de campos vectoriales y escalares.

Este operador se puede aplicar a funciones escalares y vectoriales para obtener varios tipos de resultados importantes en el cálculo vectorial,
como [*el gradiente*](https://es.wikipedia.org/wiki/Gradiente), [*la divergencia*](https://es.wikipedia.org/wiki/Divergencia_(matem%C3%A1tica)) y [*el rotacional*](https://es.wikipedia.org/wiki/Rotacional). En el electromagnetismo, [*las ecuaciones de Maxwell*](https://es.wikipedia.org/wiki/Ecuaciones_de_Maxwell) se expresan usando divergencia y rotacional; en la mecánica de fluidos, [*las ecuaciones de Navier-Stokes*](https://es.wikipedia.org/wiki/Ecuaciones_de_Navier-Stokes), que describen el flujo de fluidos, utilizan nabla para representar la aceleración y la conservación de la masa. El operador nabla es indispensable para describir y analizar fenómenos físicos complejos.

En coordenadas cartesianas, el **operador diferencial nabla** ($\nabla$)
se define mediante
$$\nabla = \hat{\iota}\frac{\partial}{\partial x}+\hat{\jmath}\frac{\partial}{\partial y}+\hat{\kappa}\frac{\partial}{\partial z}=\left(\frac{\partial }{\partial x},\frac{\partial }{\partial y},\frac{\partial }{\partial z}\right)=(\partial_x, \partial_y,\partial_z).$$

En lo subsiguiente, denotaremos una función escalar de la forma
$$\phi=\phi(x,y,z)$$ y una función vectorial mediante
$$\vec{V}(x,y,z)=V_x(x,y,z)\hat{\iota}+V_y(x,y,z)\hat{\jmath}+V_z(x,y,z)\hat{\kappa}.$$

Dependiendo de cómo se combine con funciones escalares o vectoriales, el nabla produce diferentes operadores diferenciales fundamentales:

### Gradiente 

$$\mbox{grad}\phi=\nabla \phi= \hat{\iota}\frac{\partial \phi}{\partial x}+\hat{\jmath}\frac{\partial \phi}{\partial y}+\hat{\kappa}\frac{\partial \phi}{\partial z}$$

El gradiente suele usarse para aproximar funciones localmente, ya que 
$$f(\vec{x}+\Delta \vec{x})\approx f(\vec{x}+\nabla f(\vec{x}))\cdot \Delta \vec{x} $$

*Derivada direccional*

La derivada direccional de una función escalar $\phi$ en una dirección
dada por un vector unitario $\hat{n}$ mide la tasa de cambio de $\phi$
en esa dirección. Es decir, cómo cambia la función $\phi$ en la
dirección de $\hat{n}$.

$$\frac{d\phi}{dn}=\nabla \phi \cdot \hat{n}=|\nabla \phi | \cos \theta,$$
donde $dn$ es un elemento de longitud (longitud de arco) en la dirección
de $\hat{n}$ y $\theta$ es el ángulo entre $\nabla \phi$ y $\hat{n}$.
Física y geométricamente, la derivada direccional $d\phi/dn$ es la
proyección de $\nabla \phi$ en la dirección de $\hat{n}$.

:::{note} Campo de temperatura
Considere el campo de temperatura $$T(x,y,z)=x^2-y^2+xyz+273$$
La temperatura (en un punto particular) aumentará más rápidamente en la
dirección que máximice $dT/ds$, es decir, en la dirección de $\nabla T$.
Para este caso
$$\nabla T=(2x+yz)\hat{\iota}+(-2y+xz)\hat{\jmath}+xy\hat{\kappa}.$$ Por
ejemplo, en $\vec{r}=(-1,2,3)$, la temperatura aumenta más rápidamente
en la dirección de $4\hat{\iota}-7\hat{\jmath}-2\hat{\kappa}$, a un
ritmo de $|\nabla T|=\sqrt{16+49+4}=\sqrt{69}$
:::

En Física e Ingeniería, el gradiente su utiliza para relacionar un campo
de fuerza ($\vec{F}$) con su campo potencial ($U$):
$$\vec{F}=-\nabla U$$

### Divergencia
La divergencia actúa sobre campos vectoriales y mide cuanto un vector converge o diverge de cualquier punto.

$$\mbox{div}\vec{V}=\nabla \cdot \vec{V}=\frac{\partial V_x}{\partial x}+\frac{\partial V_y}{\partial y}+\frac{\partial V_z}{\partial z}$$
En el caso especial que $$\nabla\cdot\vec{V}=0,$$ se dice que el vector
$\vec{V}$ es *solenoidal* y es posible escribirlo como el rotacional de
algún otro vector, llamado el *vector potencial*.

:::{note} Conservación de la masa

En la Mecánica de fluidos, la conservación de la masa establece que

$$\frac{d\rho}{dt}+\nabla \cdot (\rho\vec{u})+Q=0,$$

donde $\rho$ representa la densidad del fluido, $\vec{u}$ su campo de
velocidad y $Q$ el flujo neto.

Para un fluido incompresible ($\rho=\mbox{constante}$), sin fuentes ni
sumideros $$\nabla \cdot \vec{u}=0$$
:::

*Derivada material*

En mecánica de fluidos y física de medios continuos, la derivada material (también llamada derivada sustancial, derivada convectiva o derivada de Lagrange) describe la variación temporal de una cantidad física medida siguiendo el movimiento de una partícula de fluido.

$$\frac{Dq}{Dt}=\frac{\partial q}{\partial t}+ \nabla q\cdot \vec{u}.$$

El término $\nabla q\cdot \vec{u}$ representa la derivada direccional
de $q$ en la dirección de $\vec{u}$.

### Rotacional (curl)

$$\begin{aligned}
    \mbox{curl} \vec{V}=&\nabla \times \vec{V} \nonumber \\ 
    =& \hat{\iota}\left(\frac{\partial V_z}{\partial y}-\frac{\partial V_y}{\partial z}\right)+\hat{\jmath}\left(\frac{\partial V_x}{\partial z}-\frac{\partial V_z}{\partial x}\right)+\hat{\kappa}\left(\frac{\partial V_y}{\partial x}-\frac{\partial V_x}{\partial y}\right) \\
    =& \displaystyle\begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa}\\ 
\displaystyle\frac{\partial }{\partial x} & \displaystyle\frac{\partial }{\partial y} & \displaystyle\frac{\partial }{\partial z} \\
V_x & V_y & V_z \nonumber
\end{vmatrix}
\end{aligned}$$

El rotacional es una manera de medir que tan  rápido gira, localmente,  un campo vectorial. Un campo vectorial cuyo rotacional es cero, se denomina _irrotacional_. 
:::{note} Ley de Øersted
$$\nabla\times \vec{B}-\frac{1}{c^2}\frac{\partial \vec{E}}{\partial t}=\mu_0 \vec{J}$$
:::

### Laplaciano
El Laplaciano se construye generalmente como la divergencia de un gradiente.

$$\begin{aligned}
  \mbox{div } \mbox{grad} \phi= \nabla \cdot \nabla \phi=&\nabla^2\phi \\
  =& \frac{\partial }{\partial x} \frac{\partial \phi}{\partial x}+\frac{\partial }{\partial y} \frac{\partial \phi}{\partial y}+\frac{\partial }{\partial z} \frac{\partial \phi}{\partial z}\nonumber \\
  =& \frac{\partial^2\phi} {\partial x^2}+\frac{\partial^2\phi} {\partial y^2}+\frac{\partial^2\phi} {\partial z^2}
\end{aligned}$$

mide "que tan lejos" se encuentra una cantidad del promedio alrededor suyo.

En el caso de un campo vectorial $\vec{V}$ $$\begin{aligned}
     \nabla ^2 \vec{V}=&\nabla(\nabla \cdot \vec{V})-\nabla \times (\nabla \times \vec{V})\\
     =&(\nabla^2 V_x,\nabla^2 V_y,\nabla^2 V_z)
\end{aligned}$$

:::{note} Ecuaciones que involucran el Laplaciano

:::{math}
\begin{aligned}
        \nabla^2\phi=&0 && \mbox{ecuaci\'on de Laplace}\\
        \nabla^2 \phi =&q && \mbox{ecuaci\'on de Poisson}
        \nabla^2\phi=&\frac{1}{a^2}\frac{\partial^2 \phi}{\partial t^2} && \mbox{ecuaci\'on de onda}\\
        \nabla^2\phi=&\frac{1}{a^2}\frac{\partial \phi}{\partial t} && \mbox{difusi\'on, conducci\'on de calor, ecuaci\'on de Schr{\"o}dinger}    
\end{aligned}
:::

:::{note} Ecuaciones de Navier-Stokes
 Para un fluido newtoniano incompresible, las
[ecuaciones de Navier-Stokes](https://es.wikipedia.org/wiki/Ecuaciones_de_Navier-Stokes) establecen
$$ \frac{\partial \vec{u}}{\partial t}+\vec{u} \cdot \nabla\vec{u}+\frac{1}{\rho}\nabla p= \vec{g} +\nu\nabla \cdot \nabla \vec{u},$$
$$\nabla \cdot \vec{u}=0, $$

donde:

- $\vec{u} = (u_x, u_y, u_z)$ es el **campo de velocidad** del fluido.
- $p$ es la **presión**.
- $\rho$ es la **densidad** del fluido.
- $\nu$ es la **viscosidad cinemática**.
- $\vec{g}$ es la **aceleración debida a fuerzas externas**.

:::


(coordenadas-curvilineas)= 
# ➰ Coordenadas curvilíneas


En términos generales, la posición de un punto $P$ con coordenadas
cartesianas $x$, $y$ y $z$ puede expresarse en término de tres
[*coordenadas curvilíneas*](https://es.wikipedia.org/wiki/Coordenadas_curvil%C3%ADneas) $u_1$, $u_2$ y $u_3$, es decir
$$x=x(u_1,u_2,u_3), \qquad y=y(u_1,u_2,u_3), \qquad
    z=z(u_1,u_2,u_3).$$ Si en cualquier punto en el espacio, las tres
superficies coordenadas se encuentran en ángulos rectos, entonces el
sistema de coordenadas curvilíneas se le llama *ortogonal*.

Si $\vec{r}(u_1,u_2,u_3)$ es la posición del punto $P$, entonces
$\vec{e}_1=\partial \vec{r}/\partial u_1$ es un vector tangente a la
$u_1$-curva en $P$. Similarmente,
$\vec{e}_2=\partial \vec{r}/\partial u_2$ y
$\vec{e}_3=\partial \vec{r}/\partial u_3$ son vectores tangentes a las
$u_2$-curva y $u_3$-curva en $P$ en la dirección creciente de $u_2$ y
$u_3$ respectivamente. Se definen los *vectores unitarios* en el sistema
$\{ u_1, u_2, u_3\}$ como:
$$\hat{e}_1=\frac{1}{h_1}\frac{\partial \vec{r}}{\partial u_1}, \qquad \hat{e}_2=\frac{1}{h_2}\frac{\partial \vec{r}}{\partial u_2}, \qquad \hat{e}_3=\frac{1}{h_3}\frac{\partial \vec{r}}{\partial u_3},$$
donde $h_1=|\partial \vec{r}/\partial u_1|$,
$h_2=|\partial \vec{r}/\partial u_2|$ y
$h_3=|\partial \vec{r}/\partial u_3|$ se conocen como los *[factores de
escala](https://es.wikipedia.org/wiki/Factores_de_escala_(coordenadas_ortogonales)) del sistema de coordenadas curvilíneo*.

En el caso de coordenadas curvilíneas ortogonales, un desplazamiento
infinitesinal esta dado por $$\begin{aligned}
    d\vec{r}=&\frac{\partial \vec{r}}{\partial u_1}du_1+\frac{\partial \vec{r}}{\partial u_2}du_2+\frac{\partial \vec{r}}{\partial u_3}du_3\\
    =&h_1du_1\hat{e}_1+h_2du_2\hat{e}_2+h_3du_3\hat{e}_3
\end{aligned}$$ el elemento de longitud de arco por
$$(ds)^2=d\vec{r}\cdot d\vec{r}=h_1^2(du_1)^2+h_2^2(du_2)^2+h_3^2(du_3)^2$$
y el elemento de volumen por $$\begin{aligned}
    dV=&|du_1\vec{e}_1 \cdot (du_2\vec{e}_2 \times du_3\vec{e}_3)|\\
    =&h_1h_2h_3du_1du_2du_3
\end{aligned}$$



## Operador nabla en coordenas curvilíneas

En coordenadas curvilíneas generalizadas, el operador nabla se calcula
de acuerdo $$\begin{aligned}
    \nabla \phi =&\frac{1}{h_1}\frac{\partial \phi}{\partial u_1}\hat{e}_1+\frac{1}{h_2}\frac{\partial \phi}{\partial u_2}\hat{e}_2+\frac{1}{h_3}\frac{\partial \phi}{\partial u_3}\hat{e}_3\\[.3cm]
    \nabla \cdot \vec{A}=&\frac{1}{h_1h_2h_3}\left[ \frac{\partial}{\partial u_1}(h_2h_3A_1)+\frac{\partial}{\partial u_2}(h_1h_3A_2)+\frac{\partial}{\partial u_3}(h_1h_2A_3) \right]\\[.3cm]
    \nabla \times \vec{A}=&\frac{1}{h_1h_2h_3} \begin{vmatrix}
  h_1\hat{e}_1 & h_2\hat{e}_2 & h_3\hat{e}_3\\ 
  \displaystyle\frac{\partial}{\partial u_1} & \displaystyle\frac{\partial}{\partial u_2} & \displaystyle\frac{\partial}{\partial u_3} \\
  h_1A_1 & h_2A_2 & h_3A_3
    \end{vmatrix}\\
    \nabla^2\phi=&\frac{1}{h_1h_2h_3}\left[\displaystyle \frac{\partial}{\partial u_1}\left(\frac{h_2h_3}{h_1}\frac{\partial \phi}{\partial u_1} \right) 
    +\displaystyle \frac{\partial}{\partial u_2}\left(\frac{h_1h_3}{h_2}\frac{\partial \phi}{\partial u_2} \right)
    +\displaystyle \frac{\partial}{\partial u_3}\left(\frac{h_1h_2}{h_3}\frac{\partial \phi}{\partial u_3} \right)
    \right]
\end{aligned}$$

### Coordenadas cilíndricas

Las [coordenadas cilíndricas](https://en-m-wikipedia-org.translate.goog/wiki/Cylindrical_coordinate_system?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc) $(\rho, \phi,z)$
```{figure} ./../images/dV_cilindricas.png
:label: fig-dV_cilindricas
:alt: diferencial de volumen en coordenadas cilíndricas
:align: center
Diferencial de volumen en coordenadas cilíndricas $(\rho,\phi,z)$. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

```{math}
:label: eq-coord-cil
x=\rho \cos\phi, \qquad y=\rho \sin \phi, \qquad z=z,
```


donde
$\rho>0$, $0\leq \phi \leq2\pi$ y $-\infty< z < \infty$. Ver [Figura %s](#fig-dV_cilindricas).

:::{note} Factores de escala en coordenadas cilíndricas
$$h_\rho=1, \quad h_\phi=\rho, \quad h_z=1$$
:::



### Coordenadas esféricas

Las coordenadas esféricas $(r, \theta, \phi)$  describen un punto en términos de:

- $r$: distancia radial desde el origen.
- $\theta$: ángulo polar (colatitud), medido desde el eje $z$ hacia el plano $xy$.
- $\phi$: ángulo azimutal, medido como en el caso cilíndrico.

(Ver [Figura %s](#fig-coordenadas_esfericas))

```{figure} ./../images/coordenadas_esfericas.png
:label: fig-coordenadas_esfericas
:alt: Coordenadas esféricas
:align: center
Coordenadas esféricas $(r,\theta,\phi)$. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

```{figure} ./../images/dV_esfericas.png
:label: fig-dV_esfericas
:alt: Diferencial de volumen en coordenadas esféricas
:align: center
Diderencial de volumen en coordenadas esféricas $(r,\theta,\phi)$. Imagen generada con [Asymptote](https://asymptote.sourceforge.io/).
```

:::{math}
:label: eq-coord-esf
x=r\sin\theta\cos\phi,  \qquad
y=r\sin\theta\sin \phi, \qquad
z=r\cos\theta,
:::

donde $r>0$, $0\leq \theta \leq\pi$ y
$-0\leq \phi \leq 2\pi$. 

:::{note} Factores de escala en coordenadas esféricas
$$h_r=1, \quad h_\theta=r, \quad h_\phi=r\sin \theta$$
:::



:::{seealso} Referencias
@boas2006mathematical [Cap. 6 "Vector Analysis", pág. 289-299]

@arfken2005mathematical [Cap. 1 "Vector Analysis", pág. 25-32]

@riley2006mathematical [Cap. 7 "Vector Algebra", pág. 347-369]
:::