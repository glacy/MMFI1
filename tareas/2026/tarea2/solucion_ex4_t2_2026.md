
**(a) Fórmula integral de Cauchy.** El integrando $\dfrac{e^z}{z-\frac12}$ tiene una única singularidad en $z_0 = \tfrac12$, con $|z_0| = \tfrac12 < 1$: está **dentro** de $C: |z|=1$. Con $g(z) = e^z$ analítica en todo el plano, la fórmula integral de Cauchy da

$$
\oint_C \frac{e^z}{z-\tfrac{1}{2}}\,dz = 2\pi i\,g\!\left(\tfrac{1}{2}\right) = 2\pi i\,e^{1/2} \approx 10{,}36\,i.
$$

---

**(b) Versión para derivadas.** La misma estructura, con polos de orden superior en $z_0=\tfrac12$ (interior), se resuelve con la fórmula integral de Cauchy para derivadas, $$\displaystyle\oint_C \frac{g(z)}{(z-z_0)^{n+1}}\,dz = \frac{2\pi i}{n!}g^{(n)}(z_0)$$
de manera que 
$$
\oint_C \frac{e^z}{\left(z-\tfrac{1}{2}\right)^2}\,dz = \frac{2\pi i}{1!}\,g'\!\left(\tfrac{1}{2}\right) = 2\pi i\,e^{1/2},
$$

$$
\oint_C \frac{e^z}{\left(z-\tfrac{1}{2}\right)^3}\,dz = \frac{2\pi i}{2!}\,g''\!\left(\tfrac{1}{2}\right) = \frac{2\pi i}{2}\,e^{1/2} = \pi i\,e^{1/2}.
$$


---

**(c) Singularidades exteriores.**

- $\displaystyle\oint_{|z|=1} \frac{e^z}{z-2}\,dz$: la singularidad $z_0=2$ está **fuera** del contorno ($|2| = 2 > 1$). El integrando es analítica dentro y sobre $C$, así que aplica **Cauchy-Goursat**:

$$
\oint_{|z|=1} \frac{e^z}{z-2}\,dz = 0.
$$

- $\displaystyle\oint_{|z|=1/4} \frac{e^z}{z-\frac12}\,dz$: ahora el contorno es pequeño y el punto $z_0=\tfrac12$ quedó afuera ($\tfrac12 > \tfrac14$). De nuevo el integrando es analítica dentro y sobre $C$: **Cauchy-Goursat** da $0$.


