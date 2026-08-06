---
title: Solución Ejercicio 2
keywords:
  - rotacional
  - campo-vectorial
  - derivadas-parciales
  - curl
tags:
  - rotacional
  - campo-vectorial
  - derivadas-parciales
  - curl
---

**Cálculo del rotacional del campo vectorial**

**Definición del rotacional**

El rotacional de un campo vectorial $\vec{A} = A_x\hat{\iota} + A_y\hat{\jmath} + A_z\hat{\kappa}$ está definido como:

$$\nabla \times \vec{A} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
\frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
A_x & A_y & A_z
\end{vmatrix}$$

**Componentes del campo vectorial**

Para $\vec{A} = x\sin y\hat{\iota} + \cos y\hat{\jmath} + 3xy\hat{\kappa}$:

- $A_x = x\sin y$
- $A_y = \cos y$
- $A_z = 3xy$

**Cálculo de las derivadas parciales**

$$\frac{\partial A_z}{\partial y} = \frac{\partial}{\partial y}(3xy) = 3x$$

$$\frac{\partial A_y}{\partial z} = \frac{\partial}{\partial z}(\cos y) = 0$$

$$\frac{\partial A_x}{\partial z} = \frac{\partial}{\partial z}(x\sin y) = 0$$

$$\frac{\partial A_z}{\partial x} = \frac{\partial}{\partial x}(3xy) = 3y$$

$$\frac{\partial A_y}{\partial x} = \frac{\partial}{\partial x}(\cos y) = 0$$

$$\frac{\partial A_x}{\partial y} = \frac{\partial}{\partial y}(x\sin y) = x\cos y$$

**Construcción del determinante**

$$\nabla \times \vec{A} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
\frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
x\sin y & \cos y & 3xy
\end{vmatrix}$$

$$= \hat{\iota}\left(\frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}\right) - \hat{\jmath}\left(\frac{\partial A_z}{\partial x} - \frac{\partial A_x}{\partial z}\right) + \hat{\kappa}\left(\frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right)$$

**Sustitución de las derivadas parciales**

$$= \hat{\iota}(3x - 0) - \hat{\jmath}(3y - 0) + \hat{\kappa}(0 - x\cos y)$$

$$= 3x\hat{\iota} - 3y\hat{\jmath} - x\cos y\hat{\kappa}$$

**Resultado final**

$$\boxed{\nabla \times \vec{A} = 3x\hat{\iota} - 3y\hat{\jmath} - x\cos y\hat{\kappa}}$$

**Verificación (opcional)**

Podemos verificar que $\nabla \cdot (\nabla \times \vec{A}) = 0$:

$$\nabla \cdot (\nabla \times \vec{A}) = \frac{\partial}{\partial x}(3x) + \frac{\partial}{\partial y}(-3y) + \frac{\partial}{\partial z}(-x\cos y) = 3 - 3 + 0 = 0$$

Esto confirma que nuestro resultado es consistente con la identidad vectorial fundamental.