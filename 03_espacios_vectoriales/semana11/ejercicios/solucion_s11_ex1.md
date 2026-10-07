---
title: Solución Ejercicio 1
keywords:
  - operadores-adjuntos
  - operadores-lineales
  - notacion-dirac
tags:
  - operadores-lineales
  - operadores-adjuntos
  - notacion-dirac
  - calculo
objetivos: []
---

**Estrategia.** El adjunto queda determinado por la propiedad

$$
\langle \xi|\mathcal{B}^\dagger|\psi\rangle = \langle\psi|\mathcal{B}|\xi\rangle^*
\qquad\text{para todo } |\xi\rangle,|\psi\rangle.
$$

Como $\{|\varphi_1\rangle,|\varphi_2\rangle\}$ es ortonormal y completa, se expande el vector buscado:

$$
\mathcal{B}^\dagger|\varphi_2\rangle
= |\varphi_1\rangle\,\langle\varphi_1|\mathcal{B}^\dagger|\varphi_2\rangle
+ |\varphi_2\rangle\,\langle\varphi_2|\mathcal{B}^\dagger|\varphi_2\rangle,
$$

y se calculan los dos coeficientes con la propiedad anterior:

$$
\langle\varphi_1|\mathcal{B}^\dagger|\varphi_2\rangle
= \langle\varphi_2|\mathcal{B}|\varphi_1\rangle^*
= \langle\varphi_2|\,2|\varphi_2\rangle^*
= 2^*\,\langle\varphi_2|\varphi_2\rangle
= 2,
$$

$$
\langle\varphi_2|\mathcal{B}^\dagger|\varphi_2\rangle
= \langle\varphi_2|\mathcal{B}|\varphi_2\rangle^*
= \langle\varphi_2|\,i|\varphi_1\rangle^*
= (-i)^*\,\langle\varphi_2|\varphi_1\rangle
= 0.
$$

**Resultado.**

$$
\boxed{\;\mathcal{B}^\dagger|\varphi_2\rangle = 2|\varphi_1\rangle\;}
$$

**Verificación (representación matricial).** En la base $\{|\varphi_1\rangle,|\varphi_2\rangle\}$, con $B_{mn} = \langle\varphi_m|\mathcal{B}|\varphi_n\rangle$:

$$
B = \begin{pmatrix} 0 & i \\ 2 & 0 \end{pmatrix}
\qquad\Longrightarrow\qquad
B^\dagger = \begin{pmatrix} 0 & 2 \\ -i & 0 \end{pmatrix}.
$$

La segunda columna de $B^\dagger$ —la imagen de $|\varphi_2\rangle = \begin{pmatrix}0\\1\end{pmatrix}$— es $\begin{pmatrix}2\\0\end{pmatrix} = 2|\varphi_1\rangle$. $\checkmark$

**Comentario:** al conjugarse, el coeficiente real $2$ sobrevive intacto, mientras que la acción de $\mathcal{B}$ sobre $|\varphi_1\rangle$ produce el factor conjugado: $\mathcal{B}^\dagger|\varphi_1\rangle = -i|\varphi_2\rangle$ (el $i$ de $\mathcal{B}|\varphi_2\rangle = i|\varphi_1\rangle$ se vuelve $-i$).
