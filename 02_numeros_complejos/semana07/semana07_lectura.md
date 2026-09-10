---
title: Integrales de contorno
description: Integrales de contorno
short_title: Integrales de contorno
author: " "
tags: [numeros_complejos, integracion, contornos, cauchy]
subject: Variable compleja - Semana 7
keywords: [integrales de contorno, independencia del camino, Cauchy-Goursat, fórmula integral de Cauchy, Kramers-Kronig]
exports:
  - format: pdf
    template: curvenote
    output: ./semana07_lectura.pdf
# downloads:
#   - file: ./semana07_lectura.md
#     title: semana07_lectura.md
#   - file: ./semana07_lectura.pdf
#     title: semana07_lectura.pdf
kernelspec:
  name: python3
  display_name: Python 3
---

:::{aside} [Naomi Halas](https://es.wikipedia.org/wiki/Naomi_Halas)

Física y nanotecnóloga estadounidense, pionera de la [nanofotónica](https://es.wikipedia.org/wiki/Nanofot%C3%B3nica) y creadora de las *nanocáscaras* (nanoshells): partículas metálicas dieléctricas cuyas [resonancias de plasmón](https://es.wikipedia.org/wiki/Plasm%C3%B3n) se sintonizan a voluntad para absorber o emitir luz. Su trabajo se apoya, de manera esencial, en el análisis complejo: la respuesta óptica de un material se describe con funciones de susceptibilidad $\chi(\omega)$ analíticas en el semiplano superior, cuyas partes real e imaginaria quedan ligadas por relaciones de dispersión — consecuencia directa de la fórmula integral de Cauchy. Es profesora en la Universidad Rice, miembro de la Academia Nacional de Ciencias de EE. UU. y fundadora de empresas que llevan su tecnología del laboratorio a la terapia fototérmica del cáncer y la detección de contaminantes.
```{figure} ./../images/naomi_HALAS-lg.jpeg
:label: fig-naomi_HALAS-lg.jpeg
:alt: retrato de Dra. Naomi Halas
:align: center
Naomi J. Halas (1958 - ). Foto: cortesía de la Universidad Rice.
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Parametrizar curvas y contornos** en el plano complejo y **calcular integrales de contorno** directamente a partir de su definición, interpretando la integral como una suma de aportes diferenciales $f(z)\,dz$.

2. **Aplicar los teoremas centrales de la teoría de Cauchy** — independencia del camino, Cauchy-Goursat, fórmula integral de Cauchy y su versión para derivadas — para evaluar integrales cerradas sin parametrizar nada.

3. **Conectar la analiticidad con la física**: evaluar integrales reales por métodos de contorno y deducir las relaciones de dispersión de Kramers–Kronig, donde la causalidad de una respuesta física se traduce en analiticidad en el semiplano superior.
```

+++ { "part": "abstract" }

Durante seis semanas construimos el plano complejo: números, funciones elementales, logaritmos multivaluados y cortes de rama. Esta semana le enseñamos al plano complejo a **integrar**. El resultado es una de las historias más sorprendentes de la matemática aplicada: si una función es analítica, su integral de contorno casi no depende del camino que elijamos; si el camino es cerrado, la integral vale **cero**; y si no vale cero, es porque la función esconde una singularidad dentro del contorno. Toda la información está en las singularidades. De esa idea nacen la fórmula integral de Cauchy — que reconstruye los valores de una función dentro de una región a partir de sus valores en la frontera — y sus aplicaciones que van desde el cálculo de integrales reales imposibles hasta las relaciones de dispersión que gobiernan la óptica de materiales reales.

+++

En las semanas 4, 5 y 6 estudiamos los números complejos, sus funciones elementales y la estructura de las funciones multivaluadas. Aprendimos a **derivar**: una función es analítica donde cumple las ecuaciones de Cauchy-Riemann. Ahora llega el turno de **integrar**.

La pregunta que guía esta semana es doble. Primero, la operativa: ¿qué significa $\int f(z)\,dz$ cuando $z$ recorre una curva del plano? Segundo, la estructural: ¿de qué depende el resultado? En variable real, $\int_a^b f(x)\,dx$ depende solo de los extremos — es el teorema fundamental del cálculo. Veremos que en el plano complejo esta propiedad es **excepcional, no general**: sobrevive solo para funciones analíticas, y su extensión a contornos cerrados (el teorema de Cauchy-Goursat) es la puerta de entrada a toda la teoría de aplicaciones.

# Caminos, curvas y contornos

Para integrar necesitamos primero un camino. Un **camino** (o curva) en el plano complejo es una función continua

$$
z(t) = x(t) + i\,y(t), \qquad t\in[a,b],
$$

con $x(t)$, $y(t)$ derivables y $z'(t)\neq 0$ (curva **suave**); si la curva es suave por tramos la llamamos **contorno**. La orientación importa: recorrer $z(t)$ de $a$ a $b$ o de $b$ a $a$ son caminos distintos, y ya anticipamos que sus integrales diferirán en un signo.

:::{note} Caminos que usaremos todo el semestre

- **Segmento recto** de $z_1$ a $z_2$: $\;z(t) = z_1 + (z_2-z_1)\,t$, $t\in[0,1]$.
- **Circunferencia** de centro $z_0$ y radio $r$: $\;z(t) = z_0 + r e^{it}$, $t\in[0,2\pi]$. El sentido de crecimiento de $t$ es **antihorario**: es la **orientación positiva**.
- **Contorno simple cerrado**: empieza y termina en el mismo punto, sin autointersecciones (un lazo tipo Jordan). Convención: orientación positiva = el interior queda a la izquierda.
:::

# La integral de contorno

Sea $f$ una función definida sobre un contorno $C$ parametrizado por $z(t)$, $t\in[a,b]$. Motivados por el significado geométrico de $dz = dx + i\,dy$ (un desplazamiento infinitesimal complejo), definimos

:::{math}
:label: eq-def-integral
\int_C f(z)\,dz \;=\; \int_a^b f\big(z(t)\big)\,z'(t)\,dt.
:::

La integral compleja es, en realidad, **dos integrales reales de línea en paquete**:

$$
\int_C f\,dz = \int_C (u\,dx - v\,dy) \;+\; i\int_C (v\,dx + u\,dy),
\qquad f = u + iv,
$$

pero la fórmula paramétrica {eq}`eq-def integral` es casi siempre la más cómoda: **parametrizar y calcular**.

La definición hereda las propiedades esperables:

- **Linealidad**: $\int_C (\alpha f + \beta g)\,dz = \alpha \int_C f\,dz + \beta \int_C g\,dz$.
- **Aditividad por tramos**: si $C = C_1 \cup C_2$, la integral se suma por partes.
- **Reversión**: recorrer $C$ en sentido inverso ($C^-$) cambia el signo: $\int_{C^-} f\,dz = -\int_C f\,dz$.

:::{note} Ejemplo: la integral que lo cambia todo

Calculemos $\displaystyle\oint_{|z|=1} \frac{dz}{z}$ con la parametrización $z = e^{it}$, $t\in[0,2\pi]$ (aquí $\oint$ indica contorno cerrado):

$$
\oint_{|z|=1} \frac{dz}{z} = \int_0^{2\pi} \frac{i e^{it}\,dt}{e^{it}} = i\int_0^{2\pi} dt = 2\pi i.
$$

Compárense con la integral "hermana":

$$
\oint_{|z|=1} \frac{dz}{z^2} = \int_0^{2\pi} \frac{i e^{it}\,dt}{e^{2it}} = i\int_0^{2\pi} e^{-it}\,dt = 0.
$$

Mismo contorno, misma singularidad en $z=0$ encerrada, y resultados radicalmente distintos: $2\pi i$ contra $0$. El $2\pi$ que aparece no es casualidad: es el mismo $2\pi$ de la multivaluación del argumento de la semana 6. Dar una vuelta al origen **acumula fase**: el logaritmo termina un piso más arriba de donde empezó, y ese excedente de $2\pi i$ es exactamente lo que mide la integral.
:::

# Antiderivadas: la independencia del camino

En variable real, $\int_a^b f = F(b) - F(a)$ si $F'=f$. En el plano complejo, la versión correspondiente exige una condición de dominio:

:::{note} Teorema fundamental del cálculo (versión compleja)

Sea $f$ continua en un dominio $\Omega$ y sea $F$ analítica en $\Omega$ con $F'(z)=f(z)$. Si $C$ es un contorno en $\Omega$ de $z_1$ a $z_2$, entonces

$$
\int_C f(z)\,dz = F(z_2) - F(z_1),
$$

**sea cual sea el camino** (siempre que permanezca en $\Omega$). El dominio debe ser **simplemente conexo**: sin agujeros.
:::

:::{note} Ejemplo: dos caminos, un solo resultado

Calculemos $\displaystyle\int_C e^z\,dz$ de $0$ a $1 + i\pi/2$.

*Camino recto*: $z(t) = t(1+i\pi/2)$, $t\in[0,1]$:

$$
\int_0^1 e^{t(1+i\pi/2)}\,(1+i\pi/2)\,dt = e^{1+i\pi/2} - e^0.
$$

*Camino en L* (de $0$ a $1$, luego de $1$ a $1+i\pi/2$): se obtiene, tras dos integrales elementales, el mismo valor. En ambos casos:

$$
\int_C e^z\,dz = e^{1+i\pi/2} - 1 = ie - 1,
$$

donde usamos $e^{i\pi/2}=i$. No sorprende: $e^z$ es analítica en todo el plano (dominio simplemente conexo) y tiene antiderivada.
:::

La independencia del camino tiene un contrapunto inmediato: si una función **no** tiene antiderivada en el dominio, sus integrales **sí** dependen del camino. Es el caso de $\bar z = x - iy$: no es analítica (falla las ecuaciones de Cauchy-Riemann, como verificarán en la práctica), y su integral de $0$ a $1+i$ cambia si se va por el segmento recto o por el camino en L. La analiticidad no es un detalle técnico: es lo que decide si el teorema fundamental aplica.

Y hay un caso intermedio fascinante: $f(z) = 1/z$ tiene antiderivada ($\ln z$), pero $\ln z$ es **multivaluada**. Por eso $1/z$ es integrable sin problema por caminos abiertos que no crucen el corte de rama, mientras que toda vuelta cerrada alrededor del origen acumula el $2\pi i$ del ejemplo anterior. El corte de rama de la semana 6 es, desde el punto de vista integral, la frontera más allá de la cual el teorema fundamental deja de aplicar con la rama elegida.

# El teorema de Cauchy-Goursat

Si el camino es cerrado, el teorema fundamental dice algo muy simple: la integral vale $F(z_1)-F(z_1)=0$. Pero no toda función analítica tiene antiderivada global en el interior del lazo — y aun así el resultado sobrevive, con una condición notablemente débil:

:::{note} Teorema de Cauchy-Goursat

Si $f$ es analítica en un dominio simplemente conexo $D$, entonces para **todo** contorno cerrado $C$ contenido en $D$,

$$
\oint_C f(z)\,dz = 0.
$$

:::

La versión original de Cauchy asumía que $f'$ es continua; Goursat demostró que basta la analiticidad (existencia de $f'$). La consecuencia operativa más útil es la **deformación de contornos**:

:::{note} Deformar contornos sin cambiar la integral

Si $f$ es analítica en la región entre dos contornos cerrados $C_1$ (exterior) y $C_2$ (interior), entonces

$$
\oint_{C_1} f\,dz = \oint_{C_2} f\,dz,
$$

ambos recorridos en el mismo sentido. En dominios con agujeros (multiplemente conexos), la integral sobre el contorno exterior es igual a la **suma** de las integrales sobre los contornos interiores. En particular: el contorno puede deformarse con total libertad, **siempre que no se cruce una singularidad**. El valor de la integral solo registra qué singularidades encierra.
:::

# La fórmula integral de Cauchy

Este es el resultado central de la semana, y uno de los más profundos del análisis matemático. Si $f$ es analítica en una región que contiene al contorno cerrado $C$ y su interior, y $z_0$ es un punto interior a $C$, entonces

:::{math}
:label: eq-cif
f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z - z_0}\,dz.
:::

