---
title: Residuos  
description: Residuos 
short_title: Residuos 
author: " "
tags: [numeros_complejos, laurent, singularidades, residuos, kramers-kronig, mapeos-conformes]
subject: Variable compleja - Semana 8
keywords: [serie de Laurent, singularidades, residuos, integrales reales]
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

:::{aside} [Chien-Shiung Wu](https://es.wikipedia.org/wiki/Chien-Shiung_Wu)

Física experimental sinoestadounidense (1912–1997), conocida como la **primera dama de la física** y la *Madame Curie* de China. Formada en la Universidad Nacional Central (Nankín), obtuvo su doctorado en Berkeley en el laboratorio de Ernest Lawrence; incorporada al [Proyecto Manhattan](https://es.wikipedia.org/wiki/Proyecto_Manhattan), perfeccionó el método de difusión gaseosa para el enriquecimiento de uranio e identificó el xenón-135 — producto de fisión — como el **veneno neutrónico** que detenía a los primeros reactores. Ya como profesora de la Universidad Columbia se convirtió en la autoridad mundial en la [desintegración beta](https://es.wikipedia.org/wiki/Desintegraci%C3%B3n_beta): sus mediciones verificaron la teoría de Fermi y, en 1956, su célebre experimento con cobalto-60 enfriado a temperaturas criogénicas refutó el principio de [paridad](https://es.wikipedia.org/wiki/Paridad_(f%C3%ADsica)), confirmando la propuesta de Lee y Yang — que recibieron el Nobel de 1957, mientras el experimento decisivo llevaba su firma: uno de los agravios más citados de la historia del premio. Primera mujer en presidir la American Physical Society (1975), recibió la Medalla Nacional de Ciencia y el primer Premio Wolf de Física (1978). Las **resonancias nucleares** — los picos en las secciones eficaces de captura neutrónica que medía con precisión extrema — son, en el lenguaje moderno — **polos de la matriz de dispersión** en el plano complejo de la energía: la parte real del polo fija la energía de resonancia y la parte imaginaria su ancho $\Gamma$.

```{figure} ./../images/Chien-Shiung-Wu.png
:label: fig-Chien_Shiung_Wu
:alt: retrato de Dra. Chien-Shiung Wu
:align: center
Chien-Shiung Wu (1912 - 1977). Foto: Lynn Gilbert ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3AChien-Shiung_Wu_%C2%A9Lynn_Gilbert.jpg), CC BY-SA 4.0).
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Expandir funciones analíticas en series de Taylor y de Laurent** en anillos de convergencia, y **clasificar singularidades aisladas** (removibles, polos, esenciales) leyendo la parte principal de la serie de Laurent.

2. **Calcular residuos** con las fórmulas prácticas (incluyendo polos de orden superior) y **aplicar el teorema del residuo** para evaluar integrales cerradas sin parametrizar nada.

3. **Evaluar integrales reales** — racionales, trigonométricas y de tipo Fourier — mediante el método de contornos.

```

+++ { "part": "abstract" }

La semana anterior establecimos la regla de oro: si $f$ es analítica dentro de un contorno cerrado, su integral vale cero; si no vale cero, es porque el contorno encierra **singularidades**. Esta semana hacemos el movimiento inverso: en lugar de evitar las singularidades, las **estudiamos con lupa**. La lupa es la **serie de Laurent** — una expansión en potencias positivas *y negativas* que convierte cada singularidad en un objeto clasificable — y su coeficiente más valioso, el **residuo**, destila toda la información que un contorno puede leer de una singularidad en un solo número. Con el teorema del residuo, las integrales reales que resisten toda antiderivada caen en cascada; con la analiticidad en el semiplano superior, la **causalidad** se traduce en las relaciones de **Kramers–Kronig**, que gobiernan la óptica de materiales reales; y con **transformaciones conformes** aprendemos a deformar problemas completos de potencial en el plano — esquinas en semiplanos, círculos en perfiles de ala — sin más esfuerzo que el de componer con una función analítica.

+++

En la semana 7 aprendimos a derivar e integrar en el plano complejo: las condiciones de Cauchy–Riemann certifican la analiticidad, y los teoremas de Cauchy-Goursat y la fórmula integral de Cauchy convierten esa propiedad en una maquinaria de cálculo. Todo el andamiaje descansa en una distinción: dónde la función es analítica y dónde **no lo es**.

¿Cómo se comporta una función analítica *cerca* de un punto donde deja de serlo? Su respuesta es la **serie de Laurent**, y de su lectura nace la taxonomía de singularidades. ¿cuánta información de una singularidad puede extraer una integral de contorno? Exactamente un número — el **residuo** — y con él se abren tres recetas de integración real que resuelven problemas de la física y la ingeniería. 


:::{important}
**Series geométricas y convergencia**

Una serie geométrica es la suma de los términos de una sucesión geométrica

$$
\frac{1}{1-w} = 1 + w + w^2 + \cdots = \sum_{n=0}^{\infty} w^n
\qquad (|w| < 1),
$$

y su versión para $|w| > 1$, dividendo y divisor entre $w$:

$$
\frac{1}{1-w} = -\frac{1}{w}\,\frac{1}{1 - 1/w} = -\sum_{n=1}^{\infty} w^{-n}
\qquad (|w| > 1).
$$

Para expandir una fracción como $\frac{1}{z-a}$ hay que **fabricar un $w$ con $|w|<1$** — de manera que 

$$\frac{1}{z-a} = -\frac1a \frac{1}{1 - z/a},\quad \text{si} \quad |z| < |a|$$ 
ó

 $$\frac{1}{z-a} = \frac{1}{z}\frac{1}{1 - a/z}\quad \text{si} \quad |z| > |a|$$ — y la reescritura elegida es la que *decide* en qué región converge la expansión.
:::


# De Taylor a Laurent: el microscopio de las funciones analíticas

Una función analítica en un disco $|z - z_0| < R$ se expande en **serie de Taylor**,

$$
f(z) = \sum_{n=0}^{\infty} a_n (z-z_0)^n,
\qquad
a_n = \frac{f^{(n)}(z_0)}{n!},
$$

Los coeficientes $a_n$ quedan fijados por el comportamiento de $f$ en el centro $z_0$ — sus derivadas —, y la convergencia tiene estructura de disco: la serie suma para $|z - z_0| < R$ y falla fuera, con radio $R$ dado por la distancia del centro al punto singular más cercano. Dentro de ese disco no hay dos objetos — de un lado "la función", del otro "la serie": la serie *es* la función, y todo su contenido analítico está codificado en los números $a_n$.

Conviene adoptar aquí la mirada de Arfken: es natural pensar en los valores $f(z)$ de una función analítica como **una sola entidad**, que la serie de Taylor nos muestra solo a través de una ventana local — la región $S$ dentro del círculo de convergencia $C$. El círculo no es una propiedad caprichosa de la serie: es la frontera hasta donde *esa representación* alcanza para describir la función, que sigue existiendo (y siendo analítica) más allá. 

El disco, sin embargo, es un dominio demasiado "redondo": ¿qué pasa si la función tiene una singularidad **dentro** del disco, pero es analítica en un **anillo** alrededor de ella? La respuesta la dio Pierre Alphonse Laurent en 1843:

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

Siguiendo a Arfken, la doble suma se empaqueta en una sola extendiendo el índice a *todos* los enteros:

$$
f(z) = \sum_{n=-\infty}^{\infty} a_n (z - z_0)^n,
\qquad r < |z - z_0| < R,
$$

con la identificación $a_n = c_n$ para $n \ge 0$ (parte analítica) y $a_{-n} = b_n$ para $n \ge 1$ (parte principal). Es exactamente la misma serie: la notación compacta es la que se usa para operar, y la de doble suma la que permite leer de un vistazo qué parte es "regular" y qué parte es firma de la singularidad.

```{figure} ./../images/serie_laurent.svg
:label: fig-serie_laurent
:alt: Anillo de convergencia de una serie de Laurent centrada en $z_0$
:align: center
Anillo de convergencia $r < |z - z_0| < R$ de una serie de Laurent: la función es analítica en el anillo, no necesariamente en el "agujero".
```

Note que la serie de Laurent **generaliza** a Taylor: si no hay agujero ($r=0$), no hay potencias negativas y recuperamos la serie de Taylor. Además, la parte principal $\sum b_n (z-z_0)^{-n}$ es la firma de la singularidad: describe *exactamente* el comportamiento explosivo cerca de $z_0$, y no existe en el mundo de Taylor.

Por último, observe que la fórmula de los coeficientes en {eq}`eq-laurent` tiene *exactamente* la estructura de la **fórmula integral de Cauchy para derivadas** 

$$
f^{(n)}(z_0) = \frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z - z_0)^{n+1}}\,dz,
\qquad n = 0, 1, 2, \dots
$$

La de Cauchy exigía $f$ analítica *dentro y sobre* $C$, y devolvía derivadas; la de Laurent pide analiticidad solo en el anillo, y devuelve coeficientes de una expansión con potencias de todo signo. La fórmula de los coeficientes de Laurent se convierte, término a término, en la fórmula integral de Cauchy. Dicho de otro modo: **el teorema de Laurent es la fórmula integral de Cauchy reescrita para dominios con agujeros**.

La conexión también apunta hacia adelante. Tómese la fórmula integral de Cauchy en su forma más desnuda, $n = 0$:

$$
f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z - z_0}\,dz.
$$

El integrando $\frac{f(z)}{z - z_0}$ tiene en $z_0$ un polo simple, y la integral captura justo el coeficiente de $(z - z_0)^{-1}$ en su serie de Laurent: sin decirlo, la fórmula integral de Cauchy ya era una máquina de extraer ese coeficiente. Cuando el contorno rodea puntos donde $f$ deja de ser analítica, la integral cerrada sigue devolviendo un único número — ese coeficiente, que llamaremos **residuo** — y el teorema del residuo aparecerá como lo que es: la prolongación natural de Cauchy al caso con singularidades.




:::{note} Ejemplo: una función, tres series distintas

Expandamos $f(z) = \dfrac{1}{(z-1)(z-2)}$ alrededor de $z_0 = 0$. Con fracciones parciales, $f = \dfrac{1}{z-2} - \dfrac{1}{z-1}$. Las singularidades están en $z=1$ y $z=2$, de manera hay **tres anillos** de convergencia posibles.

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

