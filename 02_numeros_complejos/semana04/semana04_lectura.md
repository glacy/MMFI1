---
title: Variable compleja
description: Variable compleja
short_title: Variable compleja
author: " "
tags: [numeros_complejos, euler, argand, representacion, operaciones]
subject: Variable compleja - Semana 4
keywords: [números, complejos, Euler, representación, operaciones, Argand]
exports:
  - format: pdf
    template: curvenote
    output: ./semana4_lectura.pdf
downloads:
  - file: ./semana4_lectura.md
    title: semana4_lectura.md
  - file: ./semana4_lectura.pdf
    title: semana4_lectura.pdf
  # - file: ./coordenadas_polares.asy
  #   title: coordenadas_polares.asy
  - file: ./conjugado_complejo.asy
    title: conjugado_complejo.asy
---

:::{aside} [Ursula Keller](https://es.wikipedia.org/wiki/Ursula_Keller)
es una física e ingeniera suiza reconocida mundialmente por sus contribuciones al desarrollo de los láseres ultrarrápidos. Su investigación utiliza análisis de ondas electromagnéticas, donde los números complejos son imprescindibles para describir la propagación de pulsos ópticos, la interacción luz-materia y los fenómenos de dispersión y absorción en medios. Keller es pionera en técnicas que hoy permiten aplicaciones como la cirugía láser de alta precisión, la comunicación óptica de alta velocidad y la caracterización de materiales a nivel nanoscópico. Actualmente funge como Directora de [NCCR / MUST](https://www.nccr-must.ch/home.html) y profesora en la Escuela Politécnica de Zúrich.

```{figure} ./../images/ursula_keller.jpg
:label: fig-ursula_keller.jpg
:alt: retrato de Dra. Ursula Keller
:align: center
Dra. Ursula Keller (1959 - )
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de
1. **Reconocer y comprender la naturaleza de los números complejos**:
Identificar la estructura de un número complejo en forma rectangular, distinguiendo su parte real e imaginaria, y representar gráficamente los números complejos en el plano de Argand.

2. **Manejar las distintas representaciones de los números complejos**:
Convertir números complejos entre sus formas rectangular, polar y exponencial, comprendiendo el significado del módulo y el argumento, así como su interpretación geométrica.

3. **Aplicar operaciones básicas con números complejos**:
Realizar suma, resta, multiplicación, división y conjugación de números complejos en sus distintas representaciones, interpretando los resultados tanto algebraica como geométricamente.
```

+++ { "part": "abstract" }

Los números complejos constituyen una extensión fundamental del sistema de los números reales, al introducir la unidad imaginaria $i=\sqrt{-1}$. En electromagnetismo, la representación compleja simplifica el análisis de ondas y circuitos al expresar amplitudes y fases de manera compacta; en mecánica cuántica, los números complejos son esenciales para describir el estado y evolución de las partículas mediante funciones de onda; en ingeniería, permiten abordar problemas de control, análisis de señales, dinámica de fluidos y óptica, proporcionando herramientas que integran tanto el comportamiento oscilatorio como el disipativo de sistemas reales. Así, los números complejos no solo enriquecen el lenguaje matemático, sino que se convierten en una herramienta indispensable para la modelización y comprensión del mundo físico.
+++

(sec:num_compl)=
# Números complejos

Los [números complejos](https://es.wikipedia.org/wiki/N%C3%BAmero_complejo) surgieron como una solución a problemas
algebraicos en el siglo XVI. Durante este periodo, matemáticos italianos
como [Gerolamo Cardano](https://es.wikipedia.org/wiki/Gerolamo_Cardano) se enfrentaron a ecuaciones cúbicas que, en
ciertos casos, requerían tomar la raíz cuadrada de números negativos
para encontrar soluciones reales. Aunque estos números no tenían una
interpretación física o geométrica clara en ese momento, se utilizaron
como herramientas algebraicas. Cardano, en su obra [Ars Magna](https://es.wikipedia.org/wiki/Ars_magna) (1545),
presentó por primera vez las soluciones que involucraban raíces
cuadradas de números negativos, aunque no comprendía completamente su
significado.

En la física y la ingeniería, los números complejos se utilizan
ampliamente en el análisis de señales y sistemas. En ingeniería
eléctrica, por ejemplo, los números complejos permiten simplificar la
representación de ondas sinusoidales y analizar circuitos de corriente
alterna mediante el uso de [impedancias](https://es.wikipedia.org/wiki/Impedancia) complejas. Las [transformadas de
Fourier](https://es.wikipedia.org/wiki/Transformada_de_Fourier), que descomponen señales en componentes de frecuencia, se
expresan naturalmente en términos de números complejos. 

```{note} Ondas sinusoidales con números complejos (fasores)

:::{math} 
\begin{align}
x(t) &= A\cos(\omega t + \phi) = \Re\{A e^{i\phi} e^{i\omega t}\}
      = \Re\{Xe^{i\omega t}\}, \\
E(z,t) &= \Re\{E_0e^{i(kz-\omega t)}\}, \qquad
        \text{(onda plana armónica)}. \\
\text{Si } x_1(t)&=\Re\{X_1 e^{i\omega t}\}, x_2(t)=\Re\{X_2 e^{i\omega t}\}
\end{align}
:::
```

Uno de los campos donde los números complejos son absolutamente
fundamentales es la [mecánica cuántica](https://es.wikipedia.org/wiki/Mec%C3%A1nica_cu%C3%A1ntica). Las funciones de onda, que
describen el estado cuántico de partículas, son funciones complejas, y
las operaciones en este *espacio de funciones* son clave para determinar
probabilidades y realizar predicciones sobre el comportamiento de
sistemas cuánticos.

Matemáticamente, un número complejo es cualquier cantidad expresable de
la forma $$z=a+bi$$ donde $a$ y $b$ son números reales e
$i=\sqrt{-1}$, se conoce como [*unidad imaginaria*](https://es.wikipedia.org/wiki/Unidad_imaginaria); es decir, es una constante que satisface la [ecuación cuadrática](https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_segundo_grado) $x^2+1=0$.

El conjunto de los números complejos se denota por $\mathbb{C}$.
:::{note} Raíces complejas

La ecuación $z^2-2z+2=0$ tiene por solución
$$z=\frac{2\pm\sqrt{4-8}}{2}=\frac{2\pm\sqrt{-4}}{2}=1\pm i$$

---

👀 Note que una ecuación algebraica tiene raíces complejas si su discriminante es negativo.
:::
(sec:representacion)=
## Representación de los números complejos


### Parte real e imaginaria

A partir de la relación entre las coordenadas rectangulares $(x,y)$ de
un punto y sus coordenadas polares $(r;\theta)$ (ver Figura
[Figura %s](#fig-coordenadas_polares)) es posible expresar un número complejo
$z$ en *forma rectangular*: $$z=(x,y)=x+yi$$ o en *forma polar*:
$$z=r(\cos \theta +i\sin \theta),$$ donde $x$ se conoce como la *parte
real* y $y$ la *parte imaginaria* de $z$. A $r$ y a $\theta$ se les
llama el *módulo* y el *argumento* de $z$, respectivamente.

Las relaciones de conversión entre estas formas son:
$$x = r \cos \theta, \quad y = r \sin \theta$$
$$r = \sqrt{x^2 + y^2}, \quad \theta = \arctan\left(\frac{y}{x}\right) \quad (\text{considerando el cuadrante})$$

```{figure} ./../images/coordenadas_polares.*
:alt: representacion polar
:label: fig-coordenadas_polares

Coordenadas polares. 
```

Símbolicamente:

:::{math}
\begin{aligned}
\mbox{Re}(z)=& \Re (z)=x,\\
\mbox{Im}(z)=& \Im (z)=y,\\
\mod (z)=&  |z|=r,\\
\arg(z)=&  \theta .
\end{aligned}
:::

Generalmente $\theta$ se mide en radianes, y cuando su valor se toma en
el rango $(-\pi,\pi]$, se le llama *argumento principal*. 

El [**diagrama de Argand**](https://es.wikipedia.org/wiki/Plano_complejo) también conocido como *plano de Argand* o
*plano complejo*, es una representación gráfica de números complejos en
un plano bidimensional. El eje horizontal (generalmente llamado *eje
real*) representa la parte real de un número complejo, mientras que el
eje vertical (llamado *eje imaginario*) representa la parte imaginaria
de un número complejo (ver
[Figura %s](#fig-argand). Este
diagrama es una herramienta fundamental en matemáticas para visualizar y
operar con números complejos. 

```{figure} ./../images/argand.svg
:label: fig-argand

Plano complejo o de Argand.
```

Note que, por ejemplo

:::{math}
\begin{aligned}
(x,0)=&x,\\
(0,1)=&i,\\
(0,-1)=&-i;
\end{aligned}
:::
 y que $|i|=|-i|=1.$ Además, que
$\arg (\pm i)=\pm \pi/2$.

:::{note} Ejemplo - Plano complejo
 
Considere el número
$z=(1,\sqrt{3})=\textcolor{red}{1}+i\textcolor{red}{\sqrt{3}}=\textcolor{blue}{2}\left(\cos \textcolor{blue}{\frac{\pi}{3}}+i\sin\textcolor{blue}{\frac{\pi}{3}}\right)$

```{figure} ./../images/argand-ejemplo1.*
:alt: ejemplo 

Representacion de número complejo en diagrama de Argand.
```

:::

:::{note} Ejemplo - Plano complejo


Considere el número
$z=(-1,\sqrt{3})=\textcolor{red}{-1}+i\textcolor{red}{\sqrt{3}}=\textcolor{blue}{2}\left(\cos \textcolor{blue}{\frac{2\pi}{3}}+i\sin\textcolor{blue}{\frac{2\pi}{3}}\right)$

```{figure} ./../images/argand-ejemplo2.*
:alt: ejemplo 

Representacion de número complejo en diagrama de Argand.
```
:::

Dada la periodicidad de las funciones trigonométricas, note que hay
varios valores de $\theta$ que representan el mismo número complejo.

:::{note} Periodicidad de los números complejos
El número
$z=(-1,-1)=-1-i$ es equivalente a
$$z = \sqrt{2}e^{i(-\frac{3\pi}{4} + 2n\pi)} = \textcolor{blue}{\sqrt{2}}\left[\cos \left(\textcolor{blue}{-\frac{3\pi}{4}}+2n\pi\right) +i\sin \left(\textcolor{blue}{-\frac{3\pi}{4}} +2n\pi\right) \right],$$
donde $n=0,1,2,\ldots$ es un entero.

```{figure} ./periodicidad_numeros_complejos.*
:alt: ejemplo

Representación de número complejo en diagrama de Argand.
```

Para $n=0$:
$$z = \sqrt{2}\left[\cos \left(-\frac{3\pi}{4}\right) + i\sin \left(-\frac{3\pi}{4} \right) \right] = \sqrt{2}\left[ -\frac{\sqrt{2}}{2} - i\frac{\sqrt{2}}{2} \right] = -1 - i.$$

Para $n=1$:
$$z = \sqrt{2}\left[\cos \left(\frac{5\pi}{4}\right) + i\sin \left(\frac{5\pi}{4} \right) \right] = \sqrt{2}\left[ -\frac{\sqrt{2}}{2} - i\frac{\sqrt{2}}{2} \right] = -1 - i.$$

:::


### Conjugado complejo


El número complejo $\bar{z}=x-iy$, obtenido de cambiar el signo de $i$
en $z=x+iy$ se llama *conjugado complejo* de $z$:
$$\bar{z}=r[\cos (-\theta) +i\sin (-\theta)]=r(\cos \theta -i\sin \theta)=(x,-y)$$

En algunos campos, como en la estadística o la mecánica cuántica, se
utiliza el símbolo $ z^* $ en lugar de $\bar{z}$.

Por lo tanto, el módulo de un número complejo, puede escribirse también
como $$|z|=r=\sqrt{z\bar{z}}=\sqrt{x^2+y^2}.$$

Note que

:::{math}
\begin{aligned}
\arg (\bar{z})=&-\arg (z)=-\theta,\\
\mod(\bar{z})=&\mod{(z)}=r.
\end{aligned}
:::

:::{note} Conjugado complejo


```{figure} ./conjugado_complejo.*
:label: example-conjugado
:alt: ejemplo

Representación del conjugado complejo en diagrama de Argand.
```
:::

(sec:euler)=
### Fórmula de Euler

A partir de la expansión en serie de $\cos\theta$ y $\sin\theta$, puede
escribirse $$e^{i\theta}=\cos \theta+i\sin \theta$$ de manera que
cualquier número complejo también puede expresarse como

:::{math}
:label: eq-euler
z=r(\cos \theta +i\sin \theta) =r e^{i\theta}.
:::

A esta expresión, se
le conoce como [*Fórmula de Euler*](https://es.wikipedia.org/wiki/F%C3%B3rmula_de_Euler). Note que
$$\bar{z}=r e^{-i\theta},\\$$ (Ver **Ejemplo - [Conjugado
complejo](#example-conjugado)**.)

#### Teorema de Moivre

:::{math}
(\cos \theta + i\sin \theta)^n=\cos (n\theta)+i\sin (n\theta)
:::

:::{note} Aplicacion Teorema de Moivre
$$z^n+\frac{1}{z^n}=2\cos(n\theta) $$
$$z^n-\frac{1}{z^n}=2i\sin(n\theta) $$
:::

## Operaciones elementales con números complejos

Las operaciones elementales con números complejos son una extensión de
las operaciones aritméticas básicas para los números reales, pero
considerando las propiedades de los números complejos, particularmente
la unidad imaginaria $i$. Estas operaciones incluyen la suma, resta,
multiplicación, división, conjugación, y el cálculo del módulo y
argumento.

### Suma/resta de números complejos

Dado dos números complejos $z_1 = a_1 + b_1i$ y $z_2 = a_2 + b_2i$, la
suma/resta se realiza sumando las partes reales y las partes imaginarias
por separado: $$z_1 \pm z_2 = (a_1 \pm a_2) + (b_1 \pm b_2)i$$

:::{note} Suma de números complejos
Considere los números $z_1=3 + 4i$ y $z_2=1 + 2i$:

$$z_1+z_2=(3 + 4i) + (1 + 2i) = (3 + 1) + (4 + 2)i = 4 + 6i$$
:::

### Multiplicación de números complejos

Para multiplicar dos números complejos, se aplica la propiedad
distributiva:
$$z_1 \cdot z_2 = (a_1 + b_1i)(a_2 + b_2i) = (a_1a_2 - b_1b_2) + (a_1b_2 + b_1a_2)i$$

:::{note} Multiplicación de números complejos 

```{math} 
\begin{aligned}
(2 + 3i)(1 + 4i) &= (2 \times 1 - 3 \times 4) + (2 \times 4 + 3 \times 1)i \\ &= 2 - 12 + 8i + 3i \\ &= -10 + 11i
\end{aligned} 
```
:::

A partir de la fórmula de Euler, también es posible expresar la
multiplicación de números complejos:
$$z_1 \cdot z_2 = (r_1 e^{i\theta_1})(r_2 e^{i\theta_2})=r_1 r_2  e^{i(\theta_1 + \theta_2)}.$$

De esta expresión, se puede observar que 
$$|z_1 \cdot z_2|= |z_1||z_2| $$
y 
$$\arg (z_1 \cdot z_2)=\arg(z_1)+\arg(z_2).$$

Note que multiplicar un número complejo por $\pm i$ corresponde en una
"rotación" en el plano complejo de $\pm \pi/2$.

:::{note} Multiplicación de un número complejo por $\pm i$.

```{figure} ./../images/rotacion_perpendicular.*
:alt: ejemplo 

Representación del conjugado complejo en diagrama de Argand.
```


:::

### División de números complejos

Para dividir $z_1$ entre $z_2$, multiplicamos el numerador y el
denominador por el conjugado del denominador. Si $z_2 = a_2 + b_2i$, su
conjugado es $\bar{z_2} = a_2 - b_2i$. Este proceso se conoce como *racionalización* y nos permite eliminar la parte imaginaria del denominador:

$$\frac{z_1}{z_2} = \frac{(a_1 + b_1i)(a_2 - b_2i)}{(a_2 + b_2i)(a_2 - b_2i)} = \frac{(a_1a_2 + b_1b_2) + (b_1a_2 - a_1b_2)i}{a_2^2 + b_2^2}$$

:::{note} División de números complejos
```math:
 \begin{aligned}
\frac{3 + 2i}{1 - i} = \frac{(3 + 2i)(1 + i)}{(1 - i)(1 + i)} = \frac{(3 + 2i + 3i - 2)}{1 + 1} = \frac{(1 + 5i)}{2} = \frac{1}{2} + \frac{5}{2}i
\end{aligned}
```
:::

También es posible realizar la división de números complejos a partir de
la fórmula de Euler:

$$\frac{z_1}{z_2}=\frac{r_1}{r_2}e^{i(\theta_1 - \theta_2)},$$

de donde

$$\left|\frac{z_1}{z_2}\right|=\frac{|z_1|}{|z_2|},$$

y

$$\arg \left(\frac{z_1}{z_2}\right)=\arg(z_1)-\arg(z_2).$$

:::{note} División de números complejos
$$\frac{i+1}{1-i}=\frac{\sqrt{2}e^{i\pi/4}}{\sqrt{2}e^{-i\pi/4}}=e^{i\pi/2}=i$$
:::

### Argumento y módulo de un número complejo

El argumento de un número complejo $z = a + bi$ es el ángulo $\theta$
que forma el vector $z$ con el eje real positivo en el plano de Argand.
Este ángulo está dado por:
$$\theta = \arg(z) = \tan^{-1}\left(\frac{b}{a}\right),$$

mientras que el módulo de un número complejo, $|z|$, es su distancia al
origen en el plano complejo: $$|z| = \sqrt{a^2 + b^2}$$

:::{note} Argumento y módulo de un número complejo
$$|\sqrt{5}+3i|=\sqrt{25+9}=\sqrt{14},$$
$$\arg (\sqrt{5}+3i) = \tan^{-1}\left(\frac{3}{\sqrt{5}}\right)$$
:::






:::{seealso} Referencias

@boas2006mathematical [Cap. 2 "Complex Numbers", pág. 46-56]

@arfken2005mathematical [Cap. 6 "Functions of a Complex Variable", pág. 403-408]

@riley2006mathematical [Cap. 3 "Complex numbers and hyperbolic functions", pág. 83-95]

:::