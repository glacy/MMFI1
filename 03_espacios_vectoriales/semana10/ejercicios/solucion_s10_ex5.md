---
title: Solución Ejercicio 5
keywords:
  - observables
  - valor-esperado
  - mecanica-cuantica
  - probabilidad
tags:
  - observables
  - valor-esperado
  - mecanica-cuantica
  - probabilidad
  - calculo
objetivos: []
---

**Parte 1: cálculo del valor esperado.** Por definición, $\langle\mathcal{A}\rangle = \langle\psi|\mathcal{A}|\psi\rangle$. Primero se aplica el observable al estado:

$$
\mathcal{A}|\psi\rangle
= \left(\lambda_1|u_1\rangle\langle u_1| + \lambda_2|u_2\rangle\langle u_2|\right)\left(\alpha|u_1\rangle + \beta|u_2\rangle\right)
= \lambda_1\alpha|u_1\rangle + \lambda_2\beta|u_2\rangle,
$$

donde los términos cruzados murieron por ortogonalidad. Luego se contrae con $\langle\psi| = \alpha^*\langle u_1| + \beta^*\langle u_2|$:

$$
\langle\mathcal{A}\rangle
= \left(\alpha^*\langle u_1| + \beta^*\langle u_2|\right)\left(\lambda_1\alpha|u_1\rangle + \lambda_2\beta|u_2\rangle\right)
= \lambda_1|\alpha|^2\,\langle u_1|u_1\rangle + \lambda_2|\beta|^2\,\langle u_2|u_2\rangle.
$$

Resultado:

$$
\boxed{\;\langle\mathcal{A}\rangle = \lambda_1|\alpha|^2 + \lambda_2|\beta|^2\;}
$$

**Parte 2: interpretación física.** El operador $\mathcal{A}$ está escrito en su **descomposición espectral**: sus autoestados son $|u_1\rangle$ y $|u_2\rangle$, con autovalores $\lambda_1$ y $\lambda_2$. Al medir el observable $\mathcal{A}$ sobre el estado $|\psi\rangle$:

- se obtiene el resultado $\lambda_1$ con probabilidad $|\langle u_1|\psi\rangle|^2 = |\alpha|^2$,
- se obtiene el resultado $\lambda_2$ con probabilidad $|\langle u_2|\psi\rangle|^2 = |\beta|^2$.

El valor esperado es, entonces, el **promedio ponderado por probabilidades** de los posibles resultados: si la medición se repitiera sobre muchas copias preparadas idénticamente en $|\psi\rangle$, el promedio de los resultados convergería a $\lambda_1|\alpha|^2 + \lambda_2|\beta|^2$.

**Comentario:** como los autovalores son reales ($\lambda_1,\lambda_2\in\mathbb{R}$) y las probabilidades $|\alpha|^2,|\beta|^2$ son reales y no negativas, $\langle\mathcal{A}\rangle$ es real: los observables deben representarse mediante operadores hermíticos precisamente para que sus promedios sean cantidades físicas medibles.
