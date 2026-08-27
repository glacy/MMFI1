---
title: Solución Ejercicio 8
keywords:
  - optica
  - ondas-electromagneticas
  - atenuacion
  - profundidad-penetracion
tags:
  - optica
  - ondas-electromagneticas
  - atenuacion
  - profundidad-penetracion
objetivos: []
---

**Cálculo de la profundidad de penetración**

La onda electromagnética está descrita por:
$$E(z, t) = E_0 e^{i\left(\frac{\omega \tilde{n}}{c} z - \omega t\right)}$$

Sustituimos el índice de refracción complejo $\tilde{n} = n + i\kappa$ en el exponente:

Exponente complejo:
$$\Phi = i\left(\frac{\omega (n + i\kappa)}{c} z - \omega t\right)$$
$$\Phi = i\left(\frac{\omega n}{c} z - \omega t\right) + i\left(i\frac{\omega \kappa}{c} z\right)$$
$$\Phi = i\left(\frac{\omega n}{c} z - \omega t\right) - \frac{\omega \kappa}{c} z$$

Por lo tanto, la onda se puede escribir separando la parte oscilatoria y la parte de atenuación:
$$E(z, t) = E_0 e^{-\frac{\omega \kappa}{c} z} \cdot e^{i\left(\frac{\omega n}{c} z - \omega t\right)}$$

**Cálculo de la intensidad**

La intensidad $I(z)$ es proporcional al cuadrado de la amplitud del campo eléctrico:
$$I(z) \propto |E(z, t)|^2$$

Calculamos el módulo de $E(z,t)$:
$$|E(z, t)| = |E_0| \cdot \left| e^{-\frac{\omega \kappa}{c} z} \right| \cdot \left| e^{i(\dots)} \right|$$

Sabemos que $|e^{i\theta}| = 1$ para cualquier $\theta$ real, y $e^{-\frac{\omega \kappa}{c} z}$ es real y positivo.
$$|E(z, t)| = |E_0| e^{-\frac{\omega \kappa}{c} z}$$

Entonces, la intensidad es:
$$I(z) \propto |E(z, t)|^2 = |E_0|^2 e^{-2\frac{\omega \kappa}{c} z}$$

**Definición de profundidad de penetración $\delta$**

La profundidad de penetración se define como la distancia $z = \delta$ a la que la intensidad se reduce a $1/e$ de su valor inicial ($z=0$).

Valor inicial de la intensidad ($z=0$):
$$I(0) \propto |E_0|^2$$

Condición para $z = \delta$:
$$I(\delta) = \frac{1}{e} I(0)$$

Sustituimos las expresiones:
$$|E_0|^2 e^{-2\frac{\omega \kappa}{c} \delta} = \frac{1}{e} |E_0|^2$$

Cancelamos $|E_0|^2$ (asumiendo $E_0 \neq 0$):
$$e^{-2\frac{\omega \kappa}{c} \delta} = e^{-1}$$

Tomamos logaritmo natural a ambos lados:
$$-2\frac{\omega \kappa}{c} \delta = -1$$

Despejamos $\delta$:
$$\delta = \frac{c}{2\omega \kappa}$$

**Resultado:**
La profundidad de penetración está dada por:
$$\delta = \frac{c}{2\omega \kappa}$$

Esta ecuación muestra que la penetración es inversamente proporcional a la frecuencia $\omega$ y al coeficiente de extinción $\kappa$. A mayor frecuencia o mayor absorción, la onda penetra menos en el medio.