Léase con atención, porque dice algo extraordinario: el valor de $f$ en un punto **interior** queda completamente determinado por los valores de $f$ en la **frontera**. Una función analítica no puede "esconder" nada: sus valores interiores son una consecuencia obligada de lo que ocurre en el borde, del mismo modo que en una cuerda vibrante en equilibrio la posición interna queda fijada por la frontera. Esta "rigidez" de las funciones analíticas es la que las hace tan útiles en física: es el análogo complejo de los principios de tipo holográfico (la frontera codifica el interior).

Aún más: si $z_0$ es un punto donde el integrando tiene singularidad de orden $n+1$, el mismo principio sobrevive en forma de derivadas:

:::{math}
:label: eq-cif-deriv
f^{(n)}(z_0) = \frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z-z_0)^{n+1}}\,dz.
:::

Dos lecturas de {eq}`eq-cif-deriv`:

- **Operativa**: integrales con denominadores $(z-z_0)^{n+1}$ se evalúan derivando, no integrando.
- **Estructural**: como el lado izquierdo siempre existe, $f^{(n)}$ existe para **todo** $n$: una función analítica es automáticamente infinitamente diferenciable. La analiticidad es una propiedad rígida que no admite grados intermedios.

:::{note} Ejemplo: una integral cerrada sin parametrizar nada

