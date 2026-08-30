---
title: Solución Ejercicio 9
keywords:
  - lineas-transmision
  - funciones-hiperbolicas-complejas
  - atenuacion
tags:
  - lineas-transmision
  - funciones-hiperbolicas-complejas
  - aplicacion
objetivos: []
---

**1. Expresión para el voltaje complejo $V(z)$**

Según el modelo dado, el voltaje se describe por
$$V(z) = V_0 \cosh(\gamma z)$$

Sustituyendo $V_0 = 10 	\text{ V}$  y $\gamma = 0,02 + i0,1$:
$$V(z) = 10 \cosh\left[ (0,02 + i0,1)z \right]$$

**2. Cálculo del voltaje a $z = 50$ m**

Primero calculamos el argumento del coseno hiperbólico:
$$\gamma z = (0,02 + i0,1)(50) = 1 + i5$$

Ahora calculamos $V(50)$:
$$V(50) = 10 \cosh(1 + i5)$$

Para evaluar el coseno hiperbólico de un argumento complejo, usamos la identidad
$$\cosh(x+iy) = \cosh x \cos y + i \sinh x \sin y$$

Con $x=1$ e $y=5$:
$$\cosh(1 + i5) = \cosh(1)\cos(5) + i \sinh(1)\sin(5)$$

Calculamos los componentes:
*   $\cosh(1) \approx 1,5431$
*   $\sinh(1) \approx 1,1752$
*   $\cos(5 \text{ rad}) \approx 0,2837$ 
*   $\sin(5 \text{ rad}) \approx -0,9589$ 

Sustituyendo:
$$\cosh(1 + i5) \approx (1,5431)(0,2837) + i(1,1752)(-0,9589)$$
$$\approx 0,4377 - i1,1270$$

Multiplicamos por la amplitud $V_0 = 10$:
$$V(50) \approx 10(0,4377 - i1,1270) = 4,38 - i11,27 \text{ V}$$

**Cálculo de la magnitud $|V(50)|$**:
$$|V(50)| = \sqrt{(4,38)^2 + (-11,27)^2}$$
$$|V(50)| = \sqrt{19,18 + 127,01} = \sqrt{146,19}$$
$$|V(50)| \approx 12,1 \text{ V}$$
