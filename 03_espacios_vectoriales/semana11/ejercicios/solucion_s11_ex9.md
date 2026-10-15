---
title: Solución Ejercicio 9
keywords:
  - operadores-unitarios
  - generadores
  - matrices-pauli
  - transformaciones
tags:
  - operadores-unitarios
  - generadores
  - matrices-pauli
  - transformaciones
  - mecanica-cuantica
  - calculo
objetivos: []
---

**Parte 1: unitariedad.** El adjunto es la transpuesta conjugada; para una matriz diagonal basta conjugar la diagonal:

$$
\mathcal{R}_z^\dagger(\theta)
= \begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix}.
$$

El producto con la matriz original es diagonal, con entradas $e^{i\theta}e^{-i\theta} = e^0 = 1$:

$$
\mathcal{R}_z^\dagger(\theta)\,\mathcal{R}_z(\theta)
= \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = \mathcal{I}.
\qquad\checkmark
$$

Es decir, $\mathcal{R}_z^\dagger = \mathcal{R}_z^{-1}$: la transformación es unitaria.

**Parte 2: conservación de la norma.** El estado transformado es

$$
|\psi'\rangle = \alpha\,e^{-i\theta}|+\rangle + \beta\,e^{i\theta}|-\rangle,
$$

y su norma al cuadrado:

$$
\langle\psi'|\psi'\rangle
= |\alpha|^2\,|e^{-i\theta}|^2 + |\beta|^2\,|e^{i\theta}|^2
= |\alpha|^2 + |\beta|^2
= 1,
$$

donde se usó $|e^{\pm i\theta}|^2 = e^{\pm i\theta}e^{\mp i\theta} = 1$ y la normalización de $|\psi\rangle$. $\checkmark$ El unitario rota las **fases** de las componentes pero nunca sus magnitudes.

**Parte 3: autoestado y autovalor.**

$$
\mathcal{R}_z(\theta)|+\rangle = \begin{pmatrix} e^{-i\theta} \\ 0 \end{pmatrix} = e^{-i\theta}\,|+\rangle.
$$

$|+\rangle$ es autoestado con autovalor $e^{-i\theta}$, de **módulo uno**. Implicación física: las probabilidades de medición sobre $|+\rangle$ no cambian bajo la rotación, pues

$$
|\langle\chi|\mathcal{R}_z(\theta)|+\rangle|^2 = |e^{-i\theta}\langle\chi|+\rangle|^2 = |\langle\chi|+\rangle|^2.
$$

Las fases globales no son observables — solo los productos internos entre componentes distintas pueden revelarlas, y las partes relativas de fase sí cambian: el autovalor de $|-\rangle$ es $e^{+i\theta}$, con fase opuesta. Esta es la razón de que $\mathcal{R}_z$ "rote" el estado en el espacio de espín aunque cada autovalor por separado sea invisible.

**Parte 4: generador hermítico.** En la forma $\mathcal{U} = e^{-i\mathcal{A}}$, el generador es

$$
\mathcal{A} = \theta\,\hat{\sigma}_z,
\qquad
\hat{\sigma}_z = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix},
$$

que es hermítico ($\sigma_z^\dagger = \sigma_z$, diagonal real). Y la identidad pedida:

$$
\mathcal{R}_z^\dagger(\theta)
= \begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix}
= \mathcal{R}_z(-\theta).
\qquad\checkmark
$$

**Moraleja:** $\mathcal{R}_z(\theta)$ es el ejemplo prototípico de la relación unitarios–hermíticos: un operador hermítico ($\hat\sigma_z$, un observable) genera una familia continua de transformaciones unitarias (rotaciones del espín alrededor del eje $z$) que preservan normas y productos internos. En mecánica cuántica, el mismo patrón con el Hamiltoniano como generador produce la evolución temporal de sistemas aislados.
