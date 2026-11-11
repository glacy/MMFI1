---
title: Solución Ejercicio 3
keywords:
  - autovalores
  - autovectores
  - hermiticidad
tags:
  - autovalores
  - autovectores
  - hermiticidad
  - calculo
objetivos: []
---

**Parte 1.** Los autovalores siguen de la ecuación secular

$$
\det(\mathcal{B}-\lambda I)=
\begin{vmatrix}
4-\lambda & i\\
-i & 4-\lambda
\end{vmatrix}
=(4-\lambda)^2-(i)(-i)=(4-\lambda)^2-1=0,
$$

pues $i\cdot(-i)=-i^2=1$. Por lo tanto $4-\lambda=\pm 1$, y

$$
\boxed{\;\lambda_1=3,\qquad \lambda_2=5\;}
$$

**Autovector para $\lambda_1=3$.** La ecuación $(\mathcal{B}-3I)\begin{pmatrix}a\\b\end{pmatrix}=0$ da

$$
a+i\,b=0 \quad\Longrightarrow\quad a=-i\,b.
$$

Tomando $b=1$ y normalizando,

$$
\boxed{\;|1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}-i\\1\end{pmatrix},\qquad \lambda_1=3\;}
$$

Verificación:

$$
\mathcal{B}|1\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}4(-i)+i\\(-i)(-i)+4\end{pmatrix}
=\frac{1}{\sqrt{2}}\begin{pmatrix}-3i\\3\end{pmatrix}=3\,|1\rangle.
$$

**Autovector para $\lambda_2=5$.** La ecuación $(\mathcal{B}-5I)\begin{pmatrix}a\\b\end{pmatrix}=0$ da

$$
-a+i\,b=0 \quad\Longrightarrow\quad a=i\,b.
$$

Tomando $b=1$ y normalizando,

$$
\boxed{\;|2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}i\\1\end{pmatrix},\qquad \lambda_2=5\;}
$$

Verificación:

$$
\mathcal{B}|2\rangle=\frac{1}{\sqrt{2}}\begin{pmatrix}4i+i\\(-i)(i)+4\end{pmatrix}
=\frac{1}{\sqrt{2}}\begin{pmatrix}5i\\5\end{pmatrix}=5\,|2\rangle.
$$

**Parte 2.** Con $\langle 1|=\frac{1}{\sqrt{2}}(i,\;1)$ (el conjugado hermítico de $|1\rangle$),

$$
\langle 1|2\rangle=\frac{1}{2}\left(i\cdot i+1\cdot 1\right)=\frac{1}{2}(-1+1)=0,
$$

por lo que los autovectores son ortogonales, como corresponde a autovalores distintos de un operador hermítico.

**Parte 3.** Primero note que $\mathcal{B}$ es hermítico:

$$
\mathcal{B}^\dagger=\begin{pmatrix}4 & i\\ -i & 4\end{pmatrix}=\mathcal{B}.
$$

En consecuencia sus autovalores $3$ y $5$ son **reales**. Si $\mathcal{B}$ representa una observable cuántica, estos son los únicos dos resultados posibles de una medición de dicha observable; el estado del sistema después de medir, por ejemplo, el valor $5$, es el autovector $|2\rangle$ (postulado de proyección). Un sistema en una superposición arbitraria de $|1\rangle$ y $|2\rangle$ produce el resultado $3$ con probabilidad $|\langle 1|\psi\rangle|^2$ y el resultado $5$ con probabilidad $|\langle 2|\psi\rangle|^2$.
