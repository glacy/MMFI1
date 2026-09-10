---
title: Solución Ejercicio 1
keywords:
  - logaritmo-complejo
  - multivaluacion
tags:
  - logaritmo-complejo
  - multivaluacion
  - ramificacion
objetivos: []
---

**1. $z = i$**

Escribimos $i$ en forma polar: $i = 1 \cdot e^{i(\pi/2 + 2k\pi)}$.
Módulo: $r = 1$.
Argumento: $\theta = \pi/2 + 2k\pi$.

$$\text{Log}(i) = \ln(1) + i\left(\frac{\pi}{2} + 2k\pi\right)$$
$$\text{Log}(i) = 0 + i\left(\frac{\pi}{2} + 2k\pi\right) = i\left(\frac{\pi}{2} + 2k\pi\right), \quad k \in \mathbb{Z}$$

*   **Parte Real:** $0$
*   **Parte Imaginaria:** $\frac{\pi}{2} + 2k\pi$

---

**2. $z = -1$**

Escribimos $-1$ en forma polar: $-1 = 1 \cdot e^{i(\pi + 2k\pi)}$.
Módulo: $r = 1$.
Argumento: $\theta = \pi + 2k\pi$.

$$\text{Log}(-1) = \ln(1) + i(\pi + 2k\pi)$$
$$\text{Log}(-1) = i(\pi + 2k\pi), \quad k \in \mathbb{Z}$$

*   **Parte Real:** $0$
*   **Parte Imaginaria:** $\pi + 2k\pi$

---

**3. $z = 1 - i$**

Escribimos $1-i$ en forma polar:
Módulo: $r = \sqrt{1^2 + (-1)^2} = \sqrt{2}$.
Argumento: Está en el cuarto cuadrante. $\theta = -\frac{\pi}{4} + 2k\pi$.

$$\text{Log}(1-i) = \ln(\sqrt{2}) + i\left(-\frac{\pi}{4} + 2k\pi\right)$$
$$\text{Log}(1-i) = \frac{1}{2}\ln(2) + i\left(2k\pi - \frac{\pi}{4}\right), \quad k \in \mathbb{Z}$$

*   **Parte Real:** $\frac{1}{2}\ln(2)$
*   **Parte Imaginaria:** $2k\pi - \frac{\pi}{4}$

---

**4. $z = 3 + 4i$**

Escribimos $3+4i$ en forma polar:
Módulo: $r = \sqrt{3^2 + 4^2} = \sqrt{9+16} = 5$.
Argumento: Está en el primer cuadrante. $\theta = \arctan(4/3) + 2k\pi \approx 0.927 + 2k\pi$.

$$\text{Log}(3+4i) = \ln(5) + i\left(\arctan(4/3) + 2k\pi\right)$$
$$\text{Log}(3+4i) \approx 1.609 + i(0.927 + 2k\pi), \quad k \in \mathbb{Z}$$

*   **Parte Real:** $\ln(5) \approx 1.609$
*   **Parte Imaginaria:** $\arctan(4/3) + 2k\pi \approx 0.927 + 2k\pi$