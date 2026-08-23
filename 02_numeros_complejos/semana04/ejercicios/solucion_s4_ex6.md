---
title: Solución Ejercicio 6
keywords:
  - formula-euler
  - demostracion
tags:
  - formula-euler
  - demostracion
---

La **Fórmula de Euler** establece que para cualquier número real $\theta$:
$$e^{i\theta} = \cos\theta + i\sin\theta$$

**Demostración mediante series de Taylor**

La demostración más directa se basa en la expansión en series de Taylor (o Maclaurin) de las funciones exponencial, coseno y seno alrededor de 0.

Recordemos las series de Taylor para estas funciones:
1.  **Función exponencial:**
    $$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \frac{x^5}{5!} + \cdots$$

2.  **Función coseno:**
    $$\cos x = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$$

3.  **Función seno:**
    $$\sin x = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots$$

Ahora, sustituimos $x = i\theta$ en la serie de la función exponencial. Recordamos que $i^2 = -1$, $i^3 = -i$, $i^4 = 1$, etc.

$$e^{i\theta} = \sum_{n=0}^{\infty} \frac{(i\theta)^n}{n!}$$
$$e^{i\theta} = 1 + i\theta + \frac{(i\theta)^2}{2!} + \frac{(i\theta)^3}{3!} + \frac{(i\theta)^4}{4!} + \frac{(i\theta)^5}{5!} + \cdots$$

Calculamos las potencias de $i$:
$$e^{i\theta} = 1 + i\theta + \frac{i^2\theta^2}{2!} + \frac{i^3\theta^3}{3!} + \frac{i^4\theta^4}{4!} + \frac{i^5\theta^5}{5!} + \cdots$$
$$e^{i\theta} = 1 + i\theta + \frac{(-1)\theta^2}{2!} + \frac{(-i)\theta^3}{3!} + \frac{(1)\theta^4}{4!} + \frac{(i)\theta^5}{5!} + \cdots$$

Separamos los términos que no tienen $i$ (parte real) de los que sí lo tienen (parte imaginaria):

**Parte Real (términos pares de $n$):**
$$1 - \frac{\theta^2}{2!} + \frac{\theta^4}{4!} - \cdots = \sum_{n=0}^{\infty} (-1)^n \frac{\theta^{2n}}{(2n)!}$$

Esta es exactamente la serie de Taylor del **coseno**. Por lo tanto:
$$\text{Re}(e^{i\theta}) = \cos\theta$$

**Parte Imaginaria (términos impares de $n$, factorizando $i$):**
$$i\left( \theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \cdots \right) = i \sum_{n=0}^{\infty} (-1)^n \frac{\theta^{2n+1}}{(2n+1)!}$$

La expresión dentro del paréntesis es exactamente la serie de Taylor del **seno**. Por lo tanto:
$$\text{Im}(e^{i\theta}) = i \sin\theta$$

**Conclusión**
Combinando la parte real y la parte imaginaria:
$$e^{i\theta} = \underbrace{\left( 1 - \frac{\theta^2}{2!} + \frac{\theta^4}{4!} - \cdots \right)}_{\cos\theta} + i\underbrace{\left( \theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \cdots \right)}_{\sin\theta}$$

Se demuestra así que:
$$e^{i\theta} = \cos\theta + i\sin\theta$$