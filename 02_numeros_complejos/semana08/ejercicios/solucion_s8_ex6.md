---
title: Solución Ejercicio 6
keywords:
  - metodo-de-los-residuos
  - integrales-fourier
  - lema-de-jordan
  - aplicacion
tags:
  - metodo-de-los-residuos
  - integrales-fourier
  - lema-de-jordan
  - aplicacion
objetivos: []
---

**(a)** Como el integrando es par,

$$
\int_0^{\infty} \frac{\cos(3x)}{x^2+4}\,dx = \frac{1}{2}\int_{-\infty}^{\infty} \frac{\cos(3x)}{x^2+4}\,dx,
$$

y consideramos la integral compleja

$$
K = \oint_{C_R} \frac{e^{3iz}}{z^{2}+4}\,dz,
$$

con $C_R$ el semicírculo superior. El único polo interior es $z = 2i$ (el conjugado $-2i$ está en el semiplano inferior, fuera del contorno). Polo simple:

$$
\operatorname{Res}_{z=2i} \frac{e^{3iz}}{(z-2i)(z+2i)}
= \frac{e^{3i(2i)}}{2(2i)}
= \frac{e^{-6}}{4i}.
$$

$$
K = 2\pi i\cdot\frac{e^{-6}}{4i} = \frac{\pi\,e^{-6}}{2}.
$$

**El arco:** sobre él, $|e^{3iz}| = e^{-3\Im z} \le 1$ (lema de Jordan; además el factor decae exponencialmente salvo cerca del eje real) y $|z^2+4| \ge R^2-4$, con longitud $\pi R$:

$$
\left|\int_{\text{arco}} \frac{e^{3iz}}{z^2+4}\,dz\right| \le \frac{\pi R}{R^2-4} \xrightarrow[R\to\infty]{} 0.
$$

En el límite, el segmento $[-R,R]$ es la integral real completa, y tomando parte real (la parte imaginaria es cero: $\sin(3x)/(x^2+4)$ es impar):

$$
\int_{-\infty}^{\infty} \frac{\cos(3x)}{x^2+4}\,dx = \frac{\pi\,e^{-6}}{2}
\;\Longrightarrow\;
\boxed{\;J = \frac{\pi\,e^{-6}}{4} \approx 3.9\times 10^{-4}.\;}
$$

---

**(b)** Con $x^2 - 4$ el integrando complejo $\frac{e^{3iz}}{z^2-4}$ tiene polos en $z = \pm 2$, **sobre el eje real**. La receta directa no aplica: el contorno pasaría por encima de las singularidades y la integral original ni siquiera converge en el sentido ordinario (diverge logarítmicamente en $x=\pm2$). Lo que existe es la **parte principal** de Cauchy, evaluada indentando el contorno con semicírculos diminutos alrededor de $x=\pm2$ — cada semicírculo aporta $\mp i\pi\operatorname{Res}$ y la interpretación física corresponde a un medio resonante con pérdidas (desplazando los polos fuera del eje con un amortiguamiento pequeño).

---

**(c)** El factor $e^{-ka}$ decae **exponencialmente** con la frecuencia: para $k \gg 1/a$ la integral es despreciable. La interpretación física: las componentes de alta frecuencia de la fuente no logran "ver" más allá de la longitud de apantallamiento $a$; el medio actúa como un **filtro pasa-bajos** cuya respuesta decae con $e^{-ka}$ — es el mismo factor que aparece en el potencial apantallado de Yukawa/Poisson y en la solución del problema de calor en semiespacio. Los polos están en $z=\pm ia$, uno en cada semiplano; para $k>0$ se usa el del semiplano superior $z=ia$, y es su distancia $a$ al eje real la que fabrica ese decaimiento exponencial en la respuesta real: la estructura analítica en el plano complejo codifica el comportamiento físico en el eje real.
