---
title: Solución Ejercicio 7
keywords:
  - identidades-vectoriales
  - divergencia
  - rotacional
  - gradiente
  - demostracion
tags:
  - demostracion
  - identidades-vectoriales
  - divergencia
  - rotacional
  - gradiente
---


**$\nabla \cdot (\nabla \times \vec{u}) = 0$**

Sea $\vec{u} = u_x\hat{\iota} + u_y\hat{\jmath} + u_z\hat{\kappa}$.

El rotacional de $\vec{u}$ es:

$$\nabla \times \vec{u} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
\partial_x & \partial_y & \partial_z \\
u_x & u_y & u_z
\end{vmatrix}$$

$$= \left(\frac{\partial u_z}{\partial y} - \frac{\partial u_y}{\partial z}\right)\hat{\iota} - \left(\frac{\partial u_z}{\partial x} - \frac{\partial u_x}{\partial z}\right)\hat{\jmath} + \left(\frac{\partial u_y}{\partial x} - \frac{\partial u_x}{\partial y}\right)\hat{\kappa}$$

Calculamos la divergencia de este resultado:

$$\nabla \cdot (\nabla \times \vec{u}) = \partial_x\left(\frac{\partial u_z}{\partial y} - \frac{\partial u_y}{\partial z}\right) + \partial_y\left(-\frac{\partial u_z}{\partial x} + \frac{\partial u_x}{\partial z}\right) + \partial_z\left(\frac{\partial u_y}{\partial x} - \frac{\partial u_x}{\partial y}\right)$$

$$= \frac{\partial^2 u_z}{\partial x \partial y} - \frac{\partial^2 u_y}{\partial x \partial z} - \frac{\partial^2 u_z}{\partial y \partial x} + \frac{\partial^2 u_x}{\partial y \partial z} + \frac{\partial^2 u_y}{\partial z \partial x} - \frac{\partial^2 u_x}{\partial z \partial y}$$

Asumiendo que las funciones son suficientemente suaves para que las derivadas parciales mixtas sean iguales $\displaystyle \left(\frac{\partial^2}{\partial x \partial y} = \frac{\partial^2}{\partial y \partial x},\ldots\right)$:

$$= \frac{\partial^2 u_z}{\partial y \partial x} - \frac{\partial^2 u_y}{\partial z \partial x} - \frac{\partial^2 u_z}{\partial x \partial y} + \frac{\partial^2 u_x}{\partial z \partial y} + \frac{\partial^2 u_y}{\partial x \partial z} - \frac{\partial^2 u_x}{\partial y \partial z}$$

$$= \cancel{\frac{\partial^2 u_z}{\partial y \partial x}} - \cancel{\frac{\partial^2 u_y}{\partial z \partial x}} - \cancel{\frac{\partial^2 u_z}{\partial x \partial y}} + \cancel{\frac{\partial^2 u_x}{\partial z \partial y}} + \cancel{\frac{\partial^2 u_y}{\partial x \partial z}} - \cancel{\frac{\partial^2 u_x}{\partial y \partial z}} = 0$$


Esta identidad expresa que el rotacional de un campo vectorial no tiene fuentes ni sumideros. Si imaginamos las líneas del campo $\nabla \times \vec{u}$ como tubos de flujo, estas tuberías no tienen "fugas" ni "entradas" en ningún punto del espacio.

$$\boxed{\nabla \cdot (\nabla \times \vec{u}) = 0}$$

---

$\nabla \times (\nabla f) = 0$


El gradiente de una función escalar $f$ es:

$$\nabla f = \frac{\partial f}{\partial x}\hat{\iota} + \frac{\partial f}{\partial y}\hat{\jmath} + \frac{\partial f}{\partial z}\hat{\kappa}$$

Calculamos el rotacional:

$$\nabla \times (\nabla f) = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
\partial_x & \partial_y & \partial_z \\
\displaystyle \frac{\partial f}{\partial x} & \displaystyle  \frac{\partial f}{\partial y} &\displaystyle  \frac{\partial f}{\partial z}
\end{vmatrix}$$

$$= \left(\frac{\partial^2 f}{\partial y \partial z} - \frac{\partial^2 f}{\partial z \partial y}\right)\hat{\iota} - \left(\frac{\partial^2 f}{\partial x \partial z} - \frac{\partial^2 f}{\partial z \partial x}\right)\hat{\jmath} + \left(\frac{\partial^2 f}{\partial x \partial y} - \frac{\partial^2 f}{\partial y \partial x}\right)\hat{\kappa}$$

De nuevo, asumiendo que las derivadas parciales mixtas son iguales:

$$= \cancel{\frac{\partial^2 f}{\partial y \partial z}} - \cancel{\frac{\partial^2 f}{\partial z \partial y}}\hat{\iota} - \left(\cancel{\frac{\partial^2 f}{\partial x \partial z}} - \cancel{\frac{\partial^2 f}{\partial z \partial x}}\right)\hat{\jmath} + \left(\cancel{\frac{\partial^2 f}{\partial x \partial y}} - \cancel{\frac{\partial^2 f}{\partial y \partial x}}\right)\hat{\kappa}$$

