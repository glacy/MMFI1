
Sea $c = \dfrac{\lambda}{2\pi\varepsilon_0}$, de modo que $\Omega(z) = -c\ln z$. Con la rama principal, $z = re^{i\theta}$ y $-\pi < \theta < \pi$:

$$
\Omega(z) = -c\left(\ln r + i\theta\right)
\;\Longrightarrow\;
u(r,\theta) = -c\ln r,
\qquad
v(r,\theta) = -c\,\theta.
$$

**(a) Cauchy-Riemann en polares.** Derivamos:

$$
u_r = -\frac{c}{r}, \qquad u_\theta = 0, \qquad v_r = 0, \qquad v_\theta = -c.
$$

Verificación:

$$
r\,u_r = r\left(-\frac{c}{r}\right) = -c = v_\theta \;\checkmark,
\qquad
u_\theta = 0 = -r\,(0) = -r\,v_r \;\checkmark.
$$

Las condiciones de Cauchy-Riemann se cumplen en el plano cortado (fuera del origen y del corte): $\Omega$ es analítica allí, con $\dfrac{d\Omega}{dz} = -\dfrac{c}{z}$.

---

**(b) Campo eléctrico y geometría.** El potencial físico es $u = -c\ln r$ y el campo es su gradiente con signo opuesto:

$$
\vec{E} = -\nabla u = -\frac{du}{dr}\,\hat{r} = \frac{c}{r}\,\hat{r} = \frac{\lambda}{2\pi\varepsilon_0 r}\,\hat{r}.
$$

- **Equipotenciales** ($u = $ const): $r = $ const — circunferencias concéntricas en el origen.
- **Líneas de campo** ($v = $ const): $\theta = $ const — semirrectas radiales.

Las dos familias se cortan en ángulo recto. Esta ortogonalidad no es casual: es la consecuencia geométrica de las ecuaciones de Cauchy-Riemann (los gradientes $\nabla u$ y $\nabla v$ son ortogonales), y es lo que convierte a las funciones analíticas en el lenguaje natural de los problemas planos de potencial.

---

**(c) Flujo por cálculo directo.** Sobre una circunferencia $C_r$ de radio $r$ centrada en el origen, la normal exterior es $\hat{n} = \hat{r}$, así que $\vec{E}\cdot\hat{n} = c/r$ y $ds = r\,d\theta$:

$$
\Phi_E = \oint_{C_r} \vec{E}\cdot\hat{n}\,ds = \int_0^{2\pi} \frac{c}{r}\,r\,d\theta = 2\pi c = \frac{\lambda}{\varepsilon_0}.
$$

El radio $r$ se cancela: el flujo es **independiente del tamaño del contorno** — la ley de Gauss para la carga encerrada $Q = \lambda\cdot 1$ (por unidad de longitud).

---

**(d) El mismo resultado como integral de contorno compleja.** Como $\vec{E} = (E_x, E_y) = \frac{c}{r}(\cos\theta, \sin\theta)$:

$$
E_x - iE_y = \frac{c}{r}\left(\cos\theta - i\sin\theta\right) = \frac{c}{r}e^{-i\theta} = \frac{c\,\bar z}{r^2} = \frac{c}{z},
$$

donde usamos $\bar z = re^{-i\theta}$ y $r^2 = z\bar z$. Nótese que $E_x - iE_y = -\dfrac{d\Omega}{dz}$, como corresponde a $\vec{E} = -\nabla u$. Para cualquier curva $C$, parametrizando $dz = dx + i\,dy$:

:::{math}
\begin{align*}
\oint_C (E_x - iE_y)\,dz =& \oint_C (E_x\,dx + E_y\,dy) + i\oint_C (E_x\,dy - E_y\,dx) \\
=& \underbrace{\oint_C \vec{E}\cdot\vec{t}\,ds}_{\text{circulación}} \;+\; i\underbrace{\oint_C \vec{E}\cdot\hat{n}\,ds}_{\text{flujo}}.
\end{align*}
:::

```{note}
Note que sobre la curva vale $d\vec{r} = \vec{t}\,ds = (dx, dy)$, pues $\vec{t} = d\vec{r}/ds$. Al multiplicar escalarmente por $\vec{E} = (E_x, E_y)$ se obtiene $\vec{E}\cdot\vec{t}\,ds = E_x\,dx + E_y\,dy$. Análogamente, $\hat{n}\,ds = (dy, -dx)$ — la normal exterior es $\vec{t}$ rotado $-90°$ — de donde $\vec{E}\cdot\hat{n}\,ds = E_x\,dy - E_y\,dx$.
```

Sobre $C_r$ (recorrida en sentido antihorario), con $\displaystyle\oint_{C_r}\frac{dz}{z} = 2\pi i$:

$$
\oint_{C_r}(E_x - iE_y)\,dz = c\oint_{C_r}\frac{dz}{z} = 2\pi i c.
$$

Tomando partes: la **circulación** (parte real) es $0$ y el **flujo** (parte imaginaria) es $2\pi c = \lambda/\varepsilon_0$ — exactamente el resultado de (c). La ley de Gauss queda codificada en el residuo de $1/z$ en el origen.

Si el contorno **no** encierra el alambre, la función $c/z$ es analítica en toda la región interior (el origen está afuera) y **Cauchy-Goursat** da $\oint_C \dfrac{dz}{z} = 0$: flujo y circulación nulos. Físicamente: sin carga encerrada, tantas líneas de campo entran como salen — el flujo neto es cero.
