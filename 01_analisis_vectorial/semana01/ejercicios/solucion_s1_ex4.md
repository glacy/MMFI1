---
title: Solución Ejercicio 4
keywords:
  - momentum-angular
  - producto-vectorial
  - rotacion
  - velocidad-angular
tags:
  - momentum-angular
  - producto-vectorial
  - rotacion
  - velocidad-angular
  - mecanica
---

Tenemos que

- Momentum angular: $\vec{L} = m \vec{r} \times \vec{v}$
- Relación entre velocidades: $\vec{v} = \vec{\omega} \times \vec{r}$

Sustituyendo $\vec{v}$ en la expresión de $\vec{L}$:

$$\vec{L} = m \vec{r} \times (\vec{\omega} \times \vec{r})$$

a partir del producto triple vectorial 

$$\vec{A} \times (\vec{B} \times \vec{C}) = \vec{B}(\vec{A} \cdot \vec{C}) - \vec{C}(\vec{A} \cdot \vec{B})$$

con $\vec{A} = \vec{r}$, $\vec{B} = \vec{\omega}$, $\vec{C} = \vec{r}$:

$$\vec{r} \times (\vec{\omega} \times \vec{r}) = \vec{\omega}(\vec{r} \cdot \vec{r}) - \vec{r}(\vec{r} \cdot \vec{\omega})$$

Ahora, como
- $\vec{r} \cdot \vec{r} = r^2$ (donde $r = |\vec{r}|$)
- $\hat{r} = \displaystyle \frac{\vec{r}}{r}$ es el vector unitario en la dirección de $\vec{r}$

entonces

$$\vec{r} \times (\vec{\omega} \times \vec{r}) = \vec{\omega} r^2 - \vec{r}(\vec{r} \cdot \vec{\omega})$$

Factorizando $r^2$:

:::{math}
\begin{align*}
\vec{r} \times (\vec{\omega} \times \vec{r})&= r^2\left[\vec{\omega} - \frac{\vec{r}}{r}(\vec{r} \cdot \vec{\omega})\right] \\
&= r^2\left[\vec{\omega} - \hat{r}(\vec{r} \cdot \vec{\omega})\right]
\end{align*}
:::

Notamos que $\vec{r} \cdot \vec{\omega} = r(\hat{r} \cdot \vec{\omega})$, de manera que
:::{math}
\begin{align*}
&\vec{r} \times (\vec{\omega} \times \vec{r})&= r^2\left[\vec{\omega} - \hat{r} \cdot r(\hat{r} \cdot \vec{\omega})\right]\\
&= r^2\left[\vec{\omega} - r\hat{r}(\hat{r} \cdot \vec{\omega})\right]
\end{align*}
:::

Por lo tanto
:::{math}
\begin{align*}
\vec{r} \times (\vec{\omega} \times \vec{r}) =& r^2\vec{\omega} - r^2\hat{r}(\hat{r} \cdot \vec{\omega}) \\
 =& r^2[\vec{\omega} - \hat{r}(\hat{r} \cdot \vec{\omega})]
\end{align*}
:::



Multiplicando por $m$:

$$\vec{L} = m \vec{r} \times (\vec{\omega} \times \vec{r}) = mr^2[\vec{\omega} - \hat{r}(\hat{r} \cdot \vec{\omega})]$$
