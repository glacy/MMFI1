
**(a) Singularidades y regiones.** Los polos están en $z=0$ (centro de expansión) y $z=3$. Para una expansión de Laurent centrada en $z_0=0$ hay **dos** regiones de convergencia, separadas por el polo más cercano distinto del centro:

$$
\text{(I)}\;\; 0 < |z| < 3,
\qquad\qquad
\text{(II)}\;\; |z| > 3.
$$

---

**(b) Series de Laurent.**

**Región $0<|z|<3$.** Aquí $|z/3|<1$ y se usa la serie geométrica:

$$
f(z) = \frac{1}{z}\cdot\frac{1}{z-3} = -\frac{1}{3z}\cdot\frac{1}{1-\frac{z}{3}}
= -\frac{1}{3z}\sum_{n=0}^{\infty}\left(\frac{z}{3}\right)^n
= -\frac{1}{3z} - \frac19 - \frac{z}{27} - \frac{z^2}{81} - \cdots
$$

- **Parte principal:** $-\dfrac{1}{3z}$ (un solo término: el polo en $z=0$ es **simple**, con residuo $-\tfrac13$).
- **Parte analítica:** $\displaystyle -\frac19 - \frac{z}{27} - \frac{z^2}{81} - \cdots$

**Región $|z|>3$.** Aquí $|3/z|<1$:

$$
f(z) = \frac{1}{z^2}\cdot\frac{1}{1-\frac{3}{z}} = \frac{1}{z^2}\sum_{n=0}^{\infty}\left(\frac{3}{z}\right)^n
= \frac{1}{z^2} + \frac{3}{z^3} + \frac{9}{z^4} + \frac{27}{z^5} + \cdots
$$

Solo potencias negativas a partir de $1/z^2$: **la parte analítica es nula** y no aparece término en $1/z$.

---

**(c) Integrales desde las series.** Al integrar término a término en vuelta completa sólo sobrevive el término $1/z$:

- **En $|z|=1$** (región (I)): el coeficiente de $1/z$ es $-\tfrac13$:

$$
\oint_{|z|=1} \frac{dz}{z(z-3)} = 2\pi i\left(-\frac13\right) = -\frac{2\pi i}{3}.
$$

- **En $|z|=4$** (región (II)): la serie exterior **no tiene término $1/z$**:

$$
\oint_{|z|=4} \frac{dz}{z(z-3)} = 0.
$$

El contorno $|z|=4$ encierra los dos polos: $\operatorname{Res}_{z=0} = -\tfrac13$ y $\operatorname{Res}_{z=3} = \tfrac13$; la suma es cero, y eso es exactamente lo que registra la serie exterior: el coeficiente de $1/z$ en la región $|z|>3$ es la **suma de todos los residuos interiores**.
