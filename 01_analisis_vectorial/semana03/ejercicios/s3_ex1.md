---
title: Ejercicio 1
keywords:
  - maxwell
  - energia
  - flujo
  - divergencia
  - poynting
tags:
  - maxwell
  - flujo
  - divergencia
  - electromagnetismo
  - teorema-divergencia
---

**Riley Ejercicio 11.25**

En un medio uniforme conductor con permitividad relativa unitaria, densidad de carga $\rho$, densidad de corriente $\vec{J}$, campo eléctrico $\vec{E}$ y campo magnetico $\vec{B}$, las ecuaciones del electromagnetismo de Maxwell toma la forma 

```{math}
\begin{align}
\nabla \cdot \vec{B}=&0, \\
\nabla \cdot \vec{E}=&\rho/\epsilon_0,\\
\nabla \times \vec{E}=&-\frac{\partial \vec{B}}{\partial t}, \\
\nabla \times \vec{B}-\frac{1}{c^2}\left(\frac{\partial \vec{E}}{\partial t}\right)=&\mu_0\vec{J}.
\end{align}
```

La densidad de energía almacenada en el medio está dada por
$$\frac{1}{2}(\epsilon_0 E^2+\mu^{-1}_0B^2) $$
Demuestre que la tasa de cambio de la energía total almacenada en el volumen $V$ es igual a
$$-\int_V (\vec{J}\cdot \vec{E})dV-\frac{1}{\mu_0}\oint_S (\vec{E}\times \vec{B})\cdot d\vec{S}, $$
donde $S$ es la superficie que encierra $V$.
