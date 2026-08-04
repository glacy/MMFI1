
Sea $\vec{A}=(A_x,A_y,A_z)$ y $\vec{B}=(B_x,B_y,B_z)$. Primero escribimos el producto vectorial
:::{math}
\vec{A}\times\vec{B}
=
\big(
A_y B_z - A_z B_y,\;
A_z B_x - A_x B_z,\;
A_x B_y - A_y B_x
\big).
:::

La componente $x$ del rotacional de $\vec{A}\times\vec{B}$ es
:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_x
&= \frac{\partial}{\partial y}\big((\vec{A}\times\vec{B})_z\big)
  - \frac{\partial}{\partial z}\big((\vec{A}\times\vec{B})_y\big)\\[6pt]
&= \frac{\partial}{\partial y}\big(A_x B_y - A_y B_x\big)
  - \frac{\partial}{\partial z}\big(A_z B_x - A_x B_z\big).
\end{aligned}
:::

Aplicamos la regla del producto y expandimos cada término:
:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_x
&= \big(\partial_y A_x\big)B_y + A_x\big(\partial_y B_y\big)
   - \big(\partial_y A_y\big)B_x - A_y\big(\partial_y B_x\big)\\[4pt]
&\quad - \big(\partial_z A_z\big)B_x - A_z\big(\partial_z B_x\big)
   + \big(\partial_z A_x\big)B_z + A_x\big(\partial_z B_z\big),
\end{aligned}
:::

donde $\partial_j\equiv\partial/\partial x_j$.


Agrupamos términos convenientemente (primero los que contienen derivadas de $A_x$ y $B_x$; luego los que multiplican $A_x$ y $B_x$):

:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_x
&= B_y\big(\partial_y A_x\big) + B_z\big(\partial_z A_x\big)
  - A_y\big(\partial_y B_x\big) - A_z\big(\partial_z B_x\big)\\[4pt]
&\quad + A_x\big(\partial_y B_y + \partial_z B_z\big)
  - B_x\big(\partial_y A_y + \partial_z A_z\big).
\end{aligned}
:::

Sumamos y restamos los términos  $B_x\partial_x A_x$ y $A_x\partial_x B_x$:
:::{math}
\begin{aligned}
(\nabla\times(\vec{A}\times\vec{B}))_x
&= \big(B_x\partial_x A_x + B_y\partial_y A_x + B_z\partial_z A_x\big)
  - \big(A_x\partial_x B_x + A_y\partial_y B_x + A_z\partial_z B_x\big)\\[4pt]
&\quad + A_x\big(\partial_x B_x + \partial_y B_y + \partial_z B_z\big)
  - B_x\big(\partial_x A_x + \partial_y A_y + \partial_z A_z\big).
\end{aligned}
:::

Reconocemos que:

- $(\vec{B}\cdot\nabla)A_x = (B_x\partial_x  + B_y\partial_y  + B_z\partial_z) A_x$.  
- $(\vec{A}\cdot\nabla)B_x = (A_x\partial_x  + A_y\partial_y  + A_z\partial_z) B_x$.  
- $\nabla\cdot\vec{A} = \partial_x A_x + \partial_y A_y + \partial_z A_z$.  
- $\nabla\cdot\vec{B} = \partial_x B_x + \partial_y B_y + \partial_z B_z$.

Por tanto:
:::{math}
(\nabla\times(\vec{A}\times\vec{B}))_x
= (\vec{B}\cdot\nabla)A_x - (\vec{A}\cdot\nabla)B_x
- B_x(\nabla\cdot\vec{A}) + A_x(\nabla\cdot\vec{B}).
:::

Esta es exactamente la componente $x$ de la identidad vectorial buscada.  
La demostración completa se obtiene repitiendo el mismo procedimiento para las componentes $y,z$; por tanto la identidad vectorial se verifica en forma vectorial:

:::{math}
\nabla \times (\vec{A}\times \vec{B})
=(\vec{B} \cdot \nabla) \vec{A}- (\vec{A}\cdot \nabla) \vec{B}
- \vec{B}(\nabla \cdot \vec{A})+\vec{A}(\nabla \cdot \vec{B}).
:::
