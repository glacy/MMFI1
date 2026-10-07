---
title: Solución Ejercicio 2
keywords:
  - operadores-proyeccion
  - mecanica-cuantica
  - probabilidad
tags:
  - operadores-proyeccion
  - mecanica-cuantica
  - probabilidad
  - calculo
objetivos: []
---

**Parte 1: el operador de proyección.** Con $|u_1\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}$ y $\langle u_1| = \frac{1}{\sqrt{2}}\begin{pmatrix}1 & 1\end{pmatrix}$:

$$
P_1 = |u_1\rangle\langle u_1| = \frac{1}{2}\begin{pmatrix}1\\1\end{pmatrix}\begin{pmatrix}1 & 1\end{pmatrix}
= \frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix}.
$$

El proyector cumple las dos propiedades que lo caracterizan:

$$
P_1^2 = \frac{1}{4}\begin{pmatrix}2 & 2\\ 2 & 2\end{pmatrix} = P_1 \quad\text{(idempotente)},
\qquad
P_1^\dagger = P_1 \quad\text{(hermítico)}.
$$

**Parte 2: acción sobre un estado general.** Sea $|\psi\rangle = \alpha|u_1\rangle + \beta|u_2\rangle$. Entonces

$$
P_1|\psi\rangle
= \left(|u_1\rangle\langle u_1|\right)\left(\alpha|u_1\rangle + \beta|u_2\rangle\right)
= \alpha|u_1\rangle\underbrace{\langle u_1|u_1\rangle}_{1} + \beta|u_1\rangle\underbrace{\langle u_1|u_2\rangle}_{0}
= \alpha|u_1\rangle.
$$

El proyector extrae la componente del estado a lo largo de $|u_1\rangle$ y anula la parte ortogonal. En forma matricial:

$$
P_1|\psi\rangle = \frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & 1\end{pmatrix}\frac{1}{\sqrt{2}}\begin{pmatrix}\alpha+\beta\\ \alpha-\beta\end{pmatrix}
= \frac{\alpha+\beta}{2}\begin{pmatrix}1\\1\end{pmatrix}
= \frac{\alpha+\beta}{\sqrt{2}}\,|u_1\rangle
= \alpha\,|u_1\rangle,
$$

donde se usó $\alpha = \frac{(\alpha+\beta)+(\alpha-\beta)}{2}$. $\checkmark$

**Parte 3: probabilidad del resultado asociado a $u_1$.** La probabilidad de obtener el resultado asociado al estado $|u_1\rangle$ al medir $|\psi\rangle$ es

$$
p_1 = |\langle u_1|\psi\rangle|^2 = |\alpha|^2,
$$

o, equivalentemente, en términos del proyector:

$$
\langle\psi|P_1|\psi\rangle = |\alpha|^2 \langle u_1|u_1\rangle = |\alpha|^2.
$$

Si $|\psi\rangle$ está normalizado ($|\alpha|^2 + |\beta|^2 = 1$), entonces $p_1 = |\alpha|^2 \in [0,1]$.

**Interpretación:** $P_1$ actúa como un "detector" del estado $|u_1\rangle$: su valor esperado en $|\psi\rangle$ es exactamente la probabilidad de que la medición dé el resultado asociado a $|u_1\rangle$, y el vector $P_1|\psi\rangle$ es la parte del estado que "sobrevive" a dicho resultado.
