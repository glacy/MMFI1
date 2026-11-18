---
title: Ejercicio 3
keywords:
  - matrices-pauli
  - medicion-de-espin
  - autovalores
  - autovectores
  - regla-de-born
tags:
  - matrices-pauli
  - autovalores
  - regla-de-born
  - calculo
objetivos: []
---

En un procesador cuántico, un electrón de espín $\tfrac{1}{2}$ se prepara con espín "arriba" en la dirección $z$, $|+\rangle = \begin{pmatrix} 1 \\ 0 \end{pmatrix}$ en la base de espín $\{|+\rangle, |-\rangle\}$, y luego se mide su espín a lo largo de un eje $\hat{n}$ contenido en el plano $xz$ que forma un ángulo $\theta = 60^\circ$ con el eje $z$. El observable que describe esa medición es la combinación de matrices de Pauli
$$\hat{\sigma}_n = \cos\theta\, \hat{\sigma}_z + \sin\theta\, \hat{\sigma}_x,$$
y la cantidad física medida es $S_n = \frac{\hbar}{2}\hat{\sigma}_n$.

- **(a)** Escriba la matriz del observable $\hat{\sigma}_n$ en la base $\{|+\rangle, |-\rangle\}$.
- **(b)** Verifique que $\left(\hat{\sigma}_n\right)^2 = I$.
- **(c)** Plantee y resuelva la **ecuación secular** $\det(\hat{\sigma}_n - \lambda I) = 0$ e identifique el **espectro** del observable.
- **(d)** Halle los **autovectores normalizados** $|n_+\rangle$ y $|n_-\rangle$ correspondientes a cada autovalor y verifique que son **ortogonales**.
- **(g)** Construya los **proyectores** $\hat{P}_\pm = |n_\pm\rangle\langle n_\pm|$ mediante el **producto tensorial**.
- **(h)** Verifique que $\hat{P}_+ + \hat{P}_- = I$, escriba la **descomposición espectral**
$$\hat{\sigma}_n = \sum_\lambda \lambda\, \hat{P}_\lambda$$
y verifique que reconstruye $\hat{\sigma}_n$.
- **(i)** Con la **regla de Born**, $\text{Prob}(\lambda) = |\langle n_\lambda|\psi\rangle|^2$, calcule las probabilidades de obtener cada resultado al medir $S_n$ sobre el estado preparado $|+\rangle$. 