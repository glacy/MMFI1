---
title: Solución Ejercicio 3
keywords:
  - mecanica-cuantica
  - probabilidad
  - producto-interno
  - regla-de-born
tags:
  - mecanica-cuantica
  - probabilidad
  - producto-interno
  - regla-de-born
  - calculo
objetivos: []
---

**La componente.** Con $\langle 0|0\rangle = \langle 1|1\rangle = 1$ y $\langle 0|1\rangle = 0$:

$$
\langle 0|\psi\rangle
= \frac{1}{\sqrt{2}}\left(\langle 0|0\rangle + \langle 0|1\rangle\right)
= \frac{1}{\sqrt{2}}\left(1+0\right)
= \frac{1}{\sqrt{2}}.
$$

**La probabilidad.** Por la interpretación probabilística del producto interno (norma al cuadrado de la componente):

$$
\left|\langle 0|\psi\rangle\right|^2 = \left|\frac{1}{\sqrt{2}}\right|^2 = \frac{1}{2}.
$$

**Interpretación.** El estado $|\psi\rangle$ es una superposición equilibrada de $|0\rangle$ y $|1\rangle$: una medición que distinga esos dos estados arroja cada uno con probabilidad $1/2$. La normalización del estado garantiza que las probabilidades sobre toda la base sumen uno: $|\langle 0|\psi\rangle|^2 + |\langle 1|\psi\rangle|^2 = \tfrac12 + \tfrac12 = 1 = \langle\psi|\psi\rangle$.
