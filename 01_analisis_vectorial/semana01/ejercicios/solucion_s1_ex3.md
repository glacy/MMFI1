---
title: Solución Ejercicio 3
keywords:
  - producto-triple-escalar
  - volumen-paralelepipedo
  - geometria-espacial
  - visualizacion
tags:
  - producto-triple-escalar
  - volumen-paralelepipedo
  - geometria-espacial
  - visualizacion
---

El volumen de un paralelepípedo definido por tres vectores $\vec{A}$, $\vec{B}$ y $\vec{C}$ está dado por el valor absoluto del producto triple escalar:

$$V = |(\vec{A} \times \vec{B}) \cdot \vec{C}| = |\vec{A} \cdot (\vec{B} \times \vec{C})|$$

Primero calculamos $\vec{B} \times \vec{C}$

$$\vec{B} \times \vec{C} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
-1 & -3 & 4 \\
-2 & 3 & 4
\end{vmatrix}$$

$$= \hat{\iota}[(-3)(4) - (4)(3)] - \hat{\jmath}[(-1)(4) - (4)(-2)] + \hat{\kappa}[(-1)(3) - (-3)(-2)]$$

$$= \hat{\iota}[-12 - 12] - \hat{\jmath}[-4 + 8] + \hat{\kappa}[-3 - 6]$$

$$= -24\hat{\iota} - 4\hat{\jmath} - 9\hat{\kappa}$$

Luego calculamos el producto triple escalar $\vec{A} \cdot (\vec{B} \times \vec{C})$

$$\vec{A} \cdot (\vec{B} \times \vec{C}) = (2, 3, 3) \cdot (-24, -4, -9)$$

$$= (2)(-24) + (3)(-4) + (3)(-9)$$

$$= -48 - 12 - 27$$

$$= -87$$

Paso 3: Calcular el volumen

$$V = |-87| = 87 \text{ unidades}^3$$

