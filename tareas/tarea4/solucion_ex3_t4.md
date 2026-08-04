---
title: Valor esperado de un operador hermítico
subtitle: Demostración de la identidad ⟨A⟩ = ∑ₙ|⟨aₙ|ψ⟩|² aₙ
date: 2025-11-15
---

Dado que $\mathcal{A}$ es hermítico, $\mathcal{A} = \mathcal{A}^\dagger$ y sus autoestados $\{|a_n\rangle\}$ forman una base ortonormal completa:

  :::{math}
  \mathcal{A}|a_n\rangle = a_n|a_n\rangle, \qquad
  \langle a_m|a_n\rangle = \delta_{mn}.
  :::

de manera que cualquier estado $|\psi\rangle$ admite la descomposición (resolución de la identidad)

  :::{math}
  |\psi\rangle = \sum_n |a_n\rangle\langle a_n|\psi\rangle.
  :::

de donde

:::{math}
\begin{aligned}
\langle\psi|\mathcal{A}|\psi\rangle
&= \Bigl(\sum_m \langle\psi|a_m\rangle\langle a_m|\Bigr)
   \mathcal{A}
   \Bigl(\sum_n |a_n\rangle\langle a_n|\psi\rangle\Bigr)\\[4pt]
&= \sum_{m,n} \langle\psi|a_m\rangle\,\langle a_m|\mathcal{A}|a_n\rangle\,\langle a_n|\psi\rangle.
\end{aligned}
:::

Usando el hecho que

:::{math}
\langle a_m|\mathcal{A}|a_n\rangle = a_n\langle a_m|a_n\rangle = a_n\delta_{mn}.
:::

se obtiene 
:::{math}
\begin{aligned}
\langle\psi|\mathcal{A}|\psi\rangle
&= \sum_n \langle\psi|a_n\rangle\,a_n\,\langle a_n|\psi\rangle\\[4pt]
&= \sum_n |\langle a_n|\psi\rangle|^2 a_n.
\end{aligned}
:::

Dado que el número $|\langle a_n|\psi\rangle|^2$ es la probabilidad $P_n(a_n)$ de obtener el autovalor $a_n$ al medir $\mathcal{A}$ en el estado $|\psi\rangle$, entonces

:::{math}
\langle\mathcal{A}\rangle = \sum_n P_n a_n,
:::

que es exactamente la expresión promedio (valor esperado) sobre el espectro de $\mathcal{A}$.

Por lo tanto, para cualquier operador hermítico $\mathcal{A}$ y estado $|\psi\rangle$:

:::{math}
\boxed{
\langle\mathcal{A}\rangle
= \langle\psi|\mathcal{A}|\psi\rangle
= \sum_n |\langle a_n|\psi\rangle|^2 a_n
}
:::