$$= 0\hat{\iota} - 0\hat{\jmath} + 0\hat{\kappa} = \vec{0}$$



Esta identidad significa que un campo vectorial derivado de un potencial escalar es irrotacional. Los campos conservativos (como el campo eléctrico electrostático) tienen esta propiedad.

$$\boxed{\nabla \times (\nabla f) = \vec{0}}$$

---

$\nabla \times (\nabla \times \vec{u}) = \nabla (\nabla \cdot \vec{u}) - \nabla \cdot \nabla \vec{u}$

<!-- **Demostración usando notación de índices**

Usando la notación de Einstein y el símbolo de Levi-Civita $\varepsilon_{ijk}$:

$$(\nabla \times (\nabla \times \vec{u}))_i = \varepsilon_{ijk} \partial_j (\varepsilon_{klm} \partial_l u_m)$$

$$= \varepsilon_{ijk} \varepsilon_{klm} \partial_j \partial_l u_m$$

Usando la identidad $\varepsilon_{ijk} \varepsilon_{klm} = \varepsilon_{ijk} \varepsilon_{lmk} = \delta_{il}\delta_{jm} - \delta_{im}\delta_{jl}$:

$$= (\delta_{il}\delta_{jm} - \delta_{im}\delta_{jl}) \partial_j \partial_l u_m$$

$$= \delta_{il}\delta_{jm} \partial_j \partial_l u_m - \delta_{im}\delta_{jl} \partial_j \partial_l u_m$$

$$= \partial_j \partial_i u_j - \partial_j \partial_j u_i$$

$$= \partial_i (\partial_j u_j) - \partial_j \partial_j u_i$$

$$= \partial_i (\nabla \cdot \vec{u}) - \nabla^2 u_i$$

En notación vectorial:

$$\nabla \times (\nabla \times \vec{u}) = \nabla (\nabla \cdot \vec{u}) - \nabla^2 \vec{u}$$

**Nota sobre la notación**

En la identidad original se usa $\nabla \cdot \nabla \vec{u}$, pero en notación moderna esto se escribe como $\nabla^2 \vec{u}$. Ambos son equivalentes:

$$\nabla \cdot \nabla \vec{u} = \nabla^2 \vec{u}$$ -->

Sean $u = (u_1, u_2, u_3)$. Calculamos el rotacional doble:

Primero, $\nabla \times \vec{u}$:

$$(\nabla \times \vec{u})_1 = \frac{\partial u_3}{\partial x_2} - \frac{\partial u_2}{\partial x_3}$$
$$(\nabla \times \vec{u})_2 = \frac{\partial u_1}{\partial x_3} - \frac{\partial u_3}{\partial x_1}$$
$$(\nabla \times \vec{u})_3 = \frac{\partial u_2}{\partial x_1} - \frac{\partial u_1}{\partial x_2}$$

Ahora, $\nabla \times (\nabla \times \vec{u})$, componente 1:

$$(\nabla \times (\nabla \times \vec{u}))_1 = \frac{\partial (\nabla \times \vec{u})_3}{\partial x_2} - \frac{\partial (\nabla \times \vec{u})_2}{\partial x_3}$$

$$= \frac{\partial}{\partial x_2}\left(\frac{\partial u_2}{\partial x_1} - \frac{\partial u_1}{\partial x_2}\right) - \frac{\partial}{\partial x_3}\left(\frac{\partial u_1}{\partial x_3} - \frac{\partial u_3}{\partial x_1}\right)$$

$$= \frac{\partial^2 u_2}{\partial x_1 \partial x_2} - \frac{\partial^2 u_1}{\partial x_2^2} - \frac{\partial^2 u_1}{\partial x_3^2} + \frac{\partial^2 u_3}{\partial x_1 \partial x_3}$$

$$= \frac{\partial}{\partial x_1}\left(\frac{\partial u_2}{\partial x_2} + \frac{\partial u_3}{\partial x_3}\right) - \left(\frac{\partial^2 u_1}{\partial x_2^2} + \frac{\partial^2 u_1}{\partial x_3^2}\right)$$

$$= \frac{\partial}{\partial x_1}\left(\frac{\partial u_1}{\partial x_1} + \frac{\partial u_2}{\partial x_2} + \frac{\partial u_3}{\partial x_3}\right) - \frac{\partial^2 u_1}{\partial x_1^2} - \left(\frac{\partial^2 u_1}{\partial x_2^2} + \frac{\partial^2 u_1}{\partial x_3^2}\right)$$

$$= \frac{\partial}{\partial x_1}(\nabla \cdot \vec{u}) - \left(\frac{\partial^2 u_1}{\partial x_1^2} + \frac{\partial^2 u_1}{\partial x_2^2} + \frac{\partial^2 u_1}{\partial x_3^2}\right)$$

$$= \frac{\partial}{\partial x_1}(\nabla \cdot \vec{u}) - \nabla^2 u_1$$

Lo mismo se aplica para las componentes 2 y 3, dando:

$$\boxed{\nabla \times (\nabla \times \vec{u}) = \nabla (\nabla \cdot \vec{u}) - \nabla^2 \vec{u}}$$
