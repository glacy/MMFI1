
**(a)** $f(z) = \dfrac{z\,e^z}{(z-1)^2}$ tiene polo **doble** en $z=1$. Usamos la fórmula para polos de orden $m=2$:

$$
\operatorname{Res}_{z=1} f = \frac{1}{1!}\lim_{z\to 1}\frac{d}{dz}\Big[(z-1)^2 f(z)\Big] = \lim_{z\to 1}\frac{d}{dz}\Big[z\,e^z\Big].
$$

Derivando: $\dfrac{d}{dz}(z e^z) = e^z(1+z)$. Evaluando:

$$
\operatorname{Res}_{z=1} \frac{z e^z}{(z-1)^2} = e(1+1) = 2e.
$$

---

**(b)** Aparentemente $\dfrac{1-\cos z}{z^3}$ tendría un polo de orden 3, pero el numerador también se anula. Con la serie $1-\cos z = \dfrac{z^2}{2} - \dfrac{z^4}{24} + \cdots$:

$$
\frac{1-\cos z}{z^3} = \frac{1}{2z} - \frac{z}{24} + \frac{z^3}{720} - \cdots
$$

La parte principal es **solo** $\dfrac{1}{2z}$: polo **simple** (no de orden 3), y leyendo el coeficiente:

$$
\operatorname{Res}_{z=0} \frac{1-\cos z}{z^3} = \frac{1}{2}.
$$

---

**(c)** $\cot z = \dfrac{\cos z}{\sin z}$ tiene polo simples donde $\sin z = 0$, en particular en $z=\pi$ (cero simple del denominador, con $\cos\pi = -1 \neq 0$). Usamos la fórmula del cociente $g/h$ con $g=\cos z$, $h=\sin z$, $h'=\cos z$:

$$
\operatorname{Res}_{z=\pi}\cot z = \frac{g(\pi)}{h'(\pi)} = \frac{\cos\pi}{\cos\pi} = 1.
$$

---

**(d)** La serie de la exponencial con $w = 1/z^2$ da directamente la parte principal:

$$
e^{1/z^2} = 1 + \frac{1}{z^2} + \frac{1}{2!\,z^4} + \frac{1}{3!\,z^6} + \cdots
$$

Infinitas potencias negativas: singularidad **esencial** en $z=0$. No hay fórmula abreviada; se lee la serie: **no aparece ningún término $1/z$**, por lo que

$$
\operatorname{Res}_{z=0} e^{1/z^2} = 0.
$$

Note que un residuo puede ser cero aunque la singularidad sea esencial — el residuo captura únicamente el coeficiente $b_{-1}$, no la "gravedad" de la singularidad.
