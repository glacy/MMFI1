
Escribimos $f(z) = |z|^2 = x^2 + y^2$, una función **real-valuada**: $u(x,y) = x^2+y^2$, $v(x,y)=0$. Como no es analítica, hay que **parametrizar y calcular**.

**Camino (a): segmento recto.** Con $z(t) = t(1+i)$, $t\in[0,1]$, tenemos $z'(t) = 1+i$ y $|z(t)|^2 = |t(1+i)|^2 = 2t^2$. Entonces

$$
\int_{C_1} |z|^2\,dz = \int_0^1 2t^2\,(1+i)\,dt = 2(1+i)\left[\frac{t^3}{3}\right]_0^1 = \frac{2}{3}(1+i) = \frac{2}{3} + \frac{2}{3}i.
$$

---

**Camino (b): camino en "L".** Dividimos en dos segmentos.

*Tramo horizontal* (de $0$ a $1$): $z(t) = t$, $z'(t)=1$, $|z|^2 = t^2$:

$$
\int_0^1 t^2\,dt = \frac{1}{3}.
$$

*Tramo vertical* (de $1$ a $1+i$): $z(t) = 1 + it$, $z'(t) = i$, $|z|^2 = 1+t^2$:

$$
\int_0^1 (1+t^2)\,i\,dt = i\left(1 + \frac{1}{3}\right) = \frac{4}{3}i.
$$

Sumando ambos tramos:

$$
\int_{C_2} |z|^2\,dz = \frac{1}{3} + \frac{4}{3}i.
$$

---

**Comparación.** Los resultados **no coinciden**:

$$
\int_{C_1} |z|^2\,dz = \frac{2}{3} + \frac{2}{3}i
\qquad\neq\qquad
\int_{C_2} |z|^2\,dz = \frac{1}{3} + \frac{4}{3}i.
$$

La razón está en las condiciones de Cauchy-Riemann. Para $f(z)=|z|^2$:

$$
u_x = 2x, \qquad v_y = 0 \;\Longrightarrow\; u_x = v_y \text{ solo si } x=0,
$$

$$
u_y = 2y, \qquad -v_x = 0 \;\Longrightarrow\; u_y = -v_x \text{ solo si } y=0.
$$

Las ecuaciones de Cauchy-Riemann solo se satisfacen simultáneamente en el origen: $f$ es diferenciable en $z=0$, pero **no es analítica en ningún dominio** — la analiticidad exige diferenciabilidad en una vecindad completa. Sin analiticidad no hay antiderivada $F$ con $F' = f$ en un dominio que contenga los caminos, y por tanto el teorema fundamental del cálculo no aplica: la integral **depende del camino**.
