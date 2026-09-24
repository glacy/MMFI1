---
title: Solución Ejercicio 7
keywords:
  - cauchy-riemann
  - potencial-complejo
  - flujo-irrotacional
  - aplicacion
tags:
  - cauchy-riemann
  - potencial-complejo
  - flujo-irrotacional
  - aplicacion
objetivos: []
---

**(a) Derivada y velocidad.** Como $f$ es analítica, la derivada puede evaluarse acercándose en la dirección horizontal:

$$
\frac{df}{dz} = \frac{\partial f}{\partial x} = u_x + i\,v_x.
$$

Las ecuaciones de Cauchy-Riemann dan $v_x = -u_y$, y como $\mathbf{V}=\nabla u$ tenemos $V_x = u_x$ y $V_y = u_y$. Entonces

$$
\frac{df}{dz} = u_x - i\,u_y = \boxed{\,V_x - i\,V_y\,}.
$$

La lectura es elegante: la derivada del potencial complejo **empaqueta el vector velocidad completo en un solo número complejo** (el conjugado de $V_x+iV_y$). Evaluar $f'$ en un punto equivale a conocer la dirección y magnitud del flujo allí.

---

**(b) Divergencia nula.** La divergencia del campo de velocidad es

$$
\nabla\cdot\mathbf{V} = u_{xx} + u_{yy}.
$$

Derivando las ecuaciones de Cauchy-Riemann ($u_x = v_y$, $u_y = -v_x$):

$$
u_{xx} = v_{yx},
\qquad
u_{yy} = -v_{xy}.
$$

Sumando ambas, y usando la igualdad de las derivadas parciales mixtas ($v_{yx}=v_{xy}$, válida por ser las segundas derivadas continuas):

$$
\nabla\cdot\mathbf{V} = u_{xx}+u_{yy} = v_{yx}-v_{xy} = 0.
$$

Es decir, $u$ es **armónica** ($\nabla^2 u = 0$): la ecuación de continuidad del fluido incompresible se satisface automáticamente y no hay fuentes ni sumideros. Nótese que aquí la analiticidad es **esencial**: sin Cauchy-Riemann no hay razón para que $u$ sea armónica.

---

**(c) Rotacional nulo.** La única componente del rotacional en 2D es

$$
(\nabla\times\mathbf{V})_z = \frac{\partial V_y}{\partial x} - \frac{\partial V_x}{\partial y} = u_{yx} - u_{xy} = 0,
$$

de nuevo por la igualdad de las parciales mixtas. Más directamente: $\mathbf{V}=\nabla u$ es un gradiente, y el rotacional de un gradiente se anula **identitariamente** ($\nabla\times\nabla u = \mathbf{0}$);

