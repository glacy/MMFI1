El _[modelo de Drude](https://es.wikipedia.org/wiki/Modelo_de_Drude)_ (Paul Drude, 1900) describe la respuesta eléctrica y óptica de un metal suponiendo que los electrones de conducción se comportan como un gas clásico de cargas libres  que colisionan con una frecuencia media constante. Aunque es un modelo simple, capta propiedades macroscópicas esenciales de la conductividad y la interacción de la luz con los metales.

El modelo se basa en las siguientes consideraciones 
1. Electrones libres:  
   Los electrones de conducción se tratan como partículas libres con carga $ -e $ y masa $ m_e $, moviéndose en un mar iónico fijo.
2. Colisiones aleatorias:  
   Cada electrón experimenta colisiones con tiempo de relajación $\tau$ promedio; entre colisiones, se mueven libremente bajo campos eléctricos.
3. Respuesta lineal:  
   La densidad de corriente $\vec{J}(\omega)$ es proporcional al campo eléctrico $\vec{E}(\omega)$:
   ```{math}
   \vec{J}(\omega) = \sigma(\omega)\,\vec{E}(\omega).
   ```


La conductividad dependiente de la frecuencia es
```{math}
\sigma(\omega) = \frac{\sigma_0}{1 - i\omega\tau},
\qquad
\sigma_0 = \frac{n e^2 \tau}{m_e},
```
donde $ n $ es la densidad electrónica.

Relacionando la corriente con la permitividad compleja:
```{math}
\varepsilon(\omega) = \varepsilon_\infty - \frac{\omega_p^2}{\omega(\omega + i\gamma)},
```
donde:
- $\omega_p = \sqrt{\frac{n e^2}{\varepsilon_0 m_e}}$ es la frecuencia de plasma,
- $\gamma = 1/\tau$ es la tasa de colisión,
- $\varepsilon_\infty$ es la contribución de polarización de alta frecuencia (interbandas).

La relación entre el índice de refracción complejo $n(\omega)$ y $\varepsilon(\omega)$ es  

```{math}
n(\omega) = \sqrt{\varepsilon(\omega)} = n'(\omega) + i n''(\omega),
```

donde $n'(\omega)$ describe la dispersión (parte real) y $n''(\omega)$ la absorción (parte imaginaria).



---

1. Expresa $\varepsilon(\omega)$ en términos de sus partes real e imaginaria:
     ```{math}
     \varepsilon(\omega) = \varepsilon'(\omega) + i \varepsilon''(\omega).
     ```

2. A partir de $\varepsilon(\omega)$, calcula $n'(\omega)$ y $n''(\omega)$.  
   

3. Evalúe $\Re\{\varepsilon(\omega)\}$ para

- $\omega_p = 1,4\times 10^{16}\ \mathrm{rad/s}$  
- $\gamma = 5,0\times 10^{13}\ \mathrm{rad/s}$  
- $\varepsilon_\infty = 1,0$  
- $\omega = 3,0\times 10^{15}\ \mathrm{rad/s}$   


