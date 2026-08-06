Usando notación indexada, 
:::{math}
(\nabla\times(\vec{A}\times\vec{B}))_i
= \varepsilon_{ijk}\,\partial_j\big((\vec{A}\times\vec{B})_k\big)
= \varepsilon_{ijk}\,\partial_j\big(\varepsilon_{klm} A_l B_m\big),
:::

Usando la identidad de Levi-Civita doble:
:::{math}
\varepsilon_{ijk}\varepsilon_{klm} = \delta_{il}\delta_{jm}-\delta_{im}\delta_{jl},
:::
por lo que
:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_i
&= (\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl})\,\partial_j(A_l B_m)\\[4pt]
&= \partial_j(A_i B_j) - \partial_j(A_j B_i).
\end{aligned}
:::

Desarrollando las derivadas del producto:
:::{math}
\begin{aligned}
\partial_j(A_i B_j) &= (\partial_j A_i)\,B_j + A_i\,(\partial_j B_j),\\[4pt]
\partial_j(A_j B_i) &= (\partial_j A_j)\,B_i + A_j\,(\partial_j B_i).
\end{aligned}
:::

Sustituyendo en la expresión anterior:
:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_i
&= (\partial_j A_i)\,B_j + A_i(\partial_j B_j) - (\partial_j A_j)\,B_i - A_j(\partial_j B_i)\\[4pt]
&= \underbrace{B_j\partial_j A_i}_{(\vec{B}\cdot\nabla)A_i}
- \underbrace{A_j\partial_j B_i}_{(\vec{A}\cdot\nabla)B_i}
- B_i\,(\partial_j A_j) + A_i\,(\partial_j B_j).
\end{aligned}
:::

de donde obtenemos la identidad componente a componente:
:::{math}
(\nabla\times(\vec{A}\times\vec{B}))_i
= \big[(\vec{B}\cdot\nabla)\vec{A}\big]_i
- \big[(\vec{A}\cdot\nabla)\vec{B}\big]_i
- B_i(\nabla\cdot\vec{A}) + A_i(\nabla\cdot\vec{B}).
:::

