---
title: Solución Ejercicio 2
keywords:
  - hermiticidad
  - autovalores
  - autovectores
  - descomposicion-espectral
tags:
  - hermiticidad
  - autovalores
  - autovectores
  - descomposicion-espectral
  - diagonalizacion
  - calculo
objetivos: []
---

**Parte 1.** La matriz es real y simétrica, de modo que su traspuesta conjugada es

$$
\mathcal{A}^\dagger=\begin{pmatrix}4 & 1\\ 1 & 4\end{pmatrix}=\mathcal{A},
$$

es decir, $\mathcal{A}$ es **hermítico**.

**Parte 2.** La ecuación secular es

$$
\det(\mathcal{A}-\lambda I)=
\begin{vmatrix}
4-\lambda & 1\\
1 & 4-\lambda
\end{vmatrix}
=(4-\lambda)^2-1=0
\quad\Longrightarrow\quad \lambda_1=3,\;\; \lambda_2=5.
$$

Para $\lambda_1=3$: $(4-3)a+b=0\Rightarrow b=-a$, de donde

$$
|\psi_1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}.
$$

Para $\lambda_2=5$: $(4-5)a+b=0\Rightarrow b=a$, de donde

$$
|\psi_2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}.
$$

**Parte 3.** Con los proyectores

$$
P_1=|\psi_1\rangle\langle\psi_1|=\frac{1}{2}\begin{pmatrix}1 & -1\\ -1 & 1\end{pmatrix},
\qquad
P_2=|\psi_2\rangle\langle\psi_2|=\frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix},
$$

la representación espectral es

$$
\boxed{\;\mathcal{A}=3\,|\psi_1\rangle\langle\psi_1|+5\,|\psi_2\rangle\langle\psi_2|=3P_1+5P_2\;}
$$

Verificación:

$$
3P_1+5P_2=\frac{1}{2}\begin{pmatrix}3+5 & -3+5\\ -3+5 & 3+5\end{pmatrix}
=\begin{pmatrix}4 & 1\\ 1 & 4\end{pmatrix}=\mathcal{A}. \checkmark
$$

**Parte 4.** La matriz de cambio de base se forma colocando los autovectores como columnas:

$$
U=\begin{pmatrix}|\psi_1\rangle & |\psi_2\rangle\end{pmatrix}
=\frac{1}{\sqrt{2}}\begin{pmatrix}1 & 1\\ -1 & 1\end{pmatrix},
\qquad
U^\dagger=\frac{1}{\sqrt{2}}\begin{pmatrix}1 & -1\\ 1 & 1\end{pmatrix}.
$$

Como $U$ es unitaria ($U^\dagger U=I$), la transformación diagonaliza a $\mathcal{A}$:

$$
U^\dagger \mathcal{A}\,U
=\frac{1}{2}\begin{pmatrix}1 & -1\\ 1 & 1\end{pmatrix}
\begin{pmatrix}4 & 1\\ 1 & 4\end{pmatrix}
\begin{pmatrix}1 & 1\\ -1 & 1\end{pmatrix}
=\frac{1}{2}\begin{pmatrix}6 & 0\\ 0 & 10\end{pmatrix}
=\boxed{\;\begin{pmatrix}3 & 0\\ 0 & 5\end{pmatrix}\;}
$$

La matriz diagonal contiene los autovalores $\lambda_1=3$ y $\lambda_2=5$, lo que confirma que la base de autovectores es la base privilegiada en la que la observable adquiere su forma espectral.
