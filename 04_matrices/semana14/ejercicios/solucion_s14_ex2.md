---
title: Solución Ejercicio 2
keywords:
  - representacion-matricial
  - elementos-matriz
tags:
  - representacion-matricial
  - elementos-matriz
  - calculo
objetivos: []
---

**Parte 1.** La columna $n$ de la matriz representante contiene las componentes de $\mathcal{A}|\varphi_n\rangle$ en la base $\{|\varphi_1\rangle,|\varphi_2\rangle\}$. De la acción dada,

$$
\mathcal{A}|\varphi_1\rangle=\begin{pmatrix}2\\2i\end{pmatrix},
\qquad
\mathcal{A}|\varphi_2\rangle=\begin{pmatrix}2i\\-1\end{pmatrix},
$$

por lo que

$$
\boxed{\;A=\begin{pmatrix}2 & 2i\\ 2i & -1\end{pmatrix}\;}
$$

**Parte 2.** El estado $|\psi\rangle=|\varphi_1\rangle+|\varphi_2\rangle$ tiene el vector de componentes $\psi=\begin{pmatrix}1\\1\end{pmatrix}$. Entonces

$$
\mathcal{A}|\psi\rangle
\;\longleftrightarrow\;
\begin{pmatrix}2 & 2i\\ 2i & -1\end{pmatrix}\begin{pmatrix}1\\1\end{pmatrix}
=\begin{pmatrix}2+2i\\2i-1\end{pmatrix},
$$

es decir,

$$
\boxed{\;\mathcal{A}|\psi\rangle=(2+2i)\,|\varphi_1\rangle+(2i-1)\,|\varphi_2\rangle\;}
$$

Para el bra, $\langle\psi|=\langle\varphi_1|+\langle\varphi_2|$ corresponde al vector fila $(1,\;1)$, y

$$
\langle\psi|\mathcal{A}
\;\longleftrightarrow\;
(1,\;1)\begin{pmatrix}2 & 2i\\ 2i & -1\end{pmatrix}
=\begin{pmatrix}2+2i & 2i-1\end{pmatrix},
$$

es decir,

$$
\boxed{\;\langle\psi|\mathcal{A}=(2+2i)\,\langle\varphi_1|+(2i-1)\,\langle\varphi_2|\;}
$$

Note que en este caso las componentes de $\mathcal{A}|\psi\rangle$ y de $\langle\psi|\mathcal{A}$ coinciden numéricamente; no debe esperarse eso en general: se cumple porque el vector fila $(1,1)$ es el traspuesto (no el conjugado hermítico) de $\begin{pmatrix}1\\1\end{pmatrix}$ y las filas de $A$ lo combinan de la misma forma que sus columnas.
