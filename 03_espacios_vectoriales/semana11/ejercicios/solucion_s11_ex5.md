---
title: Solución Ejercicio 5
keywords:
  - operadores-hermiticos
  - elementos-matriz
  - producto-interno
tags:
  - operadores-hermiticos
  - elementos-matriz
  - producto-interno
  - demostracion
objetivos: []
---

**Primera parte.** Por la definición del operador adjunto, para estados arbitrarios $|\xi\rangle,|\psi\rangle$ se cumple

$$
\langle \xi|\mathcal{A}|\psi\rangle = \langle \psi|\mathcal{A}^\dagger|\xi\rangle^*.
$$

Aplicando esta identidad con $\xi = \psi$, $\psi = \phi$:

$$
\langle \psi|\mathcal{A}|\phi\rangle^*
= \langle \phi|\mathcal{A}^\dagger|\psi\rangle.
$$

Como $\mathcal{A}$ es hermítico, $\mathcal{A}^\dagger = \mathcal{A}$, y por lo tanto

$$
\boxed{\;\langle \psi| \mathcal{A}|\phi \rangle^* = \langle \phi| \mathcal{A}|\psi \rangle\;}
$$

**Segunda parte: consecuencia sobre los elementos de matriz.** Sea $\{|\varphi_n\rangle\}$ una base ortonormal y $A_{mn} = \langle\varphi_m|\mathcal{A}|\varphi_n\rangle$ los elementos de matriz. Tomando $|\psi\rangle = |\varphi_m\rangle$ y $|\phi\rangle = |\varphi_n\rangle$ en la identidad recién demostrada:

$$
A_{mn}^* = \langle \varphi_m| \mathcal{A}|\varphi_n \rangle^*
= \langle \varphi_n| \mathcal{A}|\varphi_m \rangle
= A_{nm}.
$$

Es decir,

$$
\boxed{\;A_{mn} = A_{nm}^*\;}
$$

la matriz de un operador hermítico es igual a su transpuesta conjugada. En particular:

- los elementos diagonales son reales: $A_{nn} = A_{nn}^*$;
- los elementos fuera de la diagonal vienen en pares conjugados: $A_{mn}$ y $A_{nm}$.

**Comentario:** un caso inmediato es $\phi = \psi$: $\langle\psi|\mathcal{A}|\psi\rangle^* = \langle\psi|\mathcal{A}|\psi\rangle$, es decir, el valor esperado de un operador hermítico es siempre real. Esta es la razón matemática profunda de que los observables físicos se representen con operadores hermíticos: sus promedios de medición son números reales.
