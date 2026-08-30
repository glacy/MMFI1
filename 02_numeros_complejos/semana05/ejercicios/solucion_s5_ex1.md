---
title: Solución Ejercicio 1
keywords:
  - raices-complejas
  - teorema-de-moivre
tags:
  - raices-complejas
  - teorema-de-moivre
  - calculo
  - demostracion
---

**1. $\sqrt[3]{1}$**

Escribimos $1$ en forma polar:
$$1 = 1 \cdot e^{i(0 + 2k\pi)} = e^{i 2k\pi}$$

Las raíces cúbicas son:
$$z_k = e^{i(2k\pi)/3} = e^{i 2k\pi/3}, \quad k=0,1,2$$

*   $k=0: z_0 = e^{i0} = 1$
*   $k=1: z_1 = e^{i2\pi/3} = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$
*   $k=2: z_2 = e^{i4\pi/3} = -\frac{1}{2} - i\frac{\sqrt{3}}{2}$

---

**2. $\sqrt[5]{32}$**

Escribimos $32$ en forma polar:
$$32 = 32 \cdot e^{i(0 + 2k\pi)} = 2^5 e^{i 2k\pi}$$

Las raíces quintas son:
$$z_k = \sqrt[5]{32} e^{i(2k\pi)/5} = 2 e^{i 2k\pi/5}, \quad k=0,1,2,3,4$$

Las raíces son $2$ veces las raíces quintas de la unidad: $2, 2e^{i2\pi/5}, 2e^{i4\pi/5}, 2e^{i6\pi/5}, 2e^{i8\pi/5}$.

---

**3. $\sqrt[3]{-8}$**

Escribimos $-8$ en forma polar:
$$-8 = 8 \cdot e^{i(\pi + 2k\pi)} = 8 e^{i\pi(1+2k)}$$

Las raíces cúbicas son:
$$z_k = \sqrt[3]{8} e^{i\pi(1+2k)/3} = 2 e^{i\pi(1+2k)/3}, \quad k=0,1,2$$

*   $k=0: z_0 = 2 e^{i\pi/3} = 1 + i\sqrt{3}$
*   $k=1: z_1 = 2 e^{i\pi} = -2$
*   $k=2: z_2 = 2 e^{i5\pi/3} = 1 - i\sqrt{3}$

---

**4. $\sqrt[3]{-1}$**

Escribimos $-1$ en forma polar:
$$-1 = 1 \cdot e^{i(\pi + 2k\pi)} = e^{i\pi(1+2k)}$$

Las raíces cúbicas son:
$$z_k = e^{i\pi(1+2k)/3}, \quad k=0,1,2$$

*   $k=0: z_0 = e^{i\pi/3} = \frac{1}{2} + i\frac{\sqrt{3}}{2}$
*   $k=1: z_1 = e^{i\pi} = -1$
*   $k=2: z_2 = e^{i5\pi/3} = \frac{1}{2} - i\frac{\sqrt{3}}{2}$

---

**5. $\sqrt[5]{i}$**

Escribimos $i$ en forma polar:
$$i = 1 \cdot e^{i(\pi/2 + 2k\pi)} = e^{i\pi/2(1+4k)}$$

Las raíces quintas son:
$$z_k = e^{i\pi(1+4k)/10}, \quad k=0,1,2,3,4$$

*   $k=0: z_0 = e^{i\pi/10}$
*   $k=1: z_1 = e^{i\pi/2} = i$
*   $k=2: z_2 = e^{i9\pi/10}$
*   $k=3: z_3 = e^{i13\pi/10}$
*   $k=4: z_4 = e^{i17\pi/10}$

---

**6. $\sqrt[3]{2i-2}$**

Primero convertimos $-2+2i$ a forma polar.

- Módulo: $r = \sqrt{(-2)^2 + 2^2} = \sqrt{8} = 2\sqrt{2}$.
- Argumento: Está en el segundo cuadrante. $\tan\theta = -1 \implies \theta = 3\pi/4$.

$$-2+2i = 2\sqrt{2} e^{i(3\pi/4 + 2k\pi)}$$

Las raíces cúbicas son:
$$z_k = \sqrt[3]{2\sqrt{2}} e^{i(3\pi/4 + 2k\pi)/3} = \sqrt{2} e^{i(3\pi/12 + 2k\pi/3)} = \sqrt{2} e^{i(\pi/4 + 2k\pi/3)}$$

*   $k=0: z_0 = \sqrt{2} e^{i\pi/4} = \sqrt{2}(\frac{\sqrt{2}}{2} + i\frac{\sqrt{2}}{2}) = 1 + i$
*   $k=1: z_1 = \sqrt{2} e^{i11\pi/12}$
*   $k=2: z_2 = \sqrt{2} e^{i19\pi/12}$