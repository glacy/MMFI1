---
title: Solución Ejercicio 3
keywords:
  - numeros-complejos
  - algebra-compleja
tags:
  - numeros-complejos
  - algebra-compleja
  - calculo
  - demostracion
---

Para cada caso, procederemos racionalizando el denominador o simplificando algebraicamente. Sea $z = x + iy$.

---

**1. $z^{-1} = \frac{1}{z}$**

$$z^{-1} = \frac{1}{x+iy}$$

Multiplicamos numerador y denominador por el conjugado del denominador $\bar{z} = x - iy$:
$$z^{-1} = \frac{1}{x+iy} \cdot \frac{x-iy}{x-iy} = \frac{x-iy}{(x+iy)(x-iy)}$$

Recordando que $(x+iy)(x-iy) = x^2 - i^2 y^2 = x^2 + y^2 = |z|^2$:
$$z^{-1} = \frac{x-iy}{x^2+y^2}$$

Separando parte real e imaginaria:
$$z^{-1} = \frac{x}{x^2+y^2} - i \frac{y}{x^2+y^2}$$

---

**2. $\frac{1}{z^2}$**

Primero calculamos $z^2$:
$$z^2 = (x+iy)^2 = x^2 + 2ixy + i^2 y^2 = (x^2 - y^2) + i(2xy)$$

Ahora calculamos el inverso:
$$\frac{1}{z^2} = \frac{1}{(x^2 - y^2) + i(2xy)}$$

Racionalizamos multiplicando por el conjugado del denominador $(x^2 - y^2) - i(2xy)$:
$$\frac{1}{z^2} = \frac{(x^2 - y^2) - i(2xy)}{(x^2 - y^2)^2 + (2xy)^2}$$

Simplificando el denominador (que es $|z|^4 = (x^2+y^2)^2$):
$$(x^2 - y^2)^2 + (2xy)^2 = x^4 - 2x^2y^2 + y^4 + 4x^2y^2 = x^4 + 2x^2y^2 + y^4 = (x^2 + y^2)^2$$

Por lo tanto:
$$\frac{1}{z^2} = \frac{(x^2 - y^2) - i(2xy)}{(x^2+y^2)^2}$$

O写成:
$$\frac{1}{z^2} = \frac{x^2 - y^2}{(x^2+y^2)^2} - i \frac{2xy}{(x^2+y^2)^2}$$

---

**3. $\frac{z}{\bar{z}}$$

Sustituimos $z = x+iy$ y $\bar{z} = x-iy$:
$$\frac{z}{\bar{z}} = \frac{x+iy}{x-iy}$$

Multiplicamos numerador y denominador por el conjugado del denominador (que es $x+iy$):
$$\frac{z}{\bar{z}} = \frac{(x+iy)(x+iy)}{(x-iy)(x+iy)} = \frac{(x+iy)^2}{x^2+y^2}$$

Expandiendo el numerador:
$$\frac{z}{\bar{z}} = \frac{x^2 + 2ixy - y^2}{x^2+y^2}$$

Separando parte real e imaginaria:
$$\frac{z}{\bar{z}} = \frac{x^2 - y^2}{x^2+y^2} + i \frac{2xy}{x^2+y^2}$$

*Nota:* El módulo de $\frac{z}{\bar{z}}$ es $1$, ya que $|z/\bar{z}| = |z|/|z| = 1$.

---

**4. $\frac{1}{z-i}$$

Sustituimos $z = x+iy$:
$$\frac{1}{z-i} = \frac{1}{x + iy - i} = \frac{1}{x + i(y-1)}$$

Racionalizamos multiplicando por el conjugado del denominador $x - i(y-1)$:
$$\frac{1}{z-i} = \frac{x - i(y-1)}{x^2 + (y-1)^2}$$

Separando parte real e imaginaria:
$$\frac{1}{z-i} = \frac{x}{x^2 + (y-1)^2} - i \frac{y-1}{x^2 + (y-1)^2}$$