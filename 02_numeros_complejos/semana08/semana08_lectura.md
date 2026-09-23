---
title: Residuos y transformaciones conformes (borrador)
description: Residuos y transformaciones conformes
short_title: Residuos y transformaciones conformes
author: " "
tags: [numeros_complejos, laurent, singularidades, residuos, kramers-kronig, mapeos-conformes]
subject: Variable compleja - Semana 8
keywords: [serie de Laurent, singularidades, residuos, integrales reales, relaciones de dispersión, Kramers-Kronig, transformaciones conformes, Joukowski]
exports:
  - format: pdf
    template: curvenote
    output: ./semana08_lectura.pdf
# downloads:
#   - file: ./semana08_lectura.md
#     title: semana08_lectura.md
#   - file: ./semana08_lectura.pdf
#     title: semana08_lectura.pdf
---

:::{aside} [Naomi Halas](https://es.wikipedia.org/wiki/Naomi_Halas)

Física e ingeniera eléctrica estadounidense, pionera mundial de la [nanofotónica](https://es.wikipedia.org/wiki/Nanofot%C3%B3nica) y la [plasmonica](https://es.wikipedia.org/wiki/Plasmonica). Es *University Professor* en la [Universidad Rice](https://es.wikipedia.org/wiki/Universidad_Rice) — el más alto rango académico de esa institución, del que solo han gozado un puñado de personas en su historia — y profesora Stanley C. Moore de Ingeniería Eléctrica y Computación; fundó y dirigió el Laboratory for Nanophotonics y el Smalley-Curl Institute. Durante su doctorado en IBM codescubrió el primer *solitón de pulso oscuro* en fibras ópticas. En la década de 1990 inventó las **nanocáscaras** (*nanoshells*): nanopartículas núcleo-cáscara de sílice y oro cuyas **resonancias plasmónicas** se ajustan a voluntad modificando su geometría — osciladores electromagnéticos diseñados a la medida, cuya respuesta óptica es, en el lenguaje de esta semana, una función con **polos** posicionables. Esa capacidad se tradujo en aplicaciones tangibles: terapia fototérmica contra el cáncer llevada a ensayos clínicos, sensores moleculares, fotocatálisis impulsada por luz y generación de vapor solar. Miembro de las academias nacionales de ciencias, de ingeniería y de inventores de EE. UU., recibió el premio Frank Isakson de la American Physical Society, el R. W. Wood Prize de Optica y la Medalla Franklin de Química (2025).
```{figure} ./../images/naomi_HALAS-lg.jpeg
:label: fig-Naomi_Halas
:alt: retrato de Dra. Naomi Halas
:align: center
Naomi Halas (1955 - ). Foto: Universidad Rice.
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Expandir funciones analíticas en series de Taylor y de Laurent** en anillos de convergencia, y **clasificar singularidades aisladas** (removibles, polos, esenciales) leyendo la parte principal de la serie de Laurent.

2. **Calcular residuos** con las fórmulas prácticas (incluyendo polos de orden superior) y **aplicar el teorema del residuo** para evaluar integrales cerradas sin parametrizar nada.

3. **Evaluar integrales reales** — racionales, trigonométricas y de tipo Fourier — mediante el método de contornos, y **deducir las relaciones de dispersión de Kramers–Kronig**, que ligan absorción y refracción de todo material causal.

```

+++ { "part": "abstract" }

La semana anterior establecimos la regla de oro: si $f$ es analítica dentro de un contorno cerrado, su integral vale cero; si no vale cero, es porque el contorno encierra **singularidades**. Esta semana hacemos el movimiento inverso: en lugar de evitar las singularidades, las **estudiamos con lupa**. La lupa es la **serie de Laurent** — una expansión en potencias positivas *y negativas* que convierte cada singularidad en un objeto clasificable — y su coeficiente más valioso, el **residuo**, destila toda la información que un contorno puede leer de una singularidad en un solo número. Con el teorema del residuo, las integrales reales que resisten toda antiderivada caen en cascada; con la analiticidad en el semiplano superior, la **causalidad** se traduce en las relaciones de **Kramers–Kronig**, que gobiernan la óptica de materiales reales; y con **transformaciones conformes** aprendemos a deformar problemas completos de potencial en el plano — esquinas en semiplanos, círculos en perfiles de ala — sin más esfuerzo que el de componer con una función analítica.

+++

En la semana 7 aprendimos a derivar e integrar en el plano complejo: las condiciones de Cauchy–Riemann certifican la analiticidad, y los teoremas de Cauchy-Goursat y la fórmula integral de Cauchy convierten esa propiedad en una maquinaria de cálculo. Todo el andamiaje descansa en una distinción: dónde la función es analítica y dónde **no lo es**.

Hasta ahora las zonas "no analíticas" eran un estorbo que había que rodear con cuidado. Esta semana cambian de papel: se vuelven el **objeto central**. La pregunta que guía la semana es triple. Primero, la descriptiva: ¿cómo se comporta una función analítica *cerca* de un punto donde deja de serlo? Su respuesta es la **serie de Laurent**, y de su lectura nace la taxonomía de singularidades. Segundo, la operativa: ¿cuánta información de una singularidad puede extraer una integral de contorno? Exactamente un número — el **residuo** — y con él se abren tres recetas de integración real que resuelven problemas de la física y la ingeniería. Tercero, la estructural: qué *impone* la física a las funciones de respuesta (causalidad → analiticidad → Kramers–Kronig) y qué *permiten* las funciones analíticas como herramientas de diseño (mapeos conformes → problemas de potencial planos).

# De Taylor a Laurent: el microscopio de las funciones analíticas

Recordemos (semanas 5–6) que una función analítica en un disco $|z - z_0| < R$ se expande en **serie de Taylor**,

$$
f(z) = \sum_{n=0}^{\infty} a_n (z-z_0)^n,
\qquad
a_n = \frac{f^{(n)}(z_0)}{n!},
$$

y que las series de potencias convergen en discos: el radio $R$ es la distancia al punto singular más cercano. El disco, sin embargo, es un dominio demasiado "redondo": ¿qué pasa si la función tiene una singularidad **dentro** del disco, pero es analítica en un **anillo** alrededor de ella? La respuesta la dio Pierre Alphonse Laurent en 1843:

**Teorema de Laurent.** Si $f$ es analítica en el **anillo** abierto $r < |z - z_0| < R$ (con $0 \le r < R \le \infty$), entonces ahí admite la expansión **única**

:::{math}
:label: eq-laurent
f(z) = \underbrace{\sum_{n=0}^{\infty} a_n (z - z_0)^n}_{\text{parte analítica}}
\;+\;
\underbrace{\sum_{n=1}^{\infty} \frac{b_n}{(z - z_0)^n}}_{\text{parte principal}},
\qquad
c_n = \frac{1}{2\pi i}\oint_C \frac{f(z)}{(z - z_0)^{n+1}}\,dz,
:::

donde $C$ es cualquier contorno cerrado dentro del anillo que rodea una vez a $z_0$.

```{figure} ./../images/serie_laurent.svg
:label: fig-serie_laurent
:alt: Anillo de convergencia de una serie de Laurent centrada en $z_0$
:align: center
Anillo de convergencia $r < |z - z_0| < R$ de una serie de Laurent: la función es analítica en el anillo, no necesariamente en el "agujero".
```

Dos observaciones antes de usar el teorema. Primero, la serie de Laurent **generaliza** a Taylor: si no hay agujero ($r=0$), no hay potencias negativas y recuperamos la serie de Taylor. Segundo, la parte principal $\sum b_n (z-z_0)^{-n}$ es la firma de la singularidad: describe *exactamente* el comportamiento explosivo cerca de $z_0$, y no existe en el mundo de Taylor.

Hay una tercera observación, y es la bisagra con la semana anterior: la fórmula de los coeficientes en {eq}`eq-laurent` tiene *exactamente* la estructura de la **fórmula integral de Cauchy para derivadas** de la semana 7,

$$
f^{(n)}(z_0) = \frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z - z_0)^{n+1}}\,dz,
\qquad n = 0, 1, 2, \dots
$$

