---
title: Solución Ejercicio 3
keywords:
  - trigonometricas-inversas
  - funciones-multivaluadas
tags:
  - trigonometricas-inversas
  - funciones-multivaluadas
objetivos: []
---

**1. $\arcsin(2)$**

Usamos la definición:
$$\arcsin(z) = -i\ln(iz + \sqrt{1-z^2})$$

Sustituimos $z=2$:
$$\arcsin(2) = -i\ln(2i + \sqrt{1-4}) = -i\ln(2i + \sqrt{-3})$$
$$\arcsin(2) = -i\ln(2i \pm i\sqrt{3}) = -i\ln\left[ i(2 \pm \sqrt{3}) \right]$$

Separamos en casos para el signo:
*   **Caso 1 (Suma):** $-i\ln\left[ i(2 + \sqrt{3}) \right]$
    Usando $\ln(ix) = \ln x + i(\pi/2 + 2k\pi)$:
    $$= -i \left[ \ln(2+\sqrt{3}) + i\left(\frac{\pi}{2} + 2k\pi\right) \right]$$
    $$= \left(\frac{\pi}{2} + 2k\pi\right) - i\ln(2+\sqrt{3})$$

*   **Caso 2 (Resta):** $-i\ln\left[ i(2 - \sqrt{3}) \right]$
    Similarmente:
    $$= -i \left[ \ln(2-\sqrt{3}) + i\left(\frac{\pi}{2} + 2k\pi\right) \right]$$
    Notamos que $2-\sqrt{3} = \frac{1}{2+\sqrt{3}}$ (son recíprocos), así que $\ln(2-\sqrt{3}) = -\ln(2+\sqrt{3})$.
    $$= \left(\frac{\pi}{2} + 2k\pi\right) + i\ln(2+\sqrt{3})$$

**Resultado General:**
$$\arcsin(2) = n\pi + (-1)^n \left[ \frac{\pi}{2} + i\ln(2+\sqrt{3}) \right]$$
o de forma más simple (agrupando):
$$\arcsin(2) = \frac{\pi}{2} + 2n\pi \pm i\ln(2+\sqrt{3})$$

---

**2. $\arccos(-i)$**

Usamos la definición:
$$\arccos(z) = -i\ln(z + i\sqrt{1-z^2})$$

Sustituimos $z=-i$:
$$\arccos(-i) = -i\ln\left(-i + i\sqrt{1-(-i)^2}\right) = -i\ln\left(-i + i\sqrt{1+1}\right) = -i\ln\left[ i(\sqrt{2}-1) \right]$$

Aplicamos logaritmo:
$$= -i \left[ \ln(\sqrt{2}-1) + i\left(\frac{\pi}{2} + 2k\pi\right) \right]$$

Note que $\sqrt{2}-1 = \frac{1}{\sqrt{2}+1}$, así que $\ln(\sqrt{2}-1) = -\ln(\sqrt{2}+1)$.
$$= -i \left[ -\ln(\sqrt{2}+1) + i\left(\frac{\pi}{2} + 2k\pi\right) \right]$$
$$= i\ln(\sqrt{2}+1) + \left(\frac{\pi}{2} + 2k\pi\right)$$

**Resultado:**
$$\arccos(-i) = \frac{\pi}{2} + 2k\pi + i\ln(\sqrt{2}+1)$$

---

**3. $\arctan(i)$**

Usamos la definición:
$$\arctan(z) = \frac{i}{2}\ln\left(\frac{i+z}{i-z}\right)$$

Sustituimos $z=i$:
$$\arctan(i) = \frac{i}{2}\ln\left(\frac{i+i}{i-i}\right) = \frac{i}{2}\ln\left(\frac{2i}{0}\right)$$

La división por cero indica una singularidad. En el plano extendido, el logaritmo del infinito tiende a infinito. Físicamente, esto corresponde a un polo de la función tangente. La función $\tan(z)$ tiene asíntotas en $z = \pi/2 + k\pi$. En el eje imaginario, $\tanh$ tiene singularidades en $\pm i \pi/2$.
Matemáticamente, el valor no está definido en el plano complejo finito.