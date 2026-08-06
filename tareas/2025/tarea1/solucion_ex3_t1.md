:::{attention} Identidades útiles
```{math}
\begin{align}
\frac{1}{c^2}=&\mu_0 \epsilon_0\\
\nabla\cdot(\vec{E}\times\vec{B}) =& \vec{B}\cdot(\nabla\times\vec{E}) - \vec{E}\cdot(\nabla\times\vec{B}),\\
\vec{E}\cdot \frac{\partial\vec{E}}{\partial t} =& \frac{1}{2}\frac{\partial E^2}{\partial t},\\
\vec{B}\cdot \frac{\partial\vec{B}}{\partial t} =& \frac{1}{2}\frac{\partial B^2}{\partial t}.
\end{align}
```
:::


La energía total almacenada por unidad de volumen, $u$, puede escribirse como 
:::{math}
u=\frac{1}{2}(\epsilon_0 \vec{E}\cdot \vec{E}+\mu^{-1}_0\vec{B}\cdot \vec{B});
:::
de manera que la tasa de cambio de la energía total almacenada puede escribirse como 
:::{math}
\frac{\partial u}{\partial t}= \epsilon_0 \vec{E}\cdot \frac{\partial\vec{E}}{\partial t}+\mu_0^{-1} \vec{B}\cdot \frac{\partial\vec{B}}{\partial t}.
:::

Analizando cada término por aparte, y utilizando las ecuaciones de Maxwell,

:::{math}
\begin{align}
\epsilon_0 \vec{E}\cdot \frac{\partial\vec{E}}{\partial t}=& \epsilon_0 c^2 \vec{E}\cdot \left(\nabla \times \vec{B} -\mu_0\vec{J}\right)\\
\mu_0^{-1} \vec{B}\cdot \frac{\partial \vec{B}}{\partial t}=&-\mu_0^{-1}\vec{B}\cdot (\nabla \times \vec{E})
\end{align}
:::
de manera que
:::{math}
\begin{align}
\frac{\partial u}{\partial t}=&\epsilon_0 c^2 \vec{E}\cdot \left(\nabla \times \vec{B}-\mu_0\vec{J}\right) +\mu_0^{-1}\vec{B}\cdot (\nabla \times \vec{E})\\
=&\mu_0^{-1}\left( \vec{E}\cdot (\nabla \times \vec{B}) - \vec{B}\cdot (\nabla \times \vec{E})\right)-\vec{E}\cdot\vec{J}\\
=&-\mu_0^{-1}\nabla \cdot (\vec{E}\times\vec{B})-\vec{E}\cdot\vec{J}.
\end{align}
:::

Si integramos esta expresión sobre un volumen $V$,
:::{math}
\boxed{
\begin{align}
\int_V \frac{\partial u}{\partial t}dV=&-\mu_0^{-1}\int_V \nabla \cdot (\vec{E}\times\vec{B})dV-\int_V (\vec{E}\cdot\vec{J}) dV \\
=& -\mu_0^{-1} \oint_S (\vec{E}\times\vec{B})\cdot d\vec{S}-\int_V (\vec{E}\cdot\vec{J}) dV
\end{align}
}
:::
