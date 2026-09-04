---
title: Solución Ejercicio 4
keywords:
  - hiperbolicas-inversas
  - logaritmo-complejo
tags:
  - hiperbolicas-inversas
  - logaritmo-complejo
objetivos: []
---

**1. $\cosh^{-1}(2)$**

Usamos la definición:
$$\cosh^{-1}(z) = \ln(z + \sqrt{z^2-1})$$

Sustituimos $z=2$:
$$\cosh^{-1}(2) = \ln(2 + \sqrt{4-1}) = \ln(2 + \sqrt{3})$$

Como $2+\sqrt{3}$ es un número real positivo ($\approx 3.73$), el logaritmo es real.
$$\cosh^{-1}(2) \approx 1.317$$

---

**2. $\tanh^{-1}(2)$**

Usamos la definición:
$$\tanh^{-1}(z) = \frac{1}{2}\ln\left(\frac{1+z}{1-z}\right)$$

Sustituimos $z=2$:
$$\tanh^{-1}(2) = \frac{1}{2}\ln\left(\frac{1+2}{1-2}\right) = \frac{1}{2}\ln\left(\frac{3}{-1}\right) = \frac{1}{2}\ln(-3)$$

Para calcular $\ln(-3)$:
$$\ln(-3) = \ln(3) + i(\pi + 2k\pi)$$

Sustituyendo:
$$\tanh^{-1}(2) = \frac{1}{2}\ln(3) + i\left(\frac{\pi}{2} + k\pi\right)$$
$$\tanh^{-1}(2) \approx 0.5493 + i\frac{\pi}{2} + ik\pi$$

Valor principal ($k=0$):
$$\tanh^{-1}(2) \approx 0.5493 + i1.5708$$

*Nota física:* La función $\tanh^{-1}(x)$ es real solo para $|x|<1$. Para valores fuera de este rango, la parte imaginaria aparece, indicando un cambio de fase o presencia de singularidades.

---

**3. $\sinh^{-1}(i)$**

Usamos la definición:
$$\sinh^{-1}(z) = \ln(z + \sqrt{z^2+1})$$

Sustituimos $z=i$:
$$\sinh^{-1}(i) = \ln\left(i + \sqrt{i^2+1}\right) = \ln\left(i + \sqrt{-1+1}\right) = \ln(i)$$

Calculamos $\ln(i)$:
$$\ln(i) = \ln|i| + i\arg(i) = 0 + i\left(\frac{\pi}{2} + 2k\pi\right)$$

**Resultado:**
$$\sinh^{-1}(i) = i\left(\frac{\pi}{2} + 2k\pi\right)$$