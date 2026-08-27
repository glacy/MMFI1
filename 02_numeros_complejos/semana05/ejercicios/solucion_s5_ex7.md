---
title: Solución Ejercicio 7
keywords:
  - optica
  - ondas-electromagneticas
  - indice-refraccion-complejo
tags:
  - optica
  - ondas-electromagneticas
  - indice-refraccion-complejo
  - demostracion
objetivos: []
---

**Demostración de la parte real del índice de refracción complejo**

Partimos de la definición del índice de refracción complejo $\tilde{n}$ en términos de las propiedades del medio:
$$\tilde{n} = \sqrt{\epsilon_r - i\frac{\sigma}{\omega \epsilon_0}}$$

Definimos las cantidades reales:
$$A = \epsilon_r$$
$$B = -\frac{\sigma}{\omega \epsilon_0}$$

De manera que el radicando se expresa como un número complejo en forma rectangular:
$$\tilde{n}^2 = A + iB$$

Buscamos la raíz cuadrada de este número complejo. Sea $\tilde{n} = n + i\kappa$, donde $n$ es la parte real (índice de refracción) y $\kappa$ es la parte imaginaria (coeficiente de extinción).
Elevamos al cuadrado la expresión propuesta:
$$(n + i\kappa)^2 = n^2 + 2in\kappa - \kappa^2 = (n^2 - \kappa^2) + i(2n\kappa)$$

Igualamos esto con la expresión original $A + iB$:
$$(n^2 - \kappa^2) + i(2n\kappa) = A + iB$$

Igualando partes reales e imaginarias, obtenemos un sistema de dos ecuaciones:
1. $n^2 - \kappa^2 = A$
2. $2n\kappa = B$

De la segunda ecuación, despejamos $\kappa$:
$$\kappa = \frac{B}{2n}$$

Sustituimos este valor en la primera ecuación:
$$n^2 - \left(\frac{B}{2n}\right)^2 = A$$
$$n^2 - \frac{B^2}{4n^2} = A$$

Multiplicamos toda la ecuación por $4n^2$ para eliminar el denominador:
$$4n^4 - B^2 = 4An^2$$
$$4n^4 - 4An^2 - B^2 = 0$$

Esta es una ecuación cuadrática en la variable $X = n^2$:
$$4X^2 - 4AX - B^2 = 0$$

Resolvemos para $X$ usando la fórmula general:
$$X = \frac{4A \pm \sqrt{(4A)^2 - 4(4)(-B^2)}}{2(4)}$$
$$X = \frac{4A \pm \sqrt{16A^2 + 16B^2}}{8}$$
$$X = \frac{4A \pm 4\sqrt{A^2 + B^2}}{8}$$
$$X = \frac{A \pm \sqrt{A^2 + B^2}}{2}$$

Dado que $X = n^2$ debe ser no negativo, y sabemos que $\sqrt{A^2+B^2} \ge |A|$, el término con el signo negativo podría ser negativo si $A < 0$ (aunque $\epsilon_r$ es generalmente positivo). El término con el signo positivo siempre es positivo. Por lo tanto, seleccionamos la solución positiva:
$$n^2 = \frac{A + \sqrt{A^2 + B^2}}{2}$$

Finalmente, despejamos $n$:
$$n = \sqrt{\frac{A + \sqrt{A^2 + B^2}}{2}}$$

Sustituyendo de vuelta los valores originales $A = \epsilon_r$ y $B = -\frac{\sigma}{\omega \epsilon_0}$ (notando que $B^2 = (\frac{\sigma}{\omega \epsilon_0})^2$):

$$n = \left[\frac{\epsilon_r + \sqrt{\epsilon_r^2 + \frac{\sigma^2}{\omega^2 \epsilon_0^2}}}{2}\right]^{1/2}$$

Lo cual demuestra la expresión solicitada.