**cada anillo tiene su propia serie de Laurent**, y la estructura de la serie (cuántas potencias negativas, cuáles) codifica las singularidades que rodean.

![Módulo de la función](./../images/modulo_funcion.png 'Módulo de $f(z)$')

![Fase $\mathrm{Arg}\, f(z)$ y anillos de convergencia](./../images/fase_anillos.png 'Fase $\mathrm{Arg}\, f(z)$ y anillos de convergencia')

![Errores de cada serie por región](./../images/errores_series_laurent.png 'Módulo de $f(z)$')

:::

# Anatomía de las singularidades

La serie de Laurent es la generalización de la serie de Taylor *en presencia de singularidades*. Para aprovecharla conviene precisar el escenario: $z_0$ es un **punto singular aislado** de $f$ si $f$ no es analítica en $z = z_0$, pero sí lo es en todos los puntos vecinos — en algún disco pinchado $0 < |z - z_0| < \varepsilon$. La serie de Laurent de $f$ alrededor de $z_0$ clasifica el punto singular por la forma de su parte principal:

:::{note} Clasificación de singularidades aisladas

- **Removible:** la parte principal es **nula** ($b_n = 0$ para todo $n$). 

El límite $\lim_{z\to z_0} f(z)$ existe y *redefiniendo* $f(z_0)$ con ese valor la función se vuelve analítica: la singularidad "no estaba ahí". Ejemplo clásico:

$$
\frac{\sin z}{z} = 1 - \frac{z^2}{3!} + \frac{z^4}{5!} - \cdots
\;\Longrightarrow\;
\lim_{z\to 0}\frac{\sin z}{z} = 1.
$$

- **Polo de orden $m$:** la parte principal es **finita**, con $b_m \neq 0$ y $b_n = 0$ para $n > m$:

$$
f(z) = \frac{b_m}{(z-z_0)^m} + \cdots + \frac{b_1}{z - z_0} + a_0 + a_1(z-z_0) + \cdots
$$

$z_0$ es polo de orden $m$ si y solo si $\lim_{z \to z_0} (z - z_0)^m f(z)$ existe y es distinto de cero. 

Un polo de orden 1 se llama **simple**. 

> Ejemplos: 
> - $\frac{1}{z - i}$ (simple en $i$); 
> - $\frac{1}{(z^2+1)^2}$ (polos **dobles** en $\pm i$);
> - $\tan z = \frac{\sin z}{\cos z}$ tiene polos simples en $z = \frac{\pi}{2} + k\pi$, donde $\cos z$ se anula.

- **Esencial:** la parte principal es **infinita** (infinitas potencias negativas). 

$$
e^{1/z} = 1 + \frac{1}{z} + \frac{1}{2!\,z^2} + \frac{1}{3!\,z^3} + \cdots
$$

:::

```{attention} Singularidades no aisladas: los puntos de ramificación
Los **puntos de ramificación** de semana 6 — el origen para $\ln z$ y $\sqrt{z}$ — no son singularidades aisladas: alrededor de ellos la función ni siquiera es univaluada, así que no hay serie de Laurent que rescatar en ningún anillo completo. No obstante, se les llama *singularidades de ramificación* y su presencia obliga a cortes de rama exactamente igual que antes.
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
:alt: Contorno cerrado que encierra varios polos, el polo exterior no aporta
:align: center
Contorno cerrado $C$: la integral solo registra los polos interiores; el polo exterior $z_3$ no aporta.
```

El teorema {eq}`eq-teorema-residuo` es la versión operativa definitiva: *el valor de una integral cerrada solo depende de qué singularidades encierra*. La semana pasada evaluábamos esas integrales con la fórmula integral de Cauchy; ahora basta **álgebra de residuos**: identificar polos, calcular coeficientes $b_{-1}$, sumar. Para ello conviene una caja de herramientas.

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

# Integrales reales por el método de los residuos

La estrategia general tiene tres pasos, que ya esbozamos al final de la semana 7 con la fórmula integral de Cauchy; ahora, con el teorema del residuo, se vuelve un algoritmo general.

**Paso 1 — Extender:** reinterpretar la integral real como parte de una integral compleja sobre un **contorno cerrado** (típicamente el eje real cerrado con un semicírculo de radio $R$ en el semiplano superior, $C_R$).

**Paso 2 — Cerrar y aplicar el teorema del residuo:** la integral sobre el contorno vale $2\pi i$ veces la suma de residuos de los polos interiores.

**Paso 3 — Hacer desaparecer el puente:** mostrar con la estimación ML que el aporte del arco se esfuma cuando $R \to \infty$, dejando en pie la integral real buscada.

:::{note}
La estimación ML (o lema de la estimación, "estimation lemma") es una cota elemental de integrales de contorno: si $f$ es continua sobre un contorno $C$ de longitud $L$, y $\|f(z)\| \le M$ sobre todo $C$, entonces
$$\left|\oint_C f(z)\,dz\right| \le M \cdot L$$
:::

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

Los polos son las raíces de $z^2 + \frac{2}{a}z + 1 = 0$; para $0 < a < 1$ exactamente una queda dentro del círculo unitario, 
$$z_1 = \frac{-1 + \sqrt{1-a^2}}{a}$$ 
(la otra, $z_2 = 1/z_1$, queda fuera: $|z_1 z_2| = 1$). 

El residuo en $z_1$ es $\frac{2}{ia}\cdot\frac{1}{z_1 - z_2} = \frac{2}{ia}\cdot\frac{a}{2\sqrt{1-a^2}} = \frac{1}{i\sqrt{1-a^2}}$, de modo que

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
:::

:::{seealso} Referencias
@arfken2005mathematical [Cap. 6.5 - 6.6 "FUNCTIONS OF A COMPLEX VARIABLE I", pág. 430-443]

@arfken2005mathematical [Cap. 7.1 - 7.2 "FUNCTIONS OF A COMPLEX VARIABLE II", pág. 455-489]

@boas2006mathematical [Cap. 14.4 - 14.7 "Functions of a Complex Variable", pág. 678-695]

@riley2006mathematical [Cap. 24.3 - 24.6 "Complex variables", pág. 830-839]
:::

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
