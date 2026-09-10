---
title: Solución Ejercicio 1
keywords:
  - integral-de-contorno
  - no-analiticidad
tags:
  - integral-de-contorno
  - camino
  - cauchy-riemann
objetivos: []
---

**Camino (a): segmento recto**

Con $z(t) = (1+i)t$ tenemos $\bar z = (1-i)t$ y $dz = (1+i)\,dt$. Entonces

$$
\int_{C_1} \bar z\,dz = \int_0^1 (1-i)t\,(1+i)\,dt = (1-i)(1+i)\int_0^1 t\,dt = 2\cdot\frac{1}{2} = 1.
$$

---

**Camino (b): camino en L**

*Tramo 1*, de $0$ a $1$: $z = t$, $\bar z = t$, $dz = dt$:

$$
\int_0^1 t\,dt = \frac{1}{2}.
$$

*Tramo 2*, de $1$ a $1+i$: $z(t) = 1+it$, $\bar z = 1-it$, $dz = i\,dt$:

$$
\int_0^1 (1-it)\,i\,dt = i\int_0^1 dt + \int_0^1 t\,dt = i + \frac{1}{2}.
$$

Total:

$$
\int_{C_2} \bar z\,dz = \frac{1}{2} + \left(\frac{1}{2} + i\right) = 1 + i.
$$

---

**Conclusión**

$$
\int_{C_1} \bar z\,dz = 1 \;\neq\; 1+i = \int_{C_2} \bar z\,dz.
$$

La integral depende del camino. La razón: $\bar z = x - iy$ **no es analítica**. Con $u = x$, $v = -y$:

$$
\frac{\partial u}{\partial x} = 1 \;\neq\; -1 = \frac{\partial v}{\partial y},
$$

lo que viola las ecuaciones de Cauchy-Riemann en todo el plano. Sin analiticidad no hay teorema fundamental ni independencia del camino: los dos valores son legítimos, corresponden a caminos distintos.
