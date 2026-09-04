---
title: Solución Ejercicio 5
keywords:
  - branch-cuts
  - ondas-evanescentes
  - aplicacion
tags:
  - branch-cuts
  - ondas-evanescentes
  - aplicacion
  - optica
objetivos: []
---

**Aplicación: Ondas evanescentes y Branch Cuts**

**1. Puntos de ramificación (Branch Points)**

La función es $G(z) = \sqrt{z^2 - a^2}$.
Los puntos de ramificación ocurren donde el argumento de la raíz cuadrada se anula, es decir, donde el cambio de signo alrededor del punto no es continuo.

$$z^2 - a^2 = 0 \implies (z-a)(z+a) = 0 \implies z = \pm a$$

Dado que $a = 1$, los puntos de ramificación son:
$$z = +1 \quad \text{y} \quad z = -1$$

(Además, en el plano extendido, $z = \infty$ también se considera un punto de ramificación).

El corte de rama (branch cut) típico se elige como el segmento que une estos dos puntos en el eje real: $[-1, 1]$.

---

**2. Evaluación y clasificación de modos**

La fórmula es $G(z) = \sqrt{z^2 - 1}$ (con $a=1$).

*   **Caso A: $z = 2$**
    $$G(2) = \sqrt{2^2 - 1} = \sqrt{4 - 1} = \sqrt{3}$$
    Resultado: $\sqrt{3} \approx 1.732$
    **Clasificación:** Como el resultado es un número **real positivo**, representa un **modo propagante**. Esto significa que la onda viaja a través del medio sin decaimiento exponencial en esta región (fuera de la barrera).

*   **Caso B: $z = 0.5$**
    $$G(0.5) = \sqrt{(0.5)^2 - 1} = \sqrt{0.25 - 1} = \sqrt{-0.75}$$
    Resultado: $i\sqrt{0.75} \approx i0.866$ (tomando la rama principal positiva).
    **Clasificación:** Como el resultado es **imaginario puro**, representa un **modo evanescente**. La onda no se propaga, sino que decae exponencialmente su amplitud dentro de la región $(-1, 1)$ (túnel cuántico o región prohibida).

*   **Caso C: $z = -2$**
    $$G(-2) = \sqrt{(-2)^2 - 1} = \sqrt{4 - 1} = \sqrt{3}$$
    Resultado: $\sqrt{3} \approx 1.732$
    **Clasificación:** Similar al caso A, al estar fuera del corte de rama $[-1, 1]$ ($|z| > 1$), el resultado es **real**, indicando un **modo propagante**. (Nota: Dependiendo de la convención de la rama, podría tomar un signo negativo $-\sqrt{3}$, pero el módulo sigue siendo real e indica propagación).