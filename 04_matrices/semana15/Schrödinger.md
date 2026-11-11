## Ecuación de Schrödinger dependiente del tiempo

En la mecánica cuántica, la **ecuación de Schrödinger dependiente del tiempo** describe cómo evoluciona el estado de un sistema físico a lo largo del tiempo.  
Es el análogo cuántico de las leyes de evolución dinámica de la mecánica clásica, pero en lugar de posiciones y velocidades, describe la evolución de la **función de onda** o del **vector de estado** en un **espacio de Hilbert**.

:::{math}
i\hbar \frac{d}{dt}|\psi(t)\rangle = \hat{H}|\psi(t)\rangle.
:::

Donde:

- $|\psi(t)\rangle$ es el **estado cuántico** del sistema en el tiempo $t$, representado como un vector en el espacio de Hilbert.  
- $\hat{H}$ es el **operador Hamiltoniano**, que describe la energía total del sistema (cinética + potencial).  
- $\hbar$ es la constante de Planck reducida.  
- El factor imaginario $i$ asegura la naturaleza **unitaria** de la evolución temporal, es decir, que la probabilidad total se conserva en el tiempo.

---

### Interpretación física

La ecuación de Schrödinger indica que la **derivada temporal del estado cuántico** está determinada por la acción del Hamiltoniano sobre dicho estado.  
En otras palabras, el Hamiltoniano es el **generador de la evolución temporal** del sistema.

- Si $\hat{H}$ es independiente del tiempo y **hermítico**, la evolución temporal es **unitaria**:
  $$
  \langle \psi(t) | \psi(t) \rangle = \langle \psi(0) | \psi(0) \rangle = 1,
  $$
  lo que implica que la probabilidad total se conserva.

- Cada autovalor $E_n$ del operador $\hat{H}$ representa una **energía posible** que puede medirse en el sistema.

---

### Solución formal

La ecuación de Schrödinger tiene una solución formal en términos del **operador de evolución temporal unitario**:

:::{math}
|\psi(t)\rangle = e^{-i\hat{H}t/\hbar}|\psi(0)\rangle.
:::

Donde el operador exponencial

:::{math}
\hat{U}(t) = e^{-i\hat{H}t/\hbar}
:::

se conoce como el **operador de evolución temporal**.

Este operador tiene las siguientes propiedades fundamentales:

1. **Unitariedad**:
   $$
   \hat{U}^\dagger(t) \hat{U}(t) = \mathbb{I},
   $$
   garantizando que las normas y las probabilidades se conserven en el tiempo.

2. **Composición temporal**:
   $$
   \hat{U}(t_1 + t_2) = \hat{U}(t_1)\hat{U}(t_2),
   $$
   lo cual refleja la continuidad del tiempo y la naturaleza determinista de la evolución cuántica.

3. **Generador hermítico**:
   El Hamiltoniano $\hat{H}$ actúa como **generador infinitesimal** del operador unitario de evolución:
   $$
   \hat{U}(t) = \exp\left(-\frac{i}{\hbar}\hat{H}t\right).
   $$

---

### Relación con los estados estacionarios

Si el Hamiltoniano tiene autovalores y autovectores bien definidos:

:::{math}
\hat{H}|\psi_n\rangle = E_n |\psi_n\rangle,
:::

entonces cada estado propio evoluciona con una **fase temporal** simple:

:::{math}
|\psi_n(t)\rangle = e^{-iE_n t/\hbar}|\psi_n(0)\rangle.
:::

Esto significa que los estados estacionarios **no cambian su forma en el tiempo**, solo acumulan una fase global, y las energías $E_n$ determinan la frecuencia de oscilación de esa fase.

---

### Interpretación geométrica

En el espacio de Hilbert, la evolución temporal de un estado cuántico $|\psi(t)\rangle$ puede verse como una **rotación compleja** (unitaria) del vector de estado, con el operador $\hat{H}$ definiendo el “eje” de rotación.  
El estado mantiene su longitud (norma unitaria), pero su **fase** y **orientación** pueden cambiar.

:::{figure} ./evolucion_unitaria.png
:label: fig-evolucion-unitaria
:alt: Representación de la evolución unitaria en el espacio de Hilbert
:align: center

La evolución cuántica en el espacio de Hilbert puede visualizarse como una rotación unitaria del vector de estado.  
El operador Hamiltoniano $\hat{H}$ actúa como generador de esta rotación.
:::

---

### Ejemplo: partícula libre en una dimensión

Para una partícula libre de masa $m$, el Hamiltoniano es:

:::{math}
\hat{H} = \frac{\hat{p}^2}{2m}.
:::

El operador de evolución temporal es entonces:

:::{math}
\hat{U}(t) = e^{-i\hat{p}^2 t / 2m\hbar}.
:::

Su acción sobre un estado inicial $|\psi(0)\rangle$ produce el estado en cualquier instante $t$:

:::{math}
|\psi(t)\rangle = e^{-i\hat{p}^2 t / 2m\hbar}|\psi(0)\rangle.
:::

La fase temporal $e^{-iE t/\hbar}$ asociada a cada componente de momento implica que las **ondas planas** evolucionan libremente con una frecuencia proporcional a su energía cinética.
