---
title: Solución Ejercicio 6
keywords:
  - producto-interno
  - ortogonalidad
  - norma
  - espacio-de-hilbert
  - funcion-de-peso
tags:
  - producto-interno
  - ortogonalidad
  - norma
  - espacio-de-hilbert
  - funcion-de-peso
  - calculo
objetivos: []
---

**(a) Ortogonalidad.** Con la identidad del producto de senos,

$$
\sin(nx)\sin(mx) = \frac{1}{2}\left[\cos\big((n-m)x\big) - \cos\big((n+m)x\big)\right],
$$

el producto interno es

$$
\langle f_n, f_m \rangle
= \int_{-\pi}^{\pi} \sin(nx)\sin(mx)\, dx
= \frac{1}{2}\int_{-\pi}^{\pi} \cos\big((n-m)x\big)\, dx
- \frac{1}{2}\int_{-\pi}^{\pi} \cos\big((n+m)x\big)\, dx.
$$

Para $n\neq m$, las frecuencias $n\pm m$ son enteras no nulas, y la integral de un coseno con frecuencia entera no nula sobre un número entero de períodos es cero:

$$
\int_{-\pi}^{\pi} \cos(kx)\, dx = \left[\frac{\sin(kx)}{k}\right]_{-\pi}^{\pi} = \frac{\sin(k\pi)-\sin(-k\pi)}{k} = 0
\qquad (k \in \mathbb{Z},\; k\neq 0).
$$

Por lo tanto

$$
\boxed{\;\langle f_n, f_m \rangle = 0 \quad (n\neq m)\;}
$$

**(b) Norma.** Con $\sin^2(nx) = \frac{1}{2}\left[1 - \cos(2nx)\right]$:

$$
\|f_n\|^2 = \int_{-\pi}^{\pi} \sin^2(nx)\, dx
= \frac{1}{2}\int_{-\pi}^{\pi} dx - \frac{1}{2}\underbrace{\int_{-\pi}^{\pi} \cos(2nx)\, dx}_{=0}
= \frac{1}{2}(2\pi) = \pi,
$$

de donde

$$
\|f_n\| = \sqrt{\pi} \qquad \text{para todo } n.
$$

Observe que la norma **no depende** de $n$: todas las funciones de la base tienen la misma longitud.

**(c) Normalización.** Dividiendo por la norma:

$$
\hat{f}_n(x) = \frac{\sin(nx)}{\sqrt{\pi}}.
$$

Verificación:

$$
\langle \hat{f}_n, \hat{f}_m \rangle = \frac{1}{\pi}\langle f_n, f_m \rangle =
\begin{cases}
\dfrac{1}{\pi}\cdot \pi = 1 & n = m,\\[2mm]
\dfrac{1}{\pi}\cdot 0 = 0 & n \neq m,
\end{cases}
\;=\; \delta_{nm}.
$$
