---
title: Solución Ejercicio 3
keywords:
  - hermiticidad
  - descomposicion-espectral
  - operadores-proyeccion
tags:
  - hermiticidad
  - descomposicion-espectral
  - operadores-proyeccion
  - calculo
objetivos: []
---

**Parte 1.** La matriz es real y simétrica, por lo que su traspuesta conjugada es

$$
\mathcal{H}^\dagger=\begin{pmatrix}2 & 1\\ 1 & 2\end{pmatrix}=\mathcal{H},
$$

es decir, $\mathcal{H}$ es **hermítico** y sus autovalores serán reales.

**Parte 2.** La ecuación secular es

$$
\det(\mathcal{H}-\lambda I)=
\begin{vmatrix}
2-\lambda & 1\\
1 & 2-\lambda
\end{vmatrix}
=(2-\lambda)^2-1=0
\quad\Longrightarrow\quad \lambda_1=1,\;\; \lambda_2=3.
$$

**Autovectores.** Para $\lambda_1=1$: $(2-1)a+b=0\Rightarrow b=-a$, de donde

$$
|\psi_1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\-1\end{pmatrix}.
$$

Para $\lambda_2=3$: $(2-3)a+b=0\Rightarrow b=a$, de donde

$$
|\psi_2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}.
$$

Los proyectores asociados son

$$
P_1=|\psi_1\rangle\langle\psi_1|=\frac{1}{2}\begin{pmatrix}1 & -1\\ -1 & 1\end{pmatrix},
\qquad
P_2=|\psi_2\rangle\langle\psi_2|=\frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix}.
$$

La descomposición espectral es entonces

$$
\boxed{\;\mathcal{H}=1\cdot|\psi_1\rangle\langle\psi_1|+3\cdot|\psi_2\rangle\langle\psi_2|=P_1+3P_2\;}
$$

Verificación:

$$
P_1+3P_2=\frac{1}{2}\begin{pmatrix}1+3 & -1+3\\ -1+3 & 1+3\end{pmatrix}
=\begin{pmatrix}2 & 1\\ 1 & 2\end{pmatrix}=\mathcal{H}. \checkmark
$$

**Parte 3.** La suma de los proyectores es

$$
P_1+P_2=\frac{1}{2}\begin{pmatrix}1+1 & -1+1\\ -1+1 & 1+1\end{pmatrix}
=\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}=I,
$$

como debe ser: los dos autovectores ortonormales forman una base completa del espacio de estados y los proyectores suman la identidad ($\sum_n P_n=\hat{1}$).
