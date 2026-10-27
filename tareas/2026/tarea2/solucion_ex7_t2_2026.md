
**(a) $\dfrac{\sin z}{e^z-1}$ en $z=0$.** Usamos las series de Maclaurin:

$$
\sin z = z - \frac{z^3}{3!} + \frac{z^5}{5!} - \cdots = z\left(1 - \frac{z^2}{6} + \cdots\right),$$
y
$$
e^z - 1 = z + \frac{z^2}{2!} + \frac{z^3}{3!} + \cdots = z\left(1 + \frac{z}{2} + \cdots\right).
$$

Cancelando el factor $z$:

$$
\frac{\sin z}{e^z-1} = \frac{1 - \frac{z^2}{6} + \cdots}{1 + \frac{z}{2} + \cdots} = \left(1 - \frac{z^2}{6}+\cdots\right)\left(1 - \frac{z}{2} + \cdots\right) = 1 - \frac{z}{2} + \cdots
$$

La **parte principal es nula**: la singularidad es **removible**. Redefiniendo $f(0) = \lim_{z\to 0}\frac{\sin z}{e^z-1} = 1$, la función queda analítica.

---

**(b) $\cos\frac{1}{z}$ en $z=0$.** Con $w = 1/z$ en la serie del coseno:

$$
\cos\frac{1}{z} = 1 - \frac{1}{2!\,z^2} + \frac{1}{4!\,z^4} - \cdots
$$

Hay **infinitas potencias negativas**: la parte principal es infinita y la singularidad es **esencial**. (No hay términos $1/z$: el residuo sería $0$, pero eso no "arregla" la singularidad.)

---

**(c) $\dfrac{1}{1-\cos z}$ en $z=0$.** Factorizamos el denominador:

$$
1 - \cos z = \frac{z^2}{2} - \frac{z^4}{24} + \cdots = \frac{z^2}{2}\left(1 - \frac{z^2}{12} + \cdots\right),
$$

de modo que

$$
\frac{1}{1-\cos z} = \frac{2}{z^2}\left(1 + \frac{z^2}{12} + \cdots\right) = \frac{2}{z^2} + \frac{1}{6} + \cdots
$$

La parte principal es **finita** (un solo término, $2/z^2$): **polo de orden 2**, con parte principal $2/z^2$ y residuo $0$.

---

**(d) $\dfrac{z-i}{z^2+1}$ en $z=i$.** Factorizando el denominador:

$$
\frac{z-i}{z^2+1} = \frac{z-i}{(z-i)(z+i)} = \frac{1}{z+i} \qquad (z \neq i).
$$

La expresión derecha es analítica en $z=i$. La singularidad es **removible**: el valor que extiende analíticamente la función es

$$
\lim_{z\to i}\frac{z-i}{z^2+1} = \frac{1}{2i} = -\frac{i}{2}.
$$

---

**(e) $\dfrac{1}{\sin(1/z)}$ en $z=0$.** El seno se anula donde $1/z = k\pi$, es decir, en los puntos

$$
z_k = \frac{1}{k\pi}, \qquad k = \pm 1, \pm 2, \pm 3, \dots
$$

Todos esos puntos son singulares (allí $f$ tiene polos) y **se acumulan hacia el origen**: cualquier disco pinchado $0 < |z| < \varepsilon$ contiene infinitos puntos $z_k$ donde la función no es analítica. Por definición, una singularidad aislada requiere que $f$ sea analítica en *todo* el resto de una vecindad pinchada; eso falla aquí. Por eso $z=0$ **no** es una singularidad aislada de $f$ y no admite serie de Laurent en ningún anillo completo: no entra en la clasificación removible/polo/esencial.
