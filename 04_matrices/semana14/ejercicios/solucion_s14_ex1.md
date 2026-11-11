---
title: Solución Ejercicio 1
keywords:
  - matrices-pauli
  - representacion-matricial
tags:
  - matrices-pauli
  - representacion-matricial
  - procedimental
  - calculo
objetivos: []
---

Los elementos de matriz de un operador $\mathcal{A}$ en la base $\{|+\rangle,|-\rangle\}$ se obtienen como $A_{mn}=\langle m|\mathcal{A}|n\rangle$, con $m,n\in\{+,-\}$.

**Matriz de $\hat{\sigma}_x$.** De $\hat{\sigma}_x=|-\rangle \langle+|+|+\rangle \langle-|$ se sigue $\hat{\sigma}_x|+\rangle=|-\rangle$ y $\hat{\sigma}_x|-\rangle=|+\rangle$, de donde

$$
(\hat{\sigma}_x)_{11}=\langle +|\hat{\sigma}_x|+\rangle=0,\quad
(\hat{\sigma}_x)_{12}=\langle +|\hat{\sigma}_x|-\rangle=1,\quad
(\hat{\sigma}_x)_{21}=\langle -|\hat{\sigma}_x|+\rangle=1,\quad
(\hat{\sigma}_x)_{22}=\langle -|\hat{\sigma}_x|-\rangle=0,
$$

$$
\boxed{\;\hat{\sigma}_x=\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}\;}
$$

**Matriz de $\hat{\sigma}_y$.** De $\hat{\sigma}_y=i|-\rangle \langle+|-i|+\rangle \langle-|$ se sigue $\hat{\sigma}_y|+\rangle=i|-\rangle$ y $\hat{\sigma}_y|-\rangle=-i|+\rangle$, de donde

$$
(\hat{\sigma}_y)_{11}=\langle +|\hat{\sigma}_y|+\rangle=0,\quad
(\hat{\sigma}_y)_{12}=\langle +|\hat{\sigma}_y|-\rangle=-i,\quad
(\hat{\sigma}_y)_{21}=\langle -|\hat{\sigma}_y|+\rangle=i,\quad
(\hat{\sigma}_y)_{22}=\langle -|\hat{\sigma}_y|-\rangle=0,
$$

$$
\boxed{\;\hat{\sigma}_y=\begin{pmatrix}0 & -i\\ i & 0\end{pmatrix}\;}
$$

**Matriz de $\hat{\sigma}_z$.** De $\hat{\sigma}_z=|+\rangle \langle+|-|-\rangle \langle-|$ se sigue $\hat{\sigma}_z|+\rangle=|+\rangle$ y $\hat{\sigma}_z|-\rangle=-|-\rangle$, de donde

$$
\boxed{\;\hat{\sigma}_z=\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}\;}
$$

Note que las tres matrices son hermíticas: cada una es igual a su traspuesta conjugada, como corresponde a observables cuánticos.
