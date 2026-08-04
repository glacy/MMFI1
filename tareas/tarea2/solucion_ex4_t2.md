## Solución: transmisión a través de una película con índice complejo — uso de funciones reales

Recordatorio:  
Dentro de la película de espesor $d$ el número de onda es complejo
$$
k(\omega)=\frac{\omega}{c}\,n(\omega)=k' + i k'',
$$
definiendo $\phi = k' d$ y $\alpha = k'' d$. La amplitud compleja transmitida (factor de propagación) es
$$
t(\omega)=e^{i k d}=e^{i k' d}\,e^{-k'' d}=e^{-\alpha}\,e^{i\phi}.
$$

---

### 1) Separación en términos reales

Usando la identidad de Euler para la parte de fase:
$$
e^{i\phi}=\cos\phi + i\sin\phi,
$$
obtenemos
$$
\boxed{\,t(\omega)=e^{-\alpha}\bigl(\cos\phi + i\sin\phi\bigr)\,}
$$

Por tanto la **parte real** y **parte imaginaria** de $t$ son
$$
\Re[t]=e^{-\alpha}\cos\phi,\qquad \Im[t]=e^{-\alpha}\sin\phi.
$$

---

### 2) Módulo al cuadrado y conexión con funciones hiperbólicas

El valor transmitido de intensidad (transmitancia por el factor de propagación, sin contar reflexiones en interfaces) es
$$
|t|^2 = t\,t^* = e^{-\alpha}e^{-\alpha}(\cos^2\phi+\sin^2\phi) = e^{-2\alpha}.
$$

Por lo tanto
$$
\boxed{\,|t|^2 = e^{-2\alpha}\,}
$$

Podemos expresar $e^{-\alpha}$ usando hiperbólicas. Recordando que
$$
\cosh\alpha = \frac{e^\alpha + e^{-\alpha}}{2},\qquad
\sinh\alpha = \frac{e^\alpha - e^{-\alpha}}{2},
$$
tenemos
$$
\cosh\alpha + \sinh\alpha = e^\alpha \quad\Longrightarrow\quad
e^{-\alpha} = \frac{1}{\cosh\alpha + \sinh\alpha}.
$$

Así,
$$
\boxed{\,e^{-\alpha} = \frac{1}{\cosh\alpha + \sinh\alpha}\,,\qquad
|t|^2 = \frac{1}{(\cosh\alpha + \sinh\alpha)^2}\,.}
$$

(Esta forma hiperbólica es útil para manipular identidades y comparar órdenes de magnitud.)

---

### 3) Funciones inversas: obtener $\alpha$ a partir de la transmitancia medida

Si experimentalmente se mide $ |t|^2 = T $ (por ejemplo, midiendo la intensidad tras la película y normalizando), entonces

$$
T = e^{-2\alpha} \quad\Longrightarrow\quad
\boxed{\,\alpha = -\frac{1}{2}\ln T\,.}
$$

Esto usa la función logaritmo, inversa de la exponencial, y es la forma directa de recuperar la atenuación integrada $\alpha = k'' d$ a partir de una medida de transmisión (suponiendo ausencia de pérdidas por reflexión o que éstas se conocen y han sido corregidas).

---

### 4) Ángulo de Brewster y el efecto de $n''$ (comentario ligado a funciones trigonométricas)

- En el caso **sin absorción** ($n''=0$), para incidencia oblicua y polarización TM (p), la condición de Brewster es
  $$
  \tan\theta_B = n' .
  $$
  Entonces $n'=\tan\theta_B$ se obtiene mediante la función tangente (inversa: $\theta_B=\arctan n'$).

- Si existe **absorción** ($n''\neq 0$), el índice es complejo $n=n'+i n''$. La condición $r_p=0$ conduce algebraicamente a una ecuación con $n$ complejo que **no** admite en general una solución real $\theta_B$. Es decir, **no existe un ángulo de Brewster verdadero (con reflectancia exactamente cero)** cuando hay pérdidas; en la práctica aparece un **ángulo de mínima reflectancia** que se obtiene minimizando $R(\theta)$ —esto requiere resolver una ecuación transcendente que involucra $\tan\theta$ y la parte imaginaria de $n$.  
  En resumen: la relación trigonométrica $\tan\theta_B=n'$ es válida sólo para $n''=0$; para $n''>0$ hay que usar funciones reales (y complejas) y métodos numéricos para hallar la mínima reflectancia.

---

### 5) Comportamiento asintótico de $\cosh$ y $\sinh$ para $\alpha\gg1$

Para $\alpha\gg1$,
$$
\cosh\alpha \simeq \frac{e^\alpha}{2},\qquad \sinh\alpha \simeq \frac{e^\alpha}{2},
$$
por lo que $\cosh\alpha+\sinh\alpha\simeq e^\alpha$ y entonces $e^{-\alpha}$ es extremadamente pequeño. Físicamente:
- Si $\alpha\gg1$ (producto $k''d$ grande), la transmisión es insignificante: $ |t|^2 \simeq e^{-2\alpha} \approx 0$.
- En términos hiperbólicos: $\cosh\alpha$ y $\sinh\alpha$ crecen exponencialmente y dominan cualquier término aditivo, reforzando la interpretación de fuerte atenuación.

---

### 6) Interpretación de $\phi(\omega)=\pi/2$ — significado físico (interferencia)

Si $\phi = k' d = \pi/2$ (es decir, la película tiene espesor óptico de un cuarto de longitud de onda en el medio: $d = \lambda/(4 n')$ para $n''\ll n'$), entonces
$$
e^{i\phi}=e^{i\pi/2}=i,
$$
y
$$
t = e^{-\alpha}\,i = i\,e^{-\alpha}.
$$

Implicaciones prácticas:
- Un **espesor cuartos de onda** genera un desplazamiento de fase de $\pi/2$ entre la entrada y la salida, que es la condición básica para **diseñar recubrimientos antirreflectantes** y estructuras de interferencia (cuando se combinan capas con distintos índices y espesores, las fases sumadas pueden producir cancelación de la onda reflejada).
- Si además $\alpha$ es pequeño (poca absorción), un cuarto de onda puede producir **interferencia destructiva** de las ondas reflejadas y así **maximizar la transmisión**. Si $\alpha$ es grande, la atenuación matará la interferencia y la condición de cuarto de onda pierde eficacia.

---

### 7) Resumen de fórmulas útiles (para la corrección automática o guía de corrección)
- Separación:
  $$
  t = e^{-\alpha}(\cos\phi + i\sin\phi),\quad
  \Re[t]=e^{-\alpha}\cos\phi,\quad \Im[t]=e^{-\alpha}\sin\phi.
  $$
- Intensidad:
  $$
  |t|^2 = e^{-2\alpha},\quad \alpha = -\tfrac12\ln|t|^2.
  $$
- Hiperbólicas:
  $$
  e^{-\alpha}=\frac{1}{\cosh\alpha+\sinh\alpha}.
  $$
- Brewster (sin pérdidas):
  $$
  \tan\theta_B = n',\quad \theta_B=\arctan n'.
  $$

---

 
