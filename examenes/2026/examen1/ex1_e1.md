---
tags: [analisis-vectorial, operador-nabla, rotacional, producto-vectorial, producto-escalar, magnetostatica, dipolo-magnetico]
---

El potencial vectorial $\vec{A}$ de un dipolo magnético, con momento dipolar $\vec{m}$ constante, está dado por

$$ \vec{A}(\vec{r}) = \frac{\mu_0}{4\pi}\,\frac{\vec{m}\times \vec{r}}{r^3} $$

donde $\vec{r}$ es el vector de posición del punto de observación y $$r = \lvert\vec{r}\rvert=(x^2 + y^2 + z^2)^{1/2}$$

Demuestre que la inducción magnética $\vec{B} = \nabla\times\vec{A}$ está dada por

$$ \vec{B}(\vec{r}) = \frac{\mu_0}{4\pi}\,\frac{3\hat{r}\left(\hat{r}\cdot\vec{m}\right) - \vec{m}}{r^3} $$

:::{tip} Sugerencia
Considere las siguientes identidades

$$ \nabla\cdot\left(\frac{\vec{r}}{r^3}\right) = 0 \quad (r \neq 0)$$



$$ \left[(\vec{m}\cdot\nabla)\,\frac{\vec{r}}{r^3}\right]_i = m_j\,\frac{\partial}{\partial x_j}\left(\frac{x_i}{r^3}\right)$$
:::