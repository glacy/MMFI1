
# Relaciones de dispersión: Kramers–Kronig

Consideremos una **función de respuesta lineal** $\chi(\omega)$: la susceptibilidad de un medio, una impedancia, un módulo de elasticidad complejo... La idea física es que un estímulo armónico $E(t) = e^{-i\omega t}$ produce una respuesta también armónica, amplificada y desfasada por $\chi(\omega)$. La restricción fundamental no viene de la matemática sino de la física:

:::{attention} Causalidad ⇒ analiticidad

Si el medio es **causal**, su respuesta al impulso $\chi(t)$ se anula para $t<0$: ningún efecto precede a su causa. Su transformada de Fourier,

$$
\chi(\omega) = \int_0^\infty \chi(t)\, e^{i\omega t}\,dt,
$$

solo integra sobre $t \ge 0$, y para $\omega = \omega_R + i\omega_I$ con $\omega_I > 0$ el factor $e^{i\omega t} = e^{i\omega_R t - \omega_I t}$ **decae exponencialmente**: la integral converge y define una función **analítica en todo el semiplano superior** $\Im\omega > 0$. Consecuencia inmediata: **todos los polos de una respuesta causal viven en el semiplano inferior** (o sobre el eje, para medios sin pérdidas). Un polo en $\Im\omega > 0$ correspondería a una respuesta que crece *antes* del estímulo — una prohibición física, no matemática.
:::

Ahora la analiticidad en el semiplano superior se convierte en una restricción *cuantitativa* sobre $\chi$. El truco de contorno de la sección anterior, aplicado a $\chi$ sobre el contorno del semiplano superior con la fórmula integral de Cauchy (evaluada en un punto $\omega$ real, y desplazando luego el polo hasta el eje con las fórmulas de Plemelj, cuyo detalle omitimos), produce las **relaciones de Kramers–Kronig** (1926–27):

