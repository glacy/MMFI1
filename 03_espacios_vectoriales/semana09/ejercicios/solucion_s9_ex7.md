---
title: Solución Ejercicio 7
keywords:
  - mecanica-cuantica
  - notacion-dirac
  - estados-cuanticos
  - probabilidad
  - ortogonalidad
tags:
  - mecanica-cuantica
  - notacion-dirac
  - estados-cuanticos
  - probabilidad
  - ortogonalidad
  - calculo
objetivos: []
---

En la base ortonormal $\{|0\rangle,|1\rangle\}$, los kets son las columnas $|\psi\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\ i\end{pmatrix}$ y $|\phi\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\ -i\end{pmatrix}$.

**(a) Normalización.** Los bras son los conjugados transpuestos: $\langle\psi| = \frac{1}{\sqrt{2}}(1 \;\; -i)$ y $\langle\phi| = \frac{1}{\sqrt{2}}(1 \;\; i)$. Entonces

$$
\langle\psi|\psi\rangle = \frac{1}{2}\left(1\cdot 1 + (-i)(i)\right) = \frac{1}{2}\left(1 + 1\right) = 1. \checkmark
$$

$$
\langle\phi|\phi\rangle = \frac{1}{2}\left(1\cdot 1 + (i)(-i)\right) = \frac{1}{2}\left(1 + 1\right) = 1. \checkmark
$$

Note el papel de la conjugación: sin ella, $i\cdot i = -1$ daría una "norma" negativa. La simetría hermítica del producto interno es la que garantiza normas reales y positivas.

**(b) Producto interno y transición.**

$$
\langle\phi|\psi\rangle
= \frac{1}{2}\left(1\cdot 1 + i\cdot i\right)
= \frac{1}{2}\left(1 + i^2\right)
= \frac{1}{2}\left(1-1\right) = 0.
$$

$$
\boxed{\;|\langle\phi|\psi\rangle|^2 = 0\;}
$$

**Interpretación:** $|\psi\rangle$ y $|\phi\rangle$ son **ortogonales**: son estados mutuamente excluyentes y ninguno puede observarse como el otro. No es casualidad: $|\phi\rangle = |\psi\rangle^*$, y para este par de estados la conjugación invierte el signo de la parte imaginaria hasta hacerlos perpendiculares.

**(c) Probabilidades de medición en $|\psi\rangle$.** Por la interpretación probabilística del producto interno:

$$
\langle 0|\psi\rangle = \frac{1}{\sqrt{2}}
\qquad\Longrightarrow\qquad
P(0) = |\langle 0|\psi\rangle|^2 = \frac{1}{2},
$$

$$
\langle 1|\psi\rangle = \frac{i}{\sqrt{2}}
\qquad\Longrightarrow\qquad
P(1) = |\langle 1|\psi\rangle|^2 = \frac{|i|^2}{2} = \frac{1}{2}.
$$

La suma:

$$
P(0) + P(1) = \frac{1}{2} + \frac{1}{2} = 1 = \langle\psi|\psi\rangle. \checkmark
$$

**Moraleja:** la normalización es exactamente la conservación de la probabilidad, y las fases complejas (el factor $i$) no aparecen en las probabilidades — solo en los productos internos, donde sí pueden cancelar amplitudes y producir ortogonalidad.
