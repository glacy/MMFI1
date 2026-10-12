---
tags: [analisis-vectorial, operador-nabla, gradiente, producto-escalar, electrostatica, dipolo-electrico]
---

El potencial electrostático de un dipolo eléctrico, con momento dipolar $\vec{p}$ constante, está dado por

$$ \Phi(\vec{r}) = \frac{1}{4\pi\epsilon_0}\,\frac{\vec{p}\cdot\vec{r}}{r^3} $$

donde $\vec{r}$ es el vector de posición del punto de observación y $$r = \lvert\vec{r}\rvert=(x^2 + y^2 + z^2)^{1/2}$$

Demuestre que el campo eléctrico $\vec{E} = -\nabla\Phi$ está dado por

$$ \vec{E}(\vec{r}) = \frac{1}{4\pi\epsilon_0}\,\frac{3\hat{r}\left(\hat{r}\cdot\vec{p}\right) - \vec{p}}{r^3} $$

:::{tip} Sugerencia

Si $f$ y $g$ son campos escalares

$$ \nabla\left(f\,g\right) = f\,\nabla g + g\,\nabla f $$
:::
