
**(a) Posición de las singularidades.** Los polos de $f(z) = \frac{1}{z^2-4} = \frac{1}{(z-2)(z+2)}$ están en $z=2$ y $z=-2$, con $|2| = |-2| = 2 < 3$: **ambos quedan dentro** de $C: |z|=3$. Cauchy-Goursat exige que $f$ sea analítica dentro y sobre $C$; como la hipótesis falla, **no** puede aplicarse directamente para concluir que la integral es cero.

---

**(b) Deformación de contornos.** Como $f$ es analítica en la región entre $C$ y las dos circunferencias pequeñas $C_1$ (alrededor de $z=2$) y $C_2$ (alrededor de $z=-2$), todas recorridas en sentido antihorario, la deformación de contornos da

$$
\oint_C f\,dz = \oint_{C_1} f\,dz + \oint_{C_2} f\,dz.
$$

- En $C_1$: el punto $z=-2$ queda fuera, así que escribimos $f(z) = \dfrac{1}{z+2}\cdot\dfrac{1}{z-2}$ con $g(z) = \frac{1}{z+2}$ analítica dentro y sobre $C_1$. La fórmula integral de Cauchy con $z_0 = 2$ da

$$
\oint_{C_1} f\,dz = 2\pi i\,g(2) = 2\pi i\cdot\frac{1}{4} = \frac{\pi i}{2}.
$$

- En $C_2$: ahora $z=2$ queda fuera y $f(z) = \dfrac{1}{z-2}\cdot\dfrac{1}{z+2}$ con $h(z) = \frac{1}{z-2}$ analítica; con $z_0 = -2$:

$$
\oint_{C_2} f\,dz = 2\pi i\,h(-2) = 2\pi i\cdot\left(-\frac{1}{4}\right) = -\frac{\pi i}{2}.
$$

Sumando:

$$
\oint_C \frac{dz}{z^2-4} = \frac{\pi i}{2} - \frac{\pi i}{2} = 0.
$$

La integral total es cero **por cancelación de aportes**, no porque $f$ sea analítica: cada polo encerrado aporta su "cuota" ($\pm\pi i/2$) y aquí las cuotas se compensan. Esto no contradice a Cauchy-Goursat, simplemente no es su conclusión.

---

**(c) Otros contornos.**

- $\displaystyle\oint_{|z|=1} f\,dz$: los polos $\pm 2$ están **fuera** ($|{\pm}2| = 2 > 1$); $f$ es analítica dentro y sobre el contorno. **Cauchy-Goursat** aplica: la integral vale $0$.
- $\displaystyle\oint_{|z-2|=1/2} f\,dz$: solo $z=2$ queda dentro ($|2-2| = 0 < 1/2$ y $|-2-2| = 4 > 1/2$). Como en (b): $\dfrac{\pi i}{2}$.
- $\displaystyle\oint_{|z+2|=1/2} f\,dz$: solo $z=-2$ queda dentro ($|-2+2| = 0$ y $|2+2| = 4 > 1/2$). Como en (b): $-\dfrac{\pi i}{2}$.

---

**(d) Regla general.** El valor de una integral cerrada **solo depende de qué singularidades encierra el contorno** y de cuáles no: cada polo singular contribuye una cantidad fija — su **residuo** ($+1/4$ y $-1/4$ en unidades de $2\pi i$ para estos dos polos) — y el resultado es $2\pi i$ veces la suma de los residuos interiores. Los contornos pueden deformarse con total libertad siempre que no se cruce una singularidad.
