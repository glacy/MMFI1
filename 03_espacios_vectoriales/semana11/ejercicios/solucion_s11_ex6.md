---
title: Solución Ejercicio 6
keywords:
  - operadores-adjuntos
  - operadores-lineales
  - producto-interno
tags:
  - operadores-adjuntos
  - operadores-lineales
  - producto-interno
  - demostracion
objetivos: []
---

El operador adjunto $\mathcal{A}^\dagger$ es el único operador tal que, para estados arbitrarios $|\xi\rangle$ y $|\psi\rangle$,

$$
\langle \xi|\mathcal{A}|\psi\rangle = \langle \psi|\mathcal{A}^\dagger|\xi\rangle^*.
$$

Esta definición vale para *cualquier* operador; en particular, para el operador $\mathcal{A}^\dagger$:

$$
\langle \xi|\left(\mathcal{A}^\dagger\right)^\dagger|\psi\rangle
= \langle \psi|\mathcal{A}^\dagger|\xi\rangle^*.
$$

Pero el lado derecho puede reescribirse aplicando la definición al operador $\mathcal{A}$ (con los estados intercambiados):

$$
\langle \psi|\mathcal{A}^\dagger|\xi\rangle = \langle \xi|\mathcal{A}|\psi\rangle^*
\qquad\Longrightarrow\qquad
\langle \psi|\mathcal{A}^\dagger|\xi\rangle^* = \left(\langle \xi|\mathcal{A}|\psi\rangle^*\right)^* = \langle \xi|\mathcal{A}|\psi\rangle.
$$

Combinando ambas,

$$
\langle \xi|\left(\mathcal{A}^\dagger\right)^\dagger|\psi\rangle = \langle \xi|\mathcal{A}|\psi\rangle
\qquad\text{para todo } |\xi\rangle,|\psi\rangle.
$$

Dos operadores con el mismo elemento de matriz entre cualesquiera estados son el mismo operador; por lo tanto

$$
\boxed{\;\left(\mathcal{A}^\dagger\right)^\dagger = \mathcal{A}\;}
$$

