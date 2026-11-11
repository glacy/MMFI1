---
title: Solución Ejercicio 1
keywords:
  - valor-esperado
  - incertidumbre
  - pozo-potencial
tags:
  - pozo-potencial
  - valor-esperado
  - incertidumbre
  - calculo
objetivos: []
---

Los valores esperados se calculan con las densidades de probabilidad $|\psi_n(x)|^2=\frac{2}{L}\sin^2(n\pi x/L)$ en $0<x<L$. Conviene usar la identidad $\sin^2\theta=\frac{1}{2}\big(1-\cos 2\theta\big)$ con $\theta=n\pi x/L$, y el hecho de que para $k=2n\pi/L$ se cumple $\cos(kL)=1$ y $\sin(kL)=0$.

**Valor esperado de $x$.**

$$
\langle x\rangle=\frac{2}{L}\int_0^L x\,\sin^2\!\frac{n\pi x}{L}\,dx
=\frac{1}{L}\left[\int_0^L x\,dx-\int_0^L x\cos\frac{2n\pi x}{L}\,dx\right].
$$

Por partes,

$$
\int_0^L x\cos\frac{2n\pi x}{L}\,dx
=\underbrace{\left[\frac{x}{k}\sin(kx)\right]_0^L}_{=0}
-\int_0^L\frac{\sin(kx)}{k}\,dx
=\left[\frac{\cos(kx)}{k^2}\right]_0^L
=\frac{\cos(kL)-1}{k^2}=0,
$$

de modo que

$$
\boxed{\;\langle x\rangle=\frac{1}{L}\cdot\frac{L^2}{2}=\frac{L}{2}\;}
$$

El resultado es el centro del pozo, como exige la simetría de $|\psi_n(x)|^2$ respecto a $x=L/2$.

**Valor esperado de $x^2$.**

$$
\langle x^2\rangle=\frac{2}{L}\int_0^L x^2\sin^2\!\frac{n\pi x}{L}\,dx
=\frac{1}{L}\left[\int_0^L x^2\,dx-\int_0^L x^2\cos\frac{2n\pi x}{L}\,dx\right].
$$

Integrando por partes dos veces,

$$
\int_0^L x\sin(kx)\,dx
=\underbrace{\left[-\frac{x}{k}\cos(kx)\right]_0^L}_{=-L/k}
+\underbrace{\left[\frac{\sin(kx)}{k^2}\right]_0^L}_{=0}
=-\frac{L}{k},
$$

$$
\int_0^L x^2\cos(kx)\,dx
=\underbrace{\left[\frac{x^2}{k}\sin(kx)\right]_0^L}_{=0}
-\frac{2}{k}\int_0^L x\sin(kx)\,dx
=\frac{2L}{k^2}=\frac{L^3}{2n^2\pi^2}.
$$

Por lo tanto,

$$
\boxed{\;\langle x^2\rangle=\frac{1}{L}\left[\frac{L^3}{3}-\frac{L^3}{2n^2\pi^2}\right]
=L^2\left(\frac{1}{3}-\frac{1}{2n^2\pi^2}\right)\;}
$$

**Incertidumbre.**

$$
(\Delta x)^2=\langle x^2\rangle-\langle x\rangle^2
=L^2\left(\frac{1}{3}-\frac{1}{2n^2\pi^2}-\frac{1}{4}\right)
=L^2\left(\frac{1}{12}-\frac{1}{2n^2\pi^2}\right),
$$

$$
\boxed{\;\Delta x=L\sqrt{\frac{1}{12}-\frac{1}{2n^2\pi^2}}\;}
$$

Para $n=1$, $\Delta x\approx 0.18\,L$; a medida que $n$ crece, $\Delta x\to L/\sqrt{12}\approx 0.29\,L$, el valor clásico de una partícula con distribución uniforme en el pozo.
