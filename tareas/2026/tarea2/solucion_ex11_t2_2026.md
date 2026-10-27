
**(a) Sustitución y polos.** Con $z = e^{i\theta}$ sobre la circunferencia unitaria:

$$
\cos\theta = \frac{z + z^{-1}}{2},
\qquad
d\theta = \frac{dz}{iz}.
$$

Sustituyendo en la integral:

:::{math}
\begin{align*}
I =& \oint_{|z|=1} \frac{1}{5 + 2\left(z + z^{-1}\right)}\cdot\frac{dz}{iz} \\
=& \oint_{|z|=1} \frac{dz}{i\,(2z^2 + 5z + 2)} \\
=& \frac{1}{i}\oint_{|z|=1} \frac{dz}{(2z+1)(z+2)}.
\end{align*}
:::

Polos: $z = -\tfrac12$ (con $|z| = \tfrac12 < 1$: **dentro**) y $z = -2$ (con $|z| = 2 > 1$: **fuera**). Solo el primero aporta.

**Residuo.** Polo simple, con la fórmula del cociente ($g = 1$, $h = 2z^2+5z+2$, $h' = 4z+5$):

$$
\operatorname{Res}_{z=-\frac12} \frac{1}{(2z+1)(z+2)} = \frac{1}{4z+5}\bigg|_{z=-\frac12} = \frac{1}{-2+5} = \frac{1}{3}.
$$

**Teorema del residuo y resultado.**

$$
I = \frac{1}{i}\cdot 2\pi i\cdot\frac{1}{3} = \boxed{\;\frac{2\pi}{3}\;}
$$

---

**(b) Por qué la receta falla para $\displaystyle\int_0^{2\pi} \frac{d\theta}{1+2\cos\theta}$.** El denominador se anula dentro del intervalo de integración:

$$
1 + 2\cos\theta = 0 \;\Longleftrightarrow\; \cos\theta = -\frac12
\;\Longleftrightarrow\; \theta = \frac{2\pi}{3},\;\frac{4\pi}{3}.
$$

La integral es **impropia con singularidades sobre el camino de integración** (no definida; diverge). En el plano complejo, esto significa que al hacer $z = e^{i\theta}$ los polos del integrando quedan **sobre el contorno** $|z|=1$ (son exactamente las imágenes de esos dos ángulos): el teorema del residuo exige singularidades interiores o exteriores, no sobre la curva. Físicamente, el denominador pequeño cerca de $\theta = 2\pi/3$ hace crecer el integrando sin control: la integral no converge, y ninguna elección de contorno puede "rescatar" una cantidad que no está bien definida.
