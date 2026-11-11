---
title: Solución Ejercicio 1
keywords:
  - matrices-pauli
  - descomposicion-espectral
tags:
  - matrices-pauli
  - descomposicion-espectral
  - calculo
objetivos: []
---

Las tres matrices de Pauli son hermíticas y tienen autovalores $\lambda_\pm=\pm 1$ (su ecuación secular es $\lambda^2-1=0$ en los tres casos). Su descomposición espectral se construye con los proyectores sobre los autovectores correspondientes.

**Matriz $\hat{\sigma}_x=\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}$.** Los autovectores son

$$
|+x\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}\;(\lambda=+1),
\qquad
|-x\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}\;(\lambda=-1),
$$

$$
\boxed{\;\hat{\sigma}_x=|+x\rangle\langle +x|-|-x\rangle\langle -x|\;}
$$

Verificación:

$$
|+x\rangle\langle +x|-|-x\rangle\langle -x|
=\frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix}
-\frac{1}{2}\begin{pmatrix}1 & -1\\ -1 & 1\end{pmatrix}
=\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}. \checkmark
$$

**Matriz $\hat{\sigma}_y=\begin{pmatrix}0 & -i\\ i & 0\end{pmatrix}$.** Los autovectores son

$$
|+y\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\i\end{pmatrix}\;(\lambda=+1),
\qquad
|-y\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\-i\end{pmatrix}\;(\lambda=-1),
$$

pues $\hat{\sigma}_y|+y\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}-i\cdot i\\ i\end{pmatrix}=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\i\end{pmatrix}=|+y\rangle$ y $\hat{\sigma}_y|-y\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}(-i)(-i)\\ i\end{pmatrix}=\frac{1}{\sqrt{2}}\begin{pmatrix}-1\\i\end{pmatrix}=-|-y\rangle$.

$$
\boxed{\;\hat{\sigma}_y=|+y\rangle\langle +y|-|-y\rangle\langle -y|\;}
$$

Verificación:

$$
|+y\rangle\langle +y|-|-y\rangle\langle -y|
=\frac{1}{2}\begin{pmatrix}1 & -i\\ i & 1\end{pmatrix}
-\frac{1}{2}\begin{pmatrix}1 & i\\ -i & 1\end{pmatrix}
=\begin{pmatrix}0 & -i\\ i & 0\end{pmatrix}. \checkmark
$$

**Matriz $\hat{\sigma}_z=\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$.** Los autovectores son la base usual $\{|+\rangle,|-\rangle\}$:

$$
\boxed{\;\hat{\sigma}_z=|+\rangle\langle +|-|-\rangle\langle -|\;}
$$

Verificación:

$$
|+\rangle\langle +|-|-\rangle\langle -|
=\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}
-\begin{pmatrix}0 & 0\\ 0 & 1\end{pmatrix}
=\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}. \checkmark
$$

En todos los casos, cada descomposición espectral tiene la forma $\hat{\sigma}_i=(+1)P_{+i}+(-1)P_{-i}$ con $P_{+i}+P_{-i}=I$: medir el espín en el eje $i$ produce los resultados $\pm 1$ (en unidades de $\hbar/2$) y colapsa el estado al autovector correspondiente.
