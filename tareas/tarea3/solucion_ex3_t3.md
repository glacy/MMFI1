Sea $|a\rangle$ un autoestado del operador $\mathcal{A}$ con autovalor $a$, es decir:

:::{math}
\mathcal{A}|a\rangle = a|a\rangle
:::

Consideremos que la función $f(\mathcal{A})$ puede expresarse como una expansión en serie:

:::{math}
f(\mathcal{A}) = c_0 + c_1\mathcal{A} + c_2\mathcal{A}^2 + c_3\mathcal{A}^3 + \cdots
:::

Aplicamos $f(\mathcal{A})$ al autoestado $|a\rangle$:

:::{math}
\begin{aligned}
f(\mathcal{A})|a\rangle &= \left(c_0 + c_1\mathcal{A} + c_2\mathcal{A}^2 + c_3\mathcal{A}^3 + \cdots\right)|a\rangle \\
&= c_0|a\rangle + c_1\mathcal{A}|a\rangle + c_2\mathcal{A}^2|a\rangle + c_3\mathcal{A}^3|a\rangle + \cdots
\end{aligned}
:::

Ahora evaluamos cada término por separado:

- Primer término: $c_0|a\rangle$

- Segundo término: 
  :::{math}
  c_1\mathcal{A}|a\rangle = c_1 a|a\rangle
  :::

- Tercer término:
  :::{math}
  \begin{aligned}
  c_2\mathcal{A}^2|a\rangle &= c_2\mathcal{A}(\mathcal{A}|a\rangle) \\
  &= c_2\mathcal{A}(a|a\rangle) \\
  &= c_2 a(\mathcal{A}|a\rangle) \\
  &= c_2 a^2|a\rangle
  \end{aligned}
  :::

- Cuarto término:
  :::{math}
  \begin{aligned}
  c_3\mathcal{A}^3|a\rangle &= c_3\mathcal{A}(\mathcal{A}^2|a\rangle) \\
  &= c_3\mathcal{A}(a^2|a\rangle) \\
  &= c_3 a^2(\mathcal{A}|a\rangle) \\
  &= c_3 a^3|a\rangle
  \end{aligned}
  :::

Podemos observar el patrón: $\mathcal{A}^n|a\rangle = a^n|a\rangle$ para cualquier $n \in \mathbb{N}$.

Sustituyendo todos los términos en la serie:

:::{math}
\begin{aligned}
f(\mathcal{A})|a\rangle &= c_0|a\rangle + c_1 a|a\rangle + c_2 a^2|a\rangle + c_3 a^3|a\rangle + \cdots \\
&= \left(c_0 + c_1 a + c_2 a^2 + c_3 a^3 + \cdots\right)|a\rangle \\
&= f(a)|a\rangle
\end{aligned}
:::

Por lo tanto, 

:::{math}
\boxed{f(\mathcal{A})|a\rangle = f(a)|a\rangle}
:::

Esto significa que $|a\rangle$ es un autoestado del operador $f(\mathcal{A})$ con autovalor $f(a)$.