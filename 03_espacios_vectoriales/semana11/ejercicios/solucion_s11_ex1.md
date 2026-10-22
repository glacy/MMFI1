---
title: Solución Ejercicio 1
keywords:
  - operadores-adjuntos
  - operadores-lineales
  - notacion-dirac
tags:
  - operadores-lineales
  - operadores-adjuntos
  - notacion-dirac
  - calculo
objetivos: []
---

El adjunto queda determinado por la propiedad

$$
\langle \xi|\mathcal{B}^\dagger|\psi\rangle = \langle\psi|\mathcal{B}|\xi\rangle^*
\qquad\text{para todo } |\xi\rangle,|\psi\rangle.
$$

Como $\{|\varphi_1\rangle,|\varphi_2\rangle\}$ es ortonormal y completa, se expande el vector buscado:

$$
\mathcal{B}^\dagger|\varphi_2\rangle
= |\varphi_1\rangle\,\langle\varphi_1|\mathcal{B}^\dagger|\varphi_2\rangle
+ |\varphi_2\rangle\,\langle\varphi_2|\mathcal{B}^\dagger|\varphi_2\rangle,
$$

y se calculan los dos coeficientes con la propiedad anterior:

$$
\langle\varphi_1|\mathcal{B}^\dagger|\varphi_2\rangle
= \langle\varphi_2|\mathcal{B}|\varphi_1\rangle^*
= \langle\varphi_2|\,2|\varphi_2\rangle^*
= 2^*\,\langle\varphi_2|\varphi_2\rangle
= 2,
$$

$$
\langle\varphi_2|\mathcal{B}^\dagger|\varphi_2\rangle
= \langle\varphi_2|\mathcal{B}|\varphi_2\rangle^*
= \langle\varphi_2|\,i|\varphi_1\rangle^*
= (-i)^*\,\langle\varphi_2|\varphi_1\rangle
= 0.
$$

Por lo tanto

$$
\boxed{\;\mathcal{B}^\dagger|\varphi_2\rangle = 2|\varphi_1\rangle\;}
$$
