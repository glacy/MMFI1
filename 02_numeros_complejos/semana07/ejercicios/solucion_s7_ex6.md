---
title: Solución Ejercicio 6
keywords:
  - aplicacion
  - contornos
  - kramers-kronig
  - causalidad
tags:
  - aplicacion
  - contornos
  - kramers-kronig
  - causalidad
objetivos: []
---

**(a)**

**(i)** $f(z) = \dfrac{1}{z^2+4} = \dfrac{1}{(z-2i)(z+2i)}$ tiene singularidades en $z = \pm 2i$. En el semiplano superior solo queda encerrado $z_0 = 2i$.

**(ii)** Escribimos

$$
f(z) = \frac{1}{z+2i}\cdot\frac{1}{z-2i} = \frac{g(z)}{z-z_0},
\qquad g(z) = \frac{1}{z+2i},
$$

con $g$ analítica dentro y sobre el contorno $C_R$ (su singularidad está en $-2i$, fuera). Por la fórmula integral de Cauchy:

$$
\oint_{C_R} \frac{dz}{z^2+4} = 2\pi i\, g(2i) = 2\pi i\cdot\frac{1}{4i} = \frac{\pi}{2}.
$$

**(iii)** Sobre el arco $C_R^{\text{arco}}$: $|z| = R$, entonces

$$
|z^2+4| \ge |z|^2 - 4 = R^2 - 4 \;\Longrightarrow\; |f(z)| \le \frac{1}{R^2-4} \equiv M.
$$

La longitud del semicírculo es $L = \pi R$. Por la estimación ML:

$$
\left|\int_{\text{arco}} f\,dz\right| \le M\,L = \frac{\pi R}{R^2-4} \;\xrightarrow[R\to\infty]{}\; 0.
$$

**(Cierre)** Como la integral de contorno vale $\pi/2$ para todo $R$ (el interior encerrado no cambia) y el arco no aporta en el límite:

$$
\int_{-R}^{R} \frac{dx}{x^2+4} + \int_{\text{arco}} f\,dz = \frac{\pi}{2}
\;\;\Longrightarrow\;\;
\boxed{\;\int_{-\infty}^{\infty} \frac{dx}{x^2+4} = \frac{\pi}{2}\;}
$$

Verificación: $\displaystyle\int \frac{dx}{x^2+4} = \frac{1}{2}\arctan\frac{x}{2}$, y evaluado entre $-\infty$ y $\infty$ da $\frac{1}{2}\left(\frac{\pi}{2}+\frac{\pi}{2}\right) = \frac{\pi}{2}$. ✓

---

**(b)**

La respuesta temporal y la espectral están ligadas por transformada de Fourier: $\chi(\omega) = \displaystyle\int_0^\infty \chi(t)\,e^{i\omega t}\,dt$ (el límite inferior es $0$, no $-\infty$, por causalidad). Para $\omega = \omega_r + i\omega_i$ con $\omega_i > 0$, el factor $e^{i\omega t} = e^{i\omega_r t}e^{-\omega_i t}$ decae y la integral converge; además $\chi$ es diferenciable en $\omega_r$ al poder derivar bajo la integral. En cambio, en el semiplano inferior la integral diverge para frecuencias con parte imaginaria negativa grande: la función **no** puede extenderse de forma analítica allí. Por tanto, **causalidad ⇒ analiticidad en $\Im\omega > 0$** (con decaimiento suficiente en $|\omega|\to\infty$).

Aplicando la fórmula integral de Cauchy a $\chi$ sobre el contorno que cierra el semiplano superior (eje real + semicírculo infinito, cuyo aporte se anula) y separando partes real e imaginaria, se obtienen las relaciones de **Kramers-Kronig**:

$$
\Re\,\chi(\omega_0) = \frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty} \frac{\Im\,\chi(\omega)}{\omega-\omega_0}\,d\omega,
\qquad
\Im\,\chi(\omega_0) = -\frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty} \frac{\Re\,\chi(\omega)}{\omega-\omega_0}\,d\omega.
$$

Consecuencia práctica: midiendo la **absorción** del material en un rango de frecuencias (parte imaginaria), se puede **reconstruir la dispersión** — el índice de refracción o la fase de la respuesta — sin medirla directamente; y si un modelo de material viola estas relaciones, es no causal, es decir, no físico.
