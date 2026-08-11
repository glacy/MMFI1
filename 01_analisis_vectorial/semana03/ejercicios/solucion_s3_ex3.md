---
title: Solución Ejercicio 3
keywords:
  - area
  - curva-cerrada
  - teorema-stokes
  - green
tags:
  - teorema-stokes
  - area
  - integrales-linea
  - calculo
  - demostracion
---

Por el teorema de Green (caso especial en $\mathbb{R}^2$ del teorema de Stokes), para funciones $P(x,y)$ y $Q(x,y)$ con derivadas continuas,

$$\oint_C (P\,dx + Q\,dy) = \iint_A\left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right)dx\,dy,$$

donde $C$ es la curva cerrada simple que encierra la región $A$.

Tomamos

$$P = -\frac{y}{2}, \qquad Q = \frac{x}{2},$$

de modo que

$$\frac{\partial Q}{\partial x} = \frac{1}{2}, \qquad \frac{\partial P}{\partial y} = -\frac{1}{2}.$$

Sustituyendo en el teorema de Green:

$$\oint_C \left(-\frac{y}{2}dx + \frac{x}{2}dy\right)
= \iint_A\left(\frac{1}{2} + \frac{1}{2}\right)dx\,dy
= \iint_A dx\,dy = A.$$

Por lo tanto

$$\boxed{A = \frac{1}{2}\oint_C (x\,dy - y\,dx)}$$

---

**Verificación con un círculo.** Para una circunferencia de radio $R$ parametrizada por $x = R\cos\theta$, $y = R\sin\theta$, con $dx = -R\sin\theta\,d\theta$ y $dy = R\cos\theta\,d\theta$:

$$x\,dy - y\,dx = R\cos\theta\,(R\cos\theta\,d\theta) - R\sin\theta\,(-R\sin\theta\,d\theta)
= R^2(\cos^2\theta + \sin^2\theta)\,d\theta = R^2\,d\theta,$$

$$\frac{1}{2}\oint_C (x\,dy - y\,dx) = \frac{1}{2}\int_0^{2\pi} R^2\,d\theta = \pi R^2,$$

que es el área conocida del círculo, confirmando el resultado.
