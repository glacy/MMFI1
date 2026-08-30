---
title: Ejercicio 9
keywords:
  - lineas-transmision
  - funciones-hiperbolicas-complejas
  - atenuacion
tags:
  - lineas-transmision
  - funciones-hiperbolicas-complejas
  - aplicacion
objetivos: []
---

Aplicación: Líneas de Transmisión

En ingeniería eléctrica, la distribución de voltaje a lo largo de una línea de transmisión de longitud $z$ (con respecto a la entrada) cuando se cumple ciertas condiciones de carga (como circuito abierto o corto circuito en extremo opuesto ajustado al origen de coordenadas) puede describirse mediante 
$$V(z) = V_0 \cosh(\gamma z)$$

donde $\gamma$ es la constante de propagación compleja $\gamma = \alpha + i\beta$. Esta cantidad describe la atenuación y el cambio de fase de la señal.

Considere una línea de transmisión de telecomunicaciones con las siguientes características:
*   Constante de propagación compleja: $\gamma = 0,02 + i0,1$ $\text{Np/m}$.
*   Voltaje en la entrada de la línea ($z=0$): $V_0 = 10\text{ V}$ .

1.  Determine la expresión para el voltaje complejo $V(z)$ a una distancia $z$ usando la función hiperbólica compleja.
2.  Calcule el voltaje complejo $V$ y su magnitud $|V|$ a una distancia de $z = 50$ m.