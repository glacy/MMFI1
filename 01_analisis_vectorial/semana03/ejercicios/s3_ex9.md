---
title: Ejercicio 9
keywords:
  - vorticidad
  - circulacion
  - vortice
  - teorema-stokes
  - mecanica-fluidos
tags:
  - vorticidad
  - circulacion
  - teorema-stokes
  - mecanica-fluidos
  - tornado
  - vórtice
---

**Vórtice de Rankine: modelo de un tornado**

Un tornado se modela con frecuencia como un [vórtice de Rankine](https://es.wikipedia.org/wiki/V%C3%B3rtice_de_Rankine), cuyo campo de velocidad es puramente azimutal, $\vec{v} = v_\theta(r)\hat{e}_\theta$, con un núcleo central en rotación sólida y un exterior irrotacional:

- **Núcleo** ($r \le a$): $v_\theta = \omega r$ (el flujo rota como un cuerpo rígido).
- **Exterior** ($r > a$): $v_\theta = \dfrac{\Gamma}{2\pi r}$ (vórtice libre, irrotacional),

donde $a$ es el radio del ojo del tornado, $\omega$ la velocidad angular del núcleo y $\Gamma$ la circulación.

1. Calcule la vorticidad $\vec{\Omega} = \nabla\times\vec{v}$ dentro y fuera del núcleo. ¿En qué región el flujo es irrotacional?
2. Demuestre que la continuidad de la velocidad en $r = a$ implica $\Gamma = 2\omega\pi a^2$.
3. Calcule la circulación $\Gamma(r) = \oint_C \vec{v}\cdot d\vec{l}$ alrededor de una circunferencia de radio $r$ para ambos casos y verifique que el teorema de Stokes reproduce el resultado. Explique por qué la circulación no se anula fuera del núcleo aunque allí $\nabla\times\vec{v} = \vec{0}$.
