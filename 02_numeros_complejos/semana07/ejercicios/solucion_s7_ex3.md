---
title: Solución Ejercicio 3
keywords:
  - independencia-del-camino
  - antiderivada
tags:
  - independencia-del-camino
  - antiderivada
  - cauchy-goursat
objetivos: []
---

**(a)**

*Por parametrización*: $z(t) = t(1+i\pi/2)$, $dz = (1+i\pi/2)\,dt$:

$$
\int_0^1 e^{t(1+i\pi/2)}\,(1+i\pi/2)\,dt = \left[e^{t(1+i\pi/2)}\right]_0^1 = e^{1+i\pi/2} - 1.
$$

*Por teorema fundamental*: como $e^z$ es analítica en todo el plano (dominio simplemente conexo) y $F(z) = e^z$,

$$
\int_C e^z\,dz = F(1+i\pi/2) - F(0) = e^{1+i\pi/2} - 1.
$$

Ambos coinciden, como debía ser. Evaluando con $e^{i\pi/2} = i$:

$$
e^{1+i\pi/2} - 1 = e\cdot e^{i\pi/2} - 1 = ie - 1 \;=\; \boxed{-1 + e\,i} \;\approx\; -1 + 2.718\,i.
$$

---

**(b)**

(i) $f(z) = \sin z$ es analítica en todo el plano complejo (entera), y el disco $|z|<1$ es simplemente conexo. Por Cauchy-Goursat:

$$
\oint_{|z|=1} \sin z\,dz = 0.
$$

(ii) Con antiderivada $F(z) = -\cos z$ y camino cerrado ($z_{\text{inicial}} = z_{\text{final}}$):

$$
\oint_{|z|=1} \sin z\,dz = F(z_{\text{final}}) - F(z_{\text{inicial}}) = 0.
$$

Ambas vías son legítimas porque $\sin z$ es entera: su antiderivada $-\cos z$ existe y es univaluada en todo el plano, sin puntos de ramificación que estorben. La situación contrasta con $1/z$, cuya antiderivada $\ln z$ es multivaluada y por eso la integral cerrada no se anula (Ejercicio 2).
