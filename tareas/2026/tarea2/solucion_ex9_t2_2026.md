
**(a)** $\displaystyle\oint_{|z|=2} \frac{dz}{z^4-1}$.

El denominador se factoriza: $z^4 - 1 = (z-1)(z+1)(z-i)(z+i)$ — raíces cuartas de la unidad:

$$
z_1 = 1,\quad z_2 = -1,\quad z_3 = i,\quad z_4 = -i,
\qquad |z_k| = 1 < 2 
$$

por lo que los cuatro polos quedan dentro.

Cada raíz es simple, así que para $f = 1/(z^4-1)$ usamos la fórmula del cociente $g/h'$ con $g=1$, $h = z^4-1$, $h' = 4z^3$:

$$
\operatorname{Res}_{z=z_k} f = \frac{1}{4z_k^3}.
$$

Evaluando (con $i^3 = -i$, $(-i)^3 = i$):

$$
\operatorname{Res}_{z=1} f= \frac14,\qquad
\operatorname{Res}_{z=-1} f= -\frac14,$$
$$
\operatorname{Res}_{z=i} f= \frac{1}{-4i} = \frac{i}{4},\qquad
\operatorname{Res}_{z=-i} f= \frac{1}{4i} = -\frac{i}{4}.
$$

La suma de los cuatro residuos es $0$, y el teorema del residuo da

$$
\oint_{|z|=2} \frac{dz}{z^4-1} = 2\pi i\,(0) = 0.
$$

---

**(b)** $\displaystyle\oint_{|z|=2} \frac{e^z}{z(z-1)^2}\,dz$.

Singularidades: $z=0$ (**simple**) y $z=1$ (**doble**); $|0| = 0 < 2$ y $|1| = 1 < 2$: **ambas dentro**.

- Polo simple en $z=0$:

$$
\operatorname{Res}_{z=0} f= \lim_{z\to 0} z\cdot\frac{e^z}{z(z-1)^2} = \frac{e^0}{(0-1)^2} = 1.
$$

- Polo doble en $z=1$:

$$
\operatorname{Res}_{z=1} f = \lim_{z\to 1}\frac{d}{dz}\left[\frac{e^z}{z}\right] = \lim_{z\to 1}\frac{e^z\,z - e^z}{z^2} = \lim_{z\to 1}\frac{e^z(z-1)}{z^2} = 0.
$$

Suma de residuos: $1 + 0 = 1$. Por el teorema del residuo:

$$
\oint_{|z|=2} \frac{e^z}{z(z-1)^2}\,dz = 2\pi i\,(1) = 2\pi i.
$$

---

**(c)** $\displaystyle\oint_{|z|=2} \frac{\sin z}{z^2+1}\,dz$.

Singularidades: $z^2+1 = 0 \Rightarrow z = \pm i$, con $|i| = |-i| = 1 < 2$: **ambas dentro** (polos simples).

Usando $\sin(iy) = i\sinh y$ (con $y$ real):

$$
\operatorname{Res}_{z=i} f= \frac{\sin z}{2z}\bigg|_{z=i} = \frac{\sin i}{2i} = \frac{i\sinh 1}{2i} = \frac{\sinh 1}{2},
$$

$$
\operatorname{Res}_{z=-i} f= \frac{\sin(-i)}{-2i} = \frac{-i\sinh 1}{-2i} = \frac{\sinh 1}{2}.
$$

El teorema del residuo da

$$
\oint_{|z|=2} \frac{\sin z}{z^2+1}\,dz = 2\pi i\,\sinh 1 = \pi i\left(e - e^{-1}\right).
$$
