---
title: Solución Ejercicio 9
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

El campo de velocidad es azimutal, $\vec{v} = v_\theta(r)\hat{e}_\theta$. En coordenadas cilíndricas, el rotacional de un campo de esta forma tiene solo componente en $z$:

$$\displaystyle \nabla\times\vec{v} = \frac{1}{r}\frac{\partial}{\partial r}\left(r\,v_\theta\right)\hat{e}_z.$$

---

**Vorticidad en cada región**

-**Núcleo ($r \le a$):** con $v_\theta = \omega r$,

$$\frac{1}{r}\frac{\partial}{\partial r}\left(r\cdot\omega r\right)
= \frac{1}{r}\frac{\partial}{\partial r}\left(\omega r^2\right)
= \frac{2\omega r}{r} = 2\omega.$$

Por lo tanto

$$\vec{\Omega} = 2\omega\,\hat{e}_z, \qquad r \le a.$$

La vorticidad es **constante** dentro del núcleo: todo el fluido del ojo rota con la misma vorticidad $2\omega$, lo que corresponde al movimiento de cuerpo rígido.

- **Exterior ($r > a$):** con $v_\theta = \Gamma/(2\pi r)$,

$$\frac{1}{r}\frac{\partial}{\partial r}\left(r\cdot\frac{\Gamma}{2\pi r}\right)
= \frac{1}{r}\frac{\partial}{\partial r}\left(\frac{\Gamma}{2\pi}\right) = 0.$$

Por lo tanto

$$\vec{\Omega} = \vec{0}, \qquad r > a.$$

El flujo exterior es **irrotacional**: cada elemento de fluido se desplaza alrededor del centro sin girar sobre sí mismo. Toda la vorticidad del tornado está concentrada en el núcleo.

---

**Continuidad de la velocidad en $r = a$**

En la frontera entre ambas regiones la velocidad debe ser continua:

$$v_\theta(a^-) = \omega a, \qquad v_\theta(a^+) = \frac{\Gamma}{2\pi a}.$$

Igualando:

$$\omega a = \frac{\Gamma}{2\pi a}
\;\Longrightarrow\;
\boxed{\Gamma = 2\omega\pi a^2}$$

---

**Circulación y verificación del teorema de Stokes**

La circulación alrededor de una circunferencia de radio $r$ con $d\vec{l} = r\,d\theta\,\hat{e}_\theta$ es

$$\Gamma(r) = \oint_C \vec{v}\cdot d\vec{l} = \int_0^{2\pi} v_\theta(r)\,r\,d\theta = 2\pi r\,v_\theta(r).$$

**Núcleo ($r \le a$):**

$$\Gamma(r) = 2\pi r\,(\omega r) = 2\omega\pi r^2.$$

Verificación con Stokes, tomando como superficie el disco de radio $r$ (con normal $\hat{n}=\hat{e}_z$):

$$\iint_S (\nabla\times\vec{v})\cdot\hat{n}\,dS
= \iint_S 2\omega\,dS
= 2\omega\,(\pi r^2)
= 2\omega\pi r^2,$$

que coincide con la circulación obtenida por integración directa.

**Exterior ($r > a$):**

$$\Gamma(r) = 2\pi r\left(\frac{\Gamma}{2\pi r}\right) = \Gamma,$$

la circulación es **constante** e independiente de $r$, e igual al valor impuesto por la continuidad, $\Gamma = 2\omega\pi a^2$.

Verificación con Stokes: el disco de radio $r > a$ incluye el núcleo, donde la vorticidad es $2\omega$, y el anillo exterior, donde es nula:

$$\iint_S (\nabla\times\vec{v})\cdot\hat{n}\,dS
= \underbrace{\iint_{r'\le a} 2\omega\,dS}_{\text{núcleo}}
+ \underbrace{\iint_{a<r'\le r} 0\,dS}_{\text{anillo irrotacional}}
= 2\omega\,(\pi a^2)
= 2\omega\pi a^2
= \Gamma.$$

 La circulación no se anula fuera del núcleo porque la curva cerrada *encierra* la región donde está la vorticidad. El teorema de Stokes lo expresa con claridad: la circulación sobre $C$ es el flujo total de vorticidad a través de la superficie que encierra, y toda esa vorticidad está concentrada en el ojo del tornado. Así, aunque en un punto exterior $\nabla\times\vec{v}=\vec{0}$ (el flujo es localmente irrotacional), la circulación alrededor de una curva que rodea el ojo es distinta de cero: la rotación "se siente" globalmente aunque no haya rotación local del fluido exterior. Este fenómeno es el que permite modelar los vientos de un tornado como un vórtice libre fuera del ojo.

$$\boxed{\vec{\Omega} = \begin{cases}
2\omega\,\hat{e}_z, & r \le a\\[4pt]
\vec{0}, & r > a
\end{cases}
\qquad
\Gamma = 2\omega\pi a^2
\qquad
\Gamma(r) = \begin{cases}
2\omega\pi r^2, & r \le a\\[4pt]
\Gamma, & r > a
\end{cases}}$$
