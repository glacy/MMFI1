---
title: Solución Identidad del rotacional de un producto cruz
keywords:
  - rotacional
  - producto-cruz
  - identidad-vectorial
  - nabla
tags:
  - rotacional
  - identidades-vectoriales
  - calculo-vectorial
---

Escribimos $\vec{A} = (A_x, A_y, A_z)$ y $\vec{B} = (B_x, B_y, B_z)$. El producto cruz tiene por componentes

$$(\vec{A}\times\vec{B})_i = \varepsilon_{ijk} A_j B_k,$$

donde $\varepsilon_{ijk}$ es el símbolo de Levi-Civita y se usa la convención de suma sobre índices repetidos. El rotacional se escribe como

$$[\nabla \times (\vec{A}\times\vec{B})]_i = \varepsilon_{i\ell m}\,\partial_\ell\,(\vec{A}\times\vec{B})_m = \varepsilon_{i\ell m}\,\partial_\ell\,(\varepsilon_{mjk} A_j B_k).$$

Como $\varepsilon_{i\ell m}\,\varepsilon_{mjk} = \varepsilon_{m i\ell}\,\varepsilon_{m jk} = \delta_{ij}\delta_{\ell k} - \delta_{ik}\delta_{\ell j}$, se obtiene

$$[\nabla \times (\vec{A}\times\vec{B})]_i = (\delta_{ij}\delta_{\ell k} - \delta_{ik}\delta_{\ell j})\,\partial_\ell (A_j B_k).$$

Desarrollando

$$[\nabla \times (\vec{A}\times\vec{B})]_i = \partial_k (A_i B_k) - \partial_j (A_j B_i).$$

Aplicando la regla del producto (Leibniz) a cada término

$$[\nabla \times (\vec{A}\times\vec{B})]_i = A_i\,\partial_k B_k + B_k\,\partial_k A_i - A_j\,\partial_j B_i - B_i\,\partial_j A_j.$$

Reconociendo cada término

- $A_i\,\partial_k B_k = A_i\,(\nabla\cdot\vec{B})$,
- $B_k\,\partial_k A_i = [(\vec{B}\cdot\nabla)\vec{A}]_i$,
- $A_j\,\partial_j B_i = [(\vec{A}\cdot\nabla)\vec{B}]_i$,
- $B_i\,\partial_j A_j = B_i\,(\nabla\cdot\vec{A})$.

Por lo tanto, para cada componente $i$

$$[\nabla \times (\vec{A}\times\vec{B})]_i = A_i(\nabla\cdot\vec{B}) - B_i(\nabla\cdot\vec{A}) + [(\vec{B}\cdot\nabla)\vec{A}]_i - [(\vec{A}\cdot\nabla)\vec{B}]_i,$$

que en forma vectorial es la identidad buscada

$$\boxed{\ \nabla \times (\vec{A}\times\vec{B}) = \vec{A}(\nabla\cdot\vec{B}) - \vec{B}(\nabla\cdot\vec{A}) + (\vec{B}\cdot\nabla)\vec{A} - (\vec{A}\cdot\nabla)\vec{B}\ }$$


