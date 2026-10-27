
**(a) Singularidades y regiones.** Los polos están en $z=0$ (en el centro de expansión) y $z=-2$. Para una expansión de Laurent centrada en $z_0 = 0$ hay **dos** regiones de convergencia posibles, separadas por el polo más cercano distinto del centro:

$$
\text{(I)}\;\; 0 < |z| < 2,
\qquad\qquad
\text{(II)}\;\; |z| > 2.
$$

---

**(b) Región $0<|z|<2$.** Aquí $|z/2| < 1$ y podemos usar la serie geométrica:

$$
f(z) = \frac{1}{z}\cdot\frac{1}{z+2} = \frac{1}{2z}\cdot\frac{1}{1+\frac{z}{2}}
= \frac{1}{2z}\sum_{n=0}^{\infty}\left(-\frac{z}{2}\right)^n.
$$

Desarrollando:

$$
f(z) = \frac{1}{2z} - \frac{1}{4} + \frac{z}{8} - \frac{z^2}{16} + \cdots
$$

- **Parte principal**: $\dfrac{1}{2z}$ — un solo término. El polo en $z=0$ es **simple**, con residuo $b_{-1} = \tfrac12$.
- **Parte analítica**: $\displaystyle -\tfrac14 + \tfrac{z}{8} - \tfrac{z^2}{16} + \cdots$

---

**(c) Región $|z|>2$.** Aquí $|2/z| < 1$ y la geometría cambia:

$$
f(z) = \frac{1}{z^2}\cdot\frac{1}{1+\frac{2}{z}} = \frac{1}{z^2}\sum_{n=0}^{\infty}\left(-\frac{2}{z}\right)^n
= \frac{1}{z^2} - \frac{2}{z^3} + \frac{4}{z^4} - \frac{8}{z^5} + \cdots
$$

Solo potencias negativas a partir de $1/z^2$: **la parte analítica es nula**, y la función decae como $1/z^2$ en el infinito.

---

**(d) Integrales desde las series.** Al integrar término a término en vuelta completa, solo sobrevive el término $1/z$ (potencia $n=-1$):

- **En $|z|=1$** (región (b)): el coeficiente de $1/z$ es $b_{-1} = \tfrac12$:

$$
\oint_{|z|=1} \frac{dz}{z(z+2)} = 2\pi i\cdot\frac{1}{2} = \pi i.
$$

- **En $|z|=3$** (región (c)): la serie exterior **no tiene término $1/z$**:

$$
\oint_{|z|=3} \frac{dz}{z(z+2)} = 0.
$$

El contorno $|z|=3$ encierra **dos** polos: $z=0$ (residuo $\tfrac12$) y $z=-2$ (polo simple: $\operatorname{Res}_{z=-2} f = \lim_{z\to -2}(z+2)f(z) = \lim_{z\to -2}\dfrac{1}{z} = -\tfrac12$). La suma de los dos residuos es $\tfrac12 - \tfrac12 = 0$, y eso es exactamente lo que registra la serie exterior: su coeficiente de $1/z$ es la **suma de todos los residuos interiores**. La serie de Laurent en la región $|z|>2$ ya "sabe" cuánta carga singular hay dentro.
