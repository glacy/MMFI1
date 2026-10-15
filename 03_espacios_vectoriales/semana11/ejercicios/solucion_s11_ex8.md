---
title: Solución Ejercicio 8
keywords:
  - valores-propios
  - autovectores
  - descomposicion-espectral
  - probabilidad
  - valor-esperado
tags:
  - valores-propios
  - autovectores
  - descomposicion-espectral
  - probabilidad
  - valor-esperado
  - mecanica-cuantica
  - calculo
objetivos: []
---

**Parte 1: hermiticidad.** Los elementos de matriz cumplen

$$
A_{11} = A_{22} = 2 \in \mathbb{R},
\qquad
A_{12} = i = (-i)^* = A_{21}^*.
$$

Es decir, $A_{mn} = A_{nm}^*$: la matriz es igual a su transpuesta conjugada, $A^\dagger = A$. $\checkmark$

**Parte 2: autovalores.** La ecuación característica:

$$
\det(\mathcal{A}-a\mathcal{I})
= \det\begin{pmatrix} 2-a & i \\ -i & 2-a \end{pmatrix}
= (2-a)^2 - (i)(-i)
= (2-a)^2 - 1 = 0.
$$

De donde $2-a = \pm 1$, y los autovalores son

$$
\boxed{\;a_1 = 1, \qquad a_3 = 3\;}
$$

ambos **reales**, como exige la hermiticidad de $\mathcal{A}$.

**Parte 3: autovectores.** Para $a_3 = 3$, la ecuación de autovalores $(\mathcal{A}-3\mathcal{I})|u_3\rangle = 0$ da

$$
\begin{pmatrix} -1 & i \\ -i & -1 \end{pmatrix}\begin{pmatrix}v_1\\v_2\end{pmatrix} = 0
\;\Longrightarrow\;
-v_1 + i\,v_2 = 0
\;\Longrightarrow\;
v_1 = i\,v_2,
$$

de donde $|u_3\rangle = \frac{1}{\sqrt2}\bigl(i|\phi_1\rangle + |\phi_2\rangle\bigr)$ (normalizada, pues $\|(i,1)\|^2 = |i|^2 + 1 = 2$). Para $a_1 = 1$:

$$
\begin{pmatrix} 1 & i \\ -i & 1 \end{pmatrix}\begin{pmatrix}v_1\\v_2\end{pmatrix} = 0
\;\Longrightarrow\;
v_1 = -i\,v_2,
$$

de donde $|u_1\rangle = \frac{1}{\sqrt2}\bigl(|\phi_1\rangle + i|\phi_2\rangle\bigr)$ — equivalente a $(-i, 1)$ multiplicada por la fase global $i$, que no altera el estado.

**Ortogonalidad:**

$$
\langle u_1|u_3\rangle = \frac{1}{2}\bigl(1^*\,i + i^*\,1\bigr) = \frac{i - i}{2} = 0.
\qquad\checkmark
$$

Los autoestados llegan ortogonales *por sí solos*: la propiedad 7 de los operadores hermíticos, sin necesidad de Gram–Schmidt.

**Parte 4: descomposición espectral.**

$$
\mathcal{A} = 1\,|u_1\rangle\langle u_1| + 3\,|u_3\rangle\langle u_3|.
$$

**Verificación matricial.** Construyendo los proyectores y sumando:

$$
|u_1\rangle\langle u_1| = \frac12\begin{pmatrix} 1 & -i \\ i & 1 \end{pmatrix},
\qquad
|u_3\rangle\langle u_3| = \frac12\begin{pmatrix} 1 & i \\ -i & 1 \end{pmatrix},
$$

$$
1\cdot\frac12\begin{pmatrix} 1 & -i \\ i & 1 \end{pmatrix}
+ 3\cdot\frac12\begin{pmatrix} 1 & i \\ -i & 1 \end{pmatrix}
= \begin{pmatrix} 2 & i \\ -i & 2 \end{pmatrix} = \mathcal{A}.
\qquad\checkmark
$$

**Parte 5: probabilidades y valor esperado.** Con el estado expandido en la base propia, $|\psi\rangle = \frac{1}{2}|u_1\rangle + \frac{\sqrt3}{2}|u_3\rangle$, la regla de Born da

$$
\text{Prob}(a_1) = |\langle u_1|\psi\rangle|^2 = \frac14,
\qquad
\text{Prob}(a_3) = |\langle u_3|\psi\rangle|^2 = \frac34,
$$

cuya suma es uno (estado normalizado: $\frac14 + \frac34 = 1$). El valor esperado es el promedio ponderado de autovalores:

$$
\langle\mathcal{A}\rangle = 1\cdot\frac14 + 3\cdot\frac34 = \frac{1 + 9}{4} = \frac52.
$$

**Moraleja:** este ejercicio recorre la cadena completa de la semana — hermiticidad $\Rightarrow$ espectro real $\Rightarrow$ autoestados ortogonales $\Rightarrow$ descomposición espectral $\Rightarrow$ probabilidades de medición. El operador $\mathcal{A}$ es, de hecho, $2\mathcal{I} - \hat\sigma_y$: es instructivo verificar que sus autovalores concuerdan con $2 \mp 1$.
