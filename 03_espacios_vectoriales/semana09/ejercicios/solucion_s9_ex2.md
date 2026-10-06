---
title: Solución Ejercicio 2
keywords:
  - producto-interno
  - notacion-dirac
  - bra-ket
  - mecanica-cuantica
tags:
  - producto-interno
  - notacion-dirac
  - bra-ket
  - mecanica-cuantica
  - calculo
objetivos: []
---

**El bra asociado.** El bra $\langle\phi|$ es el conjugado transpuesto del ket $|\phi\rangle$. Con $\langle 0|0\rangle = \langle 1|1\rangle = 1$ y $\langle 0|1\rangle = \langle 1|0\rangle = 0$,

$$
\langle \phi | = \left(\gamma|0\rangle + \delta|1\rangle\right)^\dagger = \gamma^*\langle 0| + \delta^*\langle 1|.
$$

**El producto interno.** Expandiendo término a término:

$$
\langle \phi|\psi\rangle
= \left(\gamma^*\langle 0| + \delta^*\langle 1|\right)\left(\alpha|0\rangle + \beta|1\rangle\right)
= \gamma^*\alpha \,\langle 0|0\rangle + \gamma^*\beta\, \langle 0|1\rangle + \delta^*\alpha\, \langle 1|0\rangle + \delta^*\beta\, \langle 1|1\rangle.
$$

Los términos cruzados se anulan por ortogonalidad de la base, y los diagonales valen 1 por normalización:

$$
\boxed{\;\langle \phi|\psi\rangle = \gamma^*\,\alpha + \delta^*\,\beta\;}
$$

**Comentario:** el resultado es análogo al producto punto de las componentes $(\gamma^*,\delta^*)\cdot(\alpha,\beta)$: en una base ortonormal, medir estados equivale a multiplicar listas de números, con la conjugación del bra a la izquierda. Si $\alpha,\beta,\gamma,\delta$ son reales, se recupera $\langle\phi|\psi\rangle = \gamma\alpha+\delta\beta$ sin conjugación.
