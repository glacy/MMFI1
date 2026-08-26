## Solución del Ejercicio 3

### Parte 1: Calcular el gradiente de temperatura $\nabla T$

La temperatura está dada por:
$$T(\rho,z)=T_0 + \Delta T\left(1-\frac{\rho^2}{R^2}\right)\cos\left(\frac{\pi z}{H}\right),$$

donde $T_0=300\text{ K}$, $\Delta T=50\text{ K}$, $R=0.03\text{ m}$ y $H=0.1\text{ m}$.

En coordenadas cilíndricas, el gradiente se expresa como:
$$\nabla T = \frac{\partial T}{\partial \rho}\hat{e}_\rho + \frac{1}{\rho}\frac{\partial T}{\partial \phi}\hat{e}_\phi + \frac{\partial T}{\partial z}\hat{e}_z.$$

Dado que $T$ no depende de $\phi$, $\frac{\partial T}{\partial \phi}=0$.

Calculamos las derivadas parciales:

$$\frac{\partial T}{\partial \rho} = \Delta T \cdot \frac{\partial}{\partial \rho}\left(1-\frac{\rho^2}{R^2}\right)\cos\left(\frac{\pi z}{H}\right)$$
$$= \Delta T \cdot \left(-\frac{2\rho}{R^2}\right)\cos\left(\frac{\pi z}{H}\right)$$
$$= -\frac{2\Delta T \rho}{R^2}\cos\left(\frac{\pi z}{H}\right).$$

$$\frac{\partial T}{\partial z} = \Delta T\left(1-\frac{\rho^2}{R^2}\right)\frac{\partial}{\partial z}\cos\left(\frac{\pi z}{H}\right)$$
$$= \Delta T\left(1-\frac{\rho^2}{R^2}\right)\left(-\frac{\pi}{H}\sin\left(\frac{\pi z}{H}\right)\right)$$
$$= -\frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\sin\left(\frac{\pi z}{H}\right).$$

Por lo tanto, el gradiente de temperatura es:
$$\nabla T = -\frac{2\Delta T \rho}{R^2}\cos\left(\frac{\pi z}{H}\right)\hat{e}_\rho - \frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\sin\left(\frac{\pi z}{H}\right)\hat{e}_z.$$

Sustituyendo los valores numéricos:
$$\nabla T = -\frac{2 \times 50 \times \rho}{(0.03)^2}\cos\left(\frac{\pi z}{0.1}\right)\hat{e}_\rho - \frac{\pi \times 50}{0.1}\left(1-\frac{\rho^2}{(0.03)^2}\right)\sin\left(\frac{\pi z}{0.1}\right)\hat{e}_z$$
$$= -\frac{100\rho}{0.0009}\cos(10\pi z)\hat{e}_\rho - 500\pi\left(1-\frac{\rho^2}{0.0009}\right)\sin(10\pi z)\hat{e}_z$$
$$= -\frac{100000\rho}{9}\cos(10\pi z)\hat{e}_\rho - 500\pi\left(1-\frac{10000\rho^2}{9}\right)\sin(10\pi z)\hat{e}_z$$
$$\approx -11111.1\rho\cos(10\pi z)\hat{e}_\rho - 1570.8\left(1-1111.1\rho^2\right)\sin(10\pi z)\hat{e}_z.$$

### Parte 2: Determinar el flujo de calor $\vec{q}$ en el punto $P$

El flujo de calor está dado por la ley de Fourier:
$$\vec{q} = -k\nabla T,$$
donde $k=200\text{ W/(m·K)}$.

En el punto $P$ con $\rho=R/2=0.015\text{ m}$, $\phi=\pi/4$, $z=H/2=0.05\text{ m}$:

Primero evaluamos $\cos(10\pi z)$ y $\sin(10\pi z)$:
$$\cos(10\pi \times 0.05) = \cos(0.5\pi) = 0,$$
$$\sin(10\pi \times 0.05) = \sin(0.5\pi) = 1.$$

Por lo tanto, el gradiente en el punto $P$ es:
$$\nabla T|_P = -11111.1 \times 0.015 \times 0 \hat{e}_\rho - 1570.8\left(1-1111.1 \times (0.015)^2\right) \times 1 \hat{e}_z$$
$$= 0 \hat{e}_\rho - 1570.8\left(1-1111.1 \times 0.000225\right)\hat{e}_z$$
$$= -1570.8\left(1-0.25\right)\hat{e}_z$$
$$= -1570.8 \times 0.75 \hat{e}_z$$
$$= -1178.1\hat{e}_z\text{ K/m}.$$

