---
title: Ejercicio 5
keywords:
  - continuidad
  - conservacion-masa
  - mecanica-fluidos
  - teorema-divergencia
tags:
  - continuidad
  - conservacion-masa
  - mecanica-fluidos
  - teorema-divergencia
---

**Ecuación de continuidad en mecánica de fluidos**

Sea $\rho(\vec{r},t)$ la densidad de masa de un fluido y $\vec{v}(\vec{r},t)$ su campo de velocidad. Para un volumen fijo $V$ encerrado por una superficie $S$, la conservación de la masa establece que la masa contenida en $V$ solo puede cambiar por el flujo neto de masa que atraviesa la frontera:

$$\frac{d}{dt}\int_V \rho\,dV = -\oint_S \rho\,\vec{v}\cdot \hat{n}\,dS.$$

1. Use el teorema de la divergencia para reescribir la integral de superficie y derive la **ecuación de continuidad**

$$\frac{\partial\rho}{\partial t} + \nabla\cdot(\rho\vec{v}) = 0.$$

2. Para un fluido **incompresible** ($\rho$ constante), muestre que $\nabla\cdot\vec{v} = 0$ y que el flujo volumétrico neto a través de cualquier superficie cerrada es nulo.
3. Interprete físicamente cada término de la ecuación de continuidad.
