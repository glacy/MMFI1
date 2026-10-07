---
title: Solución Ejercicio 3
keywords:
  - matrices-pauli
  - conmutadores
  - notacion-dirac
  - mecanica-cuantica
tags:
  - matrices-pauli
  - conmutadores
  - notacion-dirac
  - mecanica-cuantica
  - calculo
objetivos: []
---

Se usan los operadores de Pauli definidos en la lectura, en la base ortonormal $\{|+\rangle,|-\rangle\}$, con $\langle +|+\rangle = \langle -|-\rangle = 1$ y $\langle +|-\rangle = \langle -|+\rangle = 0$.

## Parte 1: acción sobre los bras

Se actúa con la regla $\langle \pm|(|a\rangle\langle b|) = \langle \pm|a\rangle\langle b|$. Por ejemplo,

$$
\langle +|\hat{\sigma}_y
= \langle +|\left[i|-\rangle\langle +| - i|+\rangle\langle -|\right]
= i\underbrace{\langle +|-\rangle}_{0}\langle +| - i\underbrace{\langle +|+\rangle}_{1}\langle -|
= -i\langle -|.
$$

Repitiendo para los seis casos:

$$
\begin{aligned}
\langle +|\hat{\sigma}_x &= \langle -|,
&\qquad \langle -|\hat{\sigma}_x &= \langle +|,\\
\langle +|\hat{\sigma}_y &= -i\langle -|,
&\qquad \langle -|\hat{\sigma}_y &= i\langle +|,\\
\langle +|\hat{\sigma}_z &= \langle +|,
&\qquad \langle -|\hat{\sigma}_z &= -\langle -|.
\end{aligned}
$$

**Chequeo de consistencia:** como cada $\hat{\sigma}_i$ es hermítico, el bra debe ser el adjunto del ket correspondiente; por ejemplo $(\hat{\sigma}_y|+\rangle)^\dagger = (i|-\rangle)^\dagger = -i\langle -|$, en acuerdo con la tabla. $\checkmark$

## Parte 2: conmutadores

Primero, la acción sobre los kets (misma regla, con $\langle b|c\rangle$):

$$
\hat{\sigma}_x|+\rangle = |-\rangle,\quad \hat{\sigma}_x|-\rangle = |+\rangle;\qquad
\hat{\sigma}_y|+\rangle = i|-\rangle,\quad \hat{\sigma}_y|-\rangle = -i|+\rangle;\qquad
\hat{\sigma}_z|+\rangle = |+\rangle,\quad \hat{\sigma}_z|-\rangle = -|-\rangle.
$$

**Cálculo detallado de $[\hat{\sigma}_x,\hat{\sigma}_y]$.** Se aplica el conmutador a cada vector de la base:

$$
[\hat{\sigma}_x,\hat{\sigma}_y]|+\rangle
= \hat{\sigma}_x\left(i|-\rangle\right) - \hat{\sigma}_y\left(|-\rangle\right)
= i|+\rangle + i|+\rangle
= 2i|+\rangle,
$$

$$
[\hat{\sigma}_x,\hat{\sigma}_y]|-\rangle
= \hat{\sigma}_x\left(-i|+\rangle\right) - \hat{\sigma}_y\left(|+\rangle\right)
= -i|-\rangle - i|-\rangle
= -2i|-\rangle.
$$

Comparando con $\hat{\sigma}_z|+\rangle = |+\rangle$ y $\hat{\sigma}_z|-\rangle = -|-\rangle$:

$$
[\hat{\sigma}_x,\hat{\sigma}_y] = 2i\,\hat{\sigma}_z.
$$

**Conmutadores restantes.** Los mismos cálculos, permutando cíclicamente los índices, dan

$$
[\hat{\sigma}_y,\hat{\sigma}_z] = 2i\,\hat{\sigma}_x,
\qquad
[\hat{\sigma}_z,\hat{\sigma}_x] = 2i\,\hat{\sigma}_y.
$$

Además $[\hat{\sigma}_i,\hat{\sigma}_i] = 0$ y $[\hat{\sigma}_i,\hat{\sigma}_j] = -[\hat{\sigma}_j,\hat{\sigma}_i]$ por antisimetría del conmutador. En forma compacta:

$$
\boxed{\;[\hat{\sigma}_i,\hat{\sigma}_j] = 2i\,\epsilon_{ijk}\,\hat{\sigma}_k\;}
$$

donde $\epsilon_{ijk}$ es el símbolo de Levi-Civita.

**Moraleja:** los operadores de espín no conmutan: medir el espín según dos ejes distintos no es conmutable el orden. Los conmutadores de Pauli son el prototipo de la **álgebra de Lie** de las rotaciones, y el factor $2i$ refleja que el espín del medio entero genera rotaciones de ángulo doble.
