
**(a) Fórmula integral de Cauchy.** El integrando $\dfrac{e^z}{z-2i}$ tiene una única singularidad en $z_0 = 2i$, con $|z_0| = 2 < 3$: está **dentro** de $C: |z|=3$. Con $g(z) = e^z$ analítica en todo el plano, la fórmula integral de Cauchy da

$$
\oint_C \frac{e^z}{z-2i}\,dz = 2\pi i\,g(2i) = \boxed{\;2\pi i\,e^{2i}\;}
$$

---

**(b) Versión para derivadas.** El polo en $z_0 = 2i$ es de orden 3 y $g$ es analítica alrededor de él; la fórmula integral de Cauchy para derivadas,

$$
\oint_C \frac{g(z)}{(z-z_0)^{n+1}}\,dz = \frac{2\pi i}{n!}\,g^{(n)}(z_0),
$$

con $n = 2$ y $g''(z) = e^z$ da

$$
\oint_C \frac{e^z}{(z-2i)^3}\,dz = \frac{2\pi i}{2!}\,g''(2i) = \frac{2\pi i}{2}\,e^{2i} = \boxed{\;\pi i\,e^{2i}\;}
$$

---

**(c) Polo exterior.** Ahora el contorno es $|z|=1$ y el polo $z_0 = 2i$ quedó **afuera** ($|2i| = 2 > 1$): el integrando es analítico dentro y sobre el contorno, así que aplica **Cauchy-Goursat**:

$$
\oint_{|z|=1} \frac{e^z}{z-2i}\,dz = \boxed{\;0\;}.
$$
