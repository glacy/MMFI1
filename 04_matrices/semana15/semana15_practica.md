---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - descomposicion-espectral
  - operadores-proyeccion
  - autovalores
  - hermiticidad
  - intermedio
subject: Matrices - Semana 12
keywords: []
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::

```{exercise}
:label: ex1-s12


Determine la descomposición espectral de las tres _matrices espín de Pauli_ para un sistema de medio espín en la base $\{|+\rangle,|-\rangle \}$.


```

```{exercise}
:label: ex2-s12

Considere el operador hermítico

$$
\mathcal{A} =
\begin{pmatrix}
4 & 1 \\
1 & 4
\end{pmatrix}.
$$

1. Verifique que $\mathcal{A}$ es hermítico.
2. Calcule los autovalores y autovectores normalizados de $\mathcal{A}$.
3. Exprese la **representación espectral** del operador:
   $$
   \mathcal{A} = \lambda_1 |\psi_1\rangle \langle \psi_1| + \lambda_2 |\psi_2\rangle \langle \psi_2|.
   $$
4. Verifique que la matriz de cambio de base formada por los autovectores diagonaliza $\mathcal{A}$.
```

````{exercise}
:label: ex5-s12

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
````

````{exercise}
:label: ex4-s12

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

