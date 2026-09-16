---
title: Solución Ejercicio 4
keywords:
  - cauchy-goursat
  - formula-integral-de-cauchy
tags:
  - cauchy-goursat
  - formula-integral-de-cauchy
  - singularidades
objetivos: []
---

En todos los casos el contorno es $|z|=3$, antihorario. Un punto $z_0$ queda dentro del contorno si $|z_0| < 3$.

**(a)** $\cos z$ es entera: no tiene ninguna singularidad. Por **Cauchy-Goursat**:

$$
\oint_C \cos z\,dz = 0.
$$

---

**(b)** La única singularidad es $z_0 = 2$, y $|2| = 2 < 3$: está **dentro**. Aplicamos la **fórmula integral de Cauchy** con $f(z) = 1$ (analítica en todo el plano):

$$
\oint_C \frac{dz}{z-2} = 2\pi i\, f(2) = 2\pi i.
$$

---

**(c)** La única singularidad es $z_0 = 5$, y $|5| = 5 > 3$: está **fuera**. El integrando $\frac{1}{z-5}$ es analítica en todo el interior y la frontera de $C$; por **Cauchy-Goursat**:

$$
\oint_C \frac{dz}{z-5} = 0.
$$

La integral no "ve" singularidades externas: solo cuenta lo encerrado.

---

**(d)** La única singularidad es $z_0 = \pi/2$, con $\pi/2 \approx 1.571 < 3$: está **dentro**. Escribimos el integrando como $\dfrac{f(z)}{(z-z_0)^{n+1}}$ con $f(z) = \cos z$ y $n+1 = 2 \Rightarrow n=1$. La versión para **derivadas** de la fórmula integral de Cauchy da:

$$
\oint_C \frac{\cos z}{(z-\pi/2)^2}\,dz = \frac{2\pi i}{1!}\,f'(\pi/2) = 2\pi i\,\big(-\sin(\pi/2)\big) = -2\pi i.
$$

Nótese el patrón: el resultado de una integral cerrada es $0$ (nada encerrado) o $2\pi i$ por el "coeficiente de interés" de la singularidad encerrada — el valor de la función, de su derivada, y en general de su residuo.
