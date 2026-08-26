---
title: Solución Ejercicio 5
keywords:
  - optica
  - ondas-electromagneticas
  - absorcion
tags:
  - optica
  - ondas-electromagneticas
  - absorcion
  - aplicacion
---

**Onda electromagnética en un medio absorbente**

La onda está dada por:
$$E(z,t) = E_0 e^{i\left(\frac{\omega \tilde{n}}{c}z - \omega t\right)}$$
con $\tilde{n} = n + ik$.

**1. Separar parte real e imaginaria del exponente**

El exponente es:
$$\Phi = \frac{\omega (n + ik)}{c}z - \omega t$$
$$\Phi = \left(\frac{\omega n}{c}z - \omega t\right) + i\left(\frac{\omega k}{c}z\right)$$

Separando en parte real ($\text{Re}(\Phi)$) e imaginaria ($\text{Im}(\Phi)$):
$$\text{Re}(\Phi) = \frac{\omega n}{c}z - \omega t$$
$$\text{Im}(\Phi) = \frac{\omega k}{c}z$$

Por lo tanto, la onda se puede escribir como:
$$E(z,t) = E_0 e^{i\text{Re}(\Phi)} e^{-\text{Im}(\Phi)} = E_0 e^{-\frac{\omega k}{c}z} e^{i\left(\frac{\omega n}{c}z - \omega t\right)}$$

**2. Expresión para la amplitud $|E(z,t)|$ y efecto de $k$**

El campo eléctrico es un número complejo. Su módulo (amplitud física) es:
$$|E(z,t)| = |E_0 e^{-\frac{\omega k}{c}z} e^{i\left(\frac{\omega n}{c}z - \omega t\right)}|$$
$$|E(z,t)| = |E_0| e^{-\frac{\omega k}{c}z} |e^{i(\dots)}|$$

Sabemos que $|e^{i\theta}| = 1$ para cualquier $\theta$ real.
$$|E(z,t)| = |E_0| e^{-\frac{\omega k}{c}z}$$

**Efecto de $k$:**
El término $e^{-\frac{\omega k}{c}z}$ es un factor de atenuación.
*   Como $k > 0$, el exponente es negativo.
*   A medida que la onda se propaga en la dirección $+z$ ($z$ aumenta), el factor $e^{-\alpha z}$ disminuye.
*   Esto significa que la amplitud de la onda decae exponencialmente mientras viaja a través del medio absorbente. El coeficiente $k$ es el responsable de esta absorción (pérdida de energía).

**3. Cálculo numérico**

Datos:
$n = 1.5$
$k = 0.1$
$\omega = 2\pi \times 10^9$ rad/s
$c = 3 \times 10^8$ m/s
$z = 1$ m
$t = 0$
(Especificamos $|E_0| = 1$ para obtener la amplitud relativa o asumimos $E_0$ es la amplitud inicial en $z=0$).

Cálculo del exponente de decaimiento:
$$\frac{\omega k}{c} = \frac{(2\pi \times 10^9)(0.1)}{3 \times 10^8}$$
$$= \frac{0.2\pi \times 10^9}{3 \times 10^8} = \frac{2\pi}{3} \approx 2.094 \text{ m}^{-1}$$

Cálculo de la amplitud:
$$|E(1, 0)| = |E_0| e^{-(2\pi/3)(1)}$$
$$|E(1, 0)| = |E_0| e^{-2\pi/3}$$

Valor numérico:
$$e^{-2.094} \approx 0.123$$

**Resultado:**
$$|E(1, 0)| \approx 0.123 |E_0|$$
La onda ha perdido casi el 88% de su amplitud al viajar 1 metro en este medio absorbente.