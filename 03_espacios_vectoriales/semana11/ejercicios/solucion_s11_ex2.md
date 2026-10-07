---
title: Solución Ejercicio 2
keywords:
  - operadores-adjuntos
  - vectores-bra
  - operadores-lineales
  - elementos-matriz
tags:
  - operadores-lineales
  - operadores-adjuntos
  - vectores-bra
  - elementos-matriz
  - calculo
objetivos: []
---

**Representación matricial.** Con la base ortonormal $\{|\phi_1\rangle,|\phi_2\rangle\}$, los elementos de matriz $A_{mn} = \langle\phi_m|\mathcal{A}|\phi_n\rangle$ se leen directamente de la acción dada:

$$
A_{11} = \langle\phi_1|\mathcal{A}|\phi_1\rangle = 2,
\quad
A_{12} = \langle\phi_1|\mathcal{A}|\phi_2\rangle = 2i,
\quad
A_{21} = \langle\phi_2|\mathcal{A}|\phi_1\rangle = 2i,
\quad
A_{22} = \langle\phi_2|\mathcal{A}|\phi_2\rangle = -1,
$$

$$
A = \begin{pmatrix} 2 & 2i \\ 2i & -1 \end{pmatrix}.
$$

**Primer inciso: $\mathcal{A}^\dagger|\phi_1\rangle$.** El adjunto es la transpuesta conjugada:

$$
A^\dagger = \begin{pmatrix} 2 & -2i \\ -2i & -1 \end{pmatrix}.
$$

La primera columna da la imagen de $|\phi_1\rangle = \begin{pmatrix}1\\0\end{pmatrix}$:

$$
\boxed{\;\mathcal{A}^\dagger|\phi_1\rangle = 2|\phi_1\rangle - 2i|\phi_2\rangle\;}
$$

**Segundo inciso: $\langle\phi_2|\mathcal{A}$.** Un bra a la derecha del operador se expande en los bras de la base:

$$
\langle\phi_2|\mathcal{A}
= \sum_m \langle\phi_2|\mathcal{A}|\phi_m\rangle\langle\phi_m|
= A_{21}\langle\phi_1| + A_{22}\langle\phi_2|,
$$

es decir,

$$
\boxed{\;\langle\phi_2|\mathcal{A} = 2i\,\langle\phi_1| - \langle\phi_2|\;}
$$

**Verificación.** $\langle\phi_2|\mathcal{A}|\phi_1\rangle = 2i\langle\phi_1|\phi_1\rangle - \langle\phi_2|\phi_1\rangle = 2i$, en acuerdo con $A_{21}$. $\checkmark$

**Comentario:** $\mathcal{A}$ **no es hermítico**: la condición $A_{12}^* = A_{21}$ fallaría pues $(2i)^* = -2i \ne 2i$. Por eso $\mathcal{A}^\dagger \ne \mathcal{A}$ y la acción del adjunto difiere de la del operador original (en concreto, cambia el signo de los términos con $2i$).
