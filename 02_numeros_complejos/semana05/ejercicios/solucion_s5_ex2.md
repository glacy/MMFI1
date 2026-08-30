---
title: Solución Ejercicio 2
keywords:
  - funciones-trigonometricas-complejas
  - funciones-hiperbolicas
tags:
  - funciones-trigonometricas-complejas
  - funciones-hiperbolicas
  - calculo
---

**1. $\cosh (2\pi i)$**

Usamos la definición de coseno hiperbólico:
$$\cosh z = \frac{e^z + e^{-z}}{2}$$

$$\cosh(2\pi i) = \frac{e^{2\pi i} + e^{-2\pi i}}{2}$$

Por la Fórmula de Euler, $$e^{2\pi i} = \cos(2\pi) + i\sin(2\pi) = 1$$ Similarmente, $$e^{-2\pi i} = 1$$

Por lo tanto, 

$$\cosh(2\pi i) = \frac{1 + 1}{2} = 1$$

---

También sabemos que $\cosh(ix) = \cos x$. Entonces $$\cosh(2\pi i) = \cos(2\pi) = 1$$


---

**2. $\tanh \left(\frac{3\pi i}{4}\right)$**

Usamos la definición de tangente hiperbólica:
$$\tanh z = \frac{\sinh z}{\cosh z}$$

Sabemos que:
$\sinh(ix) = i\sin x$
$\cosh(ix) = \cos x$

Por lo tanto:
$$\tanh\left(\frac{3\pi i}{4}\right) = \frac{\sinh\left(\frac{3\pi i}{4}\right)}{\cosh\left(\frac{3\pi i}{4}\right)} = \frac{i\sin\left(\frac{3\pi}{4}\right)}{\cos\left(\frac{3\pi}{4}\right)} = i \tan\left(\frac{3\pi}{4}\right)$$
Por lo tanto,
$$\tanh\left(\frac{3\pi i}{4}\right) = i(-1) = -i$$

---

**3. $\sinh (\ln 2 +\frac{i \pi}{3})$**

Separamos la parte real e imaginaria: $z = x + iy$ con $x = \ln 2$ e $y = \pi/3$.
Usamos la identidad
$$\sinh(x+iy) = \sinh x \cos y + i \cosh x \sin y$$

Calculamos los componentes:
*   $\sinh(\ln 2) = \frac{e^{\ln 2} - e^{-\ln 2}}{2} = \frac{2 - 1/2}{2} = \frac{3/2}{2} = \frac{3}{4}$
*   $\cosh(\ln 2) = \frac{e^{\ln 2} + e^{-\ln 2}}{2} = \frac{2 + 1/2}{2} = \frac{5/2}{2} = \frac{5}{4}$
*   $\cos(\pi/3) = \frac{1}{2}$
*   $\sin(\pi/3) = \frac{\sqrt{3}}{2}$

Sustituyendo:
$$\sinh(\ln 2 +\frac{i \pi}{3}) = \frac{3}{4}\left(\frac{1}{2}\right) + i \left(\frac{5}{4}\right)\left(\frac{\sqrt{3}}{2}\right)$$
$$= \frac{3}{8} + i\frac{5\sqrt{3}}{8}$$

---

**4. $\sin \left(\frac{i\pi}{2}\right)$**

Sabemos que $\sin(ix) = i\sinh x$.
$$\sin\left(\frac{i\pi}{2}\right) = i\sinh\left(\frac{\pi}{2}\right)$$

Calculamos $\sinh(\pi/2)$:
$$\sinh\left(\frac{\pi}{2}\right) = \frac{e^{\pi/2} - e^{-\pi/2}}{2}$$

Por lo tanto:
$$\sin\left(\frac{i\pi}{2}\right) = i \frac{e^{\pi/2} - e^{-\pi/2}}{2} = \frac{i}{2}(e^{\pi/2} - e^{-\pi/2})$$