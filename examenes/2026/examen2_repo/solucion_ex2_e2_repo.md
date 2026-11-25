
**(a) Fórmula integral de Cauchy.** El integrando $\dfrac{z e^z}{z-(1+i)}$ tiene una única singularidad en $z_0 = 1+i$, con $|z_0| = \sqrt2 < 2$: está **dentro** de $C_1\colon |z|=2$. Con $g(z) = z e^z$ analítica en todo el plano, la fórmula integral de Cauchy da

$$
\oint_{C_1} \frac{z e^z}{z-(1+i)}\,dz = 2\pi i\,g(1+i) = \boxed{\;2\pi i\,(1+i)\,e^{1+i}\;}
$$

---

**(b) Versión para derivadas.** El polo en $z_0 = 1+i$ es de orden 3 y $g$ es analítica alrededor de él; la fórmula integral de Cauchy para derivadas,

$$
\oint_C \frac{g(z)}{(z-z_0)^{n+1}}\,dz = \frac{2\pi i}{n!}\,g^{(n)}(z_0),
$$

con $n = 2$. Aquí $g'(z) = (1+z)e^z$ y $g''(z) = (2+z)e^z$, de modo que $g''(1+i) = (3+i)\,e^{1+i}$:

$$
\oint_{C_1} \frac{z e^z}{\left(z-(1+i)\right)^3}\,dz = \frac{2\pi i}{2!}\,g''(1+i) = \boxed{\;\pi i\,(3+i)\,e^{1+i}\;}
$$

---

**(c) Polo exterior.** Ahora el contorno es $C_2\colon |z|=1$ y el polo $z_0 = 1+i$ quedó **afuera** ($|1+i| = \sqrt2 > 1$): el integrando es analítico dentro y sobre el contorno, así que aplica **Cauchy-Goursat**:

$$
\oint_{C_2} \frac{z e^z}{z-(1+i)}\,dz = \boxed{\;0\;}.
$$
