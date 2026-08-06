---
title: Solución - Sistema cuántico de espín 1/2
subtitle: Autovalores, valores esperados e incertidumbres de las matrices de Pauli
date: 2025-11-15
---

1. Autovalores y autovectores de las matrices de Pauli

Resolvamos el problema de autovalores $\sigma_i|v\rangle=\lambda|v\rangle$ para cada matriz.

 * $\sigma_x$

    **a) Ecuación característica**

    :::{math}
    |\sigma_x - \lambda I| =
    \begin{vmatrix}
    -\lambda & 1\\ 1 & -\lambda
    \end{vmatrix}
    = \lambda^2 - 1 = 0
    \quad\Rightarrow\quad
    \lambda = \pm 1.
    :::

    **b) Autovectores**

    - $\lambda = +1$:

    :::{math}
    (\sigma_x - I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    -1 & 1\\ 1 & -1
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad a = b.
    :::

    Normalizando: $\boxed{|x_+\rangle = \dfrac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}}$

    - $\lambda = -1$:

    :::{math}
    (\sigma_x + I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    1 & 1\\ 1 & 1
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad a = -b.
    :::

    Normalizando: $\boxed{|x_-\rangle = \dfrac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}}$

---

 * $\sigma_y$

    **a) Ecuación característica**

    :::{math}
    |\sigma_y - \lambda I| =
    \begin{vmatrix}
    -\lambda & -i\\ i & -\lambda
    \end{vmatrix}
    = \lambda^2 - 1 = 0
    \quad\Rightarrow\quad
    \lambda = \pm 1.
    :::

    **b) Autovectores**

    - $\lambda = +1$:

    :::{math}
    (\sigma_y - I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    -1 & -i\\ i & -1
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad a = -ib.
    :::

    Normalizando: $\boxed{|y_+\rangle = \dfrac{1}{\sqrt{2}}\begin{pmatrix}1\\i\end{pmatrix}}$

    - $\lambda = -1$:

    :::{math}
    (\sigma_y + I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    1 & -i\\ i & 1
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad a = ib.
    :::

    Normalizando: $\boxed{|y_-\rangle = \dfrac{1}{\sqrt{2}}\begin{pmatrix}1\\-i\end{pmatrix}}$

---

 * $\sigma_z$

    **a) Ecuación característica**

    :::{math}
    |\sigma_z - \lambda I| =
    \begin{vmatrix}
    1 - \lambda & 0\\ 0 & -1 - \lambda
    \end{vmatrix}
    = (1 - \lambda)(-1 - \lambda) = 0
    \quad\Rightarrow\quad
    \lambda = \pm 1.
    :::

    **b) Autovectores**

    - $\lambda = +1$:

    :::{math}
    (\sigma_z - I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    0 & 0\\ 0 & -2
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad b = 0.
    :::

    Normalizando: $\boxed{|z_+\rangle = \begin{pmatrix}1\\0\end{pmatrix}}$

    ---


    - $\lambda = -1$:

    :::{math}
    (\sigma_z + I)|v\rangle = 0
    \quad\Rightarrow\quad
    \begin{pmatrix}
    2 & 0\\ 0 & 0
    \end{pmatrix}
    \begin{pmatrix}a\\b\end{pmatrix}=0
    \quad\Rightarrow\quad a = 0.
    :::

    Normalizando: $\boxed{|z_-\rangle = \begin{pmatrix}0\\1\end{pmatrix}}$

---

En resumen

| Matriz | Autovalores | Autovectores normalizados |
|--------|-------------|---------------------------|
| $\sigma_x=\begin{pmatrix}0&1\\1&0\end{pmatrix}$ | $\pm 1$ | $\displaystyle \frac{1}{\sqrt 2}\begin{pmatrix}1\\\pm 1\end{pmatrix}$ |
| $\sigma_y=\begin{pmatrix}0&-i\\i&0\end{pmatrix}$ | $\pm 1$ | $\displaystyle \frac{1}{\sqrt 2}\begin{pmatrix}1\\\pm i\end{pmatrix}$ |
| $\sigma_z=\begin{pmatrix}1&0\\0&-1\end{pmatrix}$ | $\pm 1$ | $\begin{pmatrix}1\\0\end{pmatrix},\;\begin{pmatrix}0\\1\end{pmatrix}$ |

---

2. Estado $|\psi\rangle$ como vector columna

$$
|\psi\rangle = \cos\frac{\theta}{2}|+\rangle + e^{i\phi}\sin\frac{\theta}{2}|-\rangle
\quad\longrightarrow\quad
|\psi\rangle = \begin{pmatrix}\cos\frac{\theta}{2}\\[4pt] e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}
$$

:::{math}
\boxed{
|\psi\rangle = \begin{pmatrix} \cos\frac{\theta}{2} \\ e^{i\phi}\sin\frac{\theta}{2} \end{pmatrix}, \qquad
\langle\psi| = \begin{pmatrix} \cos\frac{\theta}{2} & e^{-i\phi}\sin\frac{\theta}{2} \end{pmatrix}}
:::

