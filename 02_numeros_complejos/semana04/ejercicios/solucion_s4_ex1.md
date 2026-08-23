---
title: Solución Ejercicio 1
keywords:
  - numeros-complejos
  - forma-polar
  - forma-rectangular
  - formula-euler
tags:
  - numeros-complejos
  - forma-polar
  - forma-rectangular
  - formula-euler
  - algebra-compleja
  - calculo
  - demostracion
---

**1. $z = -\sqrt{3}+i$**

**Forma rectangular**
$$x = -\sqrt{3}, \quad y = 1$$
$$z = -\sqrt{3} + i$$

**Forma polar**
Calculamos el módulo y el argumento:
$$r = |z| = \sqrt{(-\sqrt{3})^2 + 1^2} = \sqrt{3+1} = 2$$

El punto $(-\sqrt{3}, 1)$ se encuentra en el segundo cuadrante.
$$\theta = \arctan\left(\frac{1}{-\sqrt{3}}\right) = \arctan\left(-\frac{1}{\sqrt{3}}\right)$$
El ángulo de referencia es $\pi/6$. Al estar en el segundo cuadrante:
$$\theta = \pi - \frac{\pi}{6} = \frac{5\pi}{6}$$

Por lo tanto, la forma polar es:
$$z = 2 \left( \cos \frac{5\pi}{6} + i \sin \frac{5\pi}{6} \right)$$

**Forma de Euler**
$$z = 2 e^{i 5\pi/6}$$

---

**2. $z = 3e^{i\pi/2}$**

**Forma de Euler**
$$z = 3e^{i\pi/2}$$
Esta es la forma de Euler dada. El módulo es $r=3$ y el argumento es $\theta = \pi/2$.

**Forma polar**
$$z = 3 \left( \cos \frac{\pi}{2} + i \sin \frac{\pi}{2} \right)$$

**Forma rectangular**
Usando $\cos(\pi/2)=0$ y $\sin(\pi/2)=1$:
$$z = 3(0 + i) = 3i$$
$$x = 0, \quad y = 3$$

---

**3. $z = 2\left( \cos \frac{\pi}{4}+i\sin \frac{\pi}{4}\right)$**

**Forma polar**
Esta es la forma polar dada. El módulo es $r=2$ y el argumento es $\theta = \pi/4$.

**Forma de Euler**
$$z = 2 e^{i \pi/4}$$

**Forma rectangular**
Usando $\cos(\pi/4)=\sin(\pi/4)=\frac{\sqrt{2}}{2}$:
$$z = 2\left( \frac{\sqrt{2}}{2} + i \frac{\sqrt{2}}{2} \right)$$
$$z = \sqrt{2} + i\sqrt{2}$$
$$x = \sqrt{2}, \quad y = \sqrt{2}$$

---

**4. $z = (1,-\sqrt{3})$**

Interpretamos la notación $(1, -\sqrt{3})$ como las coordenadas rectangulares $(x, y)$ en el plano complejo.

**Forma rectangular**
$$x = 1, \quad y = -\sqrt{3}$$
$$z = 1 - i\sqrt{3}$$

**Forma polar**
Calculamos el módulo y el argumento:
$$r = |z| = \sqrt{1^2 + (-\sqrt{3})^2} = \sqrt{1+3} = 2$$

El punto $(1, -\sqrt{3})$ se encuentra en el cuarto cuadrante.
$$\theta = \arctan\left(\frac{-\sqrt{3}}{1}\right) = -\frac{\pi}{3}$$

Por lo tanto, la forma polar es:
$$z = 2 \left( \cos \left(-\frac{\pi}{3}\right) + i \sin \left(-\frac{\pi}{3}\right) \right)$$
O equivalentemente:
$$z = 2 \left( \cos \frac{\pi}{3} - i \sin \frac{\pi}{3} \right)$$

**Forma de Euler**
$$z = 2 e^{-i \pi/3}$$