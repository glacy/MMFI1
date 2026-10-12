---
title: Solución Ejercicio 7
keywords:
  - operadores-hermiticos
  - valores-propios
  - autoestados
tags:
  - operadores-hermiticos
  - valores-propios
  - autoestados
  - demostracion
objetivos: []
---

**Planteamiento.** Sea $\mathcal{A}$ hermítico, $\mathcal{A}^\dagger = \mathcal{A}$, y sea $|\psi\rangle \neq 0$ un autoestado con autovalor $\lambda$:

$$
\mathcal{A}|\psi\rangle = \lambda|\psi\rangle.
$$

**Demostración.** Se contrae la ecuación de autovalores con el bra $\langle\psi|$:

$$
\langle\psi|\mathcal{A}|\psi\rangle = \lambda\,\langle\psi|\psi\rangle.
$$

Ahora se toma el complejo conjugado de ambos lados. A la derecha, $\langle\psi|\psi\rangle$ es real y positivo (estado no nulo). A la izquierda, se usa la identidad demostrada en el Ejercicio 5 con $\phi = \psi$:

$$
\langle\psi|\mathcal{A}|\psi\rangle^* = \langle\psi|\mathcal{A}^\dagger|\psi\rangle = \langle\psi|\mathcal{A}|\psi\rangle.
$$

Es decir, $\langle\psi|\mathcal{A}|\psi\rangle$ es real. Entonces el conjugado de la ecuación original dice

$$
\langle\psi|\mathcal{A}|\psi\rangle = \lambda^*\,\langle\psi|\psi\rangle,
$$

y comparando con la ecuación original:

$$
\lambda^*\,\langle\psi|\psi\rangle = \lambda\,\langle\psi|\psi\rangle.
$$

Como $\langle\psi|\psi\rangle > 0$, se puede cancelar:

$$
\lambda^* = \lambda
\qquad\Longrightarrow\qquad
\boxed{\;\lambda \in \mathbb{R}\;}
$$

**Comentario:** este resultado es la piedra angular de la interpretación física de la mecánica cuántica: los únicos resultados posibles de una medición son los autovalores del observable, y una medición debe producir un número real. Por eso los observables se representan exactamente con operadores hermíticos: la hermiticidad fuerza que su espectro —los valores que el aparato de medición puede leer— viva en la recta real.
