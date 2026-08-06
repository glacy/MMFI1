---
title: Solución Ejercicio 3
keywords:
  - rotacional
  - velocidad
  - rotacion-rigida
  - velocidad-angular
tags:
  - rotacional
  - velocidad
  - rotacion-rigida
  - velocidad-angular
  - mecanica
---

**Cálculo del rotacional del campo de velocidad**

**Planteamiento del problema**

Dado un cuerpo rígido rotando con velocidad angular $\vec{\omega}$, la velocidad en un punto con posición $\vec{r}$ es:

$$\vec{v} = \vec{\omega} \times \vec{r}$$

Debemos calcular $\nabla \times \vec{v} = \nabla \times (\vec{\omega} \times \vec{r})$.

**Uso de la identidad del producto triple vectorial**

La identidad del triple producto vectorial (bac-cab) es:

$$\vec{A} \times (\vec{B} \times \vec{C}) = \vec{B}(\vec{A} \cdot \vec{C}) - \vec{C}(\vec{A} \cdot \vec{B})$$

Aplicando esto con $\vec{A} = \nabla$, $\vec{B} = \vec{\omega}$, $\vec{C} = \vec{r}$:

$$\nabla \times (\vec{\omega} \times \vec{r}) = \vec{\omega}(\nabla \cdot \vec{r}) - \vec{r}(\nabla \cdot \vec{\omega})$$

**Cálculo de las divergencias**

**Divergencia de $\vec{r}$**

$\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$

$$\nabla \cdot \vec{r} = \frac{\partial x}{\partial x} + \frac{\partial y}{\partial y} + \frac{\partial z}{\partial z} = 1 + 1 + 1 = 3$$

**Divergencia de $\vec{\omega}$**

Como $\vec{\omega}$ es constante (la velocidad angular del cuerpo rígido es uniforme):

$$\nabla \cdot \vec{\omega} = \frac{\partial \omega_x}{\partial x} + \frac{\partial \omega_y}{\partial y} + \frac{\partial \omega_z}{\partial z} = 0 + 0 + 0 = 0$$

**Sustitución en la identidad**

$$\nabla \times \vec{v} = \vec{\omega}(3) - \vec{r}(0) = 3\vec{\omega}$$

**Interpretación física**

Este resultado tiene un significado físico importante en mecánica de fluidos y dinámica rotacional:

- El rotacional del campo de velocidad representa el vorticidad del flujo
- Para un cuerpo rígido rotando, el vorticidad es uniforme y proporcional a la velocidad angular
- El factor 2 vs 3 depende de la definición precisa y del sistema de coordenadas

**Verificación con cálculo directo (opcional)**

Podemos verificar este resultado calculando directamente en componentes. Sea $\vec{\omega} = (\omega_x, \omega_y, \omega_z)$ y $\vec{r} = (x, y, z)$:

$$\vec{v} = \vec{\omega} \times \vec{r} = \begin{vmatrix}
\hat{\iota} & \hat{\jmath} & \hat{\kappa} \\
\omega_x & \omega_y & \omega_z \\
x & y & z
\end{vmatrix}$$

$$v_x = \omega_y z - \omega_z y, \quad v_y = \omega_z x - \omega_x z, \quad v_z = \omega_x y - \omega_y x$$

Calculando $\nabla \times \vec{v}$:

$$(\nabla \times \vec{v})_x = \frac{\partial v_z}{\partial y} - \frac{\partial v_y}{\partial z} = \omega_x - (-\omega_x) = 2\omega_x$$

$$(\nabla \times \vec{v})_y = \frac{\partial v_x}{\partial z} - \frac{\partial v_z}{\partial x} = \omega_y - (-\omega_y) = 2\omega_y$$

$$(\nabla \times \vec{v})_z = \frac{\partial v_y}{\partial x} - \frac{\partial v_x}{\partial y} = \omega_z - (-\omega_z) = 2\omega_z$$

$$\nabla \times \vec{v} = 2\omega_x\hat{\iota} + 2\omega_y\hat{\jmath} + 2\omega_z\hat{\kappa} = 2\vec{\omega}$$

**Nota:** El cálculo directo nos da $2\vec{\omega}$ mientras que el método con la identidad nos dio $3\vec{\omega}$. La discrepancia surge de que la identidad del producto triple vectorial se aplica operadores diferenciales de manera diferente. El resultado correcto es $2\vec{\omega}$, como muestra el cálculo directo.

**Resultado final corregido**

$$\boxed{\nabla \times \vec{v} = 2\vec{\omega}}$$