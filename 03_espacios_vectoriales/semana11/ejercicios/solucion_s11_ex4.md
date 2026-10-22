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

Los estados de número de fotones $\{|n\rangle;\, n = 0,1,2,\ldots\}$ forman una base ortonormal de autoestados del operador número

$$
\mathcal{N} = \hat{a}^\dagger\hat{a},
\qquad
\mathcal{N}|n\rangle = n|n\rangle,
$$

y el operador de aniquilación satisface la relación de conmutación

$$
[\hat{a},\hat{a}^\dagger] = 1
\qquad\Longrightarrow\qquad
\hat{a}\,\hat{a}^\dagger = \mathcal{N} + 1.
$$

---

**¿De dónde sale la relación de conmutación?** 

La respuesta está en el origen físico de los operadores: cada modo del campo electromagnético se cuantiza como un **oscilador armónico** de frecuencia $\omega$, y los operadores de escalera se definen a partir de la posición $\hat{q}$ y el momento $\hat{p}$ del modo,

$$
\hat{a} = \sqrt{\tfrac{\omega}{2\hbar}}\,\hat{q} + \tfrac{i}{\sqrt{2\hbar\omega}}\,\hat{p},
\qquad
\hat{a}^\dagger = \sqrt{\tfrac{\omega}{2\hbar}}\,\hat{q} - \tfrac{i}{\sqrt{2\hbar\omega}}\,\hat{p},
$$

cuyos coeficientes están normalizados de modo que, al expandir el conmutador por bilinealidad —los términos $[\hat{q},\hat{q}]$ y $[\hat{p},\hat{p}]$ se anulan—,

$$
[\hat{a},\hat{a}^\dagger]
= -\tfrac{i}{2\hbar}\,\underbrace{[\hat{q},\hat{p}]}_{=\,i\hbar}
  + \tfrac{i}{2\hbar}\,\underbrace{[\hat{p},\hat{q}]}_{=\,-i\hbar}
= \tfrac{1}{2} + \tfrac{1}{2} = 1.
$$

Es decir, la relación se hereda de la relación de conmutación canónica $[\hat{q},\hat{p}] = i\hbar$, postulado básico de la cuantización. 

De manera explícita, si $\hat{a}|n\rangle = \sqrt{n}\,|n-1\rangle$ y $\hat{a}^\dagger|n\rangle = \sqrt{n+1}\,|n+1\rangle$, entonces

$$
\hat{a}\hat{a}^\dagger|n\rangle = (n+1)|n\rangle,
\qquad
\hat{a}^\dagger\hat{a}\,|n\rangle = n|n\rangle,
$$

y restando, $[\hat{a},\hat{a}^\dagger]|n\rangle = |n\rangle$ para todo $n$ —incluido $n=0$, donde $\hat{a}|0\rangle = 0$—; luego $[\hat{a},\hat{a}^\dagger] = \mathbb{I}$ en todo el [espacio de Fock](https://es.wikipedia.org/wiki/Espacio_de_Fock).

---


Primero, notemos que $\hat{a}^\dagger|n\rangle$ es autoestado de $\mathcal{N}$ con autovalor $n+1$. Usando $\hat{a}\hat{a}^\dagger = \mathcal{N}+1$:

$$
\mathcal{N}\left(\hat{a}^\dagger|n\rangle\right)
= \hat{a}^\dagger\hat{a}\,\hat{a}^\dagger|n\rangle
= \hat{a}^\dagger\left(\hat{a}\hat{a}^\dagger\right)|n\rangle
= \hat{a}^\dagger\left(\mathcal{N}+1\right)|n\rangle
= (n+1)\,\hat{a}^\dagger|n\rangle.
$$

Como el autoespacio de $\mathcal{N}$ con autovalor $n+1$ es unidimensional —está generado por $|n+1\rangle$—, el vector $\hat{a}^\dagger|n\rangle$ debe ser proporcional a él:

$$
\hat{a}^\dagger|n\rangle = c\,|n+1\rangle.
$$

Tomando la norma al cuadrado y usando de nuevo $\hat{a}\hat{a}^\dagger = \mathcal{N}+1$:

$$
|c|^2 = \langle n|\hat{a}\,\hat{a}^\dagger|n\rangle
= \langle n|\left(\mathcal{N}+1\right)|n\rangle
= n + 1.
$$

Entonces $|c| = \sqrt{n+1}$; con la convención de fase usual (coeficiente real y positivo), $c = \sqrt{n+1}$.

Finalmente,

$$
\boxed{\;\hat{a}^\dagger|n\rangle = \sqrt{n+1}\,|n+1\rangle\;}
$$

Por eso $\hat{a}^\dagger$ *crea* un fotón: eleva el estado $|n\rangle$ al estado $|n+1\rangle$.


