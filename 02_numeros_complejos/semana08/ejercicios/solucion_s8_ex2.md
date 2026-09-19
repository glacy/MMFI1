---
title: Solución Ejercicio 2
keywords:
  - singularidades
  - polos
  - singularidad-esencial
  - singularidad-removible
tags:
  - singularidades
  - polos
  - singularidad-esencial
  - singularidad-removible
objetivos: []
---

**(a) Removible.** Usamos la serie de $\cos z$:

$$
1 - \cos z = \frac{z^2}{2!} - \frac{z^4}{4!} + \frac{z^6}{6!} - \cdots
\;\Longrightarrow\;
f(z) = \frac{1}{2!} - \frac{z^2}{4!} + \frac{z^4}{6!} - \cdots
$$

No hay potencias negativas: parte principal **nula**, singularidad **removible**, y el valor que extiende analíticamente $f$ es

$$
\lim_{z\to 0}\frac{1-\cos z}{z^2} = \frac{1}{2}.
$$

---

**(b) Esencial.** Con $e^{w} = \sum_{n\ge0} \frac{w^n}{n!}$ y $w = 1/z$:

$$
z\,e^{1/z} = z\left(1 + \frac{1}{z} + \frac{1}{2!\,z^2} + \frac{1}{3!\,z^3} + \cdots\right)
= z + 1 + \frac{1}{2!\,z} + \frac{1}{3!\,z^2} + \cdots
$$

Infinitas potencias negativas con coeficientes $b_n = \frac{1}{(n+1)!} \neq 0$: singularidad **esencial**. (Nótese que multiplicar por $z$ "aplasta" el primer término de la parte principal de $e^{1/z}$, pero deja infinitos: la esencialidad no se arregla multiplicando por polinomios.)

---

**(c) Polo simple.** Con $\tan z = \frac{\sin z}{\cos z}$: en $z_0 = \pi/2$ el numerador vale $\sin(\pi/2) = 1 \neq 0$ y el denominador se anula **con derivada no nula**, $\cos'(\pi/2) = -\sin(\pi/2) = -1$. El cero del denominador es simple, luego $z_0$ es un **polo de orden 1**. Cerca de $z_0$, la parte principal se lee con la regla del cociente de la lectura (residuo $= g(z_0)/h'(z_0)$ con $g=\sin z$, $h=\cos z$):

$$
\tan z = \frac{\sin z}{\cos z} \approx \frac{1}{-\left(z - \frac{\pi}{2}\right)} = -\frac{1}{z - \pi/2} + \text{(parte analítica)},
$$

de donde $\operatorname{Res}_{z=\pi/2}\tan z = -1$.

---

**(d) Polo de orden 2.** Con $\sin z = z - \frac{z^3}{3!} + \frac{z^5}{5!} - \cdots$:

$$
\frac{\sin z}{z^3} = \frac{1}{z^2} - \frac{1}{3!} + \frac{z^2}{5!} - \cdots
$$

La parte principal es **finita** con un solo término, $\frac{1}{z^2}$: polo de **orden 2** (aunque el denominador parece sugerir orden 3, el numerador se anula en $z=0$ y "mata" un orden). Parte principal: $\dfrac{1}{z^2}$; $\operatorname{Res}_{z=0} f = 0$ (no hay término $1/z$).

---

**(e) $\ln z$ en $z=0$.** Para aplicar la clasificación (y la serie de Laurent) se requiere que $f$ sea analítica y **univaluada** en algún disco pinchado $0<|z|<\varepsilon$. El logaritmo no lo es: cada vuelta alrededor del origen acumula $2\pi i$ (semana 6), así que no existe *ningún* disco pinchado donde $\ln z$ sea función univaluada. La serie de Laurent ni siquiera puede plantearse: $z=0$ es un **punto de ramificación**, una singularidad **no aislada**, y vive fuera de la taxonomía removible/polo/esencial.
