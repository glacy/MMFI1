---
title: Solución Ejercicio 1
keywords:
  - serie-de-laurent
  - series-geometricas
  - anillo-de-convergencia
tags:
  - serie-de-laurent
  - series-geometricas
  - anillo-de-convergencia
objetivos: []
---

**(a) Fracciones parciales.** Buscamos $A$ y $B$ tales que

$$
\frac{1}{(z-1)(z-2)} = \frac{A}{z-1} + \frac{B}{z-2}.
$$

Cubriendo el denominador y evaluando en $z=1$ y $z=2$: $A = \frac{1}{1-2} = -1$, $B = \frac{1}{2-1} = 1$. Entonces

$$
f(z) = \frac{1}{z-2} - \frac{1}{z-1}.
$$

---

**(b) Series de Laurent por región.** Todo el trabajo se reduce a reconocer **series geométricas**: $\frac{1}{1-q} = \sum_{n\ge 0} q^n$ cuando $|q|<1$.

*Región $|z| < 1$.* Aquí $|z|<1$ y $|z/2|<1$:

$$
\frac{1}{z-1} = -\frac{1}{1-z} = -\sum_{n=0}^{\infty} z^n,
\qquad
\frac{1}{z-2} = -\frac{1}{2}\cdot\frac{1}{1-z/2} = -\sum_{n=0}^{\infty} \frac{z^n}{2^{n+1}}.
$$

$$
f(z) = \sum_{n=0}^{\infty}\left(1 - \frac{1}{2^{n+1}}\right) z^n.
$$

Solo potencias positivas: es la serie de **Taylor**; $f$ es analítica en este disco y **no hay parte principal**.

*Región $1 < |z| < 2$.* Ahora $|1/z|<1$ pero $|z/2|<1$:

$$
\frac{1}{z-1} = \frac{1}{z}\cdot\frac{1}{1-1/z} = \sum_{n=1}^{\infty} \frac{1}{z^{n}},
\qquad
\frac{1}{z-2} = -\sum_{n=0}^{\infty} \frac{z^n}{2^{n+1}}.
$$

$$
f(z) = -\sum_{n=1}^{\infty} \frac{1}{z^{n}} \;-\; \sum_{n=0}^{\infty} \frac{z^n}{2^{n+1}}.
$$

Aparecen **ambas partes**: la principal $-\sum_{n\ge1} z^{-n}$ (firma de la singularidad en $z=1$, que queda *dentro* del anillo) y la analítica $-\sum_{n\ge0} z^n/2^{n+1}$.

*Región $|z| > 2$.* Ahora $|1/z|<1$ para ambas fracciones:

$$
\frac{1}{z-1} = \sum_{n=1}^{\infty} \frac{1}{z^n},
\qquad
\frac{1}{z-2} = \frac{1}{z}\cdot\frac{1}{1-2/z} = \sum_{n=1}^{\infty} \frac{2^{n-1}}{z^{n}}.
$$

$$
f(z) = \sum_{n=1}^{\infty} \left(2^{n-1} - 1\right)\frac{1}{z^n}.
$$

---

**(c) Comportamiento en el infinito.** En la región $|z|>2$ la serie tiene **solo potencias negativas** (la parte analítica se anula: $f \to 0$ cuando $z\to\infty$; de hecho $\infty$ es una singularidad removible de $f$). El coeficiente de $z^{-1}$ es $2^{1-1}-1 = 0$: el **residuo en el infinito es cero**. Para la integral sobre un contorno grande $C$ que encierre ambos polos, el teorema del residuo da

$$
\oint_C f(z)\,dz = 2\pi i\left(\operatorname{Res}_{z=1} f + \operatorname{Res}_{z=2} f\right)
= 2\pi i\left(-1 + 1\right) = 0,
$$

en plena consistencia con leer directamente la serie en $|z|>2$: como no hay término $z^{-1}$, la integral sobre un círculo grande (integrando término a término) vale $0$.

**Moraleja:** la misma función admite tantas series de Laurent como anillos tenga alrededor del punto de expansión, y cada serie "reporta" las singularidades que rodea.
