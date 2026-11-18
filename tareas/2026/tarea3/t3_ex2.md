---
title: Ejercicio 2
keywords:
  - notacion-dirac
  - base-ortonormal
  - proyectores
  - medicion
tags:
  - espacios-vectoriales
  - notacion-dirac
  - proyectores
  - calculo
objetivos: []
---

Un cúbit — por ejemplo, dos niveles de un ion atrapado — se opera sobre una base ortonormal $\{|u_1\rangle, |u_2\rangle\}$ de dos niveles de calibración del hardware, que en la base de referencia $\{|0\rangle, |1\rangle\}$ se escribe
$$|u_1\rangle = \frac{1}{\sqrt5}\begin{pmatrix} 1 \\ 2 \end{pmatrix},
\qquad
|u_2\rangle = \frac{1}{\sqrt5}\begin{pmatrix} 2 \\ -1 \end{pmatrix}.$$


El sistema se prepara en el estado
$$|\psi\rangle = \frac{1}{\sqrt2}\begin{pmatrix} 1 \\ 1 \end{pmatrix}.$$

- **(a)** Obtenga los coeficientes $c_n = \langle u_n|\psi\rangle$ y escriba la expansión $|\psi\rangle = c_1|u_1\rangle + c_2|u_2\rangle$.
- **(b)** Construya los **proyectores** $\hat{P}_n = |u_n\rangle\langle u_n|$.
- **(c)** Calcule las **probabilidades** de obtener cada resultado al medir en la base $\{|u_1\rangle, |u_2\rangle\}$ y verifique que suman 1.$$\text{Prob}(u_n) = |\langle u_n|\psi\rangle|^2 = \langle\psi|\hat{P}_n|\psi\rangle$$
- **(d)** El observable $\mathcal{A}$ queda definido por su acción sobre la base ortonormal:
$$\mathcal{A}|u_1\rangle = 3|u_1\rangle + i|u_2\rangle,
\qquad
\mathcal{A}|u_2\rangle = -i|u_1\rangle + 3|u_2\rangle.$$
Escriba sus **elementos de matriz** $A_{mn} = \langle u_m|\mathcal{A}|u_n\rangle$ y su matriz.
- **(e)** Escriba la **descomposición en productos externos** $\mathcal{A} = \sum_{m,n} A_{mn}|u_m\rangle\langle u_n|$.
- **(f)** Determine la acción sobre el bra, $\langle u_2|\mathcal{A}$.
- **(g)** Calcule el **valor esperado** $\langle\psi|\mathcal{A}|\psi\rangle$ y explique por qué resulta ser real.
