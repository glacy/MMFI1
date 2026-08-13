---
title: Solución Ejercicio 4
keywords:
  - teorema-stokes
  - circulacion
  - integral-linea
  - rotacional
tags:
  - teorema-stokes
  - circulacion
  - integrales-linea
  - integrales-superficie
  - calculo
---

**Circulación directa**

El borde de $D$ es la circunferencia $x^2+y^2=4$ en el plano $z=3$, parametrizada por

$$\vec{r}(t) = 2\cos t\,\hat{\iota} + 2\sin t\,\hat{\jmath} + 3\hat{\kappa}, \qquad t\in[0,2\pi].$$

Entonces

$$d\vec{r} = (-2\sin t\,dt)\hat{\iota} + (2\cos t\,dt)\hat{\jmath}.$$

Sobre la curva, $\vec{F} = -2\sin t\,\hat{\iota} + 2\cos t\,\hat{\jmath} + 3\hat{\kappa}$, por lo que

$$\vec{F}\cdot d\vec{r} = (-2\sin t)(-2\sin t\,dt) + (2\cos t)(2\cos t\,dt) = 4(\sin^2 t + \cos^2 t)dt = 4\,dt.$$

$$\oint_C \vec{F}\cdot d\vec{r} = \int_0^{2\pi}4\,dt = 8\pi.$$

---

**Flujo del rotacional**

El rotacional de $\vec{F} = -y\hat{\iota} + x\hat{\jmath} + z\hat{\kappa}$ es

$$\nabla\times\vec{F} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa}\\
\partial_x & \partial_y & \partial_z\\
-y & x & z
\end{vmatrix}
= \left(\frac{\partial z}{\partial y}-\frac{\partial x}{\partial z}\right)\hat{\iota}
- \left(\frac{\partial z}{\partial x}-\frac{\partial(-y)}{\partial z}\right)\hat{\jmath}
+ \left(\frac{\partial x}{\partial x}-\frac{\partial(-y)}{\partial y}\right)\hat{\kappa}
= 2\hat{\kappa}.$$

El disco está en el plano $z=3$ con normal $\hat{n}=\hat{\kappa}$, luego $(\nabla\times\vec{F})\cdot\hat{n}=2$ y

$$\iint_D (\nabla\times\vec{F})\cdot\hat{n}\,dS = 2\iint_D dS = 2\cdot \pi(2)^2 = 8\pi.$$

---

** Comparación e interpretación**

$$\oint_C \vec{F}\cdot d\vec{r} = 8\pi = \iint_D (\nabla\times\vec{F})\cdot\hat{n}\,dS,$$

lo que verifica el teorema de Stokes. Físicamente, en mecánica de fluidos la circulación $\Gamma=\oint_C\vec{v}\cdot d\vec{r}$ mide la tendencia del flujo a rotar alrededor de $C$; el teorema la relaciona con el flujo de vorticidad $\vec{\omega}=\nabla\times\vec{v}$ a través de la superficie que encierra la curva. En este caso el rotacional es uniforme ($2\hat{\kappa}$), de modo que la circulación es simplemente la vorticidad por el área del disco.

$$\boxed{\oint_C \vec{F}\cdot d\vec{r} = \iint_D (\nabla\times\vec{F})\cdot\hat{n}\,dS = 8\pi}$$