Calculemos $\displaystyle\oint_{|z|=3} \frac{e^z}{z-2}\,dz$. El contorno es la circunferencia de radio 3 centrada en el origen; el punto $z_0 = 2$ está dentro; $f(z)=e^z$ es analítica en todo el plano. Por {eq}`eq-cif` con $f = e^z$:

$$
\oint_{|z|=3} \frac{e^z}{z-2}\,dz = 2\pi i\, f(2) = 2\pi i\, e^2.
$$

Ni una sola parametrización. Todo el trabajo lo hizo la estructura: única singularidad del integrando en $z=2$, dentro del contorno, y allí la integral "lee" el valor de $e^z$.
:::

:::{attention} Resumen de los teoremas de la semana
:class: dropdown

| Resultado | Enunciado | Requisito |
|---|---|---|
| Teorema fundamental | $\int_C f\,dz = F(z_2)-F(z_1)$ | $F'=f$, dominio simplemente conexo |
| Cauchy-Goursat | $\oint_C f\,dz = 0$ | $f$ analítica dentro y sobre $C$ |
| Deformación de contornos | $\oint_{C_1} f\,dz = \oint_{C_2} f\,dz$ | no cruzar singularidades |
| Fórmula integral de Cauchy | $f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z-z_0}\,dz$ | $z_0$ interior, $f$ analítica |
| Derivadas bajo la integral | $f^{(n)}(z_0) = \frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z-z_0)^{n+1}}\,dz$ | idem |
| Estimación ML | $\left\|\oint_C f\,dz\right\| \le M\cdot L$ | $\|f\|\le M$ en $C$, longitud $L$ |

