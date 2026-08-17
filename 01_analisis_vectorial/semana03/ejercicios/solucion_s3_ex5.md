---
title: Solución Ejercicio 5
keywords:
  - continuidad
  - conservacion-masa
  - mecanica-fluidos
  - teorema-divergencia
tags:
  - continuidad
  - conservacion-masa
  - mecanica-fluidos
  - teorema-divergencia
---

**Derivación de la ecuación de continuidad**

Como $V$ es un volumen fijo, la derivada temporal pasa dentro de la integral:

$$\frac{d}{dt}\int_V \rho\,dV = \int_V \frac{\partial\rho}{\partial t}\,dV.$$

Aplicando el teorema de la divergencia al flujo de masa a través de la frontera:

$$\oint_S \rho\,\vec{v}\cdot\hat{n}\,dS = \int_V \nabla\cdot(\rho\vec{v})\,dV.$$

La ecuación de conservación de masa queda

$$\int_V \frac{\partial\rho}{\partial t}\,dV = -\int_V \nabla\cdot(\rho\vec{v})\,dV
\;\Longrightarrow\;
\int_V \left[\frac{\partial\rho}{\partial t} + \nabla\cdot(\rho\vec{v})\right]dV = 0.$$

Como el volumen $V$ es arbitrario, el integrando debe anularse en todo punto:

$$\boxed{\frac{\partial\rho}{\partial t} + \nabla\cdot(\rho\vec{v}) = 0}$$

---

**Fluido incompresible**

Si $\rho$ es constante, $\partial\rho/\partial t = 0$ y $\nabla\cdot(\rho\vec{v}) = \rho\nabla\cdot\vec{v}$, de modo que la ecuación de continuidad se reduce a

$$\nabla\cdot\vec{v} = 0.$$

Integrando sobre cualquier volumen $V$ y aplicando nuevamente el teorema de la divergencia:

$$\oint_S \vec{v}\cdot\hat{n}\,dS = \int_V \nabla\cdot\vec{v}\,dV = 0.$$

Es decir, el flujo volumétrico neto a través de cualquier superficie cerrada es nulo: lo que entra al volumen es exactamente lo que sale.

---

**Interpretación física**

- $\displaystyle \frac{\partial\rho}{\partial t}$: tasa de cambio local de la densidad en un punto fijo del espacio (término de acumulación).
- $\nabla\cdot(\rho\vec{v})$: flujo neto de masa por unidad de volumen que sale del punto (término convectivo). Si es positivo, la masa se aleja del punto; si es negativo, la masa converge hacia él.
- La ecuación expresa el principio de **conservación de la masa**: la masa que se acumula en un punto es la diferencia entre la que entra y la que sale. El teorema de la divergencia es el puente entre la formulación integral (balance global en $V$) y la formulación diferencial (balance local en cada punto).
