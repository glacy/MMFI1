---
title: Solución Ejercicio 6
keywords:
  - circuitos-rlc
  - impedancia
  - fasores
tags:
  - circuitos-rlc
  - impedancia
  - fasores
  - aplicacion
---

**Corriente en un circuito RLC**

El circuito está alimentado por $V(t) = V_0 e^{i\omega t}$ y tiene impedancia:
$$Z(\omega) = R + i\left(\omega L - \frac{1}{\omega C}\right)$$

**1. Expresión para la corriente $I(t)$**

Por la ley de Ohm para circuitos de corriente alterna:
$$I(t) = \frac{V(t)}{Z(\omega)}$$

Sustituyendo:
$$I(t) = \frac{V_0 e^{i\omega t}}{R + i\left(\omega L - \frac{1}{\omega C}\right)}$$

**2. Expresar $I(t)$ en términos de amplitud y fase**

La expresión actual tiene la forma $I(t) = A e^{i\omega t}$, donde $A$ es un número complejo constante. Queremos llegar a la forma $I(t) = |I| e^{i(\omega t + \phi)}$.

Definimos la reactancia total $X$:
$$X = \omega L - \frac{1}{\omega C}$$

Entonces:
$$I(t) = \frac{V_0 e^{i\omega t}}{R + iX} = \frac{V_0}{R + iX} e^{i\omega t}$$

El factor $\frac{V_0}{R + iX}$ es un número complejo. Para encontrar su módulo y argumento, escribimos el denominador en forma polar.
Denominador $D = R + iX$.
Módulo: $|D| = \sqrt{R^2 + X^2} = |Z|$.
Argumento: $\theta_Z = \arctan\left(\frac{X}{R}\right)$.

Podemos escribir $\frac{1}{R + iX}$ como $\frac{1}{|Z| e^{i\theta_Z}} = \frac{1}{|Z|} e^{-i\theta_Z}$.

Sustituyendo de vuelta en $I(t)$:
$$I(t) = V_0 \left( \frac{1}{|Z|} e^{-i\theta_Z} \right) e^{i\omega t}$$
$$I(t) = \frac{V_0}{|Z|} e^{i(\omega t - \theta_Z)}$$

Comparando con $I(t) = |I| e^{i(\omega t + \phi)}$, tenemos:
*   Amplitud de corriente: $|I| = \frac{V_0}{|Z|}$
*   Fase de la corriente: $\phi = -\theta_Z = -\arctan\left(\frac{X}{R}\right)$

**3. Cálculo de $|I|$ y $\phi$ con los valores dados**

Datos:
$R = 10\, \Omega$
$L = 0.1\, \mathrm{H}$
$C = 100\, \mu\mathrm{F} = 100 \times 10^{-6}\, \mathrm{F}$
$\omega = 100\, \mathrm{rad/s}$
$V_0 = 120\, \mathrm{V}$

**Paso A: Calcular la reactancia $X$**
$$X = \omega L - \frac{1}{\omega C}$$
$$X = (100)(0.1) - \frac{1}{(100)(100 \times 10^{-6})}$$
$$X = 10 - \frac{1}{10^{-2}}$$
$$X = 10 - 100 = -90\, \Omega$$

**Paso B: Calcular el módulo de la impedancia $|Z|$**
$$|Z| = \sqrt{R^2 + X^2}$$
$$|Z| = \sqrt{10^2 + (-90)^2}$$
$$|Z| = \sqrt{100 + 8100} = \sqrt{8200}$$
$$|Z| = 10\sqrt{82} \approx 90.55\, \Omega$$

**Paso C: Calcular la amplitud de corriente $|I|$**
$$|I| = \frac{V_0}{|Z|}$$
$$|I| = \frac{120}{10\sqrt{82}} = \frac{12}{\sqrt{82}}$$
$$|I| \approx \frac{12}{9.055} \approx 1.325\, \mathrm{A}$$

**Paso D: Calcular la fase $\phi$**
$$\phi = -\arctan\left(\frac{X}{R}\right)$$
$$\phi = -\arctan\left(\frac{-90}{10}\right) = -\arctan(-9)$$
$$\phi \approx -(-83.66^\circ) \approx 83.66^\circ$$
o en radianes:
$$\phi \approx 1.46 \text{ rad}$$

**Resultado Final:**
La corriente es aproximadamente $1.33$ amperios y está adelantada aproximadamente $83.7^\circ$ respecto al voltaje aplicado. (El signo positivo de $\phi$ indica adelanto, lo cual es consistente con una reactancia capacitiva neta dominante $X < 0$).