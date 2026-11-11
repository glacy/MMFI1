---
title: Solución Ejercicio 4
keywords:
  - autovalores
  - hamiltoniano
  - representacion-matricial
tags:
  - autovalores
  - hamiltoniano
  - representacion-matricial
  - aplicacion
  - mecanica-cuantica
objetivos: []
---

**Parte 1.** La ecuación secular de $\mathcal{H}$ es

$$
\det(\mathcal{H}-E I)=
\begin{vmatrix}
-E & -A\\
-A & -E
\end{vmatrix}
=E^2-A^2=0
\quad\Longrightarrow\quad E=\pm A.
$$

Para $|1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}$:

$$
\mathcal{H}|1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}
0\cdot 1-A\cdot 1\\
-A\cdot 1+0\cdot 1
\end{pmatrix}
=\frac{1}{\sqrt{2}}\begin{pmatrix}-A\\-A\end{pmatrix}
=-A\,|1\rangle,
$$

por lo que $|1\rangle$ es eigen-estado con $E_1=-A$. Para $|2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}$:

$$
\mathcal{H}|2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}
0\cdot 1+A\\
-A\cdot 1-0
\end{pmatrix}
=\frac{1}{\sqrt{2}}\begin{pmatrix}A\\-A\end{pmatrix}
=+A\,|2\rangle,
$$

por lo que $|2\rangle$ es eigen-estado con $E_2=+A$, como se quería confirmar. Físicamente, $E_1=-A$ es el estado de **enlace** (simétrico, el electrón compartido entre los dos átomos) y $E_2=+A$ el estado **antienlazante** (antisimétrico).

**Parte 2.** Las componentes dadas ya están expresadas en la base $\{|a\rangle,|-a\rangle\}$ (con $|a\rangle\equiv|+a\rangle$), pues $|+a\rangle=\begin{pmatrix}1\\0\end{pmatrix}$ y $|-a\rangle=\begin{pmatrix}0\\1\end{pmatrix}$. Por lo tanto,

$$
\boxed{\;|1\rangle=\frac{1}{\sqrt{2}}\big(|a\rangle+|-a\rangle\big),
\qquad
|2\rangle=\frac{1}{\sqrt{2}}\big(|a\rangle-|-a\rangle\big)\;}
$$

Es decir, los eigen-estados de energía son combinaciones simétrica y antisimétrica de los estados localizados en cada átomo.

**Parte 3.** El operador de posición es diagonal en su propia base de eigen-estados: $\hat{x}|+a\rangle=+a\,|+a\rangle$ y $\hat{x}|-a\rangle=-a\,|-a\rangle$, de modo que en la base $\{|a\rangle,|-a\rangle\}$,

$$
\boxed{\;\hat{x}=\begin{pmatrix}a & 0\\ 0 & -a\end{pmatrix}=a\,\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}\;}
$$

Note que, en esta base, ni $\mathcal{H}$ ni $\hat{x}$ son simultáneamente diagonales en general: los eigen-estados de energía son superposiciones de los eigen-estados de posición.
