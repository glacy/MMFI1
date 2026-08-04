:::{note} Aplicación en Mecánica Cuántica: evolución temporal

La descomposición espectral tiene aplicaciones directas en la mecánica
cuántica, por ejemplo, en la resolución de la **ecuación de
Schrödinger** para un sistema cuántico. Si el hamiltoniano $\mathcal{H}$
de un sistema tiene un espectro discreto de autovalores $E_i$ y
autovectores $|\psi_i\rangle$, la solución de la ecuación de Schrödinger
dependiente del tiempo se puede escribir en términos de la
descomposición espectral:

$$|\psi(t)\rangle = \sum_i c_i e^{-i E_i t / \hbar} |\psi_i\rangle$$

Aquí, los $c_i$ son los coeficientes de expansión del estado inicial
$|\psi(0)\rangle$ en la base de autovectores del hamiltoniano. Este
enfoque permite resolver fácilmente la evolución temporal de estados
cuánticos.
:::




### Ejercicio: Autovalores del Hamiltoniano en la ecuación de Schrödinger



La ecuación de Schrödinger independiente del tiempo para una partícula en una dimensión está dada por:

:::{math}
\hat{H} |\psi\rangle = E |\psi\rangle,
:::

donde $\hat{H}$ es el operador Hamiltoniano, $E$ son los **autovalores de energía**, y $|\psi\rangle$ los **autovectores** o **estados estacionarios** del sistema.

Considere el siguiente **Hamiltoniano discreto**, representado en la base $\{|x_1\rangle, |x_2\rangle\}$:

:::{math}
\hat{H} =
\begin{pmatrix}
0 & -t\\
-t & 0
\end{pmatrix},
:::

donde $t>0$ representa la energía de acoplamiento entre dos sitios (modelo de partícula en doble pozo o enlace entre dos átomos).

1. **Verifique** que $\hat{H}$ es un operador hermítico.  
2. **Determine** los autovalores y autovectores del sistema.  
3. **Interprete físicamente** los estados propios en el contexto de la ecuación de Schrödinger.  
4. **Calcule** la evolución temporal del estado inicial
   :::{math}
   |\psi(0)\rangle = |x_1\rangle = 
   \begin{pmatrix}
   1\\0
   \end{pmatrix}.
   :::

---

**Solución:**

1. **Hermiticidad**

El operador $\hat{H}$ es hermítico si cumple $\hat{H}^\dagger = \hat{H}$.

:::{math}
\hat{H}^\dagger =
\begin{pmatrix}
0 & -t\\
-t & 0
\end{pmatrix}^\dagger =
\begin{pmatrix}
0 & -t\\
-t & 0
\end{pmatrix} = \hat{H}.
:::

Por tanto, $\hat{H}$ es **hermítico** y sus autovalores serán reales.

---

2. **Autovalores y autovectores**

Resolvemos la ecuación característica:

:::{math}
\det(\hat{H} - E I) = 
\begin{vmatrix}
-E & -t\\
-t & -E
\end{vmatrix} = E^2 - t^2 = 0.
:::

De donde:

:::{math}
E_1 = t, \quad E_2 = -t.
:::

---

Para $E_1 = t$:

:::{math}
(\hat{H} - t I)|\psi_1\rangle = 0
\Rightarrow
\begin{pmatrix}
-t & -t\\
-t & -t
\end{pmatrix}
\begin{pmatrix}
a\\b
\end{pmatrix} = 0
\Rightarrow a = -b.
:::

:::{math}
|\psi_1\rangle = \frac{1}{\sqrt{2}}
\begin{pmatrix}
1\\
-1
\end{pmatrix}.
:::

---

Para $E_2 = -t$:

:::{math}
(\hat{H} + t I)|\psi_2\rangle = 0
\Rightarrow
\begin{pmatrix}
t & -t\\
-t & t
\end{pmatrix}
\begin{pmatrix}
a\\b
\end{pmatrix} = 0
\Rightarrow a = b.
:::

:::{math}
|\psi_2\rangle = \frac{1}{\sqrt{2}}
\begin{pmatrix}
1\\
1
\end{pmatrix}.
:::

---

3. **Interpretación física**

- Los autovalores $E_1 = t$ y $E_2 = -t$ representan los **niveles de energía del sistema**.  
- Los estados $|\psi_1\rangle$ y $|\psi_2\rangle$ corresponden a combinaciones **antisimétrica** y **simétrica** de las posiciones $|x_1\rangle$ y $|x_2\rangle$.  
- Este tipo de degeneración parcial ocurre en sistemas con **simetría de reflexión**, como un **pozo doble** o **moléculas diatómicas** (por ejemplo, $H_2^+$), donde el electrón puede estar localizado o deslocalizado entre dos sitios.

---

4. **Evolución temporal del estado inicial**

La ecuación de Schrödinger dependiente del tiempo es:

:::{math}
i\hbar \frac{d}{dt}|\psi(t)\rangle = \hat{H}|\psi(t)\rangle.
:::

Su solución formal es:

:::{math}
|\psi(t)\rangle = e^{-i\hat{H}t/\hbar}|\psi(0)\rangle.
:::

Dado que $\hat{H}$ tiene autovalores reales $E_1, E_2$, podemos expandir el estado inicial en la base de autovectores:

:::{math}
|\psi(0)\rangle = \frac{1}{\sqrt{2}}(|\psi_1\rangle + |\psi_2\rangle).
:::

Entonces, la evolución temporal es:

:::{math}
|\psi(t)\rangle = 
\frac{1}{\sqrt{2}}
\left(
e^{-iE_1 t/\hbar}|\psi_1\rangle + 
e^{-iE_2 t/\hbar}|\psi_2\rangle
\right)
=
\frac{1}{\sqrt{2}}
\left(
e^{-i t t/\hbar}|\psi_1\rangle +
e^{+i t t/\hbar}|\psi_2\rangle
\right).
:::

---

5. **Interpretación final**

El estado oscila entre $|x_1\rangle$ y $|x_2\rangle$ con **frecuencia de Rabi**:

:::{math}
\omega_R = \frac{2t}{\hbar}.
:::

Esto significa que la partícula “túnela” periódicamente de un pozo al otro, lo que ilustra cómo los **autovalores reales del Hamiltoniano** determinan los **niveles de energía** y la **evolución temporal del sistema**.

 
Los autovalores del Hamiltoniano determinan la frecuencia de oscilación entre ambos estados.

