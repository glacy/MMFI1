---
title: Solución Ejercicio 6
keywords:
  - notacion-dirac
  - operadores-lineales
  - elementos-matriz
  - conmutador
tags:
  - notacion-dirac
  - operadores-lineales
  - elementos-matriz
  - conmutador
  - mecanica-cuantica
  - calculo
objetivos: []
---

**Parte 1: elementos de matriz.** Por definición, $A_{mn} = \langle m|\mathcal{A}|n\rangle$: se aplica el operador al ket (columna $n$) y se proyecta con el bra de la fila $m$. Con la acción dada:

$$
A_{++} = \langle+|\mathcal{A}|+\rangle = \langle+|\tfrac{i\hbar}{2}|-\rangle = 0,
\qquad
A_{-+} = \langle-|\mathcal{A}|+\rangle = \tfrac{i\hbar}{2}\langle-|-\rangle = \tfrac{i\hbar}{2},
$$

$$
A_{+-} = \langle+|\mathcal{A}|-\rangle = -\tfrac{i\hbar}{2}\langle+|+\rangle = -\tfrac{i\hbar}{2},
\qquad
A_{--} = \langle-|\mathcal{A}|-\rangle = 0.
$$

**Parte 2: matriz y hermiticidad.** El índice del bra etiqueta filas y el del ket columnas:

$$
A = \begin{pmatrix} 0 & -\frac{i\hbar}{2} \\[2pt] \frac{i\hbar}{2} & 0 \end{pmatrix}.
$$

El dagger transpone y conjuga: $A^\dagger_{+-} = A_{-+}^* = \left(\frac{i\hbar}{2}\right)^* = -\frac{i\hbar}{2} = A_{+-}$, y análogamente $A^\dagger_{-+} = A_{+-}^* = A_{-+}$; las diagonales son reales. Por lo tanto

$$
A^\dagger = A \qquad\checkmark
$$

$\mathcal{A}$ es hermítico: sus autovalores serán reales y medibles.

**Parte 3: descomposición en productos externos.** Sustituyendo los elementos de matriz en $\mathcal{A} = \sum_{m,n}A_{mn}|m\rangle\langle n|$:

$$
\mathcal{A} = \frac{i\hbar}{2}\,|-\rangle\langle+| - \frac{i\hbar}{2}\,|+\rangle\langle-|.
$$

Verificación rápida: al actuar sobre $|+\rangle$, la ortonormalidad ($\langle+|+\rangle = 1$, $\langle-|+\rangle = 0$) deja exactamente $\frac{i\hbar}{2}|-\rangle$, como exige el enunciado. $\checkmark$

**Parte 4: potencia del operador.** Elevando al cuadrado y contrayendo los pares bra-ket adyacentes de afuera hacia adentro:

$$
\begin{aligned}
\mathcal{A}^2
&= \left(\frac{i\hbar}{2}\right)^2
\bigl(|-\rangle\langle+| - |+\rangle\langle-|\bigr)
\bigl(|-\rangle\langle+| - |+\rangle\langle-|\bigr)\\[4pt]
&= -\frac{\hbar^2}{4}\Bigl(
|-\rangle\underbrace{\langle+|-\rangle}_{0}\langle+|
- |-\rangle\underbrace{\langle+|+\rangle}_{1}\langle-|
- |+\rangle\underbrace{\langle-|-\rangle}_{0}\langle+|
+ |+\rangle\underbrace{\langle-|+\rangle}_{0}\langle-|
\Bigr)\\[4pt]
&= \frac{\hbar^2}{4}\left(|-\rangle\langle-| + |+\rangle\langle+|\right)
= \frac{\hbar^2}{4}\,\mathbb{I}.
\end{aligned}
$$

**Moraleja:** la descomposición en productos externos convierte el álgebra de operadores en manipulación de kets y bras; todo el cálculo se apoya en $\langle m|n\rangle = \delta_{mn}$. El resultado $\mathcal{A}^2 = \frac{\hbar^2}{4}\mathbb{I}$ dice que $\mathcal{A}$ es, salvo la escala $\hbar/2$, una involución — de hecho, $\mathcal{A} = \frac{\hbar}{2}\sigma_y$, la matriz de Pauli $y$.
