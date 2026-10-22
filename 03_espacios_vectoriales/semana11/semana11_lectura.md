---
title: Operadores hermíticos
description: El problema de autovalores y la descomposición espectral
short_title: Operadores hermíticos
author: " "
tags: [espacios_vectoriales, operador, hermítico, unitario, autovalores, autovectores, descomposición_espectral, observables]
subject: Espacios vectoriales - Semana 11
keywords: [operador adjunto, operador hermítico, operador unitario, autovalores, autovectores, descomposición espectral, observables]
exports:
  - format: pdf
    template: curvenote
    output: ./semana11_lectura.pdf
downloads:
  - file: ./semana11_lectura.md
    title: semana11_lectura.md
  - file: ./semana11_lectura.pdf
    title: semana11_lectura.pdf
---

:::{aside} [Jelena Vučković](https://photonics.stanford.edu/)

es una ingeniera eléctrica serbio-estadounidense, profesora en Stanford University, donde lidera el [grupo de fotónica y computación cuántica del laboratorio Ginzton](https://nqp.stanford.edu/). Es directora fundadora de la iniciativa [Q-FARM](https://qfarm.stanford.edu/) (Stanford–SLAC) y cofundadora de la empresa [PsiQuantum](https://www.psiquantum.com/) y [SPINS Photonics](https://spinsphotonics.com/).  Es pionera del *diseño inverso* de dispositivos fotónicos: en lugar de adivinar estructuras nanométricas, usa algoritmos de optimización para "diseñar el operador" — estructuras que implementan la transformación óptica o cuántica exacta que se necesita. Su trabajo muestra que los operadores de esta semana no son abstracciones: en sus plataformas, los cúbits son fotones, las mediciones de observables son detectores, y los operadores hermíticos y unitarios se materializan circuito a circuito en silicio.

```{figure} ./../images/Jelena_Vučković.png
:label: fig-JelenaVuckovic
:alt: retrato de Dra. Jelena Vučković
:align: center
Jelena Vučković. Foto: Abvgddjezz ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File%3AJelena_Vuckovic%2C_Zeiss_Award_Ceremony%2C_Munich_2025.jpg), CC0).
```
:::

```{note} Objetivos
Al completar esta lección, serás capaz de

1. **Calcular el adjunto** $\mathcal{A}^\dagger$ de un operador definido por su acción sobre una base, y **aplicar** sus propiedades de manipulación (involución, reversión del orden, linealidad conjugada).

2. **Resolver el problema de autovalores** de operadores de dimensión finita — encontrando autovalores y autovectores por métodos matriciales — y **demostrar** que el espectro de un operador hermítico es real y que sus autoestados forman una base ortonormal completa.

3. **Construir la descomposición espectral** $\mathcal{A}=\sum_n a_n|a_n\rangle\langle a_n|$ de un operador hermítico y **usarla** para calcular probabilidades de medición y valores esperados de observables.

4. **Verificar** si un operador es unitario y **explicar** su papel como transformación que preserva productos internos: cambios de base y evolución temporal.

```

+++ { "part": "abstract" }

La semana anterior cerró con una promesa: en mecánica cuántica las bases ortonormales que alimentan las expansiones y las mediciones no se fabrican con Gram–Schmidt, sino que emergen de la **diagonalización de operadores hermíticos**. Esta semana se cumple esa promesa. El camino pasa por el **adjunto**, $\mathcal{A}^\dagger$ — el operador "conjugado" respecto del producto interno, ya presentado la semana anterior — que aquí se desarrolla por completo: su acción sobre kets y bras y sus reglas de manipulación. Sobre esa base se definen dos familias de operadores con significado físico opuesto y complementario: los **hermíticos** ($\mathcal{A}^\dagger=\mathcal{A}$), que garantizan resultados de medición reales, y los **unitarios** ($\mathcal{U}^\dagger=\mathcal{U}^{-1}$), que preservan normas y productos internos. El corazón de la semana es el **problema de autovalores**, $\mathcal{A}|a\rangle = a|a\rangle$: para operadores hermíticos su solución produce autovalores reales — los únicos resultados que un aparato de medición puede leer — y autoestados que forman una base ortonormal completa. Todo converge en la **descomposición espectral**, $\mathcal{A}=\sum_n a_n|a_n\rangle\langle a_n|$: la forma en que un observable se escribe como suma de proyectores ponderados por sus autovalores, que convierte la medición en un cálculo de probabilidades y valores esperados. En los simuladores cuánticos actuales, esta es exactamente la cadena que conecta la teoría con el laboratorio.

+++

La semana anterior terminó con una anticipación: las bases que usa el físico casi nunca salen de Gram–Schmidt, sino de la diagonalización de operadores hermíticos. Esta semana ese enunciado se convierte en teorema y en método. La pregunta que guía la semana tiene cuatro capas. Primera, la algebraica: si los operadores actúan sobre kets y producen kets, ¿cuál es su operación de "conjugación" — el análogo de $z \mapsto z^*$ para números complejos? Segunda, la clasificatoria: ¿qué operadores garantizan resultados de medición reales y bases ortonormales, y cuáles preservan la geometría del espacio? Tercera, la espectral: ¿cómo se encuentra el "sistema propio de coordenadas" de un operador — sus autovalores y autovectores — y qué significa físicamente? Cuarta, la física: ¿cómo se traduce el espectro de un observable en probabilidades de medición?

En el camino aparecen los dos tipos de operadores que la mecánica cuántica usa todo el tiempo. Los **hermíticos** representan observables: posición, momento, energía, espín. Los **unitarios** representan transformaciones que no cambian la física: rotaciones, cambios de base, la evolución temporal de un sistema aislado. Ambos se definen a través del adjunto, así que ese es el primer paso.

# El operador adjunto

La semana anterior se definió el **adjunto** (o *conjugado hermítico*) de un operador como el operador $\mathcal{A}^\dagger$ tal que, para todos los estados $|\xi\rangle$ y $|\psi\rangle$,

$$
\langle \xi|\mathcal{A}|\psi\rangle = \langle \psi|\mathcal{A}^\dagger|\xi\rangle^*,
$$

con elementos de matriz $(\mathcal{A}^\dagger)_{mn} = A_{nm}^*$: transponer y conjugar, la misma operación que convierte un ket en su bra. Una consecuencia inmediata de la definición es la correspondencia entre la acción sobre kets y sobre bras: si $\mathcal{A}|\psi\rangle=|\phi\rangle$, entonces

$$
\langle\psi|\mathcal{A}^\dagger=\langle \phi |.
$$

Lo que el operador hace sobre kets, su adjunto lo hace "en espejo" sobre bras. Esta semana el adjunto se desarrolla por completo, porque todo lo demás — hermíticos, unitarios, espectros — se construye sobre él.

La definición permite **calcular** el adjunto a partir de la acción del operador sobre una base. Sea $\{|\varphi_n\rangle\}$ una base ortonormal y supóngase conocido

$$
\mathcal{A}|\varphi_n\rangle = \sum_m |\varphi_m \rangle A_{mn},
\qquad
A_{mn}=\langle \varphi_m|\mathcal{A}|\varphi_n \rangle.
$$

Insertando la descomposición de la identidad en {eq}`eq-descomposicion-outer` de la semana anterior — o, equivalentemente, expandiendo el vector imagen en la base — se obtiene la acción del adjunto sobre kets:

:::{math}
:label: eq-adj-ket
\mathcal{A}^\dagger|\varphi_n \rangle = \sum_m |\varphi_m\rangle A^*_{nm}.
:::

En palabras: las columnas de la matriz dan la acción de $\mathcal{A}$ sobre la base; las filas conjugadas dan la acción de $\mathcal{A}^\dagger$. Tomar el conjugado complejo de $\langle \xi|\mathcal{A}|\psi \rangle$ equivale a intercambiar el orden de los factores y reemplazar el operador por su adjunto — el análogo exacto de $(z_1 z_2)^* = z_2^* z_1^*$.

:::{note} Acción del operador adjunto sobre estados ket

Un operador $\mathcal{B}$ definido sobre dos estados ortonormales $|\varphi_1\rangle$ y $|\varphi_2\rangle$ está dado por
$$\mathcal{B}|\varphi_1\rangle=2|\varphi_2\rangle \quad \mbox{y} \quad \mathcal{B}|\varphi_2\rangle=i|\varphi_1\rangle.$$

Para hallar $\mathcal{B}^\dagger|\varphi_1\rangle$, contraiga la definición del adjunto con un estado arbitrario $|\chi\rangle=c_1|\varphi_1\rangle + c_2|\varphi_2\rangle$:

$$
\langle \chi | \mathcal{B}^\dagger | \varphi_1 \rangle^*
= \langle \varphi_1 | \mathcal{B} | \chi\rangle
= \langle\varphi_1|\bigl[c_1(2|\varphi_2\rangle) + c_2(i|\varphi_1\rangle)\bigr]
= 2c_1^*\cdot 0 + c_2 i
= i\,\langle\varphi_2|\chi\rangle,
$$

de donde $\langle \chi | \mathcal{B}^\dagger | \varphi_1 \rangle = -i\,\langle \varphi_2|\chi\rangle^* = -i\langle \chi | \varphi_2\rangle$. Como $|\chi\rangle$ es arbitrario,

$$\mathcal{B}^\dagger|\varphi_1\rangle=-i|\varphi_2\rangle.$$

El ejercicio 1 de la práctica pide la pieza complementaria, $\mathcal{B}^\dagger|\varphi_2\rangle$, y el ejercicio 2 aplica el mismo método a otro operador.
:::

:::{note} Propiedades del operador adjunto

Si $a$ es un escalar; $\mathcal{A}$ y $\mathcal{B}$ son operadores, y $\mathcal{A}^\dagger$ y $\mathcal{B}^\dagger$ sus adjuntos:

```{math}
\begin{aligned}
        (a\mathcal{A})^\dagger=&a^*\mathcal{A}^\dagger \\
        (\mathcal{A}^\dagger)^\dagger=&\mathcal{A}\\
        (\mathcal{A}+\mathcal{B})^\dagger=&\mathcal{A}^\dagger+\mathcal{B}^\dagger\\
        (\mathcal{A}\mathcal{B})^\dagger=&\mathcal{B}^\dagger\mathcal{A}^\dagger \\
        (\mathcal{A}^n)^\dagger=&(\mathcal{A}^\dagger)^n
\end{aligned}
```

La segunda identidad — el adjunto es una involución — se demuestra en el ejercicio 6 de la práctica; la cuarta, la reversión del orden, es la generalización de $(z_1z_2)^* = z_2^*z_1^*$ y se usará una y otra vez.
:::

:::{note} Operador de aniquilación de fotones

Al estudiar los campos electromagnéticos en el interior de una cavidad, una base natural del campo está dada por los llamados *estados número* $\{|n\rangle,\, n=0,1,2,\ldots\}$, donde el estado $|n\rangle$ corresponde al campo con $n$ fotones presentes. El *operador de aniquilación* $\hat{a}$ baja el número de fotones en uno:

$$
\hat{a}|n\rangle=\sqrt{n}|n-1\rangle,
\qquad
\hat{a}|0\rangle=0.
$$

Su adjunto se puede calcular con la técnica de la nota anterior. Considerando un estado arbitrario $|\psi\rangle = \sum_{m=0}^{\infty}|m\rangle \langle m| \psi \rangle$:

```{math}
\begin{aligned}
    (\langle n | \hat{a}) | \psi \rangle
    =& \sum_{m=1}^{\infty} \sqrt{m}\,\langle n|m-1\rangle \langle m| \psi \rangle
     = \sum_{m=0}^{\infty} \sqrt{m+1}\,\delta_{nm} \langle m+1| \psi \rangle
    =\sqrt{n+1}\, \langle n+1| \psi \rangle,
\end{aligned}
```

de donde

$$\langle n | \hat{a}=\sqrt{n+1} \langle n+1|.$$

El ejercicio 4 de la práctica completa la imagen: el adjunto $\hat{a}^\dagger$ — el *operador de creación* — sube el número de fotones, $\hat{a}^\dagger|n\rangle = \sqrt{n+1}|n+1\rangle$.
:::

## Operadores hermíticos

Un operador $\mathcal{H}$ se dice *autoadjunto* (o *hermítico*) si

:::{math}
:label: eq-hermitico
\mathcal{H}^\dagger=\mathcal{H}.
:::

En términos de elementos de matriz, $H_{mn}=H^*_{nm}$: la matriz es igual a su transpuesta conjugada. Equivalentemente, para estados arbitrarios,

$$
\langle \psi | \mathcal{H}|\phi \rangle^* = \langle \phi | \mathcal{H}|\psi \rangle,
$$

y en particular $\langle\psi|\mathcal{H}|\psi\rangle$ es siempre real: todo valor esperado de un operador hermítico es un número real, requisito de toda cantidad medible. No es casualidad que los operadores de posición, momento y energía — los observables de la mecánica cuántica — sean hermíticos, ni que los operadores de espín $\hat\sigma_i$ que aparecen más adelante lo sean. (El operador $\mathcal{A}$ de espín de la semana anterior era hermítico; el $\mathcal{B}$ de la nota siguiente no lo es, y su autovalor complejo mostrará exactamente qué se pierde.)

### Propiedades de los operadores hermíticos

- Si $\mathcal{H}_1$ y $\mathcal{H}_2$ son hermíticos, $r_1 \mathcal{H}_1+r_2\mathcal{H}_2$ es hermítico solo si $r_1$ y $r_2$ son **reales** (los coeficientes complejos deben conjugarse al adjuntar).

- El producto $\mathcal{H}_1 \mathcal{H}_2$ es hermítico solo si $\mathcal{H}_1$ y $\mathcal{H}_2$ **conmutan**:
  $$(\mathcal{H}_1\mathcal{H}_2)^\dagger = \mathcal{H}_2\mathcal{H}_1 = \mathcal{H}_1\mathcal{H}_2
  \quad\Longleftrightarrow\quad
  [\mathcal{H}_1, \mathcal{H}_2]=0.$$

## Operadores unitarios

Un operador $\mathcal{U}$ se dice *unitario* si

:::{math}
:label: eq-unitario
\mathcal{U}^\dagger=\mathcal{U}^{-1},
:::

donde $\mathcal{U}^{-1}$ es el *operador inverso* de $\mathcal{U}$:

$$
\mathcal{U}^{-1} \mathcal{U}= \mathcal{U} \mathcal{U}^{-1}=\mathcal{I};
\qquad
\mathcal{I}| \psi \rangle=| \psi \rangle.
$$

Si el adjunto hace que un operador se parezca a sí mismo (hermíticos), para los unitarios hace que se parezca a su inverso. La consecuencia geométrica es que los unitarios **preservan el producto interno**, y con él longitudes y ángulos: si $|\psi\rangle$ está normalizado, $\langle \psi|\psi\rangle=1$, el estado $|\phi\rangle=\mathcal{U}|\psi\rangle$ también lo está:

$$
\langle \phi|\phi\rangle=\langle \psi|\mathcal{U}^\dagger\mathcal{U}|\psi\rangle=\langle \psi|\mathcal{I}|\psi\rangle=\langle \psi|\psi\rangle=1.
$$

Más generalmente, $\langle\mathcal{U}\psi|\mathcal{U}\chi\rangle = \langle\psi|\chi\rangle$ para cualquier par de estados: los unitarios mapean bases ortonormales en bases ortonormales. Por eso describen las transformaciones que no cambian la física: rotaciones, cambios de representación, y la evolución temporal de un sistema aislado, donde el estado cambia pero las probabilidades de medición se conservan.

:::{note} La relación entre unitarios y hermíticos

Cualquier operador unitario $\mathcal{U}$ puede escribirse como exponencial de un operador hermítico:
$$\mathcal{U} = e^{-i\mathcal{A}},
\qquad \mathcal{A}=\mathcal{A}^\dagger.$$
Los hermíticos *generan* transformaciones unitarias — así como el ángulo $\theta$ (un número real) genera la rotación $e^{-i\theta}$ en el plano complejo. En mecánica cuántica, el generador hermítico de la evolución temporal es el Hamiltoniano, y el ejercicio 9 de la práctica estudia el ejemplo prototípico: la rotación $e^{-i\theta\hat\sigma_z}$ generada por el espín.
:::

# Valores y vectores propios

Puede suceder que para algún operador $\mathcal{A}$ exista un vector de estado $| \phi \rangle$ con la propiedad

:::{math}
:label: eq-eigen
    \mathcal{A}|\phi \rangle = a_\phi |\phi \rangle,
:::

donde $a_\phi$ es, en general, un número complejo. En esta situación se dice que $|\phi \rangle$ es un *autovector* (o *eigenket* o *vector propio*) del operador $\mathcal{A}$ con *autovalor* (o *valor propio*) $a_\phi$: el operador no saca al vector de su dirección, solo lo reescala.

Generalmente se utiliza la notación $\mathcal{A}|a\rangle = a |a\rangle$, en la cual el autovector se etiqueta según su autovalor. El concepto tiene un dual: si $|\phi\rangle$ es autoestado de $\mathcal{A}$ con autovalor $a_\phi$, entonces su bra cumple

$$
\langle \phi | \mathcal{A}^\dagger = a^*_\phi \langle \phi |,
$$

y si $\mathcal{A}$ es hermítico, $\langle \phi | \mathcal{A} = a_\phi \langle \phi |$.

:::{note} Sistemas de *medio espín* (spin half)

Considere los estados de espín $|+\rangle$ y $|-\rangle$, base de un sistema de medio espín, y el operador $\mathcal{B}$ con la acción

```{math}
\begin{aligned}
      \mathcal{B}|+\rangle =&\frac{1}{2}i\hbar |-\rangle, \\
      \mathcal{B}|-\rangle =&\frac{1}{2}i\hbar |+\rangle.
\end{aligned}
```

Si el sistema se encuentra en el estado $|S\rangle=\frac{1}{\sqrt{2}}\bigl[|+\rangle+|-\rangle\bigr]$ entonces

$$\mathcal{B}|S\rangle=\frac{i\hbar}{2}|S\rangle,$$

por lo que $|S\rangle$ es un autovector de $\mathcal{B}$ con autovalor $i\hbar/2$ — **complejo**.

Nótese por qué: la matriz de $\mathcal{B}$ tiene elementos $B_{+-} = B_{-+} = i\hbar/2$, y la condición hermítica exigiría $B_{+-} = B_{-+}^* = -i\hbar/2$. $\mathcal{B}$ **no es hermítico** y su autovalor se sale de la recta real: no puede ser el resultado de ninguna medición. Contrástese con el operador $\mathcal{A}$ de la semana anterior — igual estructura, pero con el signo de la segunda fila invertido — que sí es hermítico y cuyo espectro es $\pm\hbar/2$, real. La hermiticidad no es un detalle técnico: es la frontera entre números medibles y amplitudes.
:::

Determinar los autovectores y autovalores de un operador se conoce como **resolver el problema de autovalores** del operador: encontrar las soluciones de {eq}`eq-eigen`. Si el espacio tiene dimensión finita, el problema se reduce a uno matricial: se busca el determinante $\det(\mathcal{A}-a\mathcal{I})=0$, ecuación polinomial en $a$ cuyas raíces son los autovalores, y para cada autovalor se resuelve el sistema lineal de {eq}`eq-eigen`. Si la dimensión es infinita, resolver el problema de autovalores requiere, en general, resolver una ecuación diferencial.

En mecánica cuántica, los autovalores de un operador hermítico representan los posibles resultados de medir la observable asociada: cada medición de energía, momento o espín devuelve uno de los autovalores del operador correspondiente, y los estados cuánticos asociados a esos resultados son los autovectores.

Si más de un autovector independiente comparte el mismo autovalor, se dice que el autovalor es *degenerado*.

:::{note} La ecuación de Schrödinger independiente del tiempo

$$\mathcal{H}\psi=\left[-\frac{\hbar^2}{2m}\nabla^2+V(r) \right]\psi=E\psi$$

es exactamente el problema de autovalores {eq}`eq-eigen` en dimensión infinita: el Hamiltoniano es el operador, las funciones de onda estacionarias $\psi$ son sus autovectores y las energías $E$ sus autovalores. La cuantización de la energía — el hecho de que solo ciertos valores $E$ admitan soluciones físicas — es la huella de que el espectro de un operador no es continuo cualquiera, sino estructurado.
:::

Para un operador general, sin restricciones sobre $\mathcal{A}$:

1. un operador puede no tener autoestados,
2. los autovalores pueden ser reales o complejos,
3. un operador puede tener una colección discreta de autovalores $a_1, a_2,\ldots$ con autoestados asociados $|a_1\rangle, |a_2\rangle, \ldots$,
4. un operador puede tener un rango continuo de autovalores y autovectores,
5. un operador puede tener una mezcla de autovalores discretos y continuos.

Para los operadores hermíticos, en cambio, la estructura es rígida y conveniente:

6. los autovalores de un operador hermítico son **reales**,
7. sus autoestados, correspondientes a autovalores distintos, son **ortogonales** entre sí,
8. sus autoestados forman un conjunto **completo**: cualquier estado del espacio se expande en ellos.

Los resultados 6–8 son el corazón teórico de la semana: el primero se demuestra en el ejercicio 7 de la práctica; el segundo garantiza que se puede ortonormalizar sin Gram–Schmidt (los autoestados ya llegan ortogonales); el tercero justifica la frase de la semana anterior — las bases del físico *salen* de la diagonalización.

Al conjunto de todos los autovalores de un operador se le llama el *espectro* del operador. Si $\mathcal{A}$ es hermítico con conjunto discreto no degenerado de autoestados $\{|a_n\rangle;\, n=1,2,3,\ldots\}$, estos forman una base ortonormal y cualquier estado del sistema se expande como

$$
| \psi \rangle = \sum_n | a_n\rangle \langle a_n | \psi \rangle.
$$

# Descomposición espectral y observables

## Operadores en notación de Dirac

La semana anterior se introdujo el *producto externo* $|\phi\rangle\langle\psi|$: un operador que actúa sobre kets y bras contrayendo los pares adyacentes,

```{math}
\begin{aligned}
    (|\phi \rangle \langle \psi |)|\alpha\rangle = |\phi \rangle \langle\psi | \alpha \rangle,
    \qquad
    \langle \alpha |(|\phi \rangle \langle \psi |) = \langle \alpha | \phi \rangle \langle \psi|.
\end{aligned}
```

Con esta pieza, cualquier operador sobre una base ortonormal se escribe como combinación de productos externos — y los operadores más importantes de la física cuántica tienen descomposiciones de una elegancia notable.

:::{note} Operadores de espín de Pauli

Los tres *operadores de espín de Pauli* para un sistema de medio espín, cuyo espacio de estados está generado por la base $\{|+\rangle, |-\rangle \}$, definidos en notación de Dirac:

```{math}
:label: eq-pauli
\begin{aligned}
    \hat{\sigma}_x=&|-\rangle \langle+|+|+\rangle \langle-| \\
    \hat{\sigma}_y=&i|-\rangle \langle+|-i|+\rangle \langle-| \\
    \hat{\sigma}_z=&|+\rangle \langle+|-|-\rangle \langle-|.
\end{aligned}
```

La acción se calcula contrayendo de afuera hacia adentro. Por ejemplo,

$$\hat{\sigma}_x |+\rangle = \left[|-\rangle \langle+|+|+\rangle \langle-| \right]|+\rangle=|-\rangle\underbrace{\langle+|+\rangle}_{1}+|+\rangle \underbrace{\langle -|+\rangle}_{0}=|-\rangle.$$

Análogamente,

$$\langle - |\hat{\sigma}_z=\langle - |\left[|+\rangle \langle+|-|-\rangle \langle-|\right]=\underbrace{\langle-|+\rangle}_{0}\langle+|-\underbrace{\langle-|-\rangle}_{1}\langle-|=-\langle-|.$$

Cada $\hat\sigma_i$ es hermítico — baste mirar {eq}`eq-pauli`: cada término es el adjunto del otro con signo correcto — y $\hat\sigma_z$, en particular, ya está escrito en su descomposición espectral: autoestados $|+\rangle$ y $|-\rangle$, autovalores $+1$ y $-1$. El ejercicio 3 de la práctica calcula las acciones restantes y los conmutadores $[\hat\sigma_i,\hat\sigma_j]$.
:::

## La descomposición espectral

Si $\mathcal{A}$ es hermítico con autoestados $|a_n\rangle$ y autovalores $a_n$, la completitud (propiedad 8) permite insertar $\mathcal{A}\,\mathcal{I} = \mathcal{A}\sum_n|a_n\rangle\langle a_n|$ y usar la ecuación de autovalores:

:::{math}
:label: eq-descomposicion-espectral
\mathcal{A}
= \mathcal{A}\,\mathcal{I}
= \sum_n \mathcal{A}|a_n\rangle\langle a_n|
= \sum_n a_n\, |a_n\rangle \langle a_n|.
:::

Esta es la **descomposición espectral** (o diagonalización) del operador: en su propia base de autoestados, el operador se escribe como suma de proyectores ponderados por los autovalores. Los operadores $\{|a_n\rangle\langle a_n|\}$ son exactamente los proyectores de la semana anterior — ahora alimentados por la base que el propio operador fabrica.

## Observables y el postulado de medición

En la mecánica cuántica, si una cantidad observable $Q$ toma valores $q_1, q_2, q_3, \ldots$, esta observable se representa mediante un operador hermítico $\mathcal{Q}$ con la siguiente estructura:

1. los autovalores de $\mathcal{Q}$ son todos los posibles valores $q_1, q_2, q_3, \ldots$;

2. si una medición de $Q$ resulta en $q_n$, el sistema queda en el autoestado $|q_n\rangle$, donde $\mathcal{Q}|q_n\rangle=q_n|q_n\rangle$;

3. los autoestados $|q_1\rangle$, $|q_2\rangle$, $\ldots$ forman una base ortonormal completa, por lo que cualquier estado del sistema se expande como

   $$|\psi\rangle=|q_1\rangle\langle q_1|\psi \rangle + |q_2\rangle\langle q_2|\psi \rangle +\cdots;$$

4. si el sistema se encuentra en el estado $|\psi \rangle$, la probabilidad de obtener el resultado $q_n$ al medir $Q$ es

:::{math}
:label: eq-prob-espectral
\text{Prob}(q_n) = |\langle q_n |\psi\rangle|^2 = \langle\psi|\,|q_n\rangle\langle q_n|\,|\psi\rangle.
:::

Al operador $\mathcal{Q}$ se le llama *observable*. Nada de esto es nuevo: es el postulado de medición de la semana anterior, ahora con la garantía de que la base de medición existe y viene dada por el propio observable — la promesa de la semana, cumplida. Y la descomposición espectral convierte el valor esperado en un promedio de autovalores:

:::{math}
:label: eq-valor-esperado-espectral
\langle \mathcal{Q} \rangle
= \langle \Psi | \mathcal{Q}|\Psi \rangle
= \sum_n q_n\, \text{Prob}(q_n),
:::

idéntico a {eq}`eq-valor-esperado` de la semana anterior, con $a_n \to q_n$.

:::{note} Medición del espín en $z$

La descomposición espectral de $\hat\sigma_z$ se lee directamente de {eq}`eq-pauli`:

$$\hat{\sigma}_z = |+\rangle \langle+| - |-\rangle \langle-|.$$

Para el estado $|S\rangle = \frac{1}{\sqrt2}\bigl(|+\rangle + |-\rangle\bigr)$:

$$
\text{Prob}(+1) = |\langle+|S\rangle|^2 = \frac12,
\qquad
\text{Prob}(-1) = |\langle-|S\rangle|^2 = \frac12,
\qquad
\langle \hat\sigma_z \rangle = (+1)\frac12 + (-1)\frac12 = 0.
$$

La suma de probabilidades es uno — porque $\{|+\rangle\langle+|, |-\rangle\langle-|\}$ descompone la identidad — y el valor esperado es el promedio ponderado. Medir el espín de este estado da $\pm 1$ con igual probabilidad, y tras la medición el estado colapsa al autoestado correspondiente.
:::

:::{attention} Resumen de la semana

| Concepto | Enunciado | Uso |
|---|---|---|
| Adjunto | $\langle\xi\vert\mathcal{A}\vert\psi\rangle=\langle\psi\vert\mathcal{A}^\dagger\vert\xi\rangle^*$; {eq}`eq-adj-ket` | conjugación de operadores; acción en espejo sobre bras |
| Propiedades del adjunto | $(\mathcal{A}\mathcal{B})^\dagger=\mathcal{B}^\dagger\mathcal{A}^\dagger$; $(\mathcal{A}^\dagger)^\dagger=\mathcal{A}$ | manipulación de expresiones con operadores |
| Operador hermítico | $\mathcal{A}^\dagger=\mathcal{A}$, {eq}`eq-hermitico`; $A_{mn}=A^*_{nm}$ | observables; valores esperados reales |
| Operador unitario | $\mathcal{U}^\dagger=\mathcal{U}^{-1}$, {eq}`eq-unitario` | preserva normas y productos internos; cambios de base |
| Generadores | $\mathcal{U}=e^{-i\mathcal{A}}$ con $\mathcal{A}$ hermítico | rotaciones; evolución temporal |
| Problema de autovalores | $\mathcal{A}\vert a\rangle=a\vert a\rangle$, {eq}`eq-eigen` | coordenadas propias del operador; métodos matriciales |
| Espectro | conjunto de autovalores | resultados posibles de medición |
| Hermíticos: espectro | autovalores reales; autoestados ortogonales y completos | bases ortonormales garantizadas |
| Operadores de Pauli | {eq}`eq-pauli`, en productos externos | prototipo de espín; conmutadores $2i\epsilon_{ijk}\hat\sigma_k$ |
| Descomposición espectral | $\mathcal{A}=\sum_n a_n\vert a_n\rangle\langle a_n\vert$, {eq}`eq-descomposicion-espectral` | diagonalización; proyectores ponderados |
| Observable | operador hermítico con postulados 1–4 | una medición = leer un autovalor |
| Probabilidad | $\text{Prob}(q_n)=\vert\langle q_n\vert\psi\rangle\vert^2$, {eq}`eq-prob-espectral` | interpretación de Born |
| Valor esperado | $\langle\mathcal{Q}\rangle=\sum_n q_n\,\text{Prob}(q_n)$, {eq}`eq-valor-esperado-espectral` | promedio de resultados medibles |
:::

:::{seealso} Referencias

@cresser [10.3 The Hermitian Adjoint of an Operator, 155-160]

@cresser [10.4 Eigenvalues and Eigenvectors, 160-165]

@riley2006mathematical [Cap. 17 "Eigenfunction methods for differential equations", pág. 559-563]

:::

:::{note} Transparencia: uso de inteligencia artificial

Esta lección fue preparada con asistencia de un modelo de lenguaje (GLM, Z.ai) para la reorganización pedagógica del hilo conductor, la verificación de fórmulas y notación, y la corrección de erratas. Todo el contenido fue revisado, verificado y aprobado por el docente del curso, quien asume la responsabilidad académica del material.
:::
