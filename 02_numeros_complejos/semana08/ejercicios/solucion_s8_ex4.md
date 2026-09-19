---
title: Solución Ejercicio 4
keywords:
  - teorema-del-residuo
  - integrales-de-contorno
  - singularidad-esencial
tags:
  - teorema-del-residuo
  - integrales-de-contorno
  - singularidad-esencial
objetivos: []
---

**(a)** Factorizamos: $z^3 - z = z(z-1)(z+1)$: polos **simples** en $z = 0, 1, -1$, los tres con módulo $<2$: los tres están dentro de $|z|=2$. Residuos (regla del cociente o límite directo):

$$
\operatorname{Res}_{z=0} = \frac{1}{(z-1)(z+1)}\bigg|_{z=0} = -1,
\qquad
\operatorname{Res}_{z=1} = \frac{1}{z(z+1)}\bigg|_{z=1} = \frac{1}{2},
\qquad
\operatorname{Res}_{z=-1} = \frac{1}{z(z-1)}\bigg|_{z=-1} = \frac{1}{2}.
$$

$$
\oint_{|z|=2} \frac{dz}{z^{3}-z} = 2\pi i\left(-1 + \frac{1}{2} + \frac{1}{2}\right) = \boxed{0}.
$$

La cancelación no es casualidad: es la huella del residuo nulo en el infinito (ejercicio 1c con otros actores).

---

**(b)** La función $e^{1/z}$ tiene una singularidad **esencial** en $z=0$, único punto problemático y claramente interior a $|z|=1$. No hay fórmula abreviada: se expande la serie de Laurent y se lee el término $z^{-1}$:

$$
e^{1/z} = 1 + \frac{1}{z} + \frac{1}{2!\,z^2} + \cdots
\;\Longrightarrow\;
\operatorname{Res}_{z=0} e^{1/z} = 1.
$$

$$
\oint_{|z|=1} e^{1/z}\,dz = 2\pi i\cdot 1 = \boxed{2\pi i}.
$$

De nuevo el $2\pi i$ que acumula una vuelta al origen, ahora filtrado por el residuo de una esencial.

---

**(c)** Las raíces de $z^2 + 2z + 5$ son

$$
z = \frac{-2 \pm \sqrt{4-20}}{2} = -1 \pm 2i,
\qquad
|z| = \sqrt{(-1)^2 + (\pm 2)^2} = \sqrt{5} \approx 2.236 > 2.
$$

**Ambos polos quedan fuera** del contorno $|z|=2$. El integrando es analítica dentro y sobre $|z|=2$ y, por Cauchy-Goursat (o, equivalentemente, por una suma de residuos vacía):

$$
\oint_{|z|=2} \frac{dz}{z^{2}+2z+5} = \boxed{0}.
$$

Advertencia que este ítem ilustra: el teorema del residuo obliga a **contar quién está dentro antes de sumar**. Si el contorno fuera $|z|=3$, ambos polos quedarían dentro y la integral valdría $2\pi i\left(\operatorname{Res}_{-1+2i} + \operatorname{Res}_{-1-2i}\right) = 2\pi i\left(\frac{1}{4i} - \frac{1}{4i}\right) = 0$ igualmente — los residuos de polos conjugados se cancelan cuando el numerador es real, otra manifestación de que la integral de una función racional real sobre el eje real debe ser real.