---

3. Valores esperados $\langle\sigma_i\rangle$

- $\langle\psi|\sigma_x|\psi\rangle$

    :::{math}
    \begin{aligned}
    \sigma_x|\psi\rangle &=
    \begin{pmatrix}0&1\\1&0\end{pmatrix}
    \begin{pmatrix}\cos\frac{\theta}{2}\\e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    = \begin{pmatrix}e^{i\phi}\sin\frac{\theta}{2}\\ \cos\frac{\theta}{2}\end{pmatrix}\\[6pt]

    \langle\psi|\sigma_x|\psi\rangle
    &= \begin{pmatrix}\cos\frac{\theta}{2}&e^{-i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    \begin{pmatrix}e^{i\phi}\sin\frac{\theta}{2}\\ \cos\frac{\theta}{2}\end{pmatrix}\\[6pt]
    &= \cos\frac{\theta}{2}\,e^{i\phi}\sin\frac{\theta}{2}
    + e^{-i\phi}\sin\frac{\theta}{2}\,\cos\frac{\theta}{2}\\[6pt]
    &= \sin\frac{\theta}{2}\cos\frac{\theta}{2}\bigl(e^{i\phi}+e^{-i\phi}\bigr)\\[6pt]
    &= \tfrac12\sin\theta\cdot 2\cos\phi = \sin\theta\,\cos\phi
    \end{aligned}
    :::


---


- $\langle\psi|\sigma_y|\psi\rangle$

    :::{math}
    \begin{aligned}
    \sigma_y|\psi\rangle &=
    \begin{pmatrix}0&-i\\i&0\end{pmatrix}
    \begin{pmatrix}\cos\frac{\theta}{2}\\e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    = \begin{pmatrix}-ie^{i\phi}\sin\frac{\theta}{2}\\ i\cos\frac{\theta}{2}\end{pmatrix}\\[6pt]

    \langle\psi|\sigma_y|\psi\rangle
    &= \begin{pmatrix}\cos\frac{\theta}{2}&e^{-i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    \begin{pmatrix}-ie^{i\phi}\sin\frac{\theta}{2}\\ i\cos\frac{\theta}{2}\end{pmatrix}\\[6pt]
    &= -i\cos\frac{\theta}{2}\,e^{i\phi}\sin\frac{\theta}{2}
    + i\,e^{-i\phi}\sin\frac{\theta}{2}\,\cos\frac{\theta}{2}\\[6pt]
    &= i\sin\frac{\theta}{2}\cos\frac{\theta}{2}\bigl(-e^{i\phi}+e^{-i\phi}\bigr)\\[6pt]
    &= i\cdot\tfrac12\sin\theta\cdot(-2i\sin\phi) = \sin\theta\,\sin\phi
    \end{aligned}
    :::


---


- $\langle\psi|\sigma_z|\psi\rangle$

    :::{math}
    \begin{aligned}
    \sigma_z|\psi\rangle &=
    \begin{pmatrix}1&0\\0&-1\end{pmatrix}
    \begin{pmatrix}\cos\frac{\theta}{2}\\e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    = \begin{pmatrix}\cos\frac{\theta}{2}\\ -e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}\\[6pt]

    \langle\psi|\sigma_z|\psi\rangle
    &= \begin{pmatrix}\cos\frac{\theta}{2}&e^{-i\phi}\sin\frac{\theta}{2}\end{pmatrix}
    \begin{pmatrix}\cos\frac{\theta}{2}\\ -e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}\\[6pt]
    &= \cos^2\frac{\theta}{2} - e^{-i\phi}\sin\frac{\theta}{2}\,e^{i\phi}\sin\frac{\theta}{2}\\[6pt]
    &= \cos^2\frac{\theta}{2} - \sin^2\frac{\theta}{2} = \cos\theta
    \end{aligned}
    :::

---

En resumen

:::{math}
\boxed{
\langle\sigma_x\rangle = \sin\theta\,\cos\phi,\quad
\langle\sigma_y\rangle = \sin\theta\,\sin\phi,\quad
\langle\sigma_z\rangle = \cos\theta}
:::

---

4. Incertidumbres $(\Delta\sigma_i)^2 = \langle\sigma_i^2\rangle - \langle\sigma_i\rangle^2$

    Usando $\sigma_i^2 = I$:

    $$
    \begin{aligned}
    (\Delta\sigma_x)^2 &= 1 - \sin^2\theta\,\cos^2\phi \\[4pt]
    (\Delta\sigma_y)^2 &= 1 - \sin^2\theta\,\sin^2\phi \\[4pt]
    (\Delta\sigma_z)^2 &= \sin^2\theta
    \end{aligned}
    $$

---

