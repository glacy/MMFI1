## Ejercicio: Reflexión y transmisión en medios con índice de refracción complejo

Sea una onda electromagnética de frecuencia $\omega$ incidente **normalmente** sobre una película delgada de espesor $d$ y **índice de refracción complejo**  
$$
n(\omega) = n'(\omega) + i\,n''(\omega).
$$

Dentro del medio, la onda se propaga con número de onda complejo
$$
k(\omega) = \frac{\omega}{c}\,n(\omega) = k'(\omega)+ i k''(\omega),
$$
donde:
- $k'(\omega) = \frac{\omega n'(\omega)}{c}$ controla la **oscilación** (fase),
- $k''(\omega) = \frac{\omega n''(\omega)}{c}$ controla la **atenuación** (absorción).

La amplitud transmitida después de atravesar la película es

$$
t(\omega) = e^{i k(\omega) d} = e^{i k' d}\,e^{-k'' d}.
$$

Definimos:
- **Factor de fase**: $\phi(\omega) = k'(\omega) d$,
- **Factor de atenuación**: $\alpha(\omega) = k''(\omega) d$.

---

### Actividades

1. **Separación en términos reales**  
   Escribe $t(\omega)$ como
   $$
   t(\omega)=e^{-\alpha(\omega)}\bigl(\cos\phi(\omega)+ i\,\sin\phi(\omega)\bigr).
   $$
   - Identifica claramente la **parte real** y la **parte imaginaria** de $t(\omega)$.  

2. **Relación con funciones hiperbólicas**  
   Considera ahora $|t(\omega)|^2 = t(\omega)t^*(\omega)$.  
   Muestra que  
   $$
   |t(\omega)|^2 = e^{-2\alpha(\omega)}
   $$
   y reescribe $e^{-\alpha(\omega)}$ usando funciones hiperbólicas:
   $$
   e^{-\alpha} = \frac{1}{\cosh(\alpha)+\sinh(\alpha)}.
   $$

3. **Uso de funciones inversas**  
   Si se mide experimentalmente $|t(\omega)|^2 = T$, expresa $\alpha(\omega)$ en términos de $T$ usando la función logaritmo (inversa de la exponencial)  
   $$
   \alpha(\omega) = -\frac{1}{2}\ln T.
   $$

4. **Ángulo de Brewster (extra)**  
   Para incidencia oblicua en un medio sin absorción ($n''=0$), el **ángulo de Brewster** cumple
   $$
   \tan \theta_B = n'(\omega).
   $$
   Si se mide $\theta_B$, muestra cómo obtener $n'(\omega)=\tan\theta_B$ y verifica que para $\theta_B\to 45^\circ$ se cumple $n'(\omega)=1$.

---

