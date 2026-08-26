
 Parte 1: Calcular el torque ejercido sobre el impulsor respecto al origen

El torque (o momento) de una fuerza $\vec{F}$ respecto al origen se define como:
$$\vec{\tau} = \vec{r} \times \vec{F},$$
donde $\vec{r}$ es el vector de posición desde el origen hasta el punto de aplicación de la fuerza.

Primero, calculamos la fuerza de arrastre:
$$\vec{F}_{\text{arrastre}} = \vec{v}\times(\vec{\omega}\times\vec{v}).$$

Dado que $\vec{\omega}=\omega\hat{\kappa}=10\hat{\kappa}\text{ rad/s}$ y $\vec{v}=2\hat{\iota}-1\hat{\jmath}+3\hat{\kappa}\text{ m/s}$, calculamos primero $\vec{\omega}\times\vec{v}$:

$$\vec{\omega}\times\vec{v} = \omega\hat{\kappa}\times(2\hat{\iota}-1\hat{\jmath}+3\hat{\kappa}) = 10(2\hat{\kappa}\times\hat{\iota}-\hat{\kappa}\times\hat{\jmath}+3\hat{\kappa}\times\hat{\kappa}).$$

Usando las propiedades del producto vectorial:
- $\hat{\kappa}\times\hat{\iota} = \hat{\jmath}$
- $\hat{\kappa}\times\hat{\jmath} = -\hat{\iota}$
- $\hat{\kappa}\times\hat{\kappa} = \vec{0}$

Por lo tanto:
$$\vec{\omega}\times\vec{v} = 10(2\hat{\jmath} + \hat{\iota}) = 10\hat{\iota} + 20\hat{\jmath}.$$

Ahora calculamos $\vec{v}\times(\vec{\omega}\times\vec{v})$:

$$\vec{F}_{\text{arrastre}} = (2\hat{\iota}-1\hat{\jmath}+3\hat{\kappa})\times(10\hat{\iota} + 20\hat{\jmath}) = \begin{vmatrix} \hat{\iota} & \hat{\jmath} & \hat{\kappa} \\ 2 & -1 & 3 \\ 10 & 20 & 0 \end{vmatrix}.$$

Calculando el determinante:
$$\vec{F}_{\text{arrastre}} = \hat{\iota}[(-1)(0) - (3)(20)] - \hat{\jmath}[(2)(0) - (3)(10)] + \hat{\kappa}[(2)(20) - (-1)(10)]$$
$$= \hat{\iota}(0 - 60) - \hat{\jmath}(0 - 30) + \hat{\kappa}(40 + 10)$$
$$= -60\hat{\iota} + 30\hat{\jmath} + 50\hat{\kappa}\text{ N}.$$

Ahora calculamos el torque respecto al origen:
$$\vec{\tau} = \vec{r} \times \vec{F}_{\text{arrastre}} = (1\hat{\iota}+1\hat{\jmath}+2\hat{\kappa})\times(-60\hat{\iota} + 30\hat{\jmath} + 50\hat{\kappa})$$
$$= \begin{vmatrix} \hat{\iota} & \hat{\jmath} & \hat{\kappa} \\ 1 & 1 & 2 \\ -60 & 30 & 50 \end{vmatrix}.$$

Calculando el determinante:
:::{math}
\begin{align*}
\vec{\tau} &= \hat{\iota}[(1)(50) - (2)(30)] - \hat{\jmath}[(1)(50) - (2)(-60)] + \hat{\kappa}[(1)(30) - (1)(-60)]\\
&= \hat{\iota}(50 - 60) - \hat{\jmath}(50 + 120) + \hat{\kappa}(30 + 60)\\
&= -10\hat{\iota} - 170\hat{\jmath} + 90\hat{\kappa}\text{ N}
cdot \text{m}.
\end{align*}
:::

 Parte 2: Determinar la potencia mecánica requerida

La potencia mecánica $P$ requerida para mantener el impulsor girando a velocidad constante está dada por:
$$P = \vec{\tau} \cdot \vec{\omega},$$
donde $\vec{\tau}$ es el torque y $\vec{\omega}$ es la velocidad angular.

Ya calculamos $\vec{\tau} = -10\hat{\iota} - 170\hat{\jmath} + 90\hat{\kappa}\text{ N}\cdot \text{m}$ y $\vec{\omega} = 10\hat{\kappa}\text{ rad/s}$.

Calculando el producto punto:
$$P = (-10\hat{\iota} - 170\hat{\jmath} + 90\hat{\kappa}) \cdot (10\hat{\kappa}) = (-10)(0) + (-170)(0) + (90)(10) = 900\text{ W}.$$

Por lo tanto, se requieren $900\text{ W}$ de potencia mecánica para mantener el impulsor girando a velocidad constante.

 Parte 3: Calcular el volumen de fluido desplazado por el impulsor

El volumen de un paralelepípedo con vectores de aristas $\vec{a}$, $\vec{b}$ y $\vec{c}$ está dado por el producto triple escalar:
$$V = \vec{a} \cdot (\vec{b} \times \vec{c}).$$

Para $\vec{a}=0.3\hat{\iota}\text{ m}$, $\vec{b}=0.4\hat{\jmath}\text{ m}$ y $\vec{c}=0.2\hat{\kappa}\text{ m}$:

Primero calculamos $\vec{b} \times \vec{c}$:
$$\vec{b} \times \vec{c} = (0.4\hat{\jmath}) \times (0.2\hat{\kappa}) = 0.08(\hat{\jmath} \times \hat{\kappa}) = 0.08\hat{\iota}.$$

Ahora calculamos el producto triple escalar:
$$V = \vec{a} \cdot (\vec{b} \times \vec{c}) = (0.3\hat{\iota}) \cdot (0.08\hat{\iota}) = 0.3 \times 0.08 = 0.024\text{ m}^3.$$

Por lo tanto, el impulsor desplaza $0.024\text{ m}^3$ de fluido en cada revolución completa.

El volumen de fluido desplazado por segundo (caudal volumétrico) sería:
$$Q = V \times f = 0.024\text{ m}^3 \times \frac{\omega}{2\pi} = 0.024\text{ m}^3 \times \frac{10}{2\pi}\text{ rev/s} = \frac{0.24}{2\pi}\text{ m}^3/\text{s} \approx 0.0382\text{ m}^3/\text{s}.$$