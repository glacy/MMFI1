---
title: Solución Ejercicio 5
keywords:
  - formula-integral-de-cauchy
  - derivadas
tags:
  - formula-integral-de-cauchy
  - derivadas
  - contorno
objetivos: []
---

**(a)** Singularidad: $z_0 = i$, con $|i| = 1 < 2$: dentro. Con $f(z) = e^z$ y la fórmula integral de Cauchy:

$$
\oint_{|z|=2} \frac{e^z}{z-i}\,dz = 2\pi i\, e^{i} = 2\pi i(\cos 1 + i\sin 1) = \boxed{-2\pi\sin 1 + 2\pi\cos 1\, i} \approx -5.30 + 3.39\, i.
$$

---

**(b)** Singularidad: $z_0 = i/2$, con $|i/2| = 1/2 < 1$: dentro. Escribimos el integrando como $\dfrac{f(z)}{(z-z_0)^{n+1}}$ con $f(z) = \cos z$ y $n = 1$:

$$
\oint_{|z|=1} \frac{\cos z}{(z-i/2)^2}\,dz = \frac{2\pi i}{1!}\, f'(i/2) = 2\pi i\,\big(-\sin(i/2)\big).
$$

Con $\sin(i/2) = i\sinh(1/2)$:

$$
2\pi i \cdot \left(-i\sinh\tfrac{1}{2}\right) = \boxed{2\pi\sinh\tfrac{1}{2}} \approx 3.35.
$$

Un resultado **real**, pese a tratarse de una integral compleja: la estructura lo garantiza.

---

**(c)** Singularidad: $z_0 = i$, dentro de $|z|=2$. Aquí $f(z) = 1$ y $n = 2$:

$$
\oint_{|z|=2} \frac{dz}{(z-i)^3} = \frac{2\pi i}{2!}\, f''(i) = \frac{2\pi i}{2}\cdot 0 = \boxed{0}.
$$

Aunque el contorno encierra una singularidad del integrando, la integral se anula: lo que la fórmula "lee" es $f''(z_0)$, y $f \equiv 1$ tiene segunda derivada nula. El mismo fenómeno del Ejercicio 2(b): el polo "desnudo" de orden alto no aporta; solo aporta el coeficiente del término $1/(z-z_0)$ — de nuevo, el residuo de la próxima semana.
