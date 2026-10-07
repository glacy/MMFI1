---
title: Solución Ejercicio 3
keywords:
  - ortonormalizacion
  - descomposicion-identidad
  - operadores-lineales
  - elementos-matriz
tags:
  - ortonormalizacion
  - descomposicion-identidad
  - operadores-lineales
  - elementos-matriz
  - conceptual
objetivos: []
---

**Parte 1: la descomposición de la identidad.** Con

$$
|u_1\rangle\langle u_1| = \frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix},
\qquad
|u_2\rangle\langle u_2| = \frac{1}{2}\begin{pmatrix}1 & -1\\ -1 & 1\end{pmatrix},
$$

la suma es

$$
P_1 + P_2 = \frac{1}{2}\begin{pmatrix}1+1 & 1-1\\ 1-1 & 1+1\end{pmatrix}
= \begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}
= I.
$$

**Parte 2: verificación.** Aplicando la descomposición al estado arbitrario $|\psi\rangle = \alpha|u_1\rangle + \beta|u_2\rangle$ y usando la ortonormalidad:

$$
I|\psi\rangle
= |u_1\rangle\langle u_1|\psi\rangle + |u_2\rangle\langle u_2|\psi\rangle
= |u_1\rangle\alpha + |u_2\rangle\beta
= |\psi\rangle.
\checkmark
$$

La identidad reconstruye el estado a partir de sus proyecciones sobre la base.

**Parte 3: operadores en términos de componentes.** La descomposición de la identidad permite insertar "sumas de proyectores" a ambos lados de cualquier operador lineal:

$$
\mathcal{A} = I\,\mathcal{A}\,I
= \sum_{m}\sum_{n} |u_m\rangle\underbrace{\langle u_m|\mathcal{A}|u_n\rangle}_{A_{mn}}\langle u_n|
= \sum_{m,n} A_{mn}\,|u_m\rangle\langle u_n|.
$$

Los números

$$
A_{mn} = \langle u_m|\mathcal{A}|u_n\rangle
$$

son los **elementos de matriz** del operador en la base $\{u_1, u_2\}$: $A_{mn}$ es la "componente fila $m$, columna $n$" de la matriz que representa a $\mathcal{A}$. En consecuencia, un operador lineal queda completamente determinado por el conjunto de sus elementos de matriz sobre una base ortonormal, y los productos de operadores se calculan como multiplicaciones de matrices (gracias a que $\langle u_m|u_n\rangle = \delta_{mn}$ "contrae" los índices).

**Comentario:** la descomposición de la identidad es el puente entre el álgebra abstracta de operadores y su representación matricial; es la generalización, a espacios de Hilbert, de escribir un vector en componentes.