La estimación ML merece una mención aparte: es la herramienta para mostrar que una integral **tiende a cero** — como haremos con el arco de semicírculo en la aplicación siguiente.
:::

# Aplicaciones integradoras

## Integrales reales por método de contornos

El primer regalo de la teoría: integrales reales que en el eje resisten todo intento de antiderivada caen en el plano complejo con sorprendente docilidad. Calcularemos la clásica

$$
I = \int_{-\infty}^{\infty} \frac{dx}{1+x^2}.
$$

La estrategia: cerrar el eje real con un semicírculo de radio $R$ en el semiplano superior, formando el contorno cerrado $C_R$ (segmento $[-R,R]$ más arco). Sobre ese contorno, integrar la función compleja $f(z) = \dfrac{1}{z^2+1}$:

1. **Singularidades**: $z = \pm i$. Solo $z = i$ está dentro de $C_R$. Escribiendo

$$
\frac{1}{z^2+1} = \frac{1}{(z-i)(z+i)} = \frac{1}{z+i}\cdot\frac{1}{z-i},
$$

la fórmula integral de Cauchy {eq}`eq-cif` con $g(z) = \frac{1}{z+i}$ da

$$
\oint_{C_R} \frac{dz}{z^2+1} = 2\pi i\, g(i) = 2\pi i\cdot\frac{1}{2i} = \pi.
$$

2. **El arco se desvanece**: sobre el arco, $\|1/(z^2+1)\| \le \frac{1}{R^2-1}$ y la longitud vale $\pi R$, así que por la estimación ML el aporte del arco es $\le \frac{\pi R}{R^2-1}\to 0$ cuando $R\to\infty$.

