---
title: Solución Ejercicio 5
keywords:
  - metodo-de-los-residuos
  - integrales-reales
  - semiplano-superior
tags:
  - metodo-de-los-residuos
  - integrales-reales
  - semiplano-superior
objetivos: []
---

**(i) Polos y su ubicación.** Los polos de $f(z) = \frac{1}{z^4+4}$ son las raíces de $z^4 = -4 = 4\,e^{i(\pi + 2k\pi)}$:

$$
z_k = \sqrt{2}\; e^{i\left(\frac{\pi}{4} + \frac{k\pi}{2}\right)},
\qquad k = 0,1,2,3,
\quad\Longrightarrow\quad
z_k = \pm 1 \pm i.
$$

Todos tienen módulo $|z_k| = \sqrt{2}$, así que para $R > \sqrt{2}$ el contorno $C_R$ encierra a **todos**; el que $R\to\infty$ nos interesa son los del **semiplano superior** ($\Im z > 0$):

$$
z_0 = 1 + i
= \sqrt{2}\,e^{i\pi/4},
\qquad
z_1 = -1 + i
= \sqrt{2}\,e^{i3\pi/4}.
$$

(Los conjugados $1-i$ y $-1-i$, en el semiplano inferior, no participan: el contorno no los rodea.)

---

**(ii) Residuos.** Polos simples; regla del cociente con $h(z) = z^4+4$, $h'(z) = 4z^3$:

$$
\operatorname{Res}_{z=z_k} \frac{1}{z^4+4} = \frac{1}{4z_k^3}.
$$

*En $z_0 = 1+i$:* $z_0^3 = 2\sqrt{2}\,e^{i3\pi/4} = 2\sqrt{2}\cdot\frac{-1+i}{\sqrt{2}} = -2 + 2i$, de modo que

$$
\operatorname{Res}_{z_0} = \frac{1}{4(-2+2i)} = \frac{-2-2i}{4\cdot 8} = -\frac{1+i}{16}.
$$

*En $z_1 = -1+i$:* (ejercicio 3d) $z_1^3 = 2+2i$ y

$$
\operatorname{Res}_{z_1} = \frac{1}{4(2+2i)} = \frac{1-i}{16}.
$$

Suma de residuos:

$$
-\frac{1+i}{16} + \frac{1-i}{16} = \frac{-2i}{16} = -\frac{i}{8}.
$$

---

**(iii) El arco se desvanece y el resultado.** Sobre el semicírculo $|z| = R$, $\Im z \ge 0$:

$$
|z^4 + 4| \;\ge\; |z|^4 - 4 = R^4 - 4
\;\Longrightarrow\;
|f(z)| \le \frac{1}{R^4-4},
$$

y como la longitud del arco es $\pi R$, la estimación ML da

$$
\left|\int_{\text{arco}} f\,dz\right| \le \frac{\pi R}{R^4 - 4} \;\xrightarrow[R\to\infty]{}\; 0.
$$

Entonces el teorema del residuo, en el límite:

$$
I = 2\pi i\left(-\frac{i}{8}\right) = \boxed{\;\frac{\pi}{4}\;}
$$

**Chequeo de sanidad:** el integrando es positivo y su integral debe ser real y positiva ✓. (Además, $x^4+4 = (x^2-2x+2)(x^2+2x+2)$ permite verificar con logaritmos y arctangentes: el resultado coincide.)

**Nota:** el resultado general $\int_{-\infty}^{\infty} \frac{dx}{x^4+a^4} = \frac{\pi}{a^{3}\sqrt{2}}$ se obtiene por el mismo método — un cambio de escala $x = a\,u$ lo reduce al caso clásico $\int du/(u^4+1) = \pi/\sqrt{2}$; para $a = \sqrt{2}$ ambos coinciden.
