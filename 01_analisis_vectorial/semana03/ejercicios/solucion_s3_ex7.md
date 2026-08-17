---
title: Solución Ejercicio 7
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

**Derivación de la ecuación de difusión del calor**

Como $V$ es fijo, $\rho$ y $c_p$ son constantes y $T$ es el único campo que depende del tiempo:

$$\frac{d}{dt}\int_V \rho c_p T\,dV = \int_V \rho c_p\frac{\partial T}{\partial t}\,dV.$$

Aplicando el teorema de la divergencia al calor neto que atraviesa la frontera:

$$\oint_S \vec{q}\cdot\hat{n}\,dS = \int_V \nabla\cdot\vec{q}\,dV.$$

El balance de energía queda

$$\int_V \rho c_p\frac{\partial T}{\partial t}\,dV = -\int_V \nabla\cdot\vec{q}\,dV
\;\Longrightarrow\;
\int_V \left[\rho c_p\frac{\partial T}{\partial t} + \nabla\cdot\vec{q}\right]dV = 0.$$

Como $V$ es arbitrario, el integrando se anula puntualmente:

$$\rho c_p\frac{\partial T}{\partial t} + \nabla\cdot\vec{q} = 0.$$

Sustituyendo la ley de Fourier $\vec{q} = -k\nabla T$ (con $k$ constante):

$$\rho c_p\frac{\partial T}{\partial t} = k\nabla^2 T,$$

que es la ecuación de difusión del calor:

$$\boxed{\frac{\partial T}{\partial t} = \alpha\nabla^2 T, \qquad \alpha = \frac{k}{\rho c_p}}$$

donde $\alpha$ es la difusividad térmica.

