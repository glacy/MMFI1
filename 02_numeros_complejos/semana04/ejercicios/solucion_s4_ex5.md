---
title: Solución Ejercicio 5
keywords:
  - numeros-complejos
  - ecuaciones-complejas
  - algebra-compleja
tags:
  - numeros-complejos
  - ecuaciones-complejas
  - algebra-compleja
  - calculo
  - demostracion
---

**1. $(x+iy)^3 = -1$**

Buscamos las raíces cúbicas de $-1$. Escribimos $-1$ en forma polar o de Euler:
$$-1 = 1 \cdot e^{i\pi} = e^{i(\pi + 2k\pi)}, \quad k \in \mathbb{Z}$$

Aplicamos la raíz cúbica:
$$x+iy = \sqrt[3]{-1} = e^{i(\pi + 2k\pi)/3}$$

Las tres raíces distintas se obtienen para $k = 0, 1, 2$:

*   **Para $k=0$:**
    $$\theta_0 = \frac{\pi}{3}$$
    $$z_0 = \cos\frac{\pi}{3} + i\sin\frac{\pi}{3} = \frac{1}{2} + i\frac{\sqrt{3}}{2}$$

*   **Para $k=1$:**
    $$\theta_1 = \frac{\pi + 2\pi}{3} = \pi$$
    $$z_1 = \cos\pi + i\sin\pi = -1$$

*   **Para $k=2$:**
    $$\theta_2 = \frac{\pi + 4\pi}{3} = \frac{5\pi}{3}$$
    $$z_2 = \cos\frac{5\pi}{3} + i\sin\frac{5\pi}{3} = \frac{1}{2} - i\frac{\sqrt{3}}{2}$$

**Soluciones:**
$$z \in \left\{ -1, \quad \frac{1}{2} + i\frac{\sqrt{3}}{2}, \quad \frac{1}{2} - i\frac{\sqrt{3}}{2} \right\}$$

---

**2. $(x+iy)^3 = 0$**

El único número complejo elevado a una potencia que da cero es el cero mismo.
$$x+iy = 0$$

**Solución:**
$$x = 0, \quad y = 0$$

---

**3. $|x+iy| = y - ix$**

La parte izquierda de la ecuación, $|x+iy|$, es el módulo de $z$, que es por definición un **número real no negativo**.
La parte derecha, $y - ix$, es un **número complejo** general.

Para que un número complejo sea igual a un número real, su parte imaginaria debe ser cero.
El número complejo de la derecha es $y - ix$. Su parte imaginaria es $-x$.
Por lo tanto:
$$-x = 0 \implies x = 0$$

Sustituyendo $x=0$ en la ecuación original:
$$|0 + iy| = y - i(0)$$
$$|iy| = y$$
Sabemos que $|iy| = |y|$, así que:
$$|y| = y$$

Esta igualdad se cumple únicamente si $y \ge 0$.

**Solución:**
El conjunto solución son todos los números complejos sobre el eje imaginario positivo (incluyendo el origen):
$$x = 0, \quad y \ge 0$$

---

**4. $z^2 = 2 + 2i\sqrt{3}$**

Primero pasamos el lado derecho a forma polar para extraer la raíz cuadrada.
Módulo:
$$|2 + 2i\sqrt{3}| = \sqrt{2^2 + (2\sqrt{3})^2} = \sqrt{4 + 12} = \sqrt{16} = 4$$

Argumento:
$$\tan \theta = \frac{2\sqrt{3}}{2} = \sqrt{3}$$
Como $x=2>0$ y $y=2\sqrt{3}>0$, estamos en el primer cuadrante.
$$\theta = \frac{\pi}{3}$$

Entonces, $2 + 2i\sqrt{3} = 4 e^{i\pi/3}$.

La ecuación es $z^2 = 4 e^{i\pi/3}$.
Las raíces cuadradas son:
$$z = \sqrt{4} e^{i(\pi/3 + 2k\pi)/2} = 2 e^{i(\pi/6 + k\pi)}$$

Considerando $k=0$ y $k=1$:

*   **Para $k=0$:**
    $$\theta_0 = \frac{\pi}{6}$$
    $$z_0 = 2 \left( \cos\frac{\pi}{6} + i\sin\frac{\pi}{6} \right) = 2 \left( \frac{\sqrt{3}}{2} + i\frac{1}{2} \right) = \sqrt{3} + i$$

*   **Para $k=1$:**
    $$\theta_1 = \frac{\pi}{6} + \pi = \frac{7\pi}{6}$$
    $$z_1 = 2 \left( \cos\frac{7\pi}{6} + i\sin\frac{7\pi}{6} \right) = 2 \left( -\frac{\sqrt{3}}{2} - i\frac{1}{2} \right) = -\sqrt{3} - i$$

**Soluciones:**
$$z \in \{ \sqrt{3} + i, \quad -\sqrt{3} - i \}$$