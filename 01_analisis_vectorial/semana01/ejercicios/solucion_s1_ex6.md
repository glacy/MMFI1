---
title: Solución Ejercicio 6
keywords:
  - derivacion-vectorial
  - coordenadas-polares
  - derivada-temporal
  - vectores-dependientes
tags:
  - derivacion-vectorial
  - coordenadas-polares
  - derivada-temporal
  - cinematica
---



Tanto las componentes $A_r$ y $A_\theta$ como los vectores unitarios $\hat{e}_r$ y $\hat{e}_\theta$ pueden depender del tiempo, de manera que se debe plicar la regla del producto

:::{math}
\begin{align*}
\frac{d\vec{A}}{dt} =& \frac{d}{dt}(A_r \hat{e}_r) + \frac{d}{dt}(A_\theta \hat{e}_\theta) \\
=& \frac{dA_r}{dt}\hat{e}_r + A_r\frac{d\hat{e}_r}{dt} + \frac{dA_\theta}{dt}\hat{e}_\theta + A_\theta\frac{d\hat{e}_\theta}{dt}
\end{align*}
:::

Del ejercicio anterior, sabemos que:
- $\displaystyle \frac{d\hat{e}_r}{dt} = \hat{e}_\theta \frac{d\theta}{dt} = \hat{e}_\theta \dot{\theta}$
- $\displaystyle  \frac{d\hat{e}_\theta}{dt} = -\hat{e}_r \frac{d\theta}{dt} = -\hat{e}_r \dot{\theta}$

Sustituyendo

$$\frac{d\vec{A}}{dt} = \frac{dA_r}{dt}\hat{e}_r + A_r(\hat{e}_\theta \dot{\theta}) + \frac{dA_\theta}{dt}\hat{e}_\theta + A_\theta(-\hat{e}_r \dot{\theta})$$

Agrupando términos por vectores unitarios

$$\frac{d\vec{A}}{dt}= \left(\frac{dA_r}{dt} - A_\theta \dot{\theta}\right)\hat{e}_r + \left(\frac{dA_\theta}{dt} + A_r \dot{\theta}\right)\hat{e}_\theta$$

de manera que

$$\frac{d\vec{A}}{dt} = \left(\dot{A}_r - A_\theta \dot{\theta}\right)\hat{e}_r + \left(\dot{A}_\theta + A_r \dot{\theta}\right)\hat{e}_\theta$$

donde usamos la notación de punto para denotar derivadas con respecto al tiempo $\displaystyle \dot{A}_r = \frac{dA_r}{dt}$.
