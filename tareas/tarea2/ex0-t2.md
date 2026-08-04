Una onda electromagnética de amplitud $E_0$ y frecuencia $\omega$ se propaga en $z$, puede describirse mediante
$$
   E(z,t) = E_0 e^{i(kz - \omega t)}, \quad k = \frac{\omega n}{c}
$$ 

con índice de refracción complejo $$n\omega) = n(\omega) + i \kappa(\omega),$$

donde
- $n(\omega)$ es el índice de refracción ordinario; determina la _velocidad de fase_ $ v_p $ y la longitud de onda $\lambda$ en el medio:
  $$
  v_p = \frac{c}{n(\omega)}, 
  \qquad
  \lambda = \frac{2\pi c}{\omega n(\omega)}.
  $$  

- $ \kappa(\omega) $ se llama _coeficiente de extinción_ o _índice de absorción_. Describe la **atenuación** exponencial de la amplitud a medida que la onda se propaga:
  $$
  E(z,t) = E_0\,e^{-k_0 \kappa(\omega) z}\,e^{i(k_0 n(\omega) z - \omega t)},
  \qquad k_0 = \frac{\omega}{c}.
  $$
  
  Ambos dependen de $\omega$ si el medio es **dispersivo**, es decir, si su respuesta cambia con la frecuencia.

  La **intensidad** decae como
  $$
  I(z) = I_0\,e^{-2k_0 \kappa(\omega) z}.
  $$
  
  <!-- Así, $\kappa(\omega) > 0$ describe **pérdidas** (absorción) y $\kappa(\omega)<0$ describe **ganancia** en medios activos. -->

---


1. Escriba explícitamente la forma del campo eléctrico, separando su parte real e imaginaria para mostrar el término de atenuación y el término oscilatorio.  

---

Dado que  
$$
n^2 = \varepsilon' + i\,\varepsilon'',
$$  
con $n = n'+i n''$, derive expresiones para $\varepsilon'$ y $\varepsilon''$ en términos de $n'$ y $n''$.  


---

Para un metal con  
$$
\varepsilon\omega)=\varepsilon' + i\,\varepsilon'' = \varepsilon' + i\,\frac{\sigma}{\varepsilon_0 \omega},
$$
muestre que el índice de refracción se puede escribir como  
$$
n\omega)=\sqrt{\varepsilon\omega)}.
$$  

- Calcule $n(\omega)$ y $\kappa(\omega)$ en el límite de buen conductor $\sigma \gg \omega \varepsilon_0$, simplificando las expresiones al máximo.

---

