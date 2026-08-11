---
title: Ejercicio 7
keywords:
  - conduccion-calor
  - ecuacion-calor
  - fourier
  - teorema-divergencia
tags:
  - conduccion-calor
  - ecuacion-calor
  - fourier
  - teorema-divergencia
---

**Balance de energía en conducción de calor (ley de Fourier)**

En un sólido con densidad $\rho$, calor específico $c_p$ y conductividad térmica $k$, la densidad de flujo de calor está dada por la ley de Fourier $\vec{q} = -k\nabla T$. Para un volumen fijo $V$ encerrado por una superficie $S$, el balance de energía establece que

$$\frac{d}{dt}\int_V \rho c_p T\,dV = -\oint_S \vec{q}\cdot \hat{n}\,dS,$$

es decir, la tasa de variación de la energía térmica almacenada en $V$ es igual al calor neto que entra a través de $S$ (sin fuentes internas).

1. Use el teorema de la divergencia y deduzca la **ecuación de difusión del calor**

$$\rho c_p\frac{\partial T}{\partial t} = k\nabla^2 T.$$


