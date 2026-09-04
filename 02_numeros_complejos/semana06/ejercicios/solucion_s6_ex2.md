---
title: Solución Ejercicio 2
keywords:
  - potencias-complejas
  - logaritmo-complejo
tags:
  - potencias-complejas
  - logaritmo-complejo
objetivos: []
---

**1. $i^i$**

Usamos la definición $z^w = e^{w \text{Log}(z)}$:
$$i^i = e^{i \text{Log}(i)}$$

Sabemos que $\text{Log}(i) = i(\frac{\pi}{2} + 2k\pi)$ (ver Ejercicio 1).
$$i^i = e^{i \left[ i\left(\frac{\pi}{2} + 2k\pi\right) \right]} = e^{-\left(\frac{\pi}{2} + 2k\pi\right)}$$

Interesantemente, el resultado es un conjunto de valores **reales positivos**:
$$i^i \in \left\{ e^{-\pi/2}, e^{-5\pi/2}, e^{-9\pi/2}, \ldots \right\}$$
El valor principal ($k=0$) es aproximadamente $0.2079$.

---

**2. $(-1)^{1/2}$**

$$(-1)^{1/2} = e^{\frac{1}{2} \text{Log}(-1)}$$

Sabemos que $\text{Log}(-1) = i(\pi + 2k\pi)$.
$$(-1)^{1/2} = e^{\frac{1}{2} i(\pi + 2k\pi)} = e^{i(\frac{\pi}{2} + k\pi)}$$

Para $k$ par (ej. $k=0$): $e^{i\pi/2} = i$
Para $k$ impar (ej. $k=1$): $e^{i3\pi/2} = -i$

**Resultado:**
$$(-1)^{1/2} = \pm i$$

---

**3. $2^{1+i}$**

$$2^{1+i} = e^{(1+i)\text{Log}(2)}$$

Como $2$ es real positivo, $\text{Log}(2) = \ln(2)$ (único valor real).
$$2^{1+i} = e^{\ln(2) + i\ln(2)} = e^{\ln(2)} e^{i\ln(2)}$$
$$2^{1+i} = 2 e^{i\ln 2}$$

En forma rectangular:
$$2^{1+i} = 2[\cos(\ln 2) + i\sin(\ln 2)]$$
Usando $\ln 2 \approx 0.6931$:
$$2^{1+i} \approx 2[\cos(0.6931) + i\sin(0.6931)] \approx 2(0.7692 + i0.6390) \approx 1.538 + i1.278$$

---

**4. $(1+i)^{1-i}$**

$$ (1+i)^{1-i} = e^{(1-i)\text{Log}(1+i)} $$

Calculamos $\text{Log}(1+i)$:
$$ \text{Log}(1+i) = \ln|1+i| + i\arg(1+i) = \ln\sqrt{2} + i\left(\frac{\pi}{4} + 2k\pi\right) = \frac{1}{2}\ln 2 + i\left(\frac{\pi}{4} + 2k\pi\right) $$

Multiplicamos:
$$ (1-i)\left[ \frac{1}{2}\ln 2 + i\left(\frac{\pi}{4} + 2k\pi\right) \right] $$
$$ = \frac{1}{2}\ln 2 - i\frac{1}{2}\ln 2 + i\frac{\pi}{4} + \frac{\pi}{4} + \dots $$
$$ = \left( \frac{1}{2}\ln 2 + \frac{\pi}{4} + \frac{\pi}{2}k \right) + i\left( \frac{\pi}{4} - \frac{1}{2}\ln 2 \right) $$

Finalmente exponenciamos:
$$ (1+i)^{1-i} = e^{\frac{1}{2}\ln 2 + \frac{\pi}{4}} \cdot e^{i(\frac{\pi}{4} - \frac{1}{2}\ln 2)} \cdot e^{i \frac{\pi}{2}k} $$
$$ = \sqrt{2} e^{\frac{\pi}{4}} \left[ \cos\left(\frac{\pi}{4} - \frac{1}{2}\ln 2\right) + i \sin\left(\frac{\pi}{4} - \frac{1}{2}\ln 2\right) \right] \cdot (-1)^k $$

Valor principal ($k=0$):
$$ \approx 2 \sqrt{2} e^{0.785} [ \cos(0.438) + i \sin(0.438) ] \approx 3.0 [ 0.905 + i 0.424 ] \approx 2.81 + i1.32 $$