---
title: Solución Ejercicio 1
keywords:
  - gradiente
  - vector-unitario
  - superficie
  - geometria-diferencial
tags:
  - gradiente
  - vector-unitario
  - superficie
  - geometria-diferencial
---

La ecuación de la superficie es:

$$f(x,y,z) = x^2 + y^2 + z^2 - 3 = 0$$

El gradiente de una función escalar $f$ es perpendicular a las superficies de nivel de esa función. Por lo tanto, el vector perpendicular a la superficie está dado por:

$$\vec{n} = \nabla f$$

**Cálculo del gradiente**

$$\nabla f = \frac{\partial f}{\partial x}\hat{\iota} + \frac{\partial f}{\partial y}\hat{\jmath} + \frac{\partial f}{\partial z}\hat{\kappa}$$

Calculando cada derivada parcial:

$$\frac{\partial f}{\partial x} = 2x, \quad \frac{\partial f}{\partial y} = 2y, \quad \frac{\partial f}{\partial z} = 2z$$

Por lo tanto:

$$\vec{n} = 2x\hat{\iota} + 2y\hat{\jmath} + 2z\hat{\kappa} = 2(x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}) = 2\vec{r}$$

**Vector unitario**

Para obtener el vector unitario, normalizamos $\vec{n}$:

$$\hat{n} = \frac{\vec{n}}{|\vec{n}|} = \frac{2\vec{r}}{|2\vec{r}|} = \frac{\vec{r}}{|\vec{r}|} = \hat{r}$$

Donde $\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$ es el vector de posición y $\hat{r}$ es el vector unitario radial.

**Interpretación**

La superficie $x^2 + y^2 + z^2 = 3$ es una esfera de radio $\sqrt{3}$ centrada en el origen. El vector unitario perpendicular a esta superficie en cualquier punto es simplemente el vector unitario radial $\hat{r}$ que apunta desde el origen hacia ese punto.

**Resultado final**

$$\boxed{\hat{n} = \frac{x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}}{\sqrt{x^2 + y^2 + z^2}}}$$

En un punto específico $(x_0, y_0, z_0)$ de la superficie, el vector unitario perpendicular es:

$$\boxed{\hat{n} = \frac{x_0\hat{\iota} + y_0\hat{\jmath} + z_0\hat{\kappa}}{\sqrt{3}}}$$