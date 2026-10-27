
**(i) Cuadrado completo y polos.** Completando el cuadrado:

$$
z^2 + 2z + 5 = (z+1)^2 + 4 = (z+1-2i)(z+1+2i),
$$

de modo que los polos de $f(z) = \dfrac{1}{z^2+2z+5}$ son

$$
z = -1+2i \qquad\text{y}\qquad z = -1-2i.
$$

El primero tiene $\Im z = +2 > 0$: queda **dentro** de $C_R$ cuando $R \to \infty$; el segundo, con $\Im z = -2 < 0$, queda fuera. Solo hay que calcular **un** residuo.

---

**(ii) Residuo.** Polo simple; usamos la fórmula del cociente $g/h'$ con $g = 1$, $h = z^2+2z+5$, $h' = 2z+2$:

$$
\operatorname{Res}_{z=-1+2i} f = \frac{1}{2z+2}\bigg|_{z=-1+2i} = \frac{1}{2(-1+2i)+2} = \frac{1}{4i} = -\frac{i}{4}.
$$

El teorema del residuo da

$$
\oint_{C_R} \frac{dz}{z^2+2z+5} = 2\pi i\cdot\frac{1}{4i} = \frac{\pi}{2}.
$$

---

**(iii) El arco se desvanece.** Sobre el semicírculo $|z| = R$, $\Im z \ge 0$:

$$
|z^2+2z+5| \ge |z|^2 - 2|z| - 5 = R^2 - 2R - 5
\;\Longrightarrow\;
|f(z)| \le \frac{1}{R^2-2R-5}.
$$

La longitud del arco es $L = \pi R$, así que la estimación ML da

$$
\left|\int_{\text{arco}} f\,dz\right| \le \frac{\pi R}{R^2-2R-5} \;\xrightarrow[R\to\infty]{}\; 0,
$$

porque el denominador crece como $R^2$ (grado del denominador excede al del numerador en 2). Sobrevive solo el segmento $[-R,R]$:

$$
\boxed{\;\int_{-\infty}^{\infty} \frac{dx}{x^2+2x+5} = \frac{\pi}{2}\;}
$$

---

**(iv) Interpretación Lorentziana.** Con el cuadrado completo, $x^2+2x+5 = (x-(-1))^2 + 2^2$: es una Lorentziana centrada en $x_0 = -1$ (el centro de línea está desplazado) con ancho $\gamma = 2$. La fórmula general

$$
\int_{-\infty}^{\infty}\frac{dx}{(x-x_0)^2+\gamma^2} = \frac{\pi}{\gamma}
$$

da $\pi/2$ — exactamente el resultado de los residuos. El área bajo el perfil depende **solo del ancho de línea** $\gamma$, no del desplazamiento $x_0$: trasladar la Lorentziana no cambia su área.
