Primero, calculamos el producto $\hat{\sigma}_y \hat{\sigma}_x$:

$$
\begin{aligned}
\hat{\sigma}_y \hat{\sigma}_x &= \left(i|-\rangle \langle+|-i|+\rangle \langle-|\right)\left(|-\rangle \langle+|+|+\rangle \langle-|\right) \\
&= i|-\rangle \langle+|-\rangle \langle+| + i|-\rangle \langle+|+\rangle \langle-| \\
&\quad -i|+\rangle \langle-|-\rangle \langle+| -i|+\rangle \langle-|+\rangle \langle-|.
\end{aligned}
$$

Usando la ortonormalidad $\langle+|+\rangle = \langle-|-\rangle = 1$ y $\langle+|-\rangle = \langle-|+\rangle = 0$, obtenemos que

$$
\begin{aligned}
\hat{\sigma}_y \hat{\sigma}_x &= i|-\rangle \cdot 0 \cdot \langle+| + i|-\rangle \cdot 1 \cdot \langle-| \\
&\quad -i|+\rangle \cdot 1 \cdot \langle+| -i|+\rangle \cdot 0 \cdot \langle-| \\
&= i|-\rangle \langle-| -i|+\rangle \langle+|.
\end{aligned}
$$

Simirlamente, en el caso del producto $\hat{\sigma}_x \hat{\sigma}_y$:

$$
\begin{aligned}
\hat{\sigma}_x \hat{\sigma}_y &= \left(|-\rangle \langle+|+|+\rangle \langle-|\right)\left(i|-\rangle \langle+|-i|+\rangle \langle-|\right) \\
&= i|-\rangle \langle+|-\rangle \langle+| - i|-\rangle \langle+|+\rangle \langle-| \\
&\quad +i|+\rangle \langle-|-\rangle \langle+| -i|+\rangle \langle-|+\rangle \langle-|.
\end{aligned}
$$

Simplificando,

$$
\begin{aligned}
\hat{\sigma}_x \hat{\sigma}_y &= i|-\rangle \cdot 0 \cdot \langle+| - i|-\rangle \cdot 1 \cdot \langle-| \\
&\quad +i|+\rangle \cdot 1 \cdot \langle+| -i|+\rangle \cdot 0 \cdot \langle-| \\
&= -i|-\rangle \langle-| +i|+\rangle \langle+|.
\end{aligned}
$$

Finalmente, el conmutador es:

$$
\begin{aligned}
[\hat{\sigma}_y,\hat{\sigma}_x] &= \hat{\sigma}_y \hat{\sigma}_x - \hat{\sigma}_x \hat{\sigma}_y \\
&= \left(i|-\rangle \langle-| -i|+\rangle \langle+|\right) - \left(-i|-\rangle \langle-| +i|+\rangle \langle+|\right) \\
&= -2i(|+\rangle \langle+|-|-\rangle \langle-|)\\
&=-2i\hat{\sigma_z}.
\end{aligned}
$$

---

Para calcular $\langle \psi | [\hat{\sigma}_y,\hat{\sigma}_x] $, calculamos el bra asociado al estado $|\psi\rangle$:

$$
\langle \psi | = \cos\frac{\theta}{2}\langle +| + e^{-i\phi}\sin\frac{\theta}{2}\langle -|.
$$

Ahora, calculamos:

$$
\begin{aligned}
\langle \psi | [\hat{\sigma}_y,\hat{\sigma}_x] &= \langle \psi | -2i\left(|+\rangle \langle+|-|-\rangle \langle-|\right) \\
&= -2i \langle \psi |+\rangle \langle+|+2i\langle \psi |-\rangle \langle-|.
\end{aligned}
$$

Calculamos $\langle \psi |+\rangle$:

$$
\langle \psi |+\rangle = \cos\frac{\theta}{2}\langle +|+\rangle + e^{-i\phi}\sin\frac{\theta}{2}\langle -|+\rangle = \cos\frac{\theta}{2}.
$$

De igual manera $\langle \psi |-\rangle$:

$$ 
\langle \psi |-\rangle= e^{-i\phi}\sin\frac{\theta}{2}
$$
Por lo tanto:

$$
\boxed{\langle \psi | [\hat{\sigma}_y,\hat{\sigma}_x] = -2i \cos\frac{\theta}{2} \langle+|+2ie^{-i\phi}\sin\frac{\theta}{2}}.
$$

```{attention} Ojo

Note que el resultado es inmediato de la propiedad

:::{math}
[\hat{\sigma}_i, \hat{\sigma}_j] = 2i\varepsilon_{ijk}\hat{\sigma}_k
:::

donde $\varepsilon_{ijk}$ es el símbolo de Levi-Civita. 
```