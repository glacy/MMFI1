
El potencial es $u(x,y) = e^{-y}\cos x$, con $u$, $v$ partes real e imaginaria de una función analítica $f(z) = u + iv$.

**Armónicidad de $u$.** Calculamos las derivadas parciales segundas:

$$
u_x = -e^{-y}\sin x, \qquad u_{xx} = -e^{-y}\cos x,
$$

$$
u_y = -e^{-y}\cos x, \qquad u_{yy} = e^{-y}\cos x.
$$

Sumando:

$$
\nabla^2 u = u_{xx} + u_{yy} = -e^{-y}\cos x + e^{-y}\cos x = 0.
$$

Por lo tanto $u$ es armónica en todo el plano.

---

**Conjugada armónica.** Las condiciones de Cauchy-Riemann exigen $u_x=v_y$ y $u_y=-v_x.$ De la primera:

$$
v_y = u_x = -e^{-y}\sin x \;\Longrightarrow\; v(x,y) = e^{-y}\sin x + g(x),
$$

donde $g(x)$ es una función de integración. Derivando respecto a $x$ e imponiendo la segunda condición:

$$
v_x = e^{-y}\cos x + g'(x) = -u_y = e^{-y}\cos x \;\Longrightarrow\; g'(x) = 0 \;\Longrightarrow\; g(x) = C.
$$

La condición $v(0,0)=0$ fija $C=0$. Por lo tanto:

$$
v(x,y) = e^{-y}\sin x.
$$

---

**La función analítica.** Combinando ambas partes:

$$
f(z) = e^{-y}\cos x + i\,e^{-y}\sin x = e^{-y}\left(\cos x + i\sin x\right) = e^{-y}e^{ix} = e^{ix-y}.
$$

Como $z = x+iy$, tenemos $iz = ix - y$, de modo que

$$
\boxed{\;f(z) = e^{iz}\;}
$$

es decir, la función construida es la exponencial compleja evaluada en $iz$.

---
