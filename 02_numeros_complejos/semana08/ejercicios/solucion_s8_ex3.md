---
title: Solución Ejercicio 3
keywords:
  - residuos
  - polos
  - singularidad-esencial
tags:
  - residuos
  - polos
  - singularidad-esencial
objetivos: []
---

**(a) Polo simple.** $z = 2i$ es raíz simple de $z^2+4$ (la otra es $-2i$). Con la regla del cociente $\operatorname{Res} = \frac{g(z_0)}{h'(z_0)}$:

$$
\operatorname{Res}_{z=2i} \frac{e^{z}}{z^{2}+4}
= \frac{e^{z}}{2z}\bigg|_{z=2i}
= \frac{e^{2i}}{4i}
= -\frac{i\,e^{2i}}{4}.
$$

---

**(b) Polo doble.** En $z=1$ el factor $(z-1)^2$ se anula de orden 2 y $1/z^2$ es analítica y no nula allí: polo de orden 2. Fórmula del polo de orden $m$:

$$
\operatorname{Res}_{z=1} \frac{1}{z^{2}(z-1)^{2}}
= \lim_{z\to 1} \frac{d}{dz}\!\left[\frac{1}{z^{2}}\right]
= \lim_{z\to 1} \left(-\frac{2}{z^{3}}\right)
= -2.
$$

---

**(c) Singularidad evitable disfrazada de polo triple.** El denominador sugiere un polo de orden 3, pero conviene expandir:

$$
\frac{e^{z}-1}{z^{3}}
= \frac{\left(1 + z + \frac{z^2}{2!} + \frac{z^3}{3!} + \cdots\right) - 1}{z^3}
= \frac{1}{z^{2}} + \frac{1}{2!\,z} + \frac{1}{3!} + \frac{z}{4!} + \cdots
$$

Parte principal finita: **polo de orden 2**, y el residuo se lee directamente:

$$
\operatorname{Res}_{z=0} \frac{e^{z}-1}{z^{3}} = \frac{1}{2}.
$$

(Alternativa: fórmula del polo de orden 3, $\frac{1}{2!}\lim_{z\to0}\frac{d^2}{dz^2}\left[\frac{e^z-1}{z}\right]$, con el mismo resultado.)

---

**(d) Polo simple.** Las raíces de $z^4 + 4 = 0$ son $z_k = \sqrt{2}\,e^{i\left(\frac{\pi}{4} + \frac{k\pi}{2}\right)}$, $k=0,1,2,3$: todas **simples** (la derivada $4z^3$ no se anula en ninguna raíz). Para $z_0 = -1+i = \sqrt{2}\,e^{i3\pi/4}$:

$$
z_0^3 = 2\sqrt{2}\,e^{i\,9\pi/4} = 2\sqrt{2}\,e^{i\pi/4} = 2\sqrt{2}\cdot\frac{1+i}{\sqrt{2}} = 2 + 2i.
$$

Regla del cociente:

$$
\operatorname{Res}_{z=z_0} \frac{1}{z^4+4} = \frac{1}{4z_0^3} = \frac{1}{4(2+2i)} = \frac{1}{8(1+i)} = \frac{1-i}{16}.
$$

Este residuo será útil en el ejercicio 5.
