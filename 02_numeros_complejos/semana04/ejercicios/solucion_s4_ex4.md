---
title: Solución Ejercicio 4
keywords:
  - numeros-complejos
  - modulo
  - algebra-compleja
tags:
  - numeros-complejos
  - modulo
  - algebra-compleja
  - calculo
  - demostracion
---

**1. $|z\bar{z}|$**

Sabemos por definición que el producto de un número complejo por su conjugado es igual al cuadrado de su módulo (que es un número real positivo):
$$z\bar{z} = |z|^2$$

Dado que $|z|^2$ es un número real no negativo, su módulo es el valor absoluto de sí mismo, que es él mismo.
$$|z\bar{z}| = ||z|^2| = |z|^2$$

**Resultado:**
$$|z\bar{z}| = |z|^2$$

---

**2. $|(1+2i)^3|$**

Usamos la propiedad del módulo para potencias: $|z^n| = |z|^n$.
Primero calculamos el módulo de la base $z = 1+2i$:
$$|1+2i| = \sqrt{1^2 + 2^2} = \sqrt{1+4} = \sqrt{5}$$

Ahora elevamos a la tercera potencia:
$$|(1+2i)^3| = (\sqrt{5})^3$$
$$= 5^{3/2} = \sqrt{125} = 5\sqrt{5}$$



---

**3. $\left|\frac{3i}{i-\sqrt{3}}\right|$**

Usamos la propiedad del módulo para divisiones: $\left|\frac{z_1}{z_2}\right| = \frac{|z_1|}{|z_2|}$.
Calculamos el módulo del numerador:
$$|3i| = |0 + 3i| = \sqrt{0^2 + 3^2} = 3$$

Calculamos el módulo del denominador:
$$|i - \sqrt{3}| = |-\sqrt{3} + i| = \sqrt{(-\sqrt{3})^2 + 1^2} = \sqrt{3+1} = 2$$

Dividimos los módulos:
$$\left|\frac{3i}{i-\sqrt{3}}\right| = \frac{3}{2}$$

**Resultado:**
$$\left|\frac{3i}{i-\sqrt{3}}\right| = \frac{3}{2}$$

---

**4. $\left|\left(\frac{1+i}{1-i}\right)^5\right|$**

Primero usamos la propiedad del módulo para potencias: $|z^5| = |z|^5$.
Sea $z = \frac{1+i}{1-i}$. Necesitamos $|z|$.

Usamos la propiedad del módulo para divisiones: $|z| = \frac{|1+i|}{|1-i|}$.
Calculamos los módulos:
$$|1+i| = \sqrt{1^2 + 1^2} = \sqrt{2}$$
$$|1-i| = \sqrt{1^2 + (-1)^2} = \sqrt{2}$$

Por lo tanto:
$$|z| = \frac{\sqrt{2}}{\sqrt{2}} = 1$$

Ahora elevamos a la quinta potencia:
$$\left|\left(\frac{1+i}{1-i}\right)^5\right| = 1^5 = 1$$

**Resultado:**
$$\left|\left(\frac{1+i}{1-i}\right)^5\right| = 1$$