La de Cauchy exigía $f$ analítica *dentro y sobre* $C$, y devolvía derivadas; la de Laurent pide analiticidad solo en el anillo, y devuelve coeficientes de una expansión con potencias de todo signo. Si el centro $z_0$ resulta ser un punto regular de $f$ — el caso $r = 0$ de la primera observación — la unicidad de las expansiones en potencias fuerza $c_n = f^{(n)}(z_0)/n!$ para $n \ge 0$ (y $c_n = 0$ para $n < 0$): la fórmula de los coeficientes de Laurent se convierte, término a término, en la fórmula integral de Cauchy. Dicho de otro modo: **el teorema de Laurent es la fórmula integral de Cauchy reescrita para dominios con agujeros**, y de hecho su demostración la utiliza — se parte la integral del anillo en dos contornos y cada trozo se expande como serie geométrica, con la técnica de la semana 7.

La conexión también apunta hacia adelante. Tómese la fórmula integral de Cauchy en su forma más desnuda, $n = 0$:

$$
f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z - z_0}\,dz.
$$

El integrando $\frac{f(z)}{z - z_0}$ tiene en $z_0$ un polo simple, y la integral captura justo el coeficiente de $(z - z_0)^{-1}$ en su serie de Laurent: sin decirlo, la fórmula integral de Cauchy ya era una máquina de extraer ese coeficiente. Esta semana no haremos más que afilar esa lectura: cuando el contorno rodea puntos donde $f$ deja de ser analítica, la integral cerrada sigue devolviendo un único número — ese coeficiente, que llamaremos **residuo** — y el teorema del residuo aparecerá como lo que es: la prolongación natural de Cauchy al caso con singularidades.

## Series geométricas y convergencia: la herramienta del oficio

Toda esta semana descansa en una identidad elemental que sobrevive intacta al salto a $\mathbb{C}$: la **serie geométrica**

$$
\frac{1}{1-w} = 1 + w + w^2 + \cdots = \sum_{n=0}^{\infty} w^n
\qquad (|w| < 1),
$$

y su versión para $|w| > 1$, dividendo y divisor entre $w$:

$$
\frac{1}{1-w} = -\frac{1}{w}\,\frac{1}{1 - 1/w} = -\sum_{n=1}^{\infty} w^{-n}
\qquad (|w| > 1).
$$

El criterio del cociente explica la estructura de la convergencia: una serie de potencias $\sum a_n (z-z_0)^n$ converge absolutamente dentro de un disco $|z - z_0| < R$ y diverge fuera de él (en la frontera, nada se garantiza en general); aplicado a la parte principal de una serie de Laurent, el mismo criterio produce un radio interior $r$, y la serie completa converge en el **anillo** $r < |z - z_0| < R$ que enuncia el teorema. La consecuencia práctica es la regla de oro del cálculo de estas series: para expandir una fracción como $\frac{1}{z-a}$ hay que **fabricar un $w$ con $|w|<1$** — reescribir $\frac{1}{z-a} = -\frac1a \frac{1}{1 - z/a}$ si $|z| < |a|$, o $\frac{1}{z-a} = \frac{1}{z}\frac{1}{1 - a/z}$ si $|z| > |a|$ — y la reescritura elegida es la que *decide* en qué región converge la expansión. De ahí que en la práctica casi nunca se calculen los coeficientes con la integral de {eq}`eq-laurent`: se combinan **series geométricas y series conocidas** ($e^z$, $\sin z$, ...) en cada anillo, como muestra el siguiente ejemplo.

:::{note} Ejemplo: una función, tres series distintas

Expandamos $f(z) = \dfrac{1}{(z-1)(z-2)}$ alrededor de $z_0 = 0$. Con fracciones parciales, $f = \dfrac{1}{z-2} - \dfrac{1}{z-1}$. Las singularidades están en $z=1$ y $z=2$: hay **tres anillos** de convergencia posibles.

- **Región $|z| < 1$:** ambas fracciones se expanden como series geométricas en potencias positivas:

$$
f(z) = \sum_{n=0}^{\infty}\left(1 - \frac{1}{2^{n+1}}\right) z^n,
$$

serie de Taylor (parte principal nula): en este disco $f$ es analítica.

- **Región $1 < |z| < 2$:** ahora $|1/z| < 1$ pero $|z/2| < 1$; la primera fracción se expande en potencias negativas y la segunda en positivas:

$$
f(z) = -\sum_{n=1}^{\infty} \frac{1}{z^n} \;-\; \sum_{n=0}^{\infty} \frac{z^n}{2^{n+1}}.
$$

- **Región $|z| > 2$:** ambas se expanden en potencias negativas:

$$
f(z) = \sum_{n=1}^{\infty} \left(2^{n-1} - 1\right) \frac{1}{z^n}.
$$

La lección es doble: **cada anillo tiene su propia serie de Laurent**, y la estructura de la serie (cuántas potencias negativas, cuáles) codifica las singularidades que rodean.
:::

# Anatomía de las singularidades

Sea $z_0$ un punto en el que $f$ no es analítica, pero sí lo es en algún disco pinchado $0 < |z - z_0| < \varepsilon$: diremos que $z_0$ es una **singularidad aislada**. La serie de Laurent de $f$ alrededor de $z_0$ la clasifica por la forma de su parte principal:

:::{note} Clasificación de singularidades aisladas

- **Removible:** la parte principal es **nula** ($b_n = 0$ para todo $n$). El límite $\lim_{z\to z_0} f(z)$ existe y *redefiniendo* $f(z_0)$ con ese valor la función se vuelve analítica: la singularidad "no estaba ahí". Ejemplo clásico:

$$
\frac{\sin z}{z} = 1 - \frac{z^2}{3!} + \frac{z^4}{5!} - \cdots
\;\Longrightarrow\;
\lim_{z\to 0}\frac{\sin z}{z} = 1.
$$

- **Polo de orden $m$:** la parte principal es **finita**, con $b_m \neq 0$ y $b_n = 0$ para $n > m$:

$$
f(z) = \frac{b_m}{(z-z_0)^m} + \cdots + \frac{b_1}{z - z_0} + a_0 + a_1(z-z_0) + \cdots
$$

Equivalente y práctico: $z_0$ es polo de orden $m$ si y solo si $\lim_{z \to z_0} (z - z_0)^m f(z)$ existe y es distinto de cero. Un polo de orden 1 se llama **simple**. Ejemplos: $\frac{1}{z - i}$ (simple en $i$); $\frac{1}{(z^2+1)^2}$ (polos **dobles** en $\pm i$); $\tan z = \frac{\sin z}{\cos z}$ tiene polos simples en $z = \frac{\pi}{2} + k\pi$, donde $\cos z$ se anula.

- **Esencial:** la parte principal es **infinita** (infinitas potencias negativas). Ejemplo paradigmático:

$$
e^{1/z} = 1 + \frac{1}{z} + \frac{1}{2!\,z^2} + \frac{1}{3!\,z^3} + \cdots
$$

Cerca de una singularidad esencial la función se comporta de forma salvaje: el **teorema de Casorati–Weierstrass** afirma que en toda vecindad por chica que sea de $z_0$, los valores de $f$ se hacen **densos en todo el plano complejo** (y el teorema de Picard, más fuerte: alcanza todo valor complejo, salvo acaso uno, infinitas veces).
:::

```{attention} Singularidades no aisladas: los puntos de ramificación
Los **puntos de ramificación** de la semana 6 — el origen para $\ln z$ y $\sqrt{z}$ — no son singularidades aisladas: alrededor de ellos la función ni siquiera es univaluada, así que no hay serie de Laurent que rescatar en ningún anillo completo. No obstante, se les llama *singularidades de ramificación* y su presencia obliga a cortes de rama exactamente igual que antes. En este curso nos centraremos en las aisladas, que son las que el cálculo de residuos domina.
```

# El residuo y su teorema

Integremos la serie de Laurent término a término sobre una circunferencia pequeña $C_\varepsilon$ alrededor de $z_0$. Todas las potencias enteras de $(z - z_0)$ integradas en vuelta completa se anulan… **salvo una**:

$$
\oint_{C_\varepsilon} (z - z_0)^n \,dz = 0 \quad (n \neq -1),
\qquad
\oint_{C_\varepsilon} \frac{dz}{z - z_0} = 2\pi i.
$$

Es el mismo $2\pi i$ que encontramos en la semana 7 al dar una vuelta al origen: solo el término $\frac{b_{-1}}{z - z_0}$ sobrevive. Ese coeficiente merece nombre propio:

:::{math}
:label: eq-res-def
\operatorname{Res}_{z=z_0} f \;=\; b_{-1} \;=\; \frac{1}{2\pi i}\oint_{C_\varepsilon} f(z)\,dz.
:::

Y el hecho de que en un contorno general cada singularidad contribuya exactamente su residuo — y nada más — es el teorema central de la semana:

**Teorema del residuo.** Si $f$ es analítica dentro y sobre un contorno cerrado simple $C$, salvo un número **finito** de singularidades aisladas $z_1, \dots, z_N$ interiores a $C$, entonces

:::{math}
:label: eq-teorema-residuo
\oint_C f(z)\,dz \;=\; 2\pi i \sum_{k=1}^{N} \operatorname{Res}_{z=z_k} f.
:::

```{figure} ./../images/polos_contorno.svg
:label: fig-polos_contorno
:alt: Contorno cerrado que encierra los polos $z_1$ y $z_2$; el polo exterior $z_3$ no aporta
:align: center
Contorno cerrado $C$: la integral solo registra los polos interiores $z_1$ y $z_2$; el polo exterior $z_3$ no aporta.
```

El teorema {eq}`eq-teorema-residuo` es la versión operativa definitiva de la idea de la semana 7: *el valor de una integral cerrada solo depende de qué singularidades encierra*. La semana pasada evaluábamos esas integrales con la fórmula integral de Cauchy; ahora basta **álgebra de residuos**: identificar polos, calcular coeficientes $b_{-1}$, sumar. Para ello conviene una caja de herramientas.

- **Polo simple:** $z_0$ es raíz simple del denominador:

:::{math}
:label: eq-res-simple
\operatorname{Res}_{z=z_0} f = \lim_{z\to z_0} (z - z_0)\, f(z).
:::

Si $f = g/h$ con $g(z_0) \neq 0$, $h(z_0) = 0$ y $h'(z_0) \neq 0$, la regla de L'Hôpital da la versión aún más rápida

:::{math}
:label: eq-res-cociente
\operatorname{Res}_{z=z_0} \frac{g(z)}{h(z)} = \frac{g(z_0)}{h'(z_0)}.
:::

- **Polo de orden $m$:** se multiplica por $(z-z_0)^m$ para "limpiar" la singularidad y se deriva $m-1$ veces:

:::{math}
:label: eq-res-orden-m
\operatorname{Res}_{z=z_0} f = \frac{1}{(m-1)!}\,\lim_{z\to z_0} \frac{d^{m-1}}{dz^{m-1}}\Big[(z-z_0)^m f(z)\Big].
:::

- **Singularidad esencial:** no hay fórmula abreviada; se calcula la serie de Laurent y se lee el coeficiente $b_{-1}$.

:::{note} Ejemplos: la caja en acción

- $\operatorname{Res}_{z=2} \dfrac{e^z}{z-2} = e^2$ — polo simple, {eq}`eq-res-simple`.

- $\operatorname{Res}_{z=i} \dfrac{1}{z^2+1} = \dfrac{1}{2i} = -\dfrac{i}{2}$ — con {eq}`eq-res-cociente`, $g/h' \Rightarrow 1/(2z)\big|_{z=i}$.

- $\operatorname{Res}_{z=1} \dfrac{1}{z(z-1)^2}$ — polo doble; {eq}`eq-res-orden-m` con $m = 2$:

$$
\operatorname{Res}_{z=1} \frac{1}{z(z-1)^2}
= \lim_{z\to 1} \frac{d}{dz}\!\left[\frac{1}{z}\right]
= \lim_{z\to 1} \left(-\frac{1}{z^2}\right) = -1.
$$

- $\operatorname{Res}_{z=0} e^{1/z} = 1$ — esencial: la serie es $e^{1/z} = 1 + \frac1z + \cdots$, y el coeficiente de $\frac1z$ se lee a simple vista.
:::

Con la maquinaria lista, cobremos la promesa de la semana 7: evaluar integrales reales.

# Integrales reales por el método de los residuos

El primer regalo de la teoría: integrales reales que en el eje resisten todo intento de antiderivada caen en el plano complejo con sorprendente docilidad. La estrategia general tiene tres pasos, que ya esbozamos al final de la semana 7 con la fórmula integral de Cauchy; ahora, con el teorema del residuo, se vuelve un algoritmo general.

**Paso 1 — Extender:** reinterpretar la integral real como parte de una integral compleja sobre un **contorno cerrado** (típicamente el eje real cerrado con un semicírculo de radio $R$ en el semiplano superior, $C_R$).

**Paso 2 — Cerrar y aplicar el teorema del residuo:** la integral sobre el contorno vale $2\pi i$ veces la suma de residuos de los polos interiores.

**Paso 3 — Hacer desaparecer el puente:** mostrar con la estimación ML que el aporte del arco se esfuma cuando $R \to \infty$, dejando en pie la integral real buscada.

## Funciones racionales sobre el eje real

Calculemos la clásica

$$
I = \int_{-\infty}^{\infty} \frac{dx}{1+x^2}.
$$

Cerramos el eje real con un semicírculo de radio $R$ en el semiplano superior, formando el contorno cerrado $C_R$ (segmento $[-R,R]$ más arco), e integramos sobre él la función $f(z) = \dfrac{1}{z^2+1}$:

1. **Singularidades**: $z = \pm i$. Solo $z = i$ está dentro de $C_R$. El residuo allí es (polo simple, {eq}`eq-res-cociente`)

$$
\operatorname{Res}_{z=i} \frac{1}{z^2+1} = \frac{1}{z+i}\bigg|_{z=i} = \frac{1}{2i}.
$$

2. **El teorema del residuo** {eq}`eq-teorema-residuo` da

$$
\oint_{C_R} \frac{dz}{z^2+1} = 2\pi i \cdot \frac{1}{2i} = \pi.
$$

3. **El arco se desvanece**: sobre el arco, $\|1/(z^2+1)\| \le \frac{1}{R^2-1}$ y la longitud vale $\pi R$, así que por la estimación ML el aporte del arco es $\le \frac{\pi R}{R^2-1}\to 0$ cuando $R\to\infty$.

4. **Sobrevive el segmento**: en el límite, el segmento es exactamente la integral real buscada:

$$
\boxed{\;\int_{-\infty}^{\infty} \frac{dx}{1+x^2} = \pi\;}
$$

El patrón general: si $P$ y $Q$ son polinomios sin raíces reales con $\deg Q \ge \deg P + 2$, entonces

$$
\int_{-\infty}^{\infty} \frac{P(x)}{Q(x)}\,dx
= 2\pi i \sum_{\Im z_k > 0} \operatorname{Res}_{z=z_k} \frac{P(z)}{Q(z)},
$$

donde la suma recorre los **polos del semiplano superior**: el requisito $\deg Q \ge \deg P + 2$ es el que garantiza que el arco muera por la estimación ML. El mismo método con el eje real *indentado* alrededor de polos sobre el eje (con semicírculos diminutos que aportan $\mp i\pi$ veces el residuo) extiende la receta a integrales impropias tipo $\int_{-\infty}^{\infty} \frac{dx}{x}$ en valor principal — pero eso es materia de un curso de métodos avanzados.

## Integrales trigonométricas: $0$ a $2\pi$

Para integrales de la forma

$$
\int_0^{2\pi} R(\cos\theta, \sin\theta)\,d\theta
$$

el truco es parametrizar la circunferencia unitaria **antes de integrar**: con $z = e^{i\theta}$,

$$
\cos\theta = \frac{z + z^{-1}}{2},
\qquad
\sin\theta = \frac{z - z^{-1}}{2i},
\qquad
d\theta = \frac{dz}{iz},
$$

y la integral se convierte en una integral cerrada sobre $|z| = 1$, terreno natural del teorema del residuo.

:::{note} Ejemplo: la receta en acción

Calculemos $I = \displaystyle\int_0^{2\pi} \frac{d\theta}{1 + a\cos\theta}$, con $|a| < 1$. Con la sustitución:

$$
I = \oint_{|z|=1} \frac{1}{1 + \frac{a}{2}(z + z^{-1})}\,\frac{dz}{iz}
= \frac{2}{ia}\oint_{|z|=1} \frac{dz}{z^2 + \frac{2}{a}z + 1}.
$$

Los polos son las raíces de $z^2 + \frac{2}{a}z + 1 = 0$; para $0 < a < 1$ exactamente una queda dentro del círculo unitario, $z_1 = \frac{-1 + \sqrt{1-a^2}}{a}$ (la otra, $z_2 = 1/z_1$, queda fuera: $|z_1 z_2| = 1$). El residuo en $z_1$ es $\frac{2}{ia}\cdot\frac{1}{z_1 - z_2} = \frac{2}{ia}\cdot\frac{a}{2\sqrt{1-a^2}} = \frac{1}{i\sqrt{1-a^2}}$, de modo que

$$
I = 2\pi i \cdot \frac{1}{i\sqrt{1-a^2}} = \frac{2\pi}{\sqrt{1-a^2}},
\qquad |a|<1.
$$

Un resultado nada trivial — aparece, por ejemplo, en la evaluación de integrales de acoplamiento en mecánica orbital y óptica de Fourier — obtenido con dos líneas de álgebra.
:::

## Integrales de tipo Fourier

La tercera receta es la más importante para la física: integrales de la forma

$$
I(k) = \int_{-\infty}^{\infty} f(x)\, e^{ikx}\,dx,
\qquad k > 0,
$$

donde $f$ es racional, sin polos reales, y decae lo suficiente en el infinito. La clave es el **lema de Jordan**: en el semicírculo superior, $|e^{ikz}| = e^{-k\,\Im z} \le 1$ con decaimiento *exponencial* cerca del eje real, lo que mata el aporte del arco incluso cuando $f$ decae apenas como $1/z$. El resultado es sorprendente:

:::{note} Ejemplo: el núcleo de Poisson

Calculemos

$$
J = \int_{-\infty}^{\infty} \frac{\cos(kx)}{x^2 + a^2}\,dx,
\qquad a > 0,\ k>0.
$$

Integremos $f(z) = \dfrac{e^{ikz}}{z^2+a^2}$ sobre el semicírculo superior. El único polo interior es $z = ia$, con residuo

$$
\operatorname{Res}_{z=ia} \frac{e^{ikz}}{(z-ia)(z+ia)}
= \frac{e^{ik(ia)}}{2ia} = \frac{e^{-ka}}{2ia}.
$$

El teorema del residuo da $\oint f\,dz = 2\pi i \cdot \frac{e^{-ka}}{2ia} = \frac{\pi\, e^{-ka}}{a}$; por el lema de Jordan el arco no aporta, y tomando parte real (la parte imaginaria se anula por simetría del integrando):

$$
\boxed{\;\int_{-\infty}^{\infty} \frac{\cos(kx)}{x^2+a^2}\,dx = \frac{\pi}{a}\,e^{-ka}\;}
$$

Esta es la **transformada de Fourier del potencial de un alambre cargado en 2D** y el núcleo del problema de Poisson bidimensional: el mismo resultado gobierna campos apantallados, soluciones de la ecuación de calor y filtros pasa-bajos. Fíjense en la física del resultado: el decaimiento exponencial $e^{-ka}$ no era visible en el integrando — lo produjo el residuo en $z = ia$, un punto *complejo*. Las singularidades en el semiplano complejo codifican la estructura de la solución real.
:::

La receta para $k>0$ exige cerrar en el semiplano **superior** (donde $e^{ikz}$ decae); para $k<0$ se cierra en el inferior y el sentido de recorrido invierte el signo. Esa asimetría — la misma integral con $+k$ o $-k$ se evalúa en semiplanos distintos — es exactamente la que, combinada con la causalidad, produce las relaciones de la sección siguiente.

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
- **Inversión** $w = 1/z$: el mapeo no trivial más simple. Intercambia el interior y el exterior del círculo unitario, y convierte **rectas en círculos** que pasan por el origen (y viceversa). Es la llave que traduce problemas con fronteras circulares a problemas con fronteras rectas.
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

:::{attention} Resumen de la semana
:class: dropdown

| Concepto | Enunciado | Uso |
|---|---|---|
| Serie de Laurent | $f = \sum_{n=-\infty}^{\infty} c_n (z-z_0)^n$ en un anillo | describir $f$ cerca de singularidades |
| Singularidad removible | parte principal nula | se "repara" redefiniendo $f(z_0)$ |
| Polo de orden $m$ | parte principal finita, $b_m \neq 0$ | $\lim (z-z_0)^m f$ existe y $\neq 0$ |
| Singularidad esencial | infinitas potencias negativas | valores densos en $\mathbb{C}$ (Casorati–Weierstrass) |
| Residuo | $\operatorname{Res} f = b_{-1}$ | único dato que un contorno lee de un polo |
| Fórmulas prácticas | {eq}`eq-res-simple` – {eq}`eq-res-orden-m` | cálculo algebraico de residuos |
| Teorema del residuo | $\oint_C f\,dz = 2\pi i \sum \operatorname{Res}$ | integrales cerradas sin parametrizar |
| Integrales racionales | $2\pi i \times$ (residuos en $\Im z > 0$) | $\int_{-\infty}^{\infty} P/Q$ y tipo Fourier |
| Integrales trigonométricas | $z = e^{i\theta}$, $d\theta = dz/(iz)$ | $\int_0^{2\pi} R(\cos\theta,\sin\theta)\,d\theta$ |
| Kramers–Kronig | {eq}`eq-kk` | causalidad $\Rightarrow$ $\Re\chi$ e $\Im\chi$ ligadas |
| Mapeo conforme | $f$ analítica, $f' \neq 0$ | ángulos preservados; Laplace se hereda |
| Joukowski | $\zeta = z + a^2/z$ | perfiles de ala a partir de círculos |
:::

:::{seealso} Referencias
@arfken2005mathematical [Cap. 6.5 - 6.8 "FUNCTIONS OF A COMPLEX VARIABLE I", pág. 430-454]

@arfken2005mathematical [Cap. 7.1 - 7.2 "FUNCTIONS OF A COMPLEX VARIABLE II", pág. 455-489]

@boas2006mathematical [Cap. 14.4 - 14.11 "Functions of a Complex Variable", pág. 678-721]

@riley2006mathematical [Cap. 24.3 - 24.13 "Complex variables", pág. 830-867]
:::

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
