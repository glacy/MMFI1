---
title: Solución Ejercicio 4
keywords:
  - divergencia
  - campo-electrico
  - electrostatica
  - ley-gauss
tags:
  - divergencia
  - campo-electrico
  - electrostatica
  - ley-gauss
---

**Cálculo de la divergencia del campo electrostático**

**Definición del problema**

El campo electrostático de una carga puntual $q$ está dado por:

$$\vec{E} = \frac{q}{4\pi \epsilon_0} \cdot \frac{\hat{r}}{r^2}$$

Donde:
- $\hat{r} = \frac{\vec{r}}{r}$ es el vector unitario radial
- $\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$ es el vector de posición
- $r = \sqrt{x^2 + y^2 + z^2}$ es la distancia desde el origen

**Expresión del campo en coordenadas cartesianas**

Podemos expresar el campo como:

$$\vec{E} = \frac{q}{4\pi \epsilon_0} \cdot \frac{\vec{r}}{r^3} = \frac{q}{4\pi \epsilon_0} \cdot \frac{x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}}{(x^2 + y^2 + z^2)^{3/2}}$$

Las componentes del campo son:
- $E_x = \frac{q}{4\pi \epsilon_0} \cdot \frac{x}{(x^2 + y^2 + z^2)^{3/2}}$
- $E_y = \frac{q}{4\pi \epsilon_0} \cdot \frac{y}{(x^2 + y^2 + z^2)^{3/2}}$
- $E_z = \frac{q}{4\pi \epsilon_0} \cdot \frac{z}{(x^2 + y^2 + z^2)^{3/2}}$

**Cálculo de la divergencia en coordenadas cartesianas**

$$\nabla \cdot \vec{E} = \frac{\partial E_x}{\partial x} + \frac{\partial E_y}{\partial y} + \frac{\partial E_z}{\partial z}$$

#### Cálculo de $\frac{\partial E_x}{\partial x}$

Sea $r = (x^2 + y^2 + z^2)^{1/2}$, entonces $r^3 = (x^2 + y^2 + z^2)^{3/2}$.

$$\frac{\partial}{\partial x}\left[\frac{x}{r^3}\right] = \frac{\partial}{\partial x}\left[x(x^2 + y^2 + z^2)^{-3/2}\right]$$

Usando la regla del producto:

$$= (x^2 + y^2 + z^2)^{-3/2} \cdot \frac{\partial}{\partial x}[x] + x \cdot \frac{\partial}{\partial x}[(x^2 + y^2 + z^2)^{-3/2}]$$

$$= (x^2 + y^2 + z^2)^{-3/2} \cdot 1 + x \cdot (-3/2)(x^2 + y^2 + z^2)^{-5/2} \cdot 2x$$

$$= \frac{1}{r^3} - \frac{3x^2}{r^5} = \frac{r^2 - 3x^2}{r^5}$$

De manera similar:

$$\frac{\partial E_y}{\partial y} = \frac{q}{4\pi \epsilon_0} \cdot \frac{r^2 - 3y^2}{r^5}$$

$$\frac{\partial E_z}{\partial z} = \frac{q}{4\pi \epsilon_0} \cdot \frac{r^2 - 3z^2}{r^5}$$

**Suma de las derivadas parciales**

$$\nabla \cdot \vec{E} = \frac{q}{4\pi \epsilon_0 r^5}\left[(r^2 - 3x^2) + (r^2 - 3y^2) + (r^2 - 3z^2)\right]$$

$$= \frac{q}{4\pi \epsilon_0 r^5}\left[3r^2 - 3(x^2 + y^2 + z^2)\right]$$

$$= \frac{q}{4\pi \epsilon_0 r^5}\left[3r^2 - 3r^2\right] = 0$$

**Resultado en el espacio libre**

$$\boxed{\nabla \cdot \vec{E} = 0 \quad \text{para } r \neq 0}$$

**Interpretación física**

Este resultado es consistente con la **Ley de Gauss** para el campo eléctrico:

- En el espacio libre (donde no hay carga eléctrica), la divergencia del campo eléctrico es cero.
- Esto indica que no hay "fuentes" o "sumideros" del campo eléctrico en el espacio libre.
- Las líneas del campo eléctrico no comienzan ni terminan en el espacio libre; se pueden considerar como líneas continuas.

**Nota importante sobre el origen ($r = 0$)**

El cálculo anterior es válido para $r \neq 0$ (puntos distintos del origen donde está la carga). En el origen ($r = 0$), la divergencia es:

$$\nabla \cdot \vec{E} = \frac{q}{\epsilon_0}\delta^3(\vec{r})$$

Donde $\delta^3(\vec{r})$ es la **función delta de Dirac tridimensional**. Esto refleja que toda la carga $q$ está concentrada en el origen.

**Aplicación de la Ley de Gauss**

La forma general de la Ley de Gauss en forma diferencial es:

$$\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_0}$$

Para una carga puntual, la densidad de carga es $\rho = q\delta^3(\vec{r})$, lo que es consistente con nuestro resultado.

**Resumen del resultado**

$$\boxed{\nabla \cdot \vec{E} = \begin{cases}
0 & \text{para } r \neq 0 \\
\frac{q}{\epsilon_0}\delta^3(\vec{r}) & \text{para } r = 0
\end{cases}}$$