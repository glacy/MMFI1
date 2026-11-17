
**Sustitución y contorno.** Con $z = e^{i\theta}$ sobre la circunferencia unitaria:

$$
\cos\theta = \frac{z + z^{-1}}{2},
\qquad
d\theta = \frac{dz}{iz}.
$$

Sustituyendo en la integral:

$$
I = \oint_{|z|=1} \frac{1}{3 + \left(z + z^{-1}\right)}\cdot\frac{dz}{iz}
= \oint_{|z|=1} \frac{dz}{i\,\left(z^2 + 3z + 1\right)}.
$$

**Polos.** Raíces de $z^2+3z+1 = 0$:

$$
z_\pm = \frac{-3\pm\sqrt{5}}{2},
$$

$$
z_+ = \frac{-3+\sqrt5}{2} \approx -0,38 \;\;(|z_+|<1: \textbf{dentro}),
$$

$$
z_- \approx -2,62 \;\;(|z_-|>1: \text{fuera}).
$$

**Residuo.** Polo simple, con la fórmula del cociente para 
$$g = 1, \quad h = z^2+3z+1, \quad h' = 2z+3$$
tenemos que 
$$
\operatorname{Res}_{z=z_+} \frac{1}{z^2+3z+1} = \frac{1}{2z_+ + 3} = \frac{1}{\sqrt5}.
$$

**Teorema del residuo y resultado:**

$$
I = \frac{1}{i}\cdot 2\pi i\cdot\frac{1}{\sqrt5} = \boxed{\;\frac{2\pi}{\sqrt5}\;}
$$

