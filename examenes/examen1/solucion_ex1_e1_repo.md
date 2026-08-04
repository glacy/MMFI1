:::{attention} Identidades útiles
Triple producto vectorial (regla del _bac-cab_)

:::{math}
\vec{A}\times(\vec{B}\times\vec{C})=(\vec{A}\cdot\vec{C})\vec{B}-(\vec{A}\cdot\vec{B})\vec{C}
:::

Partiendo de la definición del momento angular orbital
:::{math}
\vec{L}=\vec{r}\times\vec{p}=m\,\vec{r}\times\vec{v},
:::
y de la relación entre velocidad lineal y velocidad angular
:::{math}
\vec{v}=\vec{\omega}\times\vec{r},
:::

sustituyendo,
:::{math}
\vec{L}=m\,\vec{r}\times(\vec{\omega}\times\vec{r}).
:::

Ahora, usando la identidad vectorial del triple producto (fórmula de _bac-cab_):

:::{math}
\vec{r}\times(\vec{\omega}\times\vec{r})
=(\vec{r}\cdot\vec{r})\,\vec{\omega} - (\vec{r}\cdot\vec{\omega})\,\vec{r}.
:::

Como $\vec{r}\cdot\vec{r}=r^{2}$ y $\vec{r}=r\,\hat{r}$ (con $\hat{ r}$ unitario en la dirección de $\vec{r}$), se tiene $\vec{r}\cdot\vec{\omega}=r(\hat{r}\cdot\vec{\omega})$. Por tanto
:::{math}
\vec{r}\times(\vec{\omega}\times\vec{r})
= r^{2}\,\vec{\omega} - r(\hat{r}\cdot\vec{\omega})\,r\,\hat{r}
= r^{2}\!\left[\vec{\omega} - \hat{r}(\hat{r}\cdot\vec{\omega})\right].
:::

Multiplicando por $m$ 
:::{math}
\boxed{\;\vec{L}=m\,r^{2}\big[\vec{\omega}-\hat{r}(\hat{r}\cdot\vec{\omega})\big]\; }.
:::

---

El término $\vec{\omega}-\hat r(\hat r\cdot\vec{\omega})$ es la proyección de $\vec{\omega}$ sobre el plano perpendicular a $\hat r$; por eso sólo la componente de $\vec{\omega}$ perpendicular a $\vec{r}$ contribuye al momento angular.
