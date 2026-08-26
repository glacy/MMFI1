## Solución del Ejercicio 3

### Parte 1: Calcular el gradiente de temperatura $\nabla T$

La temperatura está dada por:
$$T(\rho,z)=T_{\text{base}} + \frac{q_{\text{gen}}}{4k}(R^2-\rho^2),$$

donde $T_{\text{base}}=300\text{ K}$, $q_{\text{gen}}=5\times10^7\text{ W/m}^3$, $R=0,03\text{ m}$ y $k=200\text{ W/(m·K)}$.

En coordenadas cilíndricas, el gradiente se expresa como:
$$\nabla T = \frac{\partial T}{\partial \rho}\hat{e}_\rho + \frac{1}{\rho}\frac{\partial T}{\partial \phi}\hat{e}_\phi + \frac{\partial T}{\partial z}\hat{e}_z.$$

Dado que $T$ no depende de $\phi$ ni de $z$, $\frac{\partial T}{\partial \phi}=0$ y $\frac{\partial T}{\partial z}=0$.

Calculamos la derivada parcial respecto a $\rho$:

$$\frac{\partial T}{\partial \rho} = \frac{q_{\text{gen}}}{4k} \cdot \frac{\partial}{\partial \rho}(R^2-\rho^2) = \frac{q_{\text{gen}}}{4k} \cdot (-2\rho) = -\frac{q_{\text{gen}} \rho}{2k}.$$

Por lo tanto, el gradiente de temperatura es:
$$\nabla T = -\frac{q_{\text{gen}} \rho}{2k}\hat{e}_\rho.$$

Sustituyendo los valores numéricos:
$$\nabla T = -\frac{5\times10^7 \times \rho}{2 \times 200}\hat{e}_\rho = -1,25\times10^5 \rho\,\hat{e}_\rho\text{ K/m}.$$

**Verificación de la dirección del gradiente:**

El gradiente apunta en la dirección opuesta al vector unitario $\hat{e}_\rho$ (debido al signo negativo). Esto significa que el gradiente apunta hacia el interior del disipador (hacia $\rho=0$), lo que indica que la temperatura disminuye desde el centro hacia la superficie lateral.

Dado que el flujo de calor está dado por $\vec{q} = -k\nabla T$, el flujo de calor apuntará en la dirección opuesta al gradiente:
$$\vec{q} = -k\nabla T = \frac{q_{\text{gen}} \rho}{2}\hat{e}_\rho.$$

Por lo tanto, el flujo de calor apunta desde el interior del disipador hacia la superficie lateral, lo cual es físicamente correcto para un sistema que genera calor internamente.

### Parte 2: Determinar el flujo de calor $\vec{q}$ en el punto $P$

En el punto $P$ con $\rho=R/2=0,015\text{ m}$, $\phi=\pi/4$, $z=H/2=0,05\text{ m}$:

$$\vec{q}|_P = \frac{q_{\text{gen}} \rho}{2}\hat{e}_\rho = \frac{5\times10^7 \times 0,015}{2}\hat{e}_\rho = 3,75\times10^5\hat{e}_\rho\text{ W/m}^2.$$

La magnitud del flujo de calor es:
$$|\vec{q}|_P = 3,75\times10^5\text{ W/m}^2.$$

### Parte 3: Calcular la tasa total de flujo de calor que sale del disipador

Usamos el teorema de la divergencia para calcular el flujo de calor total que sale del disipador:
$$\Phi_{\text{total}} = \oiint_S \vec{q} \cdot d\vec{S} = \iiint_V \nabla \cdot \vec{q} \, dV,$
donde $S$ es la superficie del disipador y $V$ es su volumen.

Primero calculamos la divergencia del flujo de calor:
$$\nabla \cdot \vec{q} = \nabla \cdot \left(\frac{q_{\text{gen}} \rho}{2}\hat{e}_\rho\right).$$

En coordenadas cilíndricas:
$$\nabla \cdot \vec{q} = \frac{1}{\rho}\frac{\partial}{\partial \rho}(\rho q_\rho) + \frac{1}{\rho}\frac{\partial q_\phi}{\partial \phi} + \frac{\partial q_z}{\partial z}.$$

Dado que $q_\rho = \frac{q_{\text{gen}} \rho}{2}$, $q_\phi = 0$ y $q_z = 0$:

$$\nabla \cdot \vec{q} = \frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\rho \cdot \frac{q_{\text{gen}} \rho}{2}\right) + 0 + 0$$
$$= \frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\frac{q_{\text{gen}} \rho^2}{2}\right)$$
$$= \frac{1}{\rho}\left(q_{\text{gen}} \rho\right)$$
$$= q_{\text{gen}}.$$

El flujo de calor total es:
$$\Phi_{\text{total}} = \iiint_V \nabla \cdot \vec{q} \, dV = \iiint_V q_{\text{gen}} \, dV = q_{\text{gen}} V.$$

El volumen del disipador es:
$$V = \pi R^2 H = \pi (0,03)^2 (0,1) = 2,83\times10^{-4}\text{ m}^3.$$

Por lo tanto:
$$\Phi_{\text{total}} = 5\times10^7 \times 2,83\times10^{-4} = 1,42\times10^4\text{ W}.$`

### Parte 4: Verificar el balance energético

El calor generado internamente es:
$$Q_{\text{gen}} = q_{\text{gen}} V = 5\times10^7 \times 2,83\times10^{-4} = 1,42\times10^4\text{ W}.$$

Por lo tanto, el flujo total de calor que sale del disipador es igual al calor generado internamente, confirmando el balance energético en estado estacionario.

**Verificación adicional:**

Podemos verificar que la distribución de temperatura satisface la ecuación de Poisson:

$$\nabla\cdot(k\nabla T) + q_{\text{gen}} = k\nabla^2 T + q_{\text{gen}} = 0.$$

El laplaciano de $T$ en coordenadas cilíndricas es:
$$\nabla^2 T = \frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) + \frac{1}{\rho^2}\frac{\partial^2 T}{\partial \phi^2} + \frac{\partial^2 T}{\partial z^2}.$$

Dado que $T$ no depende de $\phi$ ni de $z$, $\frac{\partial^2 T}{\partial \phi^2}=0$ y $\frac{\partial^2 T}{\partial z^2}=0$.

Ya calculamos $\frac{\partial T}{\partial \rho} = -\frac{q_{\text{gen}} \rho}{2k}$.

$$\rho\frac{\partial T}{\partial \rho} = -\frac{q_{\text{gen}} \rho^2}{2k}.$$

$$\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) = -\frac{q_{\text{gen}} \rho}{k}.$$

$$\frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) = -\frac{q_{\text{gen}}}{k}.$$

Por lo tanto:
$$\nabla^2 T = -\frac{q_{\text{gen}}}{k}.$$

Sustituyendo en la ecuación de Poisson:
$$k\nabla^2 T + q_{\text{gen}} = k\left(-\frac{q_{\text{gen}}}{k}\right) + q_{\text{gen}} = -q_{\text{gen}} + q_{\text{gen}} = 0.$$

Por lo tanto, la distribución de temperatura satisface la ecuación de Poisson, confirmando que es una solución física realista para el problema de generación uniforme de calor en un cilindro.