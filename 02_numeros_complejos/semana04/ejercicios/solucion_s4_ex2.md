---
title: Solución Ejercicio 2
keywords:
  - numeros-complejos
  - forma-polar
  - forma-rectangular
  - algebra-compleja
tags:
  - numeros-complejos
  - forma-polar
  - forma-rectangular
  - algebra-compleja
  - calculo
  - demostracion
---

**1. $z = i^2+2i+1$**

Primero simplificamos la expresión algebraicamente. Recordemos que $i^2 = -1$.
$$z = -1 + 2i + 1 = 2i$$

**Forma rectangular**
$$z = 0 + 2i$$
$$x = 0, \quad y = 2$$

**Forma polar**
Calculamos el módulo y el argumento:
$$r = |2i| = 2$$
$$\theta = \frac{\pi}{2}$$ (ya que está sobre el eje imaginario positivo).

$$z = 2 \left( \cos \frac{\pi}{2} + i \sin \frac{\pi}{2} \right)$$

---

**2. $z = (i+\sqrt{3})^2$**

Expandimos el binomio al cuadrado:
$$z = (\sqrt{3} + i)^2 = (\sqrt{3})^2 + 2(\sqrt{3})(i) + i^2$$
$$z = 3 + 2i\sqrt{3} - 1$$
$$z = 2 + 2i\sqrt{3}$$

**Forma rectangular**
$$x = 2, \quad y = 2\sqrt{3}$$
$$z = 2 + 2i\sqrt{3}$$

**Forma polar**
Calculamos el módulo:
$$r = \sqrt{2^2 + (2\sqrt{3})^2} = \sqrt{4 + 4(3)} = \sqrt{16} = 4$$

Calculamos el argumento:
$$\tan \theta = \frac{2\sqrt{3}}{2} = \sqrt{3}$$
Como $x > 0$ y $y > 0$ (primer cuadrante), $\theta = \frac{\pi}{3}$.

$$z = 4 \left( \cos \frac{\pi}{3} + i \sin \frac{\pi}{3} \right)$$

---

**3. $z = 25e^{2i}$**

**Forma polar**
De la notación exponencial $re^{i\theta}$, identificamos:
$$r = 25$$
$$\theta = 2 \text{ radianes}$$

$$z = 25 (\cos 2 + i \sin 2)$$

**Forma rectangular**
$$z = 25 \cos 2 + i (25 \sin 2)$$
$$x = 25 \cos 2, \quad y = 25 \sin 2$$
Numéricamente (aproximado):
$x \approx 25(-0.4161) \approx -10.4$
$y \approx 25(0.9093) \approx 22.7$
$$z \approx -10.4 + 22.7i$$

---

**4. $z = \frac{5-2i}{5+2i}$**

Multiplicamos numerador y denominador por el conjugado del denominador:
$$z = \frac{5-2i}{5+2i} \cdot \frac{5-2i}{5-2i}$$
$$z = \frac{(5-2i)^2}{5^2 + 2^2}$$
$$z = \frac{25 - 20i + 4i^2}{25 + 4}$$
$$z = \frac{25 - 20i - 4}{29}$$
$$z = \frac{21 - 20i}{29}$$
$$z = \frac{21}{29} - i\frac{20}{29}$$

**Forma rectangular**
$$x = \frac{21}{29}, \quad y = -\frac{20}{29}$$
$$z = \frac{21}{29} - i\frac{20}{29}$$

**Forma polar**
Calculamos el módulo:
$$r = \sqrt{\left(\frac{21}{29}\right)^2 + \left(-\frac{20}{29}\right)^2}$$
$$r = \frac{1}{29} \sqrt{21^2 + 20^2} = \frac{1}{29} \sqrt{441 + 400} = \frac{1}{29} \sqrt{841} = \frac{29}{29} = 1$$

Calculamos el argumento:
$$\tan \theta = \frac{-20/29}{21/29} = -\frac{20}{21}$$
Como $x > 0$ y $y < 0$ (cuarto cuadrante), $\theta = -\arctan\left(\frac{20}{21}\right)$.

$$z = 1 \left[ \cos\left(-\arctan\frac{20}{21}\right) + i \sin\left(-\arctan\frac{20}{21}\right) \right]$$