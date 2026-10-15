---
tags: [analisis-vectorial, teorema-divergencia, teorema-stokes, integrales-superficie, integrales-linea, ley-gauss, coordenadas-esfericas]
---

Una nebulosa esférica de radio $a$, centrada en el origen, contiene una distribución de carga cuya densidad volumétrica crece linealmente con la distancia al centro y es nula en el exterior:

$$ \rho = \begin{cases} \rho_0\,\dfrac{r}{a} & r < a \\[6pt] 0 & r > a \end{cases} $$

Por la simetría esférica del problema, el campo eléctrico generado tiene la forma

$$ \vec{E} = E(r)\,\hat{r} $$

1. **[10 puntos]** Use el **teorema de la divergencia** junto con la ley de Gauss en forma diferencial, $\nabla\cdot\vec{E} = \rho/\epsilon_0$, aplicada a una superficie gaussiana esférica de radio $r$ centrada en el origen, para demostrar que 

$$ \vec{E}(r) = \begin{cases} \dfrac{\rho_0\,r^2}{4\,\epsilon_0\,a}\,\hat{r} & r < a \\[8pt] \dfrac{\rho_0\,a^3}{4\,\epsilon_0\,r^2}\,\hat{r} & r > a \end{cases} $$

Exprese el resultado para $r > a$ en términos de la carga total $Q = \pi a^3\,\rho_0$ de la nebulosa.

2. **[20 puntos]** Para el campo $\vec{E}(r)$, verifique explícitamente el teorema de la divergencia: calcule $\nabla\cdot\vec{E}$ con la expresión en coordenadas esféricas, integre $\iiint \nabla\cdot\vec{E}\,d\tau$ sobre la bola sólida $0 \le r \le R$ (con $R > a$), y muestre que el resultado coincide con el flujo $\oiint \vec{E}\cdot\hat{n}\,d\sigma$ a través de la superficie esférica que la delimita.

3. **[20 puntos]** Use el **teorema de Stokes** junto con el rotacional en coordenadas esféricas para mostrar que la circulación de $\vec{E}$ sobre cualquier curva cerrada es nula, es decir, que $\vec{E}$ es un campo conservativo. 
