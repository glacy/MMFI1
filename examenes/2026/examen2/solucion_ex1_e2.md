
**(a) Armonicidad.** Con $u = \sin x\,\cosh y$:

$$
u_{xx} = -\sin x\,\cosh y,
\qquad
u_{yy} = \sin x\,\cosh y
\quad\Longrightarrow\quad
\nabla^2 u = u_{xx}+u_{yy} = 0.
$$

---

**(b) Conjugada armónica.** De $u_x = v_y$:

$$
v_y = \cos x\,\cosh y
\;\;\Longrightarrow\;\;
v = \cos x\,\sinh y + \varphi(x).
$$

Imponiendo $v_x = -u_y = -\sin x\,\sinh y$:

$$
v_x = -\sin x\,\sinh y + \varphi'(x) = -\sin x\,\sinh y
\;\;\Longrightarrow\;\;
\varphi'(x) = 0
\;\;\Longrightarrow\;\;
\varphi = \text{cte}.
$$

La condición $v(0,0)=0$ fija $\varphi = 0$:

$$
v(x,y) = \cos x\,\sinh y.
$$

---

**(c) Función analítica.**

$$
f(z) = u + iv = \sin x\,\cosh y + i\,\cos x\,\sinh y.
$$

Usando la identidad $\sin(x+iy) = \sin x\cosh y + i\cos x\sinh y$:

$$
\boxed{\,f(z) = \sin z\,}
$$
