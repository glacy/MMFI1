---
title: Funciones de variable compleja (I)
description: Funciones de variable compleja (I) 
short_title: Funciones de variable compleja (I)
author: " "
tags: [numeros_complejos, funciones, potencias, raices, exponenciales]
subject: Variable compleja - Semana 5
keywords: [funciones, potencias, raíces, trigonométricas, hiperbólicas]
exports:
 - format: pdf
   template: curvenote
   output: ./semana5_lectura.pdf
downloads:
  - file: ./semana5_lectura.md
    title: semana5_lectura.md
  - file: ./semana5_lectura.pdf
    title: semana5_lectura.pdf
  - file: ./ejemplo_cubica.asy
    title: ejemplo_cubica.asy
---

:::{aside} [Ingrid Daubechies](https://es.wikipedia.org/wiki/Ingrid_Daubechies)
es una matemática y
física belga. Ha realizado importantes aportaciones en el campo del
análisis de señales y la compresión de datos, con aplicaciones que van
desde la compresión de imágenes (como JPEG 2000) hasta el análisis de
señales en biomedicina.

```{figure} ./Ingrid_Daubechies.jpg
:label: fig-Ingrid_Daubechies.jpg
:alt: retrato de Dra. Ingrid Daubechies
:align: center
Dra. Ingrid Daubechies (1954 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Definir y clasificar** las principales funciones de números complejos (potencias, raíces, exponenciales, logarítmicas, trigonométricas e hiperbólicas, y sus inversas), identificando sus dominios de analiticidad, periodicidad y ramificaciones.

2. **Resolver problemas** donde las funciones complejas simplifican la formulación matemática.
```

+++ { "part": "abstract" }  

Las funciones logarítmica e inversas de las funciones trigonométricas e hiperbólicas en el plano complejo proporcionan un marco poderoso para el análisis y la modelación de sistemas físicos e ingenieriles. Su estudio permite comprender fenómenos asociados a la multivaluación, ramas principales y puntos de ramificación, elementos esenciales en la resolución analítica de ecuaciones diferenciales y en transformaciones conformes. Estas funciones aparecen en la determinación de amplitudes, fases y ángulos de desfase en sistemas oscilatorios y de propagación, así como en procesos de atenuación y dispersión de ondas. Además, su interpretación gráfica y la identificación de discontinuidades permiten un entendimiento más profundo de la estructura analítica de soluciones en problemas aplicados de física e ingeniería.
+++

# Funciones en el dominio complejo 

Se conocen como *funciones elementales de números complejos* a las
potencias, raíces, funciones trigonométricas (y sus inversas),
logaritmos y exponenciales de números complejos; y la combinaciones de
ellas.

Las funciones complejas juegan un papel fundamental en la física y la
ingeniería, ya que permiten una descripción más completa y eficaz de
muchos fenómenos que involucren ondas, resonancia, circuitos, dinámica
de fluidos, entre otros temas.

En la propagación de ondas electromagnéticas y acústicas en medios
inhomogéneos, las soluciones pueden implicar funciones hiperbólicas
complejas, especialmente en problemas donde las condiciones de frontera
no son triviales.

En ingeniería eléctrica y en telecomunicaciones, el uso de funciones
complejas en la representación de señales permite manejar la modulación,
la demodulación, y el análisis en el dominio de la frecuencia de manera
más eficiente, simplificando el diseño y la implementación de sistemas
de comunicación.

:::{note} Señal modulada en amplitud (AM)

Considera una señal de
información $m(t)$, que es una señal de banda base (por ejemplo, una
señal de audio). Esta señal se modula en amplitud (AM) utilizando una
portadora de frecuencia $f_c$, dando lugar a una señal modulada
$$s(t)=[A+m(t)]\cos(2\pi f_c t).$$

En lugar de trabajar directamente con $s(t)$, es común utilizar la
*representación compleja de la señal*, $S(t)$. La señal modulada se
puede expresar en términos de su envolvente compleja
$$s(t)=\Re \{S(t)e^{2\pi i f_c t}  \},$$ donde $$S(t)=A+m(t).$$
:::

## Potencias complejas

Dado un número complejo $z=re^{i\theta}$, donde $r$ es el módulo y
$\theta$ es el argumento de $z$, una potencia compleja $z 
^n$, donde $n$ es un número entero, se define como
$$z^n=(re^{i\theta})^n=r^n e^{in\theta}.$$

Esto extiende la definición de potencias al plano complejo, conservando
la idea de multiplicar $z$ por sí mismo $n$ veces. En particular, se
puede ver que $$|z^n|=|z|^n,$$ y que $$\arg{(z^n)}=n(\arg{(z)}),$$

:::{note} Teorema de DeMoivre
$$(e^{i\theta})^n = \cos (n\theta) + i \sin (n\theta).$$
:::

:::{note} Simplificación
$$[\cos (\pi/10)+i\sin(\pi/10)]^{25}=(e^{i\pi/10})^{25}=e^{2i \pi}e^{i\pi /2}=1\cdot i=i$$
:::

## Raíces complejas

Las raíces de $n-$ésimo orden de un número complejo $z=re^{i\theta}$ se
obtienen resolviendo la ecuación $w^n=z$.

Las soluciones son
:::{math} 
\begin{aligned}
    w_k=&\sqrt[n]{r}\cdot e^{i\left(\frac{\theta+2k\pi}{n} \right)}, \\
    =&\sqrt[n]{r}\left[ \cos \left(\frac{\theta+2k\pi}{n} \right)+i\sin\left(\frac{\theta+2k\pi}{n} \right)\right],\\
    &\text{con}\quad k=0,1,\ldots,n-1.
\end{aligned}
 ::: 

Note que $$|w_k|=\sqrt[n]{|z|}$$
y
$$\arg{(w_k)}=\frac{\arg{(z)}+2k\pi}{n}, \quad k=0,1,\ldots,n-1.$$

:::{note} Raíz cúbica
Ejemplo La ecuación $z^3=8$ tiene por solución
$$z=\sqrt[3]{8}=\left\{2, -1+i\sqrt{3}, -1-i\sqrt{3}\right\}$$

![ejemplo](./ejemplo1.png)
:::


## Exponencial de un número complejo

Si $z=x+iy$, la función exponencial de $z$ se define mediante
$$e^z=e^{x+iy}=e^xe^{iy}=e^x(\cos y +i\sin y).$$

Note que
 :::{math} 
 \begin{aligned}
|e^z|=&e^x,\\    
\arg (e^z)=&y.
\end{aligned}
 :::

A partir de la multiplicación de números complejos, se tiene por ejemplo
que $$e^{z_1}\cdot e^{z_2}=e^{z_1+z_2}.$$

:::{note} Simplificación
$$e^{2-i\pi}=e^2e^{-i\pi}=-e
^2$$
:::

:::{note} Índice de refracción complejo

En medios dieléctricos ideales, el **índice de refracción** $ n $ relaciona la velocidad de la luz en el vacío $ c $ con la velocidad de propagación $ v $ en el medio:
$$
n = \frac{c}{v}.
$$

Sin embargo, en muchos materiales reales —especialmente en aquellos donde hay **absorción** o **dispersión** de la onda electromagnética— el índice de refracción se vuelve **complejo**:
$$
\tilde{n} = n + i \kappa.
$$


- La **parte real** $ n $ describe la **fase** de la onda y controla la velocidad de fase y la refracción:
  $$
  v_p = \frac{c}{n}.
  $$
- La **parte imaginaria** $ \kappa $ (llamada coeficiente de extinción) está asociada con la **atenuación** o **absorción** de la onda en el medio.

Cuando una onda electromagnética de frecuencia $ \omega $ y número de onda $ k $ viaja en el medio, su forma es  
$$
E(z,t) = E_0\, e^{i(kz - \omega t)}.
$$

Si $ k = \frac{\omega}{c} \tilde{n} = \frac{\omega}{c}(n+i\kappa) $, entonces  

$$
E(z,t) = E_0\, e^{i \frac{\omega}{c} n z} \, e^{-\frac{\omega}{c} \kappa z} \, e^{-i\omega t}.
$$

El término $ e^{-\frac{\omega}{c} \kappa z} $ muestra que $ \kappa $ controla la **tasa de decaimiento** de la amplitud conforme la onda avanza.


:::


## Funciones trigonométricas

Dado que
 :::{math}
  \begin{aligned}
    e^{i\theta}=\cos\theta +i\sin\theta,\\
    e^{-i\theta}=\cos\theta -i\sin\theta,
\end{aligned} 
::: 

se pueden expresar las funciones trigonométricas de
números reales como
 :::{math} 
 \begin{aligned}
    \sin \theta=&\frac{e^{i\theta}-e^{-i\theta}}{2i},\\
    \cos \theta=&\frac{e^{i\theta}+e^{-i\theta}}{2};
\end{aligned} 
::: 

de donde se pueden obtener expresiones para las
funciones trigonométricas de argumento complejo

$$\sin z=\frac{e^{iz}-e^{-iz}}{2i},$$

$$\cos z=\frac{e^{iz}+e^{-iz}}{2}.$$

```{note} Ejemplos
:::{math}
 \begin{aligned}
    \sin \left(\frac{\pi}{2}+i\ln 2 \right)=&\frac{e^{i(\pi/2+i\ln 2)}-e^{-i(\pi/2+i\ln 2)}}{2i}\\
    =&\frac{e^{i\pi /2}e^{-\ln 2}-e^{-i\pi /2}e^{\ln 2}}{2i}\\
    =&\frac{(i)(1/2)-(-i)(2)}{2i}\\
    =&\frac{5}{4}
\end{aligned}
:::

---
$$\cos i= \frac{e^{i\cdot i}+e^{-i\cdot i}}{2}=\frac{e^{-1}+e}{2}=1.543\ldots$$

```

Note de los ejemplos anteriores que los senos y cosenos de números
complejos pueden ser mayores que 1.

Las otras funciones trigonométricas de argumento complejo se definen en
la manera usual, en términos de las funciones $\sin$ y $\cos$; por
ejemplo $\tan z=\sin z / \cos z$, etc.

## Funciones hiperbólicas complejas 

Considere las funciones $\sin z$ y $\cos z$ para números imaginarios
puros, es decir, $z=iy$:

:::{math}
 \begin{aligned}
    \sin iy =&\frac{e^{-y}-e^y}{2i}=i\frac{e^y-e^{-y}}{2},\\
    \cos iy =&\frac{e^{-y}+e^y}{2}=\frac{e^y+e^{-y}}{2}.
\end{aligned} 
::: 

Las funciones reales de la derecha en estas expresiones
se conocen como [funciones hiperbólicas](https://es.wikipedia.org/wiki/Funci%C3%B3n_hiperb%C3%B3lica) (seno hiperbólico ($\sinh$) y coseno hiperbólico
($\cosh$), respectivamente):

:::{math}
 \begin{aligned}
    \sinh y =&\frac{e^y-e^{-y}}{2},\\
    \cosh y =&\frac{e^y+e^{-y}}{2}.
\end{aligned} 
:::

En el caso de números complejos

:::{math}
 \begin{aligned}
    \sinh z=&\frac{e^z-e^{-z}}{2},\\
    \cosh z=&\frac{e^z+e^{-z}}{2}.
\end{aligned} 
:::

Se puede demostrar (ver [Ejercicio %s](#ex4-s5)) que si $z=x+iy$


$$
\sinh(x+iy) = \sinh x\,\cos y + i\,\cosh x\,\sin y
$$

$$
\cosh(x+iy) = \cosh x\,\cos y + i\,\sinh x\,\sin y
$$


Las otras funciones hiperbólicas compleja se definen en la manera usual,
en términos de las funciones $\sinh$ y $\cosh$; por ejemplo
$\tanh z=\sinh z / \cosh z$, etc.

Note que 

:::{math} 
\begin{aligned}
    \sin iy =&i\sinh y,\\
    \cos iy =& \cosh y.
\end{aligned} 
:::

:::{note} Ejemplos

$$\sinh (1)=-i \sin (i)$$

 $$\cosh (1) = \cos i =1.543\ldots$$
:::


Propiedades de las funciones hiperbólicas complejas

-   Las funciones $\sinh (z)$ y $\cosh(z)$ son soluciones de la ecuación
    diferencial de segundo orden: $$\frac{d^2 w}{dz^2}=w.$$

-   Las funciones hiperbólicas complejas son analíticas y tienen
    derivadas "similares" a las de sus contrapartes reales:
    $$\frac{d}{dz} \sinh{z}=\cosh (z), \quad  \frac{d}{dz} \cosh{z}=\sinh (z)$$

-   Identidad hiperbólica $$\cosh ^2 z -\sinh ^2 z = 1$$














:::{seealso} Referencias

@boas2006mathematical [Cap. 2 "Complex Numbers", pág. 64-71]



:::