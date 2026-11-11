---
title: Solución Ejercicio 2
keywords:
  - isospin
  - representacion-matricial
  - probabilidad-cuantica
tags:
  - isospin
  - representacion-matricial
  - probabilidad-cuantica
  - aplicacion
  - calculo
objetivos: []
---

**Probabilidad para un neutrón.** Después de la colisión, el estado del nucleón es

$$
\mathcal{E}|n\rangle=\frac{1}{\sqrt{2}}\big(|n\rangle+|p\rangle\big).
$$

La probabilidad de observar el estado $|n\rangle$ es el cuadrado del módulo de la amplitud de proyección (regla de Born):

$$
P(n)=\big|\langle n|\mathcal{E}|n\rangle\big|^2
=\left|\frac{1}{\sqrt{2}}\right|^2
=\boxed{\;\frac{1}{2}\;}
$$

**Representación matricial de $\mathcal{E}$.** La columna $n$ de la matriz contiene las componentes de $\mathcal{E}|n\rangle$ y la columna $p$ las de $\mathcal{E}|p\rangle$, en la base $\{|n\rangle,|p\rangle\}$:

$$
\boxed{\;\mathcal{E}=\frac{1}{\sqrt{2}}
\begin{pmatrix}
1 & 1\\
1 & -1
\end{pmatrix}\;}
$$

Note que $\mathcal{E}$ es a la vez hermítica y unitaria:

$$
\mathcal{E}^\dagger=\mathcal{E},
\qquad
\mathcal{E}^\dagger\mathcal{E}=\frac{1}{2}\begin{pmatrix}1 & 1\\ 1 & -1\end{pmatrix}
\begin{pmatrix}1 & 1\\ 1 & -1\end{pmatrix}
=\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}=I,
$$

por lo que la colisión conserva la norma del estado (y la probabilidad total).

**Probabilidad para el estado $|\psi\rangle$.** El estado inicial tiene componentes $\psi=\frac{1}{\sqrt{5}}\begin{pmatrix}1\\-2i\end{pmatrix}$. Después de la colisión,

$$
\mathcal{E}|\psi\rangle
=\frac{1}{\sqrt{2}}\begin{pmatrix}1 & 1\\ 1 & -1\end{pmatrix}\frac{1}{\sqrt{5}}\begin{pmatrix}1\\-2i\end{pmatrix}
=\frac{1}{\sqrt{10}}\begin{pmatrix}1-2i\\1+2i\end{pmatrix}.
$$

La amplitud de encontrar al nucleón en el estado $|p\rangle$ es la segunda componente, y la probabilidad es

$$
P(p)=\big|\langle p|\mathcal{E}|\psi\rangle\big|^2
=\left|\frac{1+2i}{\sqrt{10}}\right|^2
=\frac{1^2+2^2}{10}
=\boxed{\;\frac{1}{2}\;}
$$

Es interesante que, aunque el estado inicial $|\psi\rangle$ favorece al neutrón ($P(n)=1/5$ antes de la colisión), después de la colisión los resultados $|n\rangle$ y $|p\rangle$ son igualmente probables: la "mezcla" operada por $\mathcal{E}$ redistribuye por completo las amplitudes entre los dos estados del isospín.