El flujo de calor es:
$$\vec{q}|_P = -k\nabla T|_P = -200 \times (-1178.1\hat{e}_z) = 235620\hat{e}_z\text{ W/m}^2$$
$$\approx 2.36\times10^5\hat{e}_z\text{ W/m}^2.$$

### Parte 3: Calcular la tasa total de flujo de calor que sale del disipador

Usamos el teorema de la divergencia para calcular el flujo de calor total que sale del disipador:
$$\Phi_{\text{total}} = \oiint_S \vec{q} \cdot d\vec{S} = \iiint_V \nabla \cdot \vec{q} \, dV,$
donde $S$ es la superficie del disipador y $V$ es su volumen.

Primero calculamos la divergencia del flujo de calor:
$$\nabla \cdot \vec{q} = \nabla \cdot (-k\nabla T) = -k\nabla \cdot \nabla T = -k\nabla^2 T.$$

El laplaciano de $T$ en coordenadas cilíndricas es:
$$\nabla^2 T = \frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) + \frac{1}{\rho^2}\frac{\partial^2 T}{\partial \phi^2} + \frac{\partial^2 T}{\partial z^2}.$$

Dado que $T$ no depende de $\phi$, $\frac{\partial^2 T}{\partial \phi^2}=0$.

Ya calculamos $\frac{\partial T}{\partial \rho} = -\frac{2\Delta T \rho}{R^2}\cos\left(\frac{\pi z}{H}\right)$.

$$\rho\frac{\partial T}{\partial \rho} = -\frac{2\Delta T \rho^2}{R^2}\cos\left(\frac{\pi z}{H}\right).$$

$$\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) = -\frac{4\Delta T \rho}{R^2}\cos\left(\frac{\pi z}{H}\right).$$

$$\frac{1}{\rho}\frac{\partial}{\partial \rho}\left(\rho\frac{\partial T}{\partial \rho}\right) = -\frac{4\Delta T}{R^2}\cos\left(\frac{\pi z}{H}\right).$$

Ahora calculamos $\frac{\partial^2 T}{\partial z^2}$:
$$\frac{\partial T}{\partial z} = -\frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\sin\left(\frac{\pi z}{H}\right).$$

$$\frac{\partial^2 T}{\partial z^2} = -\frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\frac{\pi}{H}\cos\left(\frac{\pi z}{H}\right)$$
$$= -\frac{\pi^2\Delta T}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\cos\left(\frac{\pi z}{H}\right).$$

Por lo tanto:
$$\nabla^2 T = -\frac{4\Delta T}{R^2}\cos\left(\frac{\pi z}{H}\right) - \frac{\pi^2\Delta T}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\cos\left(\frac{\pi z}{H}\right)$$
$$= -\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right].$$

La divergencia del flujo de calor es:
$$\nabla \cdot \vec{q} = -k\nabla^2 T = k\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right].$$

El flujo de calor total es:
$$\Phi_{\text{total}} = \iiint_V \nabla \cdot \vec{q} \, dV = \int_0^{2\pi}\int_0^R\int_0^H k\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right]\rho\,dz\,d\rho\,d\phi.$$

Integrando con respecto a $z$:
$$\int_0^H \cos\left(\frac{\pi z}{H}\right)dz = \frac{H}{\pi}\sin\left(\frac{\pi z}{H}\right)\Big|_0^H = \frac{H}{\pi}(\sin\pi - \sin0) = 0.$$

Esto significa que el flujo neto de calor que sale del disipador es cero, lo cual es consistente con una condición de estado estacionario donde el calor generado internamente es igual al calor disipado a través de la superficie.

### Parte 4: Calcular la tasa de generación de calor interna $Q_{\text{gen}}$

La ecuación de Poisson del calor en estado estacionario es:
$$\nabla\cdot(k\nabla T) + q_{\text{gen}} = 0,$$
donde $q_{\text{gen}}$ es la tasa de generación de calor por unidad de volumen.

Dado que $k$ es constante:
$$k\nabla^2 T + q_{\text{gen}} = 0.$$

Por lo tanto:
$$q_{\text{gen}} = -k\nabla^2 T.$$

Usando el laplaciano calculado anteriormente:
$$q_{\text{gen}} = -k\left\{-\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right]\right\}$$
$$= k\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right].$$