:::{math}
:label: eq-kk
\Re\chi(\omega) = \frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty}
\frac{\Im\chi(\omega')}{\omega' - \omega}\,d\omega',
\qquad
\Im\chi(\omega) = -\frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty}
\frac{\Re\chi(\omega')}{\omega' - \omega}\,d\omega',
:::

donde $\mathcal{P}$ indica valor principal de Cauchy. La lectura física de {eq}`eq-kk` es profunda: **la parte real y la parte imaginaria de una respuesta causal no son independientes**. Si una de ellas se conoce para *todas* las frecuencias, la otra queda determinada. En óptica, $\Re\chi$ controla la velocidad de fase (índice de refracción, **dispersión**) e $\Im\chi$ controla la **absorción**: las relaciones dicen que no puede haber dispersión sin absorción, ni absorción sin dispersión, en ningún material del universo causal. Kramers y Kronig las dedujeron para explicar la óptica de rayos X; hoy son una herramienta de diseño: en espectroscopía se mide la absorción en todo el espectro y se *calcula* el índice de refracción sin medirlo.

Y la conexión con la estructura de singularidades es directa: los polos de $\chi$ en el semiplano inferior son las **resonancias** del medio. Cada polo aporta al mismo tiempo un pico de absorción ($\Im\chi$, cerca de la parte real del polo) y el característico vaivén de la dispersión ($\Re\chi$ cruza por cero justo en la resonancia). Las **nanocáscaras plasmónicas** de la doctora Naomi Halas son exactamente esto hecho ingeniería: nanopartículas cuyas resonancias — los polos — se diseñan ajustando la geometría, desplazando así el pico de absorción por todo el espectro visible e infrarrojo, con aplicaciones que van de la terapia contra el cáncer a la fotocatálisis. La matemática de esta semana es la que permite *predecir* la respuesta completa a partir de la ubicación de esos polos.

En la práctica (sección de ejercicios) se usan versiones de {eq}`eq-kk` para frecuencias positivas, válidas cuando $\chi(-\omega) = \chi^*(\omega)$ — condición que impone la realidad de la respuesta en el tiempo. Las mismas matemáticas gobiernan la **espectroscopía de impedancia** en ingeniería eléctrica (donde una verificación de Kramers–Kronig es el control de calidad estándar: si los datos de $\Re Z$ e $\Im Z$ no satisfacen {eq}`eq-kk`, el sistema no es causal o hay ruido) y las **relaciones de Bode** para el diseño de amplificadores y filtros: todo ancho de banda tiene un precio en fase, y ese precio no es negociable.

# Transformaciones conformes

Cambiamos de registro: de las singularidades como *objeto de estudio* a la analiticidad como *herramienta de diseño*. Una **transformación conforme** es un mapeo $w = f(z)$ entre regiones del plano, con $f$ analítica y $f'(z) \neq 0$ en la región. Su propiedad definitoria es geométrica:

:::{note} Ángulos preservados

Si dos curvas se cruzan en $z_0$ con ángulo $\theta$, sus imágenes bajo $f$ se cruzan en $f(z_0)$ con el **mismo** ángulo $\theta$ (en magnitud y orientación). La razón: cerca de $z_0$,

$$
f(z) - f(z_0) \approx f'(z_0)\,(z - z_0),
$$

de modo que el mapeo local es una **rotación** de ángulo $\arg f'(z_0)$ seguida de una **homotecia** de factor $|f'(z_0)|$ — ambas isotrópicas, idénticas en todas las direcciones. Los ángulos entre curvas sobreviven; solo cambian la escala local $|f'|$ y la inclinación global $\arg f'$.
:::

```{figure} ./../images/mapeo_conforme.svg
:label: fig-mapeo_conforme
:alt: Una retícula en el plano z y su imagen deformada en el plano w, con los ángulos preservados
:align: center
Un mapeo conforme deforma la retícula, pero las curvas imagen se cortan con el mismo ángulo que sus preimágenes (donde $f'(z)\neq 0$).
```

:::{note} Los mapeos elementales

- **Afines** $w = az + b$ ($a \neq 0$): rotación ($\arg a$), homotecia ($|a|$) y traslación ($b$). Conforman todo el plano.
- **Inversión** $w = 1/z$: el mapeo no trivial más simple. Intercambia el interior y el exterior del círculo unitario, y convierte **rectas que no pasan por el origen** en círculos que pasan por el origen; las rectas que pasan por el origen se conservan (y viceversa). Es la llave que traduce problemas con fronteras circulares a problemas con fronteras rectas.
- **Potencias** $w = z^\alpha$ ($\alpha > 0$): multiplican ángulos por $\alpha$. Un sector de ángulo $\theta$ se convierte en uno de ángulo $\alpha\theta$: la herramienta para "abrir" o "cerrar" esquinas — un cuadrante ($\pi/2$) se endereza a semiplano con $\alpha = 2$.
- **Exponencial** $w = e^z$: convierte la banda horizontal $0 < \Im z < 2\pi$ en el plano pinchado; útil para regiones tipo "franja" o "canal".
- **Transformaciones de Möbius** $w = \frac{az+b}{cz+d}$ ($ad - bc \neq 0$): llevan círculos en círculos (contando rectas como círculos de radio infinito) y permiten colocar tres puntos frontera donde se desee.
:::

¿Por qué importan para la física? Porque la semana 7 aprendimos que las partes de una función analítica son **armónicas** — resuelven la ecuación de Laplace — y se demuestra (regla de la cadena, dos veces) que la composición de una función armónica con un mapeo conforme sigue siendo armónica. En consecuencia:

:::{note} El principio de solución por mapeos

Para resolver un problema de Laplace en un dominio $D$ con frontera complicada (una esquina, el exterior de un ala, el interior de una curva caprichosa):

1. Encuentre un mapeo conforme $w = f(z)$ que lleve $D$ a un dominio simple $D'$ (semiplano, disco, franja) donde la solución $\Phi(w)$ sea evidente.
2. La solución del problema original es $\Phi\big(f(z)\big)$.

No hay que resolver la ecuación diferencial de nuevo: **la armónica se hereda por composición**. Todo el trabajo se concentra en el paso 1, para el cual existe un extenso diccionario de mapeos (y antaño, atlas impresos de transformaciones: los ingenieros buscaban su geometría en la tabla).
:::

:::{note} Ejemplo: potencial en una esquina recta

En el primer cuadrante $x>0, y>0$ — dos paredes metálicas en ángulo recto — se mantiene el eje $x$ al potencial $0$ y el eje $y$ al potencial $V_0$. Buscamos el potencial $\phi(x,y)$ en el interior.

El mapeo $\zeta = z^2$ endereza el cuadrante al semiplano superior $\Im\zeta > 0$: un punto de argumento $\theta \in (0, \pi/2)$ pasa a tener argumento $2\theta \in (0, \pi)$. Las fronteras se convierten en los dos trozos del eje real: el semieje positivo (imagen del eje $x$, potencial $0$) y el semieje negativo (imagen del eje $y$, potencial $V_0$). En el semiplano, la solución armónica que vale $0$ y $V_0$ en esos semiejes es $\Phi = \frac{V_0}{\pi}\arg\zeta$ — depende solo del ángulo polar. Volviendo a $z$:

$$
\phi(x,y) = \frac{V_0}{\pi}\arg(z^2) = \frac{2V_0}{\pi}\arctan\frac{y}{x}.
$$

Las equipotenciales son **rayos** desde el origen y las líneas de campo, **circunferencias** concéntricas — estructura invisible hasta que el mapeo la revela. Nótese la sutileza: $z^2$ **no** es conforme en el vértice $z=0$ (allí $f'=0$ y los ángulos se duplican); por eso precisamente *funciona*: es el punto donde la esquina de $90°$ se abre a $180°$.
:::

:::{note} Ejemplo: aerodinámica — del cilindro al perfil de ala

El flujo ideal (irrotacional, incompresible) alrededor de un cilindro — que la semana 7 generamos con el potencial complejo $w(z) = U(z + a^2/z)$ — es uno de los pocos flujos cuya solución se conoce a mano. La **transformación de Joukowski**,

$$
\zeta = z + \frac{a^2}{z},
$$

mapea círculos del plano $z$ en perfiles del plano $\zeta$: el círculo que pasa por $z = a$ produce una **placa plana**; círculos desplazados producen **elipses** y, con centro convenientemente fuera del origen, **perfiles de ala con curvatura y espesor realistas**. Como el mapeo es conforme fuera del círculo, el flujo conocido alrededor del cilindro — incluyendo la **circulación** que fija la sustentación por el teorema de Kutta–Joukowski — se transfiere íntegro al perfil: así se calculó la sustentación de alas antes que existieran los supercomputadores, y así se calibran hoy los códigos numéricos. Es quizá el ejemplo más elegante de esta semana: una función analítica convierte un problema irresoluble en uno trivial y *diseña* geometría en el camino.
:::

:::{note} Otras aplicaciones en física e ingeniería

- **Electrostática**: capacitancia de geometrías complicadas (bordes de condensadores, líneas de transmisión tipo microstrip) mapeando a un condensador plano o coaxial conocido.
- **Conducción de calor**: distribución de temperatura en placas con esquinas o muescas; los mapeos concentran las líneas de flujo y predicen puntos calientes.
- **Flujo de aguas subterráneas**: infiltración bajo presas y filtración por muros — el mismo formalismo de potencial complejo, con $u$ como cabeza hidráulica.
- **Mecánica de fracturas**: los campos de tensiones alrededor de la punta de una grieta se analizan mapeando el exterior de la grieta al exterior de un segmento.
- **Puntos críticos**: donde $f'(z_0) = 0$ el mapeo *multiplica* ángulos por el orden del cero — no es un defecto, sino el mecanismo que permite plegar esquinas y vértices a voluntad.
:::