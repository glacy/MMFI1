Sea $\lambda$ un autovalor de $\mathcal{H}$. Entonces, resolvemos el determinante:

:::{math}
\begin{aligned}
\det\begin{pmatrix} -\lambda & -A \\ -A & -\lambda \end{pmatrix} &= 0 \\
\Rightarrow \lambda^2 - A^2 &= 0 \\
\Rightarrow \lambda &= \pm A
\end{aligned}
:::

Los autovalores de $\mathcal{H}$ son $\lambda_1 = A$ y $\lambda_2 = -A$.

- Para $\lambda_1 = A$:

:::{math}
\begin{pmatrix} 0 - A & -A \\ -A & 0 - A \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = 0
:::

Esto lleva a la ecuación $x = y$, y por lo tanto al autovector normalizado
$$\boxed{|v_1\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ 1 \end{pmatrix}.}$$

- Para $\lambda_2 = -A$:

:::{math}
\begin{pmatrix} 0 + A & -A \\ -A & 0 + A \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = 0
:::

Esto lleva a la ecuación $x = -y$, y al autovector normalizado
$$\boxed{|v_2\rangle = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix}.}$$