3. **Sobrevive el segmento**: en el límite, el segmento es exactamente la integral real buscada:

$$
\boxed{\;\int_{-\infty}^{\infty} \frac{dx}{1+x^2} = \pi\;}
$$

(Consistente con el valor conocido $\pi$, pues $\int \frac{dx}{1+x^2} = \arctan x$.) La parte de la semana que viene — los **residuos** — automatiza el paso 1; pero la maquinaria conceptual es exactamente la de esta semana: singularidad encerrada + fórmula de Cauchy + arco que desaparece.

## Relaciones de dispersión: Kramers–Kronig

La segunda aplicación es la que convierte la analiticidad en física de materiales. Cualquier sistema **causal** — que no responde antes del estímulo — tiene una función de respuesta $\chi(\omega)$ (susceptibilidad eléctrica, índice de refracción, impedancia de un circuito) que es **analítica en el semiplano superior** $\Im\omega > 0$: físicamente, un polo con $\Im\omega>0$ haría crecer la respuesta en el tiempo, violando la causalidad (damping requiere $\Im\omega\le 0$).

Si $\chi$ es analítica en el semiplano superior y decae suficientemente lejos, la fórmula integral de Cauchy {eq}`eq-cif` aplicada al semiplano (el "contorno" es el eje real cerrado con un semicírculo infinito) produce, separando partes reales e imaginarias, las **relaciones de Kramers–Kronig**:

:::{math}
:label: eq-kk
\begin{aligned}
\Re\,\chi(\omega_0) &= \frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty} \frac{\Im\,\chi(\omega)}{\omega-\omega_0}\,d\omega,\\
\Im\,\chi(\omega_0) &= -\frac{1}{\pi}\,\mathcal{P}\!\int_{-\infty}^{\infty} \frac{\Re\,\chi(\omega)}{\omega-\omega_0}\,d\omega,
\end{aligned}
:::

donde $\mathcal{P}$ denota valor principal. La lectura física es potente:

- **Conocer la absorción es conocer la dispersión**: la parte imaginaria de $\chi$ (absorción, pérdida) determina la parte real (velocidad de fase, reactancia) en *todas* las frecuencias, y viceversa.
- **Medir menos, saber más**: en espectroscopía óptica basta medir, por ejemplo, la absorbancia en un rango para reconstruir el índice de refracción — método estándar en plasmonía, semiconductores y diseño de metamateriales.
- **Causalidad es verificable**: si un modelo de material propuesto viola {eq}`eq-kk`, el modelo responde antes del estímulo: no es físico.

Es la misma lógica de la fórmula de Cauchy en su forma extrema: la frontera (el eje real, donde se mide) codifica todo el semiplano (la respuesta completa).

## Potenciales en 2D y funciones de Green

Cerramos conectando con la semana 6. La integral madre

$$
\oint_{|z-z_0|=\rho} \frac{dz}{z-z_0} = 2\pi i
$$

vale $2\pi i$ **para cualquier radio $\rho>0$**: es invariante de escala y de posición. Eso es exactamente el comportamiento de una [función delta](https://es.wikipedia.org/wiki/Delta_de_Dirac) bidimensional: $\frac{1}{\pi}\,\frac{z-z_0}{|z-z_0|^2}$ (cuya parte "dz" da el $2\pi i$) es la delta compleja, y el potencial logarítmico $\ln|z-z_0|$ de la semana 6 es su antiderivada radial. La fórmula integral de Cauchy {eq}`eq-cif` no es entonces una fórmula aislada, sino la afirmación de que **el valor en el centro es el promedio (complejo, ponderado) de la frontera**, con la delta como núcleo de reconstrucción. Este es el mecanismo detrás de las funciones de Green de la ecuación de Laplace en 2D — y la antesala natural de la teoría de residuos de la próxima semana, donde el $2\pi i$ se convertirá en la firma sistemática de cada singularidad.

:::{seealso} Referencias

@boas2006mathematical [Cap. 14 "Complex Integration", pág. 331-357]

@ablowitz2003complex [Cap. 2-3: integrales de contorno y aplicaciones]

@arfken2005mathematical [Cap. 11 "Complex Variable Theory", sección de integración]

:::

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
