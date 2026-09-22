---
tags: [analisis-vectorial, teorema-divergencia, teorema-stokes, integrales-superficie, integrales-linea, ley-gauss, ley-ampere]
---

En un acelerador lineal, un haz cilíndrico de radio $a$, cuyo eje coincide con el eje $z$, transporta electrones que se desplazan con velocidad constante $\vec{v} = v\,\hat{z}$. La densidad volumétrica de carga es uniforme dentro del haz y nula fuera:

$$ \rho = \begin{cases} \rho_0 & r < a \\ 0 & r > a \end{cases} \qquad\Rightarrow\qquad \vec{J} = \begin{cases} \rho_0\, v\,\hat{z} & r < a \\ \vec{0} & r > a \end{cases} $$

Por la simetría del problema, los campos eléctrico y magnético generados tienen la forma

$$ \vec{E} = E(r)\,\hat{r}, \qquad \vec{B} = B(r)\,\hat{\phi} $$

1. **[10 puntos]** Use el **teorema de la divergencia** junto con la ley de Gauss en forma diferencial, $\nabla\cdot\vec{E} = \rho/\epsilon_0$, aplicada a una superficie gaussiana cilíndrica coaxial de radio $r$ y longitud $L$, para demostrar que 

$$ \vec{E}(r) = \begin{cases} \dfrac{\rho_0\,r}{2\,\epsilon_0}\,\hat{r} & r < a \\[8pt] \dfrac{\rho_0\,a^2}{2\,\epsilon_0\,r}\,\hat{r} & r > a \end{cases} $$


2. **[20 puntos]** Para el campo $\vec{E}(r)$, verifique explícitamente el teorema de la divergencia: calcule $\nabla\cdot\vec{E}$ con la expresión en coordenadas cilíndricas, integre $\iiint \nabla\cdot\vec{E}\,d\tau$ sobre el cilindro sólido $0 \le r \le R$ (con $R > a$) de longitud $L$, y muestre que el resultado coincide con el flujo $\oiint \vec{E}\cdot\hat{n}\,d\sigma$ a través de la superficie cerrada que lo delimita.
3. **[20 puntos]** Use el **teorema de Stokes** para pasar la ley de Ampère en forma diferencial, $\nabla\times\vec{B} = \mu_0\vec{J}$, a su forma integral y, junto con la simetría del haz, obtenga $\vec{B}(r)$ dentro y fuera del haz. Exprese el resultado para $r > a$ en términos de la corriente total $I = \rho_0 v\,\pi a^2$ que transporta el haz.
