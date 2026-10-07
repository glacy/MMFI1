---
title: Solución Ejercicio 1
keywords:
  - gram-schmidt
  - ortonormalizacion
  - espacios-vectoriales
tags:
  - gram-schmidt
  - ortonormalizacion
  - espacios-vectoriales
  - calculo
objetivos: []
---

**Paso 1: normalizar el primer vector.** Con el producto interno estándar de $\mathbb{C}^2$, $\langle v|w\rangle = v_1^*w_1 + v_2^*w_2$ (aquí las componentes son reales, así que la conjugación no hace efecto), la norma de $v_1$ es

$$
\|v_1\| = \sqrt{\langle v_1|v_1\rangle} = \sqrt{|1|^2 + |1|^2} = \sqrt{2}.
$$

El primer elemento de la base ortonormal es

$$
u_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}.
$$

**Paso 2: ortogonalizar el segundo vector.** El algoritmo de Gram–Schmidt resta de $v_2$ su componente a lo largo de $u_1$:

$$
w_2 = v_2 - \langle u_1|v_2\rangle\, u_1.
$$

Con

$$
\langle u_1|v_2\rangle = \frac{1}{\sqrt{2}}\left(1\cdot 1 + 1\cdot(-1)\right) = 0
$$

se obtiene $w_2 = v_2$: los vectores de partida ya eran ortogonales ($\langle v_1|v_2\rangle = 1\cdot 1 + 1\cdot(-1) = 0$), por lo que el paso de ortogonalización no altera nada.

**Paso 3: normalizar.** Como $\|w_2\| = \sqrt{2}$,

$$
u_2 = \frac{w_2}{\|w_2\|} = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}.
$$

**Verificación.** Producto interno a producto interno:

$$
\langle u_1|u_1\rangle = \frac{1}{2}(1 + 1) = 1,
\qquad
\langle u_2|u_2\rangle = \frac{1}{2}(1 + 1) = 1,
\qquad
\langle u_1|u_2\rangle = \frac{1}{2}\left(1\cdot 1 + 1\cdot(-1)\right) = 0.
$$

Es decir,

$$
\boxed{\;\langle u_i|u_j\rangle = \delta_{ij}\;}
\checkmark
$$

**Moraleja:** Gram–Schmidt siempre produce una base ortonormal a partir de una base cualquiera. Cuando los vectores de partida ya son ortogonales —como aquí, donde $\langle v_1|v_2\rangle = 0$— el algoritmo se reduce a normalizar cada vector.
