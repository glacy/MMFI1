---
title: Preguntas de comprensión (uso docente)
description: Banco de preguntas de comprensión conceptual para el planeamiento de clase - Semana 9
short_title: Preguntas docente
author: " "
tags:
  - espacios-vectoriales
  - base
  - producto-interno
  - espacio-de-hilbert
  - uso-docente
subject: Espacios vectoriales - Semana 9
keywords: [preguntas, comprensión, planeamiento]
---

:::{warning} Documento de uso exclusivo del docente
Este archivo **no** forma parte del sitio publicado (no está incluido en el `toc` de `myst.yml`) y no debe distribuirse al estudiantado. Cada pregunta incluye una nota breve con la respuesta esperada, pensada como guía para conducir la discusión en clase.
:::

# Espacios vectoriales: la estructura común

1. ¿Por qué la propiedad de **cierre** en la suma y el producto por escalar es necesaria pero no suficiente para definir un espacio vectorial? ¿Qué papel juegan los axiomas restantes?

   *Respuesta esperada:* el cierre garantiza que las operaciones produzcan elementos del mismo conjunto, pero sin los axiomas (conmutatividad, asociatividad, distributividad, neutros, inversos) las operaciones podrían comportarse de forma errática y no habría álgebra confiable. Los axiomas destilan las reglas que hacen útil la estructura.

2. ¿Qué tienen en común una matriz $m\times n$, un polinomio de grado menor que cuatro y una función continua en $[a,b]$ que les permite llamarse "vectores"?

   *Respuesta esperada:* los tres son elementos de conjuntos con suma y producto por escalar que satisfacen los axiomas de espacio vectorial. La estructura no depende de la naturaleza del objeto, sino de las operaciones.

3. Dé un ejemplo de conjunto con operaciones "naturales" que **no** sea espacio vectorial y explique qué axioma falla.

   *Respuesta esperada (ejemplos posibles):* los polinomios de grado **exactamente** $n$ (la suma puede bajar el grado: no hay cierre); los enteros $\mathbb{Z}$ como subconjunto de $\mathbb{R}$ (falla el inverso multiplicativo escalar: $0.5 \cdot 1 \notin \mathbb{Z}$); el conjunto $\{(x,y)\in\mathbb{R}^2 : x \geq 0\}$ (falla el inverso aditivo).

4. ¿Qué significa que el espacio de funciones continuas $C([a,b])$ tenga **dimensión infinita**? ¿Qué tendría que ocurrir para que fuera de dimensión finita?

   *Respuesta esperada:* que no exista un conjunto finito de funciones continuas que genere todas las demás por combinación lineal. Sería finita solo si existiera una lista finita $f_1,\ldots,f_n$ tal que toda función continua sea combinación lineal de ellas; para cualquier $n$ siempre hay funciones continuas que escapan.

# Combinaciones lineales, span e independencia

5. Interpretación conceptual: ¿qué significa decir que en una combinación lineal que da $\mathbf{0}$ "algún $c_i \neq 0$" implica dependencia lineal?

   *Respuesta esperada:* que ese vector con coeficiente no nulo ya estaba "contenido" en los demás; no aporta una dirección nueva y puede eliminarse del conjunto generador sin perder alcance.

6. ¿Por qué un conjunto de $n$ vectores linealmente independientes genera un espacio de dimensión **exactamente** $n$?

   *Respuesta esperada:* la independencia garantiza que ninguna dirección está repetida; el span contiene exactamente $n$ direcciones genuinas y ninguna puede reducirse a las demás, así que el número máximo de vectores independientes en ese span es $n$.

# Bases y componentes

7. ¿Por qué la **unicidad** de la expansión $\mathbf{x}=\sum_i x_i\mathbf{e}_i$ en una base es esencial para que las coordenadas $(x_1,\ldots,x_N)$ sean un lenguaje confiable?

   *Respuesta esperada:* si hubiera dos expansiones distintas, las componentes no identificarían al vector de forma inequívoca y "trabajar con la lista de números" dejaría de equivaler a trabajar con el vector. La unicidad proviene de la independencia: restar las dos expansiones da una combinación lineal nula con coeficientes no triviales, contradicción.

8. ¿Qué se gana al "digitalizar" un espacio mediante una base? Dé un ejemplo de trabajo con funciones que se vuelva álgebra de listas de números.

   *Respuesta esperada:* se reduce el problema a manipular componentes; por ejemplo, una serie de Fourier convierte operaciones con funciones (energía, proyecciones) en operaciones con coeficientes $c_n$.

# El producto interno

9. ¿Qué le **añade** el producto interno a un espacio vectorial que este, por sí solo, no proporciona?

   *Respuesta esperada:* geometría: longitudes (norma), ángulos (ortogonalidad), proyecciones (componentes). La estructura algebraica solo permite sumar y escalar.

10. En el caso complejo, ¿por qué los axiomas exigen $\langle \mathbf{u},\mathbf{v}\rangle = \langle \mathbf{v},\mathbf{u}\rangle^*$ y linealidad en el segundo argumento con conjugados en el primero?

    *Respuesta esperada:* para que $\langle \mathbf{u},\mathbf{u}\rangle$ sea real (requisito de toda longitud) y para que la norma al cuadrado $|\cdot|^2$ se comporte bien con coeficientes complejos; es la adaptación hermítica del producto punto real.

11. Los axiomas del producto interno no garantizan $\langle\mathbf{u},\mathbf{u}\rangle \geq 0$. ¿Cuál es el contraejemplo físico mencionado en la lectura y qué implica?

    *Respuesta esperada:* el espacio-tiempo de la relatividad especial, donde $\langle\mathbf{u},\mathbf{u}\rangle$ puede ser negativo. Implica que allí la "norma" no define longitud positiva y la geometría no es euclidiana; por eso el curso asume espacios con producto interno positivo.

