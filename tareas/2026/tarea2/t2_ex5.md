---
title: Ejercicio 5
keywords:
  - numeros-complejos
  - potencial-complejo
  - campo-electrico
  - ley-de-gauss
tags:
  - numeros-complejos
  - campo-electrico
  - ley-de-gauss
  - aplicacion
objetivos: []
---

Un alambre infinito con densidad lineal de carga $\lambda$ es perpendicular al plano complejo y atraviesa el origen. Su potencial complejo es

$$
\Omega(z) = -\frac{\lambda}{2\pi\varepsilon_0}\ln z,
$$

con $\ln z$ la rama principal (corte a lo largo del eje real negativo).

- **(a)** Escribiendo $z = re^{i\theta}$, identifique el potencial físico $u(r,\theta)=\Re\Omega$ y la función conjugada $v(r,\theta)=\Im\Omega$. Verifique las condiciones de Cauchy-Riemann en su forma polar, $r\,u_r = v_\theta$ y $u_\theta = -r\,v_r$.
- **(b)** Obtenga el campo eléctrico $\vec{E} = -\nabla u$ y dibuje equipotenciales ($u = $ const) y líneas de campo ($v=$ const). ¿Qué propiedad geométrica tienen ambas familias y a qué resultado teórico corresponde?
- **(c)** Calcule directamente el flujo $\Phi_E = \oint_C \vec{E}\cdot\hat{n}\,ds$ sobre una circunferencia de radio $r$ centrada en el origen y verifique la ley de Gauss: $\Phi_E = \lambda/\varepsilon_0$, independiente de $r$.
- **(d)** El mismo resultado vive en la integral de contorno compleja. Usando la identidad $\displaystyle\oint_C (E_x - iE_y)\,dz = \text{(circulación)} + i\,\text{(flujo)}$ y el hecho de que, para $\vec{E}=-\nabla u$, se cumple $E_x - iE_y = -\dfrac{d\Omega}{dz}$, recupere $\Phi_E$ a partir de $\displaystyle\oint_C \frac{dz}{z} = 2\pi i$. Explique también por qué el flujo se anula si el contorno **no** encierra el alambre.
