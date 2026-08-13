---
title: Solución Ejercicio 8
keywords:
  - divergencia
  - producto-cruz
  - identidad-vectorial
  - levi-civita
tags:
  - divergencia
  - producto-cruz
  - identidades-vectoriales
  - calculo
  - demostracion
---


En notación de índices (con convención de suma sobre índices repetidos), la componente $i$-ésima del producto cruz es

$$(\vec{A}\times\vec{B})_i = \varepsilon_{ijk}A_jB_k,$$

donde $\varepsilon_{ijk}$ es el símbolo de Levi-Civita. La divergencia de $\vec{A}\times\vec{B}$ es la traza de las derivadas parciales:

$$\nabla \cdot (\vec{A}\times\vec{B}) = \partial_i(\vec{A}\times\vec{B})_i
= \partial_i(\varepsilon_{ijk}A_jB_k).$$

Como $\varepsilon_{ijk}$ es constante (solo depende de la paridad de la permutación de índices), las derivadas actúan sobre los campos. Aplicando la regla del producto (Leibniz):

$$\nabla \cdot (\vec{A}\times\vec{B}) = \varepsilon_{ijk}\,\partial_i(A_jB_k)
= \varepsilon_{ijk}\,A_j\,\partial_i B_k + \varepsilon_{ijk}\,B_k\,\partial_i A_j.$$

En el primer término renombramos los índices mudos $j\leftrightarrow k$ y reordenamos el símbolo mediante sus permutaciones circulares ($\varepsilon_{kij} = \varepsilon_{ijk}$):

$$\varepsilon_{ijk}A_j\partial_i B_k = \varepsilon_{kij}A_j\partial_i B_k
= \varepsilon_{ijk}\partial_i A_j\,B_k\cdot(-1)$$

En el segundo término, $\varepsilon_{ijk}\partial_i A_j$ es, por definición, la componente $k$-ésima del rotacional:

$$\varepsilon_{kij}\partial_i A_j = (\nabla\times\vec{A})_k,$$

y como $\varepsilon_{ijk} = \varepsilon_{kij}$ (permutación cíclica), el segundo término es

$$\varepsilon_{ijk}B_k\,\partial_i A_j = B_k\,(\nabla\times\vec{A})_k
= \vec{B}\cdot(\nabla\times\vec{A}).$$

En el primer término usamos $\varepsilon_{ijk} = \varepsilon_{jki}$ (permutación cíclica), de modo que

$$\varepsilon_{ijk}A_j\,\partial_i B_k = A_j\,\varepsilon_{jki}\partial_i B_k
= A_j\,(\nabla\times\vec{B})_j
= \vec{A}\cdot(\nabla\times\vec{B}).$$

Sumando ambos términos:

$$\boxed{\nabla \cdot (\vec{A}\times\vec{B}) = \vec{B}\cdot(\nabla\times\vec{A}) - \vec{A}\cdot(\nabla\times\vec{B})}$$



