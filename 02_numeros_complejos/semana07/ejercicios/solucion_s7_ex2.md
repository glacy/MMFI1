---
title: Solución Ejercicio 2
keywords:
  - integral-de-contorno
  - parametrizacion
tags:
  - integral-de-contorno
  - singularidad
  - logaritmo
objetivos: []
---

**(a)** Con $z = e^{it}$, $t\in[0,2\pi]$, tenemos $dz = i e^{it}\,dt$:

$$
\oint_{|z|=1} \frac{dz}{z} = \int_0^{2\pi} \frac{i e^{it}}{e^{it}}\,dt = i\int_0^{2\pi} dt = 2\pi i.
$$

---

**(b)** Con la misma parametrización:

$$
\oint_{|z|=1} \frac{dz}{z^2} = \int_0^{2\pi} \frac{i e^{it}}{e^{2it}}\,dt = i\int_0^{2\pi} e^{-it}\,dt = i\left[\frac{e^{-it}}{-i}\right]_0^{2\pi} = -\left(e^{-2\pi i} - 1\right) = 0.
$$

---

**(c)**

- $\dfrac{1}{z^2}$ es la derivada de $-\dfrac{1}{z}$, que es **univaluada**: al completar el lazo, $-1/z$ regresa a su valor inicial y la integral de una derivada sobre un camino cerrado vale cero.
- $\dfrac{1}{z}$ tiene como antiderivada a $\ln z = \ln|z| + i\arg z$, que es **multivaluada**: al completar la vuelta, el argumento acumuló $+2\pi$ y el logaritmo termina en $\text{Log}\,z + 2\pi i$, un "piso" más arriba en la superficie de Riemann. La integral mide exactamente ese desplazamiento:

$$
\oint_C \frac{dz}{z} = \ln z\Big|_{\text{vuelta completa}} = 2\pi i.
$$

El número de vueltas del contorno alrededor de la singularidad (el **índice de enrollamiento**) es lo que sobrevive en la integral: no todo polo pesa igual, pesa el coeficiente de $1/(z-z_0)$ en el desarrollo de la función — lo que la próxima semana llamaremos **residuo**.
