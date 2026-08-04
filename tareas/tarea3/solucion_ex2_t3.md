Los operadores de Pauli están definidos como:

:::{math}
\begin{aligned}
\hat{\sigma}_x &= |-\rangle \langle+| + |+\rangle \langle-| \\
\hat{\sigma}_y &= i|-\rangle \langle+| - i|+\rangle \langle-| \\
\hat{\sigma}_z &= |+\rangle \langle+| - |-\rangle \langle-|
\end{aligned}
:::

---



:::{math}
\begin{aligned}
\langle + |\hat{\sigma}_x &= \langle + |(|-\rangle \langle+| + |+\rangle \langle-|) \\
&= \langle + |-\rangle \langle+| + \langle + |+\rangle \langle-| \\
&= 0 \cdot \langle+| + 1 \cdot \langle-| \\
&= \langle-|
\end{aligned}
:::

---

:::{math}
\begin{aligned}
\langle - |\hat{\sigma}_x &= \langle - |(|-\rangle \langle+| + |+\rangle \langle-|) \\
&= \langle - |-\rangle \langle+| + \langle - |+\rangle \langle-| \\
&= 1 \cdot \langle+| + 0 \cdot \langle-| \\
&= \langle+|
\end{aligned}
:::

---

:::{math}
\begin{aligned}
\langle + |\hat{\sigma}_y &= \langle + |(i|-\rangle \langle+| - i|+\rangle \langle-|) \\
&= i\langle + |-\rangle \langle+| - i\langle + |+\rangle \langle-| \\
&= i \cdot 0 \cdot \langle+| - i \cdot 1 \cdot \langle-| \\
&= -i\langle-|
\end{aligned}
:::

---

:::{math}
\begin{aligned}
\langle - |\hat{\sigma}_y &= \langle - |(i|-\rangle \langle+| - i|+\rangle \langle-|) \\
&= i\langle - |-\rangle \langle+| - i\langle - |+\rangle \langle-| \\
&= i \cdot 1 \cdot \langle+| - i \cdot 0 \cdot \langle-| \\
&= i\langle+|
\end{aligned}
:::

---

:::{math}
\begin{aligned}
\langle + |\hat{\sigma}_z &= \langle + |(|+\rangle \langle+| - |-\rangle \langle-|) \\
&= \langle + |+\rangle \langle+| - \langle + |-\rangle \langle-| \\
&= 1 \cdot \langle+| - 0 \cdot \langle-| \\
&= \langle+|
\end{aligned}
:::

---

:::{math}
\begin{aligned}
\langle - |\hat{\sigma}_z &= \langle - |(|+\rangle \langle+| - |-\rangle \langle-|) \\
&= \langle - |+\rangle \langle+| - \langle - |-\rangle \langle-| \\
&= 0 \cdot \langle+| - 1 \cdot \langle-| \\
&= -\langle-|
\end{aligned}
:::

---

En resumen:

- $\langle + |\hat{\sigma}_x = \langle-|$, $\quad \langle - |\hat{\sigma}_x = \langle+|$
- $\langle + |\hat{\sigma}_y = -i\langle-|$, $\quad \langle - |\hat{\sigma}_y = i\langle+|$
- $\langle + |\hat{\sigma}_z = \langle+|$, $\quad \langle - |\hat{\sigma}_z = -\langle-|$

---

El conmutador se define como: $[A,B] = AB - BA$

---



:::{math}
\begin{aligned}
\hat{\sigma}_x\hat{\sigma}_y &= (|-\rangle \langle+| + |+\rangle \langle-|)(i|-\rangle \langle+| - i|+\rangle \langle-|) \\
&= i|-\rangle \langle+|-\rangle \langle+| - i|-\rangle \langle+|+\rangle \langle-| + i|+\rangle \langle-|-\rangle \langle+| - i|+\rangle \langle-|+\rangle \langle-| \\
&= i|-\rangle \cdot 0 \cdot \langle+| - i|-\rangle \cdot 1 \cdot \langle-| + i|+\rangle \cdot 1 \cdot \langle+| - i|+\rangle \cdot 0 \cdot \langle-| \\
&= -i|-\rangle \langle-| + i|+\rangle \langle+| \\
&= i(|+\rangle \langle+| - |-\rangle \langle-|) = i\hat{\sigma}_z
\end{aligned}
:::

y

:::{math}
\begin{aligned}
\hat{\sigma}_y\hat{\sigma}_x &= (i|-\rangle \langle+| - i|+\rangle \langle-|)(|-\rangle \langle+| + |+\rangle \langle-|) \\
&= i|-\rangle \langle+|-\rangle \langle+| + i|-\rangle \langle+|+\rangle \langle-| - i|+\rangle \langle-|-\rangle \langle+| - i|+\rangle \langle-|+\rangle \langle-| \\
&= i|-\rangle \cdot 1 \cdot \langle+| + i|-\rangle \cdot 0 \cdot \langle-| - i|+\rangle \cdot 0 \cdot \langle+| - i|+\rangle \cdot 1 \cdot \langle-| \\
&= i|-\rangle \langle+| - i|+\rangle \langle-| \\
&= -i(|+\rangle \langle+| - |-\rangle \langle-|) = -i\hat{\sigma}_z
\end{aligned}
:::

Por lo tanto

:::{math}
\begin{aligned}
[\hat{\sigma}_x, \hat{\sigma}_y] &= \hat{\sigma}_x\hat{\sigma}_y - \hat{\sigma}_y\hat{\sigma}_x \\
&= i\hat{\sigma}_z - (-i\hat{\sigma}_z) = 2i\hat{\sigma}_z
\end{aligned}
:::

Por simetría cíclica

:::{math}
\begin{aligned}
[\hat{\sigma}_y, \hat{\sigma}_z] &= 2i\hat{\sigma}_x \\
[\hat{\sigma}_z, \hat{\sigma}_x] &= 2i\hat{\sigma}_y
\end{aligned}
:::

Por lo tanto

:::{math}
\boxed{[\hat{\sigma}_i, \hat{\sigma}_j] = 2i\varepsilon_{ijk}\hat{\sigma}_k}
:::

donde $\varepsilon_{ijk}$ es el símbolo de Levi-Civita.

---



```{attention} Relación util
Las matrices de Pauli satisfacen
:::{math}
\sigma_i \sigma_j = \delta_{ij} I + i \sum_k \varepsilon_{ijk} \sigma_k,
:::
por lo que en consecuencia 
$$[\hat{\sigma}_i, \hat{\sigma}_j] = 2i\varepsilon_{ijk}\hat{\sigma}_k$$
```