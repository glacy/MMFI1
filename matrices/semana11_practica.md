---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - autovalores
  - hermiticidad
  - procedimental
  - intermedio
  - mecanica-cuantica
subject: Matrices - Semana 11
keywords: []
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::

```{exercise}
:label: ex1-s11


Los tres *operadores espín de Pauli* para un sistema de medio espín
    en la base $\{|+\rangle,|-\rangle \}$ están dados por
:::{math}
\begin{aligned}
    \hat{\sigma}_x=&|-\rangle \langle+|+|+\rangle \langle-|, \\
    \hat{\sigma}_y=&i|-\rangle \langle+|-i|+\rangle \langle-|, \\
    \hat{\sigma}_z=&|+\rangle \langle+|-|-\rangle \langle-|. 
\end{aligned}
:::

Escriba las correspondientes *matrices de espín de
    Pauli* en la base $\{|+\rangle,|-\rangle \}$.
```

```{exercise}
:label: ex2-s11

Considere un par de vectores ortogonales $|\varphi_1\rangle$ y $|\varphi_2\rangle$ que expanden el espacio de Hilbert $\mathcal{H}$ de cierto sistema. El operador $\mathcal{A}$ tiene el siguiente efecto sobre dichos estado base:
:::{math}
\begin{aligned}
    \mathcal{A}|\varphi_1\rangle=&+2|\varphi_1\rangle+2i|\varphi_2\rangle\\
    \mathcal{A}|\varphi_2\rangle=&+2i|\varphi_1\rangle-|\varphi_2\rangle
\end{aligned}
::: 

1.  Determine la representación matricial de $\mathcal{A}$ en la
    base $\{|\varphi_1\rangle,|\varphi_2\rangle \}$.

2.  Para el estado
    $|\psi\rangle= |\varphi_1\rangle+|\varphi_2\rangle$
    determine $\mathcal{A}|\psi\rangle$ y
    $\langle \psi | \mathcal{A}$ usando la representación de los
    vectores en la base $\{|\varphi_1\rangle,|\varphi_2\rangle \}$.
```

````{exercise}
:label: ex3-s11

Considera el operador $\mathcal{B}$ cuya representación matricial es
:::{math}
\mathcal{B} =
\begin{pmatrix}
4 & i\\
-i & 4
\end{pmatrix}.
:::

1. Calcula los autovalores y autovectores normalizados de $\mathcal{B}$.
2. Comprueba que los autovectores obtenidos son ortogonales.
3. Interpreta físicamente el significado de los autovalores, si $\mathcal{B}$ representa una observable cuántica.

````

````{exercise}
:label: ex4-s11

El ión de la molécula negativa de oxígeno $\mbox{O}_2^-$ consiste en
un par de átomos de oxígeno separados una distancia $2a$. Como una
aproximación, se puede asumir que el electrón se encuentra en uno o
en otro de los átomos de oxígeno; por lo que los eigen-valores del
operador de posición $\hat{x}$ para el electrón pueden tomar los
valores $-a$ ó $+a$ y los correspondientes eigen-vectores
$|-a\rangle$ y $|+a\rangle$. Usando estos eigen-estados como
vectores base, 
    
:::{math}
|+a\rangle=\begin{pmatrix}
    1\\0
\end{pmatrix},\quad |-a\rangle=\begin{pmatrix}
    0\\1
\end{pmatrix} \quad \mbox{y}\quad \mathcal{H}=\begin{pmatrix}
0 & -A  \\
-A & 0 
\end{pmatrix}
:::

donde $\mathcal{H}$ es el *Hamiltoniano* para el
electrón y $A$ es un número real.

1.  Confirme que los eigen-valores y eigen-estados de la energía de $\mathcal{H}$ son 
```{math}
|1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}
1\\1
\end{pmatrix};\quad E_1=-A \quad \mbox{y} \quad |2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}
    1\\-1
\end{pmatrix}; \quad E_2=A.
```

2.  Exprese $|1\rangle$ y $|2\rangle$ en la base $\{ |a\rangle, |-a\rangle \}$

3.  Determine la representación matricial de $\hat{x}$ en la base $\{ |a\rangle, |-a\rangle \}$.

````

````{exercise}
:label: ex5-s11

El operador $\mathcal{H}$ tiene la representación matricial
:::{math}
\mathcal{H} =
\begin{pmatrix}
2 & 1\\
1 & 2
\end{pmatrix}.
:::

1. Verifica que $\mathcal{H}$ es hermítico.
2. Calcula su descomposición espectral, es decir, expresa
   $$
   \mathcal{H} = \lambda_1 |\psi_1\rangle \langle \psi_1| + \lambda_2 |\psi_2\rangle \langle \psi_2|,
   $$
   en la base $\left\{|\psi_i\rangle\, , i=1,2 \right\}$
3. Comprueba que la suma de los operadores de proyección forma la identidad.
4. Interpreta el resultado en el contexto de una observable con dos posibles resultados de medición.

````