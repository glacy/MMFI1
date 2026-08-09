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

Dado un cuerpo rígido rotando con velocidad angular $\vec{\omega}$, la velocidad en un punto con posición $\vec{r}$ es:

$$\vec{v} = \vec{\omega} \times \vec{r}$$

Debemos calcular $\nabla \times \vec{v} = \nabla \times (\vec{\omega} \times \vec{r})$.

No se puede aplicar la identidad del producto triple (bac-cab) como si $\nabla$ fuera un vector ordinario, pues $\nabla$ es un operador diferencial que también actúa sobre $\vec{\omega}$ y $\vec{r}$. La identidad correcta para el rotacional de un producto cruz es

$$\nabla \times (\vec{A}\times\vec{B}) = \vec{A}(\nabla\cdot\vec{B}) - \vec{B}(\nabla\cdot\vec{A}) + (\vec{B}\cdot\nabla)\vec{A} - (\vec{A}\cdot\nabla)\vec{B}.$$

Aplicando esto con $\vec{A} = \vec{\omega}$ y $\vec{B} = \vec{r}$:

$$\nabla \times (\vec{\omega} \times \vec{r}) = \vec{\omega}(\nabla \cdot \vec{r}) - \vec{r}(\nabla \cdot \vec{\omega}) + (\vec{r}\cdot\nabla)\vec{\omega} - (\vec{\omega}\cdot\nabla)\vec{r}.$$

---

Divergencia de $\vec{r}$:

$\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$

$$\nabla \cdot \vec{r} = \frac{\partial x}{\partial x} + \frac{\partial y}{\partial y} + \frac{\partial z}{\partial z} = 1 + 1 + 1 = 3$$

---

Divergencia de $\vec{\omega}$:

Como $\vec{\omega}$ es constante (la velocidad angular del cuerpo rígido es uniforme, es decir, no depende de la posición):

$$\nabla \cdot \vec{\omega} = \frac{\partial \omega_x}{\partial x} + \frac{\partial \omega_y}{\partial y} + \frac{\partial \omega_z}{\partial z} = 0$$

---

Por la misma razón, el término convectivo con $\vec{\omega}$ constante se anula:

$$(\vec{r}\cdot\nabla)\vec{\omega} = \left(r_x\frac{\partial}{\partial x}+r_y\frac{\partial}{\partial y}+r_z\frac{\partial}{\partial z}\right)\vec{\omega} = \vec{0}$$

---

El término restante, con $\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$, da

$$(\vec{\omega}\cdot\nabla)\vec{r} = \left(\omega_x\frac{\partial}{\partial x}+\omega_y\frac{\partial}{\partial y}+\omega_z\frac{\partial}{\partial z}\right)(x\hat{\iota}+y\hat{\jmath}+z\hat{\kappa}) = \omega_x\hat{\iota}+\omega_y\hat{\jmath}+\omega_z\hat{\kappa} = \vec{\omega}$$

---

Por lo tanto

$$\nabla \times \vec{v} = \vec{\omega}(3) - \vec{r}(0) + \vec{0} - \vec{\omega} = 2\vec{\omega}$$

$$\boxed{\nabla \times \vec{v} = 2\vec{\omega}}$$