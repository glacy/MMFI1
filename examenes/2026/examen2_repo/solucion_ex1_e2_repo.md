
**(a) Armonicidad.** Con $u = \cos x\,\cosh y$:

$$
u_{xx} = -\cos x\,\cosh y,
\qquad
u_{yy} = \cos x\,\cosh y
\quad\Longrightarrow\quad
\nabla^2 u = u_{xx}+u_{yy} = 0.
$$

---

**(b) Conjugada armónica.** De $u_x = v_y$:

$$
v_y = -\sin x\,\cosh y
\;\;\Longrightarrow\;\;
v = -\sin x\,\sinh y + \varphi(x).
$$

Imponiendo $v_x = -u_y$:

$$
v_x = -\cos x\,\sinh y + \varphi'(x) = -\cos x\,\sinh y
\;\;\Longrightarrow\;\;
\varphi'(x) = 0
\;\;\Longrightarrow\;\;
\varphi = \text{cte}.
$$

La condición $v(0,0)=0$ fija $\varphi = 0$:

$$
v(x,y) = -\sin x\,\sinh y.
$$

---

**(c) Función analítica.**

$$
f(z) = u + iv = \cos x\,\cosh y - i\,\sin x\,\sinh y.
$$

Usando la identidad $\cos(x+iy) = \cos x\cosh y - i\sin x\sinh y$:

$$
\boxed{\,f(z) = \cos z\,}
$$
