---
title: Solución Ejercicio 4
keywords:
  - identidades-hiperbolicas
  - demostracion
tags:
  - identidades-hiperbolicas
  - demostracion
---

**Demostración para $\sinh(x+iy)$**

Usamos la definición de seno hiperbólico en términos de exponenciales complejas:
$$\sinh(z) = \frac{e^z - e^{-z}}{2}$$

Sustituimos $z = x+iy$:
$$\sinh(x+iy) = \frac{e^{x+iy} - e^{-x-iy}}{2} = \frac{e^x e^{iy} - e^{-x} e^{-iy}}{2}$$

Separamos los términos con $e^x$:
$$\sinh(x+iy) = \frac{e^x e^{iy} - e^{-x} e^{-iy}}{2}$$

Separamos en partes real e imaginaria usando $e^{iy} = \cos y + i\sin y$:
$$= \frac{e^x (\cos y + i\sin y) - e^{-x} (\cos y - i\sin y)}{2}$$
$$= \frac{(e^x - e^{-x})\cos y + i(e^x + e^{-x})\sin y}{2}$$

Reconocemos las definiciones de $\sinh x$ y $\cosh x$:
$\sinh x = \frac{e^x - e^{-x}}{2}$
$\cosh x = \frac{e^x + e^{-x}}{2}$

Sustituyendo:
$$\sinh(x+iy) = \sinh x \cos y + i \cosh x \sin y$$

---

**Demostración para $\cosh(x+iy)$**

Usamos la definición de coseno hiperbólico:
$$\cosh(z) = \frac{e^z + e^{-z}}{2}$$

Sustituimos $z = x+iy$:
$$\cosh(x+iy) = \frac{e^{x+iy} + e^{-x-iy}}{2} = \frac{e^x e^{iy} + e^{-x} e^{-iy}}{2}$$

Separamos en partes real e imaginaria:
$$= \frac{e^x (\cos y + i\sin y) + e^{-x} (\cos y - i\sin y)}{2}$$
$$= \frac{(e^x + e^{-x})\cos y + i(e^x - e^{-x})\sin y}{2}$$

Usando las definiciones de $\sinh x$ y $\cosh x$:
$$= \cosh x \cos y + i \sinh x \sin y$$

