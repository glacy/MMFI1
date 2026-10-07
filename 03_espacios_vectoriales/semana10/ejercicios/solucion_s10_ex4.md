---
title: Solución Ejercicio 4
keywords:
  - mecanica-cuantica
  - operadores-proyeccion
  - medicion-cuantica
  - probabilidad
tags:
  - mecanica-cuantica
  - operadores-proyeccion
  - medicion-cuantica
  - probabilidad
  - conceptual
objetivos: []
---

**Parte 1: significado físico de $P_1$ en la medición.** Si $\{|u_1\rangle,|u_2\rangle\}$ son los estados posibles de un qubit, el postulado de medición proyectiva establece que al medir un observable cuyos autoestados son $|u_1\rangle$ y $|u_2\rangle$:

- el resultado asociado a $|u_1\rangle$ ocurre con probabilidad
$$
p_1 = |\langle u_1|\psi\rangle|^2 = \langle\psi|P_1|\psi\rangle,
$$
- e inmediatamente después, el estado **colapsa** a la proyección normalizada $P_1|\psi\rangle/\sqrt{p_1} = |u_1\rangle$.

Es decir, $P_1 = |u_1\rangle\langle u_1|$ es el "filtro" matemático que selecciona la componente del estado compatible con el resultado $u_1$: su valor esperado es la probabilidad del resultado y su acción reproduce el colapso de la función de onda.

**Parte 2: descomposición de la identidad y suma de probabilidades.** La descomposición de la identidad $P_1 + P_2 = I$ implica que las probabilidades de todos los resultados posibles suman uno:

$$
p_1 + p_2 = \langle\psi|P_1|\psi\rangle + \langle\psi|P_2|\psi\rangle
= \langle\psi|(P_1+P_2)|\psi\rangle
= \langle\psi|I|\psi\rangle
= \langle\psi|\psi\rangle
= 1.
$$

La completitud de la base es exactamente el enunciado matemático de que *algún* resultado debe ocurrir siempre: no hay resultados "perdidos" fuera del conjunto $\{u_1, u_2\}$.

**Parte 3: ortonormalidad y conservación de la probabilidad.** La ortonormalidad $\langle u_i|u_j\rangle = \delta_{ij}$ garantiza que:

1. **Los proyectores son mutuamente excluyentes:** $P_iP_j = |u_i\rangle\langle u_i|u_j\rangle\langle u_j| = \delta_{ij}P_i$. Aplicar dos filtros distintos da cero: no hay doble conteo.
2. **Las componentes no interfieren en las probabilidades:** para $|\psi\rangle = \alpha|u_1\rangle+\beta|u_2\rangle$,
$$
p_1 + p_2 = |\alpha|^2 + |\beta|^2 = \langle\psi|\psi\rangle = 1,
$$
sin términos cruzados, porque $\langle u_1|u_2\rangle = 0$.

Si la base no fuera ortonormal, aparecerían términos de interferencia proporcionales a $\operatorname{Re}\left(\alpha^*\beta\,\langle u_1|u_2\rangle\right)$ y la suma de probabilidades no sería uno: la interpretación probabilística colapsaría.

**Moraleja:** ortonormalidad $\Rightarrow$ proyectores ortogonales y completos $\Rightarrow$ probabilidades bien definidas y normalizadas. La estructura matemática de la base ortonormal *es* la conservación de la probabilidad en la medición.