La tasa total de generación de calor es:
$$Q_{\text{gen}} = \iiint_V q_{\text{gen}} \, dV = \int_0^{2\pi}\int_0^R\int_0^H k\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right]\rho\,dz\,d\rho\,d\phi.$$

Como vimos en la parte anterior, la integral con respecto a $z$ es cero, lo cual sugiere que hay un problema con la formulación. En un estado estacionario real, debe haber una tasa de generación de calor neta que sea igual al flujo de calor que sale del disipador.

Reconsideremos el problema: el laplaciano calculado indica que la distribución de temperatura dada no es una solución de la ecuación de Laplace ($\nabla^2 T \neq 0$), por lo que debe haber una fuente interna de calor para mantener esta distribución.

Para una distribución de temperatura en estado estacionario con generación interna de calor, la ecuación correcta es:
$$\nabla^2 T = -\frac{q_{\text{gen}}}{k}.$$

Por lo tanto:
$$q_{\text{gen}} = -k\nabla^2 T = k\Delta T\cos\left(\frac{\pi z}{H}\right)\left[\frac{4}{R^2} + \frac{\pi^2}{H^2}\left(1-\frac{\rho^2}{R^2}\right)\right].$$

La tasa total de generación de calor es:
$$Q_{\text{gen}} = \iiint_V q_{\text{gen}} \, dV.$$

Dado que la distribución de calor varía con $\cos\left(\frac{\pi z}{H}\right)$, que integra a cero sobre el intervalo $[0,H]$, la tasa total de generación de calor neta sería cero, lo cual es inconsistente con un estado estacionario donde hay flujo de calor hacia afuera.

Esto sugiere que la distribución de temperatura dada no es físicamente posible para un estado estacionario con generación interna de calor uniforme, o que la distribución de generación de calor debe ser más compleja para mantener esta distribución de temperatura.

Para que el flujo neto de calor salga del disipador, la distribución de generación de calor debe satisfacer:
$$\iiint_V q_{\text{gen}} \, dV = \oiint_S \vec{q} \cdot d\vec{S} > 0.$$

Podemos calcular el flujo de calor a través de cada superficie del disipador:

1. **Superficie lateral ($\rho=R$):**
   - Vector normal: $\hat{n} = \hat{e}_\rho$
   - Elemento de superficie: $dS = R\,d\phi\,dz$
   - Flujo de calor en la superficie: $\vec{q} = -k\nabla T = -k\left(-\frac{2\Delta T R}{R^2}\cos\left(\frac{\pi z}{H}\right)\hat{e}_\rho + \dots\right) = \frac{2k\Delta T}{R}\cos\left(\frac{\pi z}{H}\right)\hat{e}_\rho$
   - Flujo total: $\Phi_{\text{lateral}} = \int_0^{2\pi}\int_0^H \frac{2k\Delta T}{R}\cos\left(\frac{\pi z}{H}\right) R\,dz\,d\phi = \int_0^{2\pi}\int_0^H 2k\Delta T\cos\left(\frac{\pi z}{H}\right) dz\,d\phi = 0$ (la integral de coseno sobre un período completo es cero)

2. **Base ($z=0$):**
   - Vector normal: $\hat{n} = -\hat{e}_z$
   - Elemento de superficie: $dS = \rho\,d\rho\,d\phi$
   - Flujo de calor en la base: $\vec{q} = -k\nabla T = -k\left(\dots - \frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\sin(0)\hat{e}_z\right) = \vec{0}$
   - Flujo total: $\Phi_{\text{base}} = 0$

3. **Parte superior ($z=H$):**
   - Vector normal: $\hat{n} = \hat{e}_z$
   - Elemento de superficie: $dS = \rho\,d\rho\,d\phi$
   - Flujo de calor en la parte superior: $\vec{q} = -k\nabla T = -k\left(\dots - \frac{\pi\Delta T}{H}\left(1-\frac{\rho^2}{R^2}\right)\sin(\pi)\hat{e}_z\right) = \vec{0}$
   - Flujo total: $\Phi_{\text{superior}} = 0$

Esto indica que, con la distribución de temperatura dada, el flujo neto de calor que sale del disipador es cero, lo cual significa que no hay generación neta de calor interna o que el sistema no está en un estado estacionario real.

Para una situación física realista, la distribución de temperatura debería garantizar un flujo de calor hacia afuera, lo cual requiere que la temperatura máxima esté en el interior del disipador y disminuya hacia la superficie, o que haya una generación interna de calor que produzca este flujo.