12. ¿Por qué en una base ortonormal la componente $a_j = \langle \hat{\mathbf{e}}_j, \mathbf{u}\rangle$ tiene "sabor a proyección"? ¿Qué hace la delta de Kronecker en ese cálculo?

    *Respuesta esperada:* la ortonormalidad anula todos los términos cruzados ($\delta_{ij}$) y deja solo $a_j$; la componente es lo que queda de $\mathbf{u}$ al medirlo contra la dirección $\hat{\mathbf{e}}_j$.

13. ¿Qué codifica la **matriz de Gram** $G_{ij}=\langle\mathbf{e}_i,\mathbf{e}_j\rangle$ y qué se ahorra una base ortonormal respecto de una general?

    *Respuesta esperada:* toda la geometría de la base no ortogonal (los $N^2$ productos internos entre vectores de la base). En base ortonormal $G=I$ y el producto interno es la suma de productos de componentes; la elección de base no cambia la física, pero decide cuánta geometría se arrastra en los cálculos.

# La norma y sus desigualdades

14. Dé la interpretación geométrica de cada desigualdad: Schwarz, triangular y Bessel. ¿Cuándo se iguala cada una?

    *Respuesta esperada:* Schwarz: $|\cos\theta|\leq 1$; igualdad si $\mathbf{u}=a\mathbf{v}$ (vectores paralelos). Triangular: el camino directo nunca es más largo que el descompuesto; igualdad si los vectores apuntan en la misma dirección (dependencia positiva). Bessel: las componentes no pueden cargar más longitud que el vector; se convierte en la igualdad de Pitágoras generalizada cuando el conjunto ortonormal es una base completa.

15. ¿Por qué Bessel es una desigualdad y Pitágoras una igualdad? ¿Qué distingue a los conjuntos ortonormales involucrados?

    *Respuesta esperada:* Bessel vale para conjuntos ortonormales **incompletos** (no generan todo el espacio: las componentes capturan solo parte de $\mathbf{u}$). Con una base completa, no queda "residual" ortogonal y la desigualdad se cierra en igualdad.

16. ¿Qué papel juega la igualdad del paralelogramo en la teoría?

    *Respuesta esperada:* muestra que la identidad geométrica familiar del plano es un **teorema** en cualquier espacio con producto interno, no una propiedad exclusiva de $\mathbb{R}^2$; refuerza que la geometría euclidiana sobrevive a la abstracción.

# Espacios de Hilbert y notación de Dirac

17. ¿Qué significa que un espacio de Hilbert sea **completo** respecto del producto interno? ¿Qué son los "agujeros" que la completitud excluye?

    *Respuesta esperada:* que toda sucesión de Cauchy converge a un vector dentro del espacio; sin completitud podrían existir aproximaciones legítimas cuyo límite está "fuera" del conjunto (como los racionales respecto de los reales).

18. En la expansión $f(x)=\sum_{n=0}^\infty c_n y_n(x)$, ¿quiénes juegan el papel de ejes y quiénes el de componentes? ¿Qué paralelismo hay con {eq}`eq-base-expansion`?

    *Respuesta esperada:* las funciones base $y_n(x)$ son los ejes y los coeficientes $c_n$ las componentes; es exactamente la expansión en base de dimensión finita, con la suma extendida a infinitos términos.

19. ¿Qué papel cumple la **función de peso** $\rho(x)$ en $\langle f|g\rangle=\int_a^b f^* g\,\rho\,dx$ y por qué el conjunto natural de funciones es el de las de cuadrado integrables respecto de $\rho$?

    *Respuesta esperada:* $\rho$ decide cuánto "cuenta" cada región del intervalo al medir; distintas elecciones de peso definen distintas geometrías (y distintos polinomios ortogonales). La norma es finita precisamente cuando $\int |f|^2\rho\,dx$ converge, de ahí que el espacio natural sea el de funciones de cuadrado integrable.

20. En el formalismo de Dirac, ¿qué son un bra y un ket, y qué representa $\langle\phi|\psi\rangle$ en términos físicos?

    *Respuesta esperada:* el ket $|\psi\rangle$ es el estado (vector del espacio de Hilbert), el bra $\langle\phi|$ es su dual; $\langle\phi|\psi\rangle$ es un producto interno, es decir, una **amplitud de transición** entre estados. Las probabilidades son normas al cuadrado ($|\langle\phi|\psi\rangle|^2$).

21. Conecte con el aside de Donna Strickland: ¿cómo se materializa en óptica cuántica la idea de "estados como vectores, mediciones como productos internos"?

    *Respuesta esperada:* un estado de luz se representa como superposición de modos (vectores en un espacio complejo); medir respecto de un modo equivale a proyectar con el producto interno, y las intensidades/probabilidades de cada modo son normas al cuadrado de las componentes.

# Pregunta integradora (para cierre de clase)

22. Reconstruya la "cadena de generalizaciones" de la semana: ¿qué añade cada eslabón — espacio vectorial → producto interno → espacio de Hilbert — y qué ejemplo concreto ilustra cada uno?

    *Respuesta esperada:* el espacio vectorial aporta la estructura algebraica (suma y escalado: $\mathbb{R}^n$, matrices, funciones); el producto interno añade la geometría (norma, ángulos, proyecciones: producto punto, integral con peso); el espacio de Hilbert extiende todo a dimensión infinita con completitud (funciones de cuadrado integrable, estados cuánticos en notación de Dirac).
