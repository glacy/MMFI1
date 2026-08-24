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
    output: ./semana04_lectura.pdf
downloads:
  # - file: ./semana04_lectura.md
  #   title: semana04_lectura.md
  # - file: ./semana04_lectura.pdf
  #   title: semana04_lectura.pdf
  # - file: ./coordenadas_polares.asy
  #   title: coordenadas_polares.asy
  # - file: ./conjugado_complejo.asy
  #   title: conjugado_complejo.asy
---

:::{aside} [Jennifer Doudna](https://es.wikipedia.org/wiki/Jennifer_Doudn )
Pionera en la tecnología de edición genética CRISPR-Cas9, una herramienta revolucionaria que permite modificar el ADN con una precisión sin precedentes. Sus desarrollos tienen aplicaciones potenciales en la medicina personalizada, la agricultura y el tratamiento de enfermedades genéticas. Actualmente continúa investigando en el Instituto Gladstone de Datos y Bioterapéutica.


```{figure} ./../images/Jennifer_Doudna.png
:label: fig-Jennifer_Doudna.png
:alt: retrato de Dra. Jennifer Doudna
:align: center
Jennifer_Doudna (1964 - ). Foto: Christopher Michel ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3AJennifer_Doudna_in_2021_at_the_Innovative_Genomics_Institute_03.jpg), CC BY-SA 4.0).

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

En física e ingeniería, a menudo es más conveniente trabajar con fasores que con funciones trigonométricas explícitas. Los números complejos permiten encapsular la amplitud y la fase de una onda en una sola expresión, simplificando drásticamente los cálculos de superposición y derivación.

:::{math}
\begin{align}
x(t) &= A\cos(\omega t + \phi) = \Re\{A e^{i\phi} e^{i\omega t}\}
      = \Re\{Xe^{i\omega t}\}, \\
E(z,t) &= \Re\{E_0e^{i(kz-\omega t)}\}, \qquad
        \text{(onda plana armónica)}. \\
\text{Si } x_1(t)&=\Re\{X_1 e^{i\omega t}\}, x_2(t)=\Re\{X_2 e^{i\omega t}\}
\end{align}
:::

**Aplicación: Suma de ondas**

Considere la superposición de dos ondas de la misma frecuencia pero diferentes fases y amplitudes:
$$x_1(t) = 3\cos(\omega t)$$
$$x_2(t) = 4\cos(\omega t + \pi/2)$$

En notación compleja, esto se expresa como:
$$x_1(t) = \Re\{3 e^{i\omega t}\}, \quad x_2(t) = \Re\{4 e^{i\pi/2} e^{i\omega t}\} = \Re\{4i e^{i\omega t}\}$$

La onda resultante es:
$$x(t) = x_1(t) + x_2(t) = \Re\{(3 + 4i) e^{i\omega t}\}$$

Calculamos el fasor resultante $X = 3 + 4i$:
$$|X| = \sqrt{3^2 + 4^2} = 5, \quad \arg(X) = \arctan\left(\frac{4}{3}\right) \approx 53.13^\circ$$

Por lo tanto, la onda resultante es:
$$x(t) = 5\cos(\omega t + 53.13^\circ)$$

Este método evita el uso tedioso de identidades trigonométricas de suma a producto.
```

Uno de los campos donde los números complejos son absolutamente
fundamentales es la [mecánica cuántica](https://es.wikipedia.org/wiki/Mec%C3%A1nica_cu%C3%A1ntica). Las funciones de onda, que
describen el estado cuántico de partículas, son funciones complejas, y
las operaciones en este *espacio de funciones* son clave para determinar
probabilidades y realizar predicciones sobre el comportamiento de
sistemas cuánticos.

:::{note} Ejemplo - Mecánica Cuántica
En el caso del átomo de hidrógeno, el estado fundamental de menor energía está descrito por la función de onda $\psi(r, \theta, \phi) = \frac{1}{\sqrt{\pi a_0^3}} e^{-r/a_0}$, donde $a_0$ es el radio de Bohr. Aunque esta función específica es real, los estados con momento angular (orbitales $p, d, f, \dots$) dependen intrínsecamente de números complejos a través de los armónicos esféricos $Y_l^m(\theta, \phi) \propto e^{im\phi}$. La parte compleja es esencial para describir la fase cuántica y la interferencia entre estados.
:::

Matemáticamente, un número complejo es cualquier cantidad expresable de
la forma $$z=a+bi$$ donde $a$ y $b$ son números reales e
$i=\sqrt{-1}$, se conoce como [*unidad imaginaria*](https://es.wikipedia.org/wiki/Unidad_imaginaria); es decir, es una constante que satisface la [ecuación cuadrática](https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_segundo_grado) $x^2+1=0$.

El conjunto de los números complejos se denota por $\mathbb{C}$.
:::{note} Raíces complejas

Un criterio fundamental para identificar si una ecuación polinómica de segundo grado tiene soluciones complejas es el signo de su discriminante. A continuación, mostramos un ejemplo concreto donde el discriminante es negativo, lo que nos lleva inevitablemente al uso de números imaginarios.

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
[Figura %s](#fig-argand)). Este
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

Para visualizar mejor cómo se traducen las coordenadas $(x,y)$ a la notación algebraica y polar, analicemos un número específico. Observe cómo el color resalta los componentes que corresponden a cada notación.

Considere el número
$z=(1,\sqrt{3})=\textcolor{red}{1}+i\textcolor{red}{\sqrt{3}}=\textcolor{blue}{2}\left(\cos \textcolor{blue}{\frac{\pi}{3}}+i\sin \textcolor{blue}{\frac{\pi}{3}}\right)$

```{figure} ./../images/argand-ejemplo1.*
:alt: ejemplo

Representacion de número complejo en diagrama de Argand.
```

:::

:::{note} Ejemplo - Plano complejo

Ahora consideremos un punto en el segundo cuadrante. Note cómo cambia el signo de la parte real y cómo esto afecta el valor del argumento $\theta$, que ahora es mayor a $\pi/2$.

Considere el número
$z=(-1,\sqrt{3})=\textcolor{red}{-1}+i\textcolor{red}{\sqrt{3}}=\textcolor{blue}{2}\left(\cos \textcolor{blue}{\frac{2\pi}{3}}+i\sin \textcolor{blue}{\frac{2\pi}{3}}\right)$

```{figure} ./../images/argand-ejemplo2.*
:alt: ejemplo

Representacion de número complejo en diagrama de Argand.
```
:::

Dada la periodicidad de las funciones trigonométricas, note que hay
varios valores de $\theta$ que representan el mismo número complejo.

:::{note} Periodicidad de los números complejos

Dado que las funciones trigonométricas son periódicas, el ángulo $\theta$ que representa a un número complejo no es único. Podemos sumar múltiplos enteros de $2\pi$ al argumento sin alterar el valor del número. Esto es crucial para entender las raíces de los números complejos.

El número
$z=(-1,-1)=-1-i$ es equivalente a
$$z = \sqrt{2}e^{i(-\frac{3\pi}{4} + 2n\pi)} = \textcolor{blue}{\sqrt{2}}\left[\cos \left(\textcolor{blue}{-\frac{3\pi}{4}}+2n\pi\right) +i\sin \left(\textcolor{blue}{-\frac{3\pi}{4}} +2n\pi\right) \right],$$
donde $n=0,1,2,\ldots$ es un entero.

```{figure} ./../images/periodicidad_numeros_complejos.*
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

Geométricamente, el conjugado de un número complejo es su reflejo respecto al eje real. Esta propiedad es fundamental para calcular módulos y realizar divisiones, como veremos más adelante.

```{figure} ./../images/conjugado_complejo.*
:label: example-conjugado
:alt: Representación del conjugado complejo en diagrama de Argand.

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

:::{note} Aplicación Teorema de Moivre

El teorema de De Moivre facilita el cálculo de potencias de números complejos en forma polar. Una aplicación útil es la creación de expresiones para funciones trigonométricas en términos de potencias de $z$, lo cual es clave en la fórmula de Euler y en identidades trigonométricas.

Por ejemplo, para calcular $(1+i)^6$, convertimos primero a forma polar:
$1+i = \sqrt{2}(\cos \frac{\pi}{4} + i \sin \frac{\pi}{4})$.

Aplicando el teorema:
$$(1+i)^6 = (\sqrt{2})^6 \left( \cos \left(6 \cdot \frac{\pi}{4}\right) + i \sin \left(6 \cdot \frac{\pi}{4}\right) \right)$$
$$= 8 \left( \cos \left(\frac{3\pi}{2}\right) + i \sin \left(\frac{3\pi}{2}\right) \right)$$
$$= 8(0 - i) = -8i$$

Identidades derivadas:
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

La suma de números complejos es intuitiva: simplemente sumamos las partes "parecidas" entre sí. Es análogo a sumar vectores componente a componente.

Considere los números $z_1=3 + 4i$ y $z_2=1 + 2i$:

$$z_1+z_2=(3 + 4i) + (1 + 2i) = (3 + 1) + (4 + 2)i = 4 + 6i$$
:::

### Multiplicación de números complejos

Para multiplicar dos números complejos, se aplica la propiedad
distributiva:
$$z_1 \cdot z_2 = (a_1 + b_1i)(a_2 + b_2i) = (a_1a_2 - b_1b_2) + (a_1b_2 + b_1a_2)i$$

:::{note} Multiplicación de números complejos

Al multiplicar, recordamos que $i^2 = -1$. El resultado tiene una parte real que proviene de los términos "reales" y del producto de imaginarios, y una parte imaginaria que proviene de los productos cruzados.

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

Una propiedad geométrica fascinante es que multiplicar por $i$ rota el vector en el plano complejo $90^\circ$ en sentido antihorario, y multiplicar por $-i$ lo rota $90^\circ$ en sentido horario.

```{figure} ./../images/rotacion_perpendicular.*
:alt: ejemplo

Representación de la multiplicación por i en el diagrama de Argand.
```


:::

### División de números complejos

Para dividir $z_1$ entre $z_2$, multiplicamos el numerador y el
denominador por el conjugado del denominador. Si $z_2 = a_2 + b_2i$, su
conjugado es $\bar{z_2} = a_2 - b_2i$. Este proceso se conoce como *racionalización* y nos permite eliminar la parte imaginaria del denominador:

$$\frac{z_1}{z_2} = \frac{(a_1 + b_1i)(a_2 - b_2i)}{(a_2 + b_2i)(a_2 - b_2i)} = \frac{(a_1a_2 + b_1b_2) + (b_1a_2 - a_1b_2)i}{a_2^2 + b_2^2}$$

:::{note} División de números complejos

Para dividir, utilizamos el truco de multiplicar por el conjugado para convertir el denominador en un número real, lo que simplifica la fracción. Este proceso se llama racionalización.

```{math}
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

:::{note} División de números complejos (Forma Exponencial)

La forma exponencial hace la división aún más simple: dividimos los módulos y restamos los argumentos. Compare la facilidad de este cálculo con el método algebraico anterior.

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

Calcular el módulo y el argumento es esencial para pasar de la forma rectangular a la polar. El módulo es la "longitud" del vector complejo, y el argumento es su "dirección".

$$|\sqrt{5}+3i|=\sqrt{5+9}=\sqrt{14},$$
$$\arg (\sqrt{5}+3i) = \tan^{-1}\left(\frac{3}{\sqrt{5}}\right)$$
:::






:::{seealso} Referencias

@boas2006mathematical [Cap. 2 "Complex Numbers", pág. 46-56]

@arfken2005mathematical [Cap. 6 "Functions of a Complex Variable", pág. 403-408]

@riley2006mathematical [Cap. 3 "Complex numbers and hyperbolic functions", pág. 83-95]

:::