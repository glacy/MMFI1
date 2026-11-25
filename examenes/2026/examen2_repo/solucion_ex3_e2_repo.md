
**Sustitución y contorno.** Con $z = e^{i\theta}$ sobre la circunferencia unitaria:

$$
\sin\theta = \frac{z - z^{-1}}{2i},
\qquad
d\theta = \frac{dz}{iz}.
$$

Sustituyendo en la integral:

$$
2 + \sin\theta = 2 + \frac{z^2-1}{2iz} = \frac{z^2 + 4iz - 1}{2iz}
\;\;\Longrightarrow\;\;
I = \oint_{|z|=1} \frac{2\,dz}{z^2 + 4iz - 1}.
$$

**Polos.** Raíces de $z^2+4iz-1 = 0$:

$$
z_\pm = \frac{-4i\pm\sqrt{-16+4}}{2} = i\left(-2\pm\sqrt3\right),
$$

$$
z_+ = i\left(\sqrt3 - 2\right) \approx -0.27\,i \;\;\left(|z_+| = 2-\sqrt3 < 1: \textbf{dentro}\right),
$$

$$
z_- = -i\left(2+\sqrt3\right) \approx -3.73\,i \;\;\left(|z_-| > 1: \text{fuera}\right).
$$

A diferencia del caso con $\cos\theta$, los polos son **puramente imaginarios**: uno queda dentro del contorno y el otro fuera.

**Residuo.** Polo simple, con la fórmula del cociente para 
$$g = 2, \quad h = z^2+4iz-1, \quad h' = 2z+4i$$
tenemos que 
$$
\operatorname{Res}_{z=z_+} \frac{2}{z^2+4iz-1} = \frac{2}{2z_+ + 4i} = \frac{2}{2i\sqrt3} = \frac{1}{i\sqrt3}.
$$

**Teorema del residuo y resultado:**

$$
I = 2\pi i\cdot\frac{1}{i\sqrt3} = \boxed{\;\frac{2\pi}{\sqrt3}\;}
$$

