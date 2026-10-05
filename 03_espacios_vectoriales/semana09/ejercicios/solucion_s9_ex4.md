---
title: Solución Ejercicio 4
keywords:
  - normalizacion
  - norma
  - mecanica-cuantica
tags:
  - normalizacion
  - norma
  - mecanica-cuantica
  - calculo
objetivos: []
---

**Condición de normalización.** Un estado físico debe cumplir $\langle\psi|\psi\rangle = 1$. Con la base ortonormal $\{|0\rangle,|1\rangle\}$:

$$
\langle\psi|\psi\rangle
= \left(c^*\langle 0| + \tfrac{1}{2}\langle 1|\right)\left(c|0\rangle + \tfrac{1}{2}|1\rangle\right)
= |c|^2\,\langle 0|0\rangle + \tfrac{c^*}{2}\,\langle 0|1\rangle + \tfrac{c}{2}\,\langle 1|0\rangle + \tfrac{1}{4}\,\langle 1|1\rangle.
$$

Los términos cruzados se anulan por ortogonalidad:

$$
\langle\psi|\psi\rangle = |c|^2 + \frac{1}{4} \stackrel{!}{=} 1
\qquad\Longrightarrow\qquad
|c|^2 = \frac{3}{4}.
$$

**Resultado.**

$$
\boxed{\;c = \pm\frac{\sqrt{3}}{2}\;}
$$

(para $c$ real; en general $c = \frac{\sqrt{3}}{2}e^{i\theta}$ con fase arbitraria $\theta$, pues la condición solo fija el módulo $|c|=\sqrt{3}/2$).

**Interpretación.** La probabilidad de medir $|1\rangle$ es $|1/2|^2 = 1/4$ y la de medir $|0\rangle$ es $|c|^2 = 3/4$; la normalización es exactamente la exigencia de que las probabilidades de todos los resultados sumen uno. La fase de $c$ no afecta ninguna probabilidad de esta medición.
