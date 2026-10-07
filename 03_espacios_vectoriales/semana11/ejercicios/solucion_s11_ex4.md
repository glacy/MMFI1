---
title: Solución Ejercicio 4
keywords:
  - operadores-adjuntos
  - fotones
  - operadores-escalera
  - mecanica-cuantica
tags:
  - operadores-adjuntos
  - fotones
  - operadores-escalera
  - mecanica-cuantica
  - demostracion
objetivos: []
---

**Ingredientes.** Los estados de número de fotones $\{|n\rangle;\, n = 0,1,2,\ldots\}$ forman una base ortonormal de autoestados del operador número

$$
\hat{N} = \hat{a}^\dagger\hat{a},
\qquad
\hat{N}|n\rangle = n|n\rangle,
$$

y el operador de aniquilación satisface la relación de conmutación

$$
[\hat{a},\hat{a}^\dagger] = 1
\qquad\Longrightarrow\qquad
\hat{a}\,\hat{a}^\dagger = \hat{N} + 1.
$$

**Paso 1: $\hat{a}^\dagger|n\rangle$ es autoestado de $\hat{N}$ con autovalor $n+1$.** Usando $\hat{a}\hat{a}^\dagger = \hat{N}+1$:

$$
\hat{N}\left(\hat{a}^\dagger|n\rangle\right)
= \hat{a}^\dagger\hat{a}\,\hat{a}^\dagger|n\rangle
= \hat{a}^\dagger\left(\hat{a}\hat{a}^\dagger\right)|n\rangle
= \hat{a}^\dagger\left(\hat{N}+1\right)|n\rangle
= (n+1)\,\hat{a}^\dagger|n\rangle.
$$

Como el autoespacio de $\hat{N}$ con autovalor $n+1$ es unidimensional —está generado por $|n+1\rangle$—, el vector $\hat{a}^\dagger|n\rangle$ debe ser proporcional a él:

$$
\hat{a}^\dagger|n\rangle = c\,|n+1\rangle.
$$

**Paso 2: la constante $c$ a partir de la norma.** Tomando la norma al cuadrado y usando de nuevo $\hat{a}\hat{a}^\dagger = \hat{N}+1$:

$$
|c|^2 = \langle n|\hat{a}\,\hat{a}^\dagger|n\rangle
= \langle n|\left(\hat{N}+1\right)|n\rangle
= n + 1.
$$

Entonces $|c| = \sqrt{n+1}$; con la convención de fase usual (coeficiente real y positivo), $c = \sqrt{n+1}$.

**Conclusión.**

$$
\boxed{\;\hat{a}^\dagger|n\rangle = \sqrt{n+1}\,|n+1\rangle\;}
$$

Por eso $\hat{a}^\dagger$ *crea* un fotón: eleva el estado $|n\rangle$ al estado $|n+1\rangle$.

**Comentario:** nótese la asimetría con la aniquilación, $\hat{a}|n\rangle = \sqrt{n}|n-1\rangle$: el factor es $\sqrt{n}$ al bajar y $\sqrt{n+1}$ al subir. La razón es que el espectro de $\hat{N}$ empieza en $n=0$: la escalera tiene un primer peldaño, y en efecto $\hat{a}|0\rangle = 0$, mientras que no existe estado por debajo de $|0\rangle$ al que $\hat{a}^\dagger$ pueda "rebajar" con coeficiente cero.
