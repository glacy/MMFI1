---
title: Solución Ejercicio 1
---

Dados los vectores:
- $\vec{A}=2\hat{\iota}-\hat{\jmath}-2\hat{\kappa} = (2, -1, -2)$
- $\vec{B}=2\hat{\iota}-3\hat{\jmath}+3\hat{\kappa} = (2, -3, 3)$
- $\vec{C}=-2\hat{\jmath}-2\hat{\kappa} = (0, -2, -2)$

1. Producto punto $\vec{A} \cdot \vec{B}$

$$\vec{A} \cdot \vec{B} = (2)(2) + (-1)(-3) + (-2)(3) = 4 + 3 - 6 = 1$$

2. Producto punto $\vec{B} \cdot \vec{C}$

$$\vec{B} \cdot \vec{C} = (2)(0) + (-3)(-2) + (3)(-2) = 0 + 6 - 6 = 0$$

3. Producto cruz $\vec{A} \times \vec{B}$

$$\vec{A} \times \vec{B} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
2 & -1 & -2 \\
2 & -3 & 3
\end{vmatrix}$$

$$= \hat{\iota}[(-1)(3) - (-2)(-3)] - \hat{\jmath}[(2)(3) - (-2)(2)] + \hat{\kappa}[(2)(-3) - (-1)(2)]$$

$$= \hat{\iota}[-3 - 6] - \hat{\jmath}[6 + 4] + \hat{\kappa}[-6 + 2]$$

$$= -9\hat{\iota} - 10\hat{\jmath} - 4\hat{\kappa}$$

## Resultados

a) $(\vec{A} \cdot \vec{B})\vec{C}$

$$1 \cdot \vec{C} = 1 \cdot (0, -2, -2) = (0, -2, -2) = -2\hat{\jmath} - 2\hat{\kappa}$$

b) $\vec{A}(\vec{B} \cdot \vec{C})$

$$\vec{A} \cdot 0 = \vec{0}$$

c) $(\vec{A} \times \vec{B}) \cdot \vec{C}$

$$(-9\hat{\iota} - 10\hat{\jmath} - 4\hat{\kappa}) \cdot (0\hat{\iota} - 2\hat{\jmath} - 2\hat{\kappa})$$

$$= (-9)(0) + (-10)(-2) + (-4)(-2) = 0 + 20 + 8 = 28$$

d) $(\vec{A} \times \vec{B}) \times \vec{C}$

Sean $\vec{D} = \vec{A} \times \vec{B} = (-9, -10, -4)$

$$\vec{D} \times \vec{C} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
-9 & -10 & -4 \\
0 & -2 & -2
\end{vmatrix}$$

$$= \hat{\iota}[(-10)(-2) - (-4)(-2)] - \hat{\jmath}[(-9)(-2) - (-4)(0)] + \hat{\kappa}[(-9)(-2) - (-10)(0)]$$

$$= \hat{\iota}[20 - 8] - \hat{\jmath}[18 - 0] + \hat{\kappa}[18 - 0]$$

$$= 12\hat{\iota} - 18\hat{\jmath} + 18\hat{\kappa}$$