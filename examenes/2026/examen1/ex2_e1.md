---
tags:
- analisis-vectorial
- operador-nabla
- divergencia
- rotacional
- coordenadas-esfericas
- flujo
- magnetostatica
- aplicacion
- intermedio
---

Una esfera sólida de radio $a$ desciende con velocidad constante $\vec{U}$ a través de un aceite viscoso. Vista desde un sistema de referencia fijo en la esfera, el flujo del aceite es estacionario y axialmente simétrico respecto de la dirección del movimiento. En coordenadas esféricas $(r, \theta, \phi)$, con origen en el centro de la esfera y $\theta$ medido desde la dirección de $\vec{U}$, el campo de velocidad del aceite adopta la forma

$$ \vec{v} = v_r(r,\theta)\,\hat{r} + v_\theta(r,\theta)\,\hat{\theta}, \qquad v_\phi = 0 $$

1. **[10 puntos]** Calcule la divergencia $\nabla\cdot\vec{v}$ en términos de $v_r$ y $v_\theta$.
2. **[10 puntos]** Calcule el rotacional $\nabla\times\vec{v}$ y muestre que su única componente no nula es la azimutal,
   $$ (\nabla\times\vec{v})_\phi = \frac{1}{r}\left[\frac{\partial\,(r\,v_\theta)}{\partial r} - \frac{\partial v_r}{\partial \theta}\right] $$
3. **[10 puntos]** Para un flujo con $v_r = f(r)\cos\theta$ y $v_\theta = g(r)\,\text{sen}\,\theta$, encuentre la condición que deben cumplir $f(r)$ y $g(r)$ para que el aceite sea incompresible, $\nabla\cdot\vec{v} = 0$.
<!-- 4. **[10 puntos]** En el régimen viscoso (flujo de Stokes), el análisis clásico de la sedimentación proporciona
   $$ v_r(r,\theta) = U\cos\theta\left(1 - \frac{3a}{2r} + \frac{a^3}{2r^3}\right) $$
   Verifique que este campo satisface la condición de incompresibilidad de la parte 3, determine la componente $v_\theta(r,\theta)$ correspondiente e interprete el valor de $\vec{v}$ en la superficie de la esfera ($r = a$). -->
