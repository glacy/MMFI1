---
title: Ejercicio 1
keywords:
  - espacios-vectoriales
  - matrices-pauli
  - producto-interno
tags:
  - espacios-vectoriales
  - matrices-pauli
  - producto-interno
  - calculo
  - demostracion
objetivos: []
---

Las *matrices de Pauli* describen el espín de un electrón (o de cualquier partícula de medio espín) y son la base del control de cúbits en procesadores cuánticos y en técnicas de resonancia magnética:
$$\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix},
\qquad
\sigma_y = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix},
\qquad
\sigma_z = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}.$$
Junto con la identidad $I$, estas matrices estructuran el espacio en el que viven los estados y los observables de un cúbit. Denótese $\mathcal{H}_2$ al conjunto de todas las **matrices hermíticas** $2\times2$.


Considere el **producto interno** (de Hilbert-Schmidt) $$\langle A, B\rangle = \text{tr}(A^\dagger B) = \sum_{i,j} a_{ij}^*\, b_{ij}$$

- **(a)** Muestre que $\mathcal{H}_2$, con la suma de matrices y el producto por **escalares reales**, es un **espacio vectorial**
- **(b)** Muestre que toda matriz de $\mathcal{H}_2$,
$$A = \begin{pmatrix} a & z \\ z^* & b \end{pmatrix}, \qquad a, b \in \mathbb{R}, \quad z = x + iy \in \mathbb{C},$$
se escribe como **combinación lineal** (con coeficientes reales) de $\{I, \sigma_x, \sigma_y, \sigma_z\}$.
- **(c)** Verifique que $\{I, \sigma_x, \sigma_y, \sigma_z\}$ es **linealmente independiente** y concluya la **dimensión** de $\mathcal{H}_2$.
- **(d)** Muestre que $\{I, \sigma_x, \sigma_y, \sigma_z\}$ es un conjunto **ortogonal** y calcule la norma de cada elemento, usando el producto interno de Hilbert-Schmidt.
- **(e)** Calcule el producto interno, las normas y el "ángulo" entre
$$A = I + \sigma_x \qquad \text{y} \qquad B = \sigma_x + \sigma_z.$$
Recuerde que $$\cos\theta = \frac{\langle A, B\rangle}{\|A\|\,\|B\|}$$