5. Probabilidades de medir $\pm 1$

    - Medida de $\sigma_z$ 

        Autovectores ya están dados por $|+\rangle,\, |-\rangle$.

        :::{math}
        \begin{aligned}
        P_z(+1) &= |\langle +|\psi\rangle|^2
                = \left|\cos\frac{\theta}{2}\right|^2
                = \cos^2\frac{\theta}{2},\\[4pt]
        P_z(-1) &= |\langle -|\psi\rangle|^2
                = \left|e^{i\phi}\sin\frac{\theta}{2}\right|^2
                = \sin^2\frac{\theta}{2}.
        \end{aligned}
        :::

    - Medida de $\sigma_x$

        Autovectores normalizados:

        :::{math}
        |x_+\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix},\qquad
        |x_-\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}.
        :::

        Proyectamos:

        :::{math}
        \begin{aligned}
        \langle x_+|\psi\rangle
        &= \frac{1}{\sqrt{2}}\begin{pmatrix}1&1\end{pmatrix}
        \begin{pmatrix}\cos\frac{\theta}{2}\\ e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix}\\
        &= \frac{1}{\sqrt{2}}\left(\cos\frac{\theta}{2} + e^{i\phi}\sin\frac{\theta}{2}\right),\\[6pt]

        |\langle x_+|\psi\rangle|^2
        &= \frac{1}{2}\left|\cos\frac{\theta}{2} + e^{i\phi}\sin\frac{\theta}{2}\right|^2\\[4pt]
        &= \frac{1}{2}\left[
        \cos^2\frac{\theta}{2} + \sin^2\frac{\theta}{2}
        + 2\cos\frac{\theta}{2}\sin\frac{\theta}{2}\cos\phi
        \right]\\[4pt]
        &= \frac{1}{2}\left[1 + \sin\theta\cos\phi\right].
        \end{aligned}
        :::

        Análogamente:

        :::{math}
        \begin{aligned}
        \langle x_-|\psi\rangle
        &= \frac{1}{\sqrt{2}}\left(\cos\frac{\theta}{2} - e^{i\phi}\sin\frac{\theta}{2}\right),\\[6pt]

        |\langle x_-|\psi\rangle|^2
        &= \frac{1}{2}\left[1 - \sin\theta\cos\phi\right].
        \end{aligned}
        :::

        Por lo tanto:

        :::{math}
        \boxed{
        \begin{aligned}
        P_x(+1) &= \frac{1 + \sin\theta\cos\phi}{2},\\[4pt]
        P_x(-1) &= \frac{1 - \sin\theta\cos\phi}{2}.
        \end{aligned}
        }
        :::


    - Medida de $\sigma_y$

        Autovectores normalizados:

        :::{math}
        |y_+\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\i\end{pmatrix},\qquad
        |y_-\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\-i\end{pmatrix}.
        :::

        Proyectamos:

        :::{math}
        \begin{aligned}
        \langle y_+|\psi\rangle
        &= \frac{1}{\sqrt{2}}\begin{pmatrix}1&-i\end{pmatrix}
        \begin{pmatrix}\cos\frac{\theta}{2}\\ e^{i\phi}\sin\frac{\theta}{2}\end{pmatrix} \\
        &= \frac{1}{\sqrt{2}}\left(\cos\frac{\theta}{2} - i e^{i\phi}\sin\frac{\theta}{2}\right),\\[6pt]

        |\langle y_+|\psi\rangle|^2
        &= \frac{1}{2}\left|\cos\frac{\theta}{2} - i e^{i\phi}\sin\frac{\theta}{2}\right|^2\\[4pt]
        &= \frac{1}{2}\left[
        \cos^2\frac{\theta}{2} + \sin^2\frac{\theta}{2}
        + 2\cos\frac{\theta}{2}\sin\frac{\theta}{2}\sin\phi
        \right]\\[4pt]
        &= \frac{1}{2}\left[1 + \sin\theta\sin\phi\right].
        \end{aligned}
        :::

        Análogamente:

        :::{math}
        \begin{aligned}
        \langle y_-|\psi\rangle
        &= \frac{1}{\sqrt{2}}\left(\cos\frac{\theta}{2} + i e^{i\phi}\sin\frac{\theta}{2}\right),\\[6pt]

        |\langle y_-|\psi\rangle|^2
        &= \frac{1}{2}\left[1 - \sin\theta\sin\phi\right].
        \end{aligned}
        :::

        Por lo tanto:

        :::{math}
        \boxed{
        \begin{aligned}
        P_y(+1) &= \frac{1 + \sin\theta\sin\phi}{2},\\[4pt]
        P_y(-1) &= \frac{1 - \sin\theta\sin\phi}{2}.
        \end{aligned}
        }
        :::

---

En resumen

| Observable | $P(+1)$ | $P(-1)$ |
|------------|---------|---------|
| $\sigma_z$ | $\cos^2\dfrac{\theta}{2}$ | $\sin^2\dfrac{\theta}{2}$ |
| $\sigma_x$ | $\dfrac{1+\sin\theta\,\cos\phi}{2}$ | $\dfrac{1-\sin\theta\,\cos\phi}{2}$ |
| $\sigma_y$ | $\dfrac{1+\sin\theta\,\sin\phi}{2}$ | $\dfrac{1-\sin\theta\,\sin\phi}{2}$ |