---
title: Teoría del isospín - Operador de colisión \mathcal{E}
subtitle: Cálculo de probabilidades y representación matricial
date: 2025-11-15
---

Tomemos la base ortonormal:

:::{math}
|n\rangle = \begin{pmatrix}1\\0\end{pmatrix},\qquad
|p\rangle = \begin{pmatrix}0\\1\end{pmatrix}.
:::



 1. Probabilidad de observar $|n\rangle$ después de una colisión si el nucleón era originalmente un neutrón

    Estado inicial: $|n\rangle$  
    Estado después de la colisión: $|\psi^\prime \rangle = \mathcal{E}|n\rangle = (|n\rangle+|p\rangle)/\sqrt{2}$

    Probabilidad de medir $|n\rangle$ en $|\psi^\prime \rangle$:

    :::{math}
    \begin{aligned}
    P_n &= |\langle n|\psi^\prime \rangle|^2
        = \left|\langle n|\frac{|n\rangle+|p\rangle}{\sqrt{2}}\right|^2\\[4pt]
        &= \left|\frac{1}{\sqrt{2}}\langle n|n\rangle + \frac{1}{\sqrt{2}}\langle n|p\rangle\right|^2\\[4pt]
        &= \left|\frac{1}{\sqrt{2}}\cdot 1 + \frac{1}{\sqrt{2}}\cdot 0\right|^2
        = \frac{1}{2}.
    \end{aligned}
    :::

---

 2. Representación matricial de $\mathcal{E}$ en la base {$|n\rangle,|p\rangle$}

    La representaci\'on matricial de $\mathcal{E}$ en la base $\{| n\rangle, | p\rangle \}$, es decir
    $$E=\begin{pmatrix}
    \langle n | \mathcal{E} | n\rangle & \langle n | \mathcal{E} | p\rangle\\
    \langle p | \mathcal{E} | n\rangle & \langle p | \mathcal{E} | p\rangle
    \end{pmatrix}= \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}.$$

    
---

 3. Probabilidad de encontrar $|n\rangle$ después de la colisión si el estado inicial es $|\psi \rangle = (2i|n\rangle-|p\rangle)/\sqrt{5}$

    El nucleón está inicialmente en:

    :::{math}
    |\psi\rangle = \frac{1}{\sqrt{5}}\bigl(2i|n\rangle - |p\rangle\bigr)
    \quad\Rightarrow\quad
    |\psi\rangle = \frac{1}{\sqrt{5}}\begin{pmatrix}2i\\-1\end{pmatrix}.
    :::

    Estado después de la colisión:

    :::{math}
    |\psi'\rangle = E|\psi\rangle
    = \frac{1}{\sqrt{2}}\begin{pmatrix}1 & 1\\1 & -1\end{pmatrix}
    \frac{1}{\sqrt{5}}\begin{pmatrix}2i\\-1\end{pmatrix}
    = \frac{1}{\sqrt{10}}\begin{pmatrix}2i - 1\\2i + 1\end{pmatrix}.
    :::

    Probabilidad de detectar $|n\rangle$ después de la colisión


    :::{math}
    \langle n|\psi'\rangle
    = \frac{1}{\sqrt{10}}(2i - 1).
    :::

    Por tanto:

    :::{math}
    P_n = |\langle n|\psi'\rangle|^2
    = \frac{|2i - 1|^2}{10}
    = \frac{2^2 + 1^2}{10}
    = \frac{5}{10}
    = \frac{1}{2}.
    :::

    de manera que  la probabilidad de encontrar al nucleón en el estado $|n\rangle$ después de la colisión es

    :::{math}
    \boxed{P_n = \frac{1}{2}}
    :::


