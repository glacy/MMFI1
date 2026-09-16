---
title: Integrales de contorno (borrador)
description: Integrales de contorno
short_title: Integrales de contorno
author: " "
tags: [numeros_complejos, integracion, contornos, cauchy]
subject: Variable compleja - Semana 7
keywords: [condiciones de Cauchy-Riemann, analiticidad, integrales de contorno, independencia del camino, Cauchy-Goursat, fórmula integral de Cauchy, Kramers-Kronig]
exports:
  - format: pdf
    template: curvenote
    output: ./semana07_lectura.pdf
# downloads:
#   - file: ./semana07_lectura.md
#     title: semana07_lectura.md
#   - file: ./semana07_lectura.pdf
#     title: semana07_lectura.pdf
---

:::{aside} [Diana Trujillo](https://es.wikipedia.org/wiki/Diana_Trujillo)

Ingeniera aeroespacial colombiana del [Laboratorio de Propulsión a Chorro](https://es.wikipedia.org/wiki/Laboratorio_de_Propulsi%C3%B3n_a_Reacci%C3%B3n) (JPL) de la NASA, donde lidera el equipo de ingeniería a cargo del **brazo robótico del rover Perseverance**: el mecanismo que colecta y sella en la superficie marciana los tubos de muestra de roca — el sistema de almacenamiento de muestras más complejo jamás enviado a otro planeta. Su trayectoria personal es una lección en sí misma: emigró de Cali a los 17 años sin hablar inglés y con solo 300 dólares, trabajó como ama de llaves mientras estudiaba, pasó por el Miami Dade College y se graduó como ingeniera aeroespacial en la Universidad de Maryland (2007); fue la primera mujer migrante hispana admitida en la Academia de la NASA. Antes de Perseverance desarrolló la herramienta de eliminación de polvo y los sistemas de muestreo del rover Curiosity. El 18 de febrero de 2021 fue la narradora de la **primera transmisión en vivo y en español de un aterrizaje planetario** en la historia de la NASA (*Juntos Perseveramos*); ese año Colombia la condecoró con la Cruz de Plata de la [Orden de Boyacá](https://es.wikipedia.org/wiki/Orden_de_Boyac%C3%A1). Mentora de la fraternidad Brooke Owens, dedica su voz a inspirar a jóvenes de América Latina hacia las carreras científicas y de ingeniería.
```{figure} ./../images/Diana_Trujillo.png
:label: fig-Diana_Trujillo.png
:alt: retrato de Dra. Diana Trujillo
:align: center
Diana Trujillo (1981 - ). Foto: NASA on The Commons ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3ADiana_Trujillo_%2829795849390%29.jpg), No restrictions).
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Formular la derivada compleja y las condiciones de Cauchy–Riemann**, y usarlas para decidir en qué regiones una función es analítica, interpretando la analiticidad como la "licencia" que habilita toda la teoría de integración.

2. **Parametrizar curvas y contornos** en el plano complejo y **calcular integrales de contorno** directamente a partir de su definición, interpretando la integral como una suma de aportes diferenciales $f(z)\,dz$.

3. **Aplicar los teoremas centrales de la teoría de Cauchy** — independencia del camino, Cauchy-Goursat, fórmula integral de Cauchy y su versión para derivadas — para evaluar integrales cerradas sin parametrizar nada.

4. **Conectar la analiticidad con la física**: evaluar integrales reales por métodos de contorno, leer las ecuaciones de Cauchy–Riemann como la ecuación de Laplace en 2D, y deducir las relaciones de dispersión de Kramers–Kronig, donde la causalidad de una respuesta física se traduce en analiticidad en el semiplano superior.
```

+++ { "part": "abstract" }

Durante las semanas pasadas construimos el plano complejo: números, funciones elementales, logaritmos multivaluados y cortes de rama. Esta semana le enseñamos al plano complejo a **derivar y a integrar**. Primero fijamos la moneda de todo lo que sigue: la **analiticidad**, certificada por las **condiciones de Cauchy–Riemann**. Con esa licencia en mano, el resultado es una de las historias más sorprendentes de la matemática aplicada: si una función es analítica, su integral de contorno casi no depende del camino que elijamos; si el camino es cerrado, la integral vale **cero**; y si no vale cero, es porque la función esconde una singularidad dentro del contorno. Toda la información está en las singularidades. De esa idea nacen la fórmula integral de Cauchy — que reconstruye los valores de una función dentro de una región a partir de sus valores en la frontera — y sus aplicaciones que van desde el cálculo de integrales reales imposibles hasta las relaciones de dispersión que gobiernan la óptica de materiales reales.

+++

En las semanas 4, 5 y 6 estudiamos los números complejos, sus funciones elementales y la estructura de las funciones multivaluadas. Ahora llega el turno del cálculo diferencial e integral complejo.

La pregunta que guía esta semana es triple. Primero, la fundacional: ¿qué significa **derivar** cuando $z$ puede aproximarse a un punto desde *cualquier dirección* del plano? Su respuesta — las condiciones de Cauchy–Riemann — define la propiedad central: la **analiticidad**. Segundo, la operativa: ¿qué significa $\int f(z)\,dz$ cuando $z$ recorre una curva del plano? Tercero, la estructural: ¿de qué depende el resultado? En variable real, $\int_a^b f(x)\,dx$ depende solo de los extremos — es el teorema fundamental del cálculo. Veremos que en el plano complejo esta propiedad es **excepcional, no general**: sobrevive solo para funciones analíticas, y su extensión a contornos cerrados (el teorema de Cauchy-Goursat) es la puerta de entrada a toda la teoría de aplicaciones.

# Derivar en el plano complejo: las condiciones de Cauchy–Riemann

En variable real, derivar en $x_0$ exige que exista un único límite de $\frac{f(x)-f(x_0)}{x-x_0}$ — con solo dos direcciones posibles de aproximación: izquierda y derecha. En el plano complejo, la misma definición formal esconde una exigencia mucho más severa:

$$
f'(z_0)=\lim_{z\to z_0}\frac{f(z)-f(z_0)}{z-z_0},
$$

porque ahora $z$ puede llegar a $z_0$ **desde infinitas direcciones** (arriba, abajo, en espiral, tangencialmente...). El límite debe dar **el mismo número sea cual sea el camino**. Que esto sea posible es la excepción, no la regla — y las funciones que lo logran tienen propiedades extraordinarias.

```{figure} ./../images/limite_complejo.svg
:label: fig-limite_complejo.svg
:alt: Distintas aproximaciones a $z_0$
:align: center
Distintas aproximaciones a $z_0$.
```

Escribamos $f=u+iv$ con $u$, $v$ funciones reales de $(x,y)$ y evaluemos el límite por dos caminos ortogonales. **Horizontal** ($h$ real, $z=z_0+h$): la derivada parcial respecto a $x$,

$$
f'_x = \frac{\partial f}{\partial x} = u_x + i\,v_x.
$$

**Vertical** ($h$ real, $z=z_0+ih$): el denominador es $ih$, de modo que

$$
f'_y = \frac{1}{i}\frac{\partial f}{\partial y} = -i(u_y+i\,v_y) = v_y - i\,u_y.
$$

Si la derivada compleja existe, ambos resultados deben coincidir. Igualando partes reales e imaginarias ($f'_x=f'_y$) obtenemos las **[condiciones de Cauchy–Riemann](https://es.wikipedia.org/wiki/Ecuaciones_de_Cauchy-Riemann)**:

:::{math}
:label: eq-cr
u_x = v_y,
\qquad
u_y = -v_x.
:::

Son dos ecuaciones acopladas para las partes real e imaginaria: no basta que $u$ y $v$ sean diferenciables por separado; deben estar **entretejidas**. Ese acoplamiento es exactamente lo que el límite en "todas las direcciones" exige.

:::{note} Analiticidad: definición y teorema práctico

- $f$ es **diferenciable en $z_0$** si el límite anterior existe en ese punto.
- $f$ es **analítica** (u [holomorfa](https://es.wikipedia.org/wiki/Funci%C3%B3n_holomorfa)) en un **dominio abierto** $\Omega$ si es diferenciable en *todos* sus puntos. La analiticidad es una propiedad de regiones, no de puntos aislados.

**Teorema (versión práctica).** Si $u$ y $v$ tienen derivadas parciales primeras **continuas** en una vecindad y satisfacen {eq}`eq-cr` en $z_0$, entonces $f$ es diferenciable en $z_0$. Si {eq}`eq-cr` vale en todo $\Omega$, $f$ es analítica en $\Omega$. (Las condiciones de Cauchy–Riemann son necesarias; junto con la continuidad de las parciales, también suficientes.)
:::

:::{note} Ejemplos: quién tiene la licencia y quién no

- **$f(z)=z^2$:** 

Para este caso, $u=x^2-y^2$, $v=2xy$. Entonces $u_x=2x=v_y$ y $u_y=-2y=-v_x$: cumple {eq}`eq-cr` en todo el plano → **analítica en todo el plano** (función *entera*). Lo mismo vale para todo polinomio, y para $e^z$, $\sin z$, $\cos z$, $\sinh z$, $\cosh z$: todas enteras.

- **$f(z)=\bar z=x-iy$:** 

En este caso $u=x$, $v=-y$. Entonces $u_x=1$ y $v_y=-1$: viola {eq}`eq-cr` en **cada** punto del plano → no analítica en ningún lado. 

- **$f(z)=|z|^2=x^2+y^2$:**

Para esta función, $u=x^2+y^2$, $v=0$. Cauchy–Riemann exige $2x=0$ y $2y=0$: solo se cumplen en $z=0$. La función es diferenciable en **un único punto**, pero no analítica en ningún dominio: un recordatorio de que analiticidad requiere una *vecindad* completa.

- **$f(z)=1/z$:** 

$\frac{1}{z}$ cumple Cauchy–Riemann en todo el plano **excepto en $z=0$**: es analítica en el plano "pinchado" (y sus ramas), y $z=0$ es su **singularidad**. Igual con las ramas de $\ln z$ y $\sqrt{z}$: son analíticas exactamente en el plano *cortado* (rama principal). Los cortes de rama resultan ser, en este lenguaje, las fronteras del dominio de analiticidad.
:::

## La física escondida en Cauchy–Riemann

El acoplamiento de {eq}`eq-cr` tiene consecuencias físicas inmediatas. Derivando la primera ecuación respecto a $x$, la segunda respecto a $y$, y sumando:

$$
\nabla^2 u = u_{xx}+u_{yy} = v_{yx} - v_{xy} = 0,
$$

y análogamente $\nabla^2 v=0$: **las partes real e imaginaria de una función analítica son armónicas** — resuelven la ecuación de Laplace en 2D. Además, los gradientes $\nabla u=(u_x,u_y)$ y $\nabla v=(v_x,v_y)$ son ortogonales — usando {eq}`eq-cr`, su producto punto vale $u_xv_x+u_yv_y = v_yv_x + (-v_x)v_y = 0$ —: las familias de curvas de nivel $u=\text{const}$ y $v=\text{const}$ se cortan **en ángulo recto**.

Esta es la razón por la que las funciones analíticas son el lenguaje natural de los problemas planos de potencial: si $\Omega(z)=\phi(x,y)+i\psi(x,y)$ es analítica, entonces $\phi$ puede leerse como **potencial electrostático** (o velocidad potencial) y $\psi$ como su **función de corriente** asociada; sus curvas de nivel — equipotenciales y líneas de campo — forman retículas ortogonales listas para usar. Revisaremos este punto al final de la lección, al hablar de funciones de Green.

Con la licencia de analiticidad definida, ya podemos integrar.

# Caminos, curvas y contornos

Para integrar necesitamos primero un camino. Un **camino** (o curva) en el plano complejo es una función continua

$$
z(t) = x(t) + i\,y(t), \qquad t\in[a,b],
$$

con $x(t)$, $y(t)$ derivables y $z'(t)\neq 0$ (curva **suave**); si la curva es suave por tramos la llamamos **contorno**. La orientación importa: recorrer $z(t)$ de $a$ a $b$ o de $b$ a $a$ son caminos distintos, y ya anticipamos que sus integrales diferirán en un signo.

:::{note} Algunos caminos "típicos"

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

pero la fórmula paramétrica {eq}`eq-def-integral` es casi siempre la más cómoda: **parametrizar y calcular**.

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

```{figure} ./../images/contorno_cerrado.svg
:label: fig-contorno_cerrado.svg
:alt: Un contorno cerrado $C$ en una región simple conectada $\Omega$
:align: center
Un contorno cerrado $C$ en una región simplemente conexa $\Omega$.
```


:::{note} Ejemplo: dos caminos, un solo resultado

Calculemos $\displaystyle\int_C e^z\,dz$ de $0$ a $1 + i\pi/2$.

- *Camino recto*: $z(t) = t(1+i\pi/2)$, $t\in[0,1]$:

$$
\int_0^1 e^{t(1+i\pi/2)}\,(1+i\pi/2)\,dt = e^{1+i\pi/2} - e^0.
$$

- *Camino en L* (de $0$ a $1$, luego de $1$ a $1+i\pi/2$): se obtiene, tras dos integrales elementales, el mismo valor. En ambos casos:

$$
\int_C e^z\,dz = e^{1+i\pi/2} - 1 = ie - 1,
$$

donde usamos $e^{i\pi/2}=i$. No sorprende: $e^z$ es analítica en todo el plano (dominio simplemente conexo) y tiene antiderivada.
:::

La independencia del camino tiene un contrapunto inmediato: si una función **no** tiene antiderivada en el dominio, sus integrales **sí** dependen del camino. Es el caso de $\bar z = x - iy$: no es analítica (falla las ecuaciones de Cauchy-Riemann {eq}`eq-cr`), y su integral de $0$ a $1+i$ cambia si se va por el segmento recto o por el "*camino en L*". La analiticidad no es un detalle técnico: es lo que decide si el teorema fundamental aplica.

Y hay un caso intermedio fascinante: $f(z) = 1/z$ tiene antiderivada ($\ln z$), pero $\ln z$ es **multivaluada**. Por eso $1/z$ es integrable sin problema por caminos abiertos que no crucen el corte de rama, mientras que toda vuelta cerrada alrededor del origen acumula el $2\pi i$ del ejemplo anterior. El corte de rama es, desde el punto de vista integral, la frontera más allá de la cual el teorema fundamental deja de aplicar con la rama elegida.

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

```{figure} ./../images/Cauchy_Goursat.svg
:label: fig-Cauchy_Goursat.svg
:alt: Contornos de Cauchy-Goursat
:align: center
Contornos de Cauchy- Goursat.
```

# La fórmula integral de Cauchy

Este es el resultado central y uno de los más profundos del análisis matemático. Si $f$ es analítica en una región que contiene al contorno cerrado $C$ y su interior, y $z_0$ es un punto interior a $C$, entonces

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
| Cauchy–Riemann | $u_x=v_y$, $\;u_y=-v_x$ | $f=u+iv$ diferenciable ⇒ analítica si parciales continuas |
| Teorema fundamental | $\int_C f\,dz = F(z_2)-F(z_1)$ | $F'=f$, dominio simplemente conexo |
| Cauchy-Goursat | $\oint_C f\,dz = 0$ | $f$ analítica dentro y sobre $C$ |
| Deformación de contornos | $\oint_{C_1} f\,dz = \oint_{C_2} f\,dz$ | no cruzar singularidades |
| Fórmula integral de Cauchy | $f(z_0) = \frac{1}{2\pi i}\oint_C \frac{f(z)}{z-z_0}\,dz$ | $z_0$ interior, $f$ analítica |
| Derivadas bajo la integral | $f^{(n)}(z_0) = \frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z-z_0)^{n+1}}\,dz$ | idem |
| Estimación ML | $\left\|\oint_C f\,dz\right\| \le M\cdot L$ | $\|f\|\le M$ en $C$, longitud $L$ |

La estimación ML merece una mención aparte: es la herramienta para mostrar que una integral **tiende a cero** — como haremos con el arco de semicírculo en la aplicación siguiente.
:::




:::{seealso} Referencias
@arfken2005mathematical [Cap. 6.2 - 6.4 "FUNCTIONS OF A COMPLEX VARIABLE I", pág. 413-430]

@boas2006mathematical [Cap. 14 "Functions of a Complex Variable", pág. 666-678]

@riley2006mathematical [Cap. 24 "Complex variables", pág. 824-830]
:::

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
