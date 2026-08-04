

Considere una esfera maciza de radio $a$ con densidad $\rho$ (constante), con carga total $Q = \frac{4 \pi}{3} \rho a^3$.

Por simetría esférica, el campo eléctrico $\vec{E}(r) = E(r)\hat{r}$ es radial y solo depende de $r$.

 1) Para $r<a$ (superficie **dentro** de la esfera), la carga encerrada por la superficie de radio $r$ es:
$$
Q_{\text{enc}}(r) = \frac{4 \pi}{3} \rho r^3 .
$$
Por Ley de Gauss,
$$
\oiint_{S} \vec{E}\cdot d\vec{A} = \frac{Q_{\text{enc}}(r)}{\varepsilon_0}
= \frac{\frac{4 \pi}{3} \rho r^3}{\varepsilon_0}.
$$
Por simetría, $\vec{E}\cdot d\vec{A} = E(r)dA$ y $\oiint_S dA = 4\pi r^2$. Luego,
:::{math}
E(r)(4\pi r^2) = \frac{\frac{4 \pi}{3} \rho r^3}{\varepsilon_0}
:::

:::{math}
\boxed{E(r) = \frac{\rho}{3\varepsilon_0}r,\quad (r<a)}.
:::

 2) Para $r\ge a$ (superficie **fuera** de la esfera) la carga encerrada ya toda la de la esfera:
$$
Q_{\text{enc}} = \frac{4 \pi}{3} \rho a^3.
$$
Entonces,
:::{math}
E(r)(4\pi r^2) = \frac{\frac{4 \pi}{3} \rho a^3}{\varepsilon_0}
:::

:::{math}
\boxed{E(r) = \frac{1}{4\pi\varepsilon_0}\frac{Q}{r^2}
= \frac{\rho}{3\varepsilon_0}\frac{a^3}{r^2},\quad (r\ge a)}.
:::


:::{math}
\boxed{
\vec{E}(r)=
\begin{cases}
\dfrac{\rho}{3\varepsilon_0}r\hat{r}, & r<a,\\
\dfrac{\rho}{3\varepsilon_0}\dfrac{a^3}{r^2}\hat{r}, & r\ge a.
\end{cases}}
:::


Ahora, el teorema de la divergencia afirma:
$$
\iiint_{V} \nabla\cdot\vec{E}dV = \oiint_{\partial V} \vec{E}\cdot d\vec{S}.
$$

En coordenadas esféricas, para un campo radial $\vec{E}=E(r)\hat{r}$:
$$
\nabla\cdot\vec{E}
= \frac{1}{r^2}\frac{d}{dr}(r^2 E(r)).
$$

- **Dentro** ($r<a$): $E(r)=\dfrac{\rho}{3\varepsilon_0}r$.  
  :::{math}
  r^2 E(r)=\frac{\rho}{3\varepsilon_0}r^3
  \;\Rightarrow\;
  \frac{d}{dr}(r^2E)=\frac{\rho}{\varepsilon_0}r^2
  \;\Rightarrow\;
  :::

  :::{math}
  \boxed{\nabla\cdot\vec{E}=\frac{\rho}{\varepsilon_0},\quad (r<a)}.
  :::

- **Fuera** ($r>a$): $E(r)=\dfrac{\rho}{3\varepsilon_0}\dfrac{a^3}{r^2}$.  
  :::{math}
  r^2E(r)=\frac{\rho}{3\varepsilon_0}a^3=\text{cte}
  \;\Rightarrow\;
  \frac{d}{dr}(r^2E)=0
  :::

  :::{math}
  \boxed{\nabla\cdot\vec{E}=0,\quad (r>a)}.
  :::

Ahora, considerando el teorema de la divergencia:

- **Caso $r<a$**:  
  $$
  \iiint_V (\nabla\cdot\vec{E})dV
  = \int_0^r \int_0^\pi \int_0^{2\pi}
  (\frac{\rho}{\varepsilon_0}) r^{\prime 2}\sin\theta d\phi d\theta dr^\prime
  = \frac{\rho}{\varepsilon_0}\frac{4 \pi}{3} r^3.
  $$
El flujo sobre $\partial V$ (esfera de radio $r$) es:
  $$
  \oiint_{\partial V} \vec{E}\cdot d\vec{A}
  = E(R)4\pi r^2
  = (\frac{\rho}{3\varepsilon_0}r)4\pi r^2
  = \frac{\rho}{\varepsilon_0}\frac{4 \pi}{3} r^3.
  $$


- **Caso $r\ge a$**:  
  $$
  \iiint_V \nabla\cdot\vec{E}dV
  = \int_{r<a}\frac{\rho}{\varepsilon_0}dV + \int_{r>a}0dV
  = \frac{\rho}{\varepsilon_0}\frac{4 \pi}{3} a^3
  = \frac{Q}{\varepsilon_0}.
  $$
  y
  $$
  \oiint_{\partial V} \vec{E}\cdot d\vec{A}
  = E(r)4\pi r^2
  = (\frac{\rho}{3\varepsilon_0}\frac{a^3}{r^2})4\pi r^2
  = \frac{\rho}{\varepsilon_0}\frac{4 \pi}{3} a^3
  = \frac{Q}{\varepsilon_0}.
  $$

---

Por lo tanto
:::{math}
\boxed{\;\iiint_V \nabla\cdot\vec{E}dV = \oiint_{\partial V}\vec{E}\cdot d\vec{A}\;}
:::
tanto **dentro** como **fuera** de la distribución, en acuerdo con:
$$
\nabla\cdot\vec{E}=\frac{\rho}{\varepsilon_0}\quad\text{(dentro)},\qquad
\nabla\cdot\vec{E}=0\quad\text{(fuera)}.
$$


