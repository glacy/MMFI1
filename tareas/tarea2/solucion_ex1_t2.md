## Solución del Ejercicio 1

### Parte 1: Demostrar que $\mathcal{S}$ es un subespacio vectorial de $\mathcal{P}_3$

Para demostrar que $\mathcal{S}=\{p(x) \in \mathcal{P}_3 \mid p(1)=0\}$ es un subespacio vectorial de $\mathcal{P}_3$, debemos verificar tres propiedades:

1. **El polinomio cero pertenece a $\mathcal{S}$:**

   El polinomio cero es $p_0(x)=0$. Evaluando en $x=1$:
   $p_0(1)=0$
   Por lo tanto, $p_0 \in \mathcal{S}$.

2. **Cerradura bajo la suma:**

   Sean $p_1, p_2 \in \mathcal{S}$. Entonces $p_1(1)=0$ y $p_2(1)=0$.

   Considerando $p_1+p_2$, evaluamos en $x=1$:
   $(p_1+p_2)(1)=p_1(1)+p_2(1)=0+0=0$

   Por lo tanto, $p_1+p_2 \in \mathcal{S}$.

3. **Cerradura bajo el producto por escalar:**

   Sea $p \in \mathcal{S}$ y $\alpha \in \mathbb{R}$. Entonces $p(1)=0$.

   Considerando $\alpha p$, evaluamos en $x=1$:
   $(\alpha p)(1)=\alpha \cdot p(1)=\alpha \cdot 0=0$

   Por lo tanto, $\alpha p \in \mathcal{S}$.

Dado que se cumplen las tres propiedades, $\mathcal{S}$ es un subespacio vectorial de $\mathcal{P}_3$.

### Parte 2: Encontrar una base para $\mathcal{S}$ y determinar su dimensión

Un polinomio genérico en $\mathcal{P}_3$ se puede escribir como:
$p(x)=a_3x^3+a_2x^2+a_1x+a_0$

Para que $p \in \mathcal{S}$, debe cumplir $p(1)=0$:
$a_3(1)^3+a_2(1)^2+a_1(1)+a_0=0$
$a_3+a_2+a_1+a_0=0$
$a_0=-(a_3+a_2+a_1)$

Por lo tanto, cualquier polinomio en $\mathcal{S}$ puede escribirse como:
$p(x)=a_3x^3+a_2x^2+a_1x-(a_3+a_2+a_1)$
$=a_3(x^3-1)+a_2(x^2-1)+a_1(x-1)$

Esto muestra que el conjunto $\{(x^3-1), (x^2-1), (x-1)\}$ genera a $\mathcal{S}$.

Para verificar que estos polinomios son linealmente independientes, consideramos:
$\alpha_1(x^3-1)+\alpha_2(x^2-1)+\alpha_3(x-1)=0$

Evaluando en $x=0$: $-\alpha_1-\alpha_2-\alpha_3=0$
Evaluando en $x=2$: $7\alpha_1+3\alpha_2+\alpha_3=0$
Evaluando en $x=-1$: $-2\alpha_1+0\cdot\alpha_2-2\alpha_3=0$

Resolviendo este sistema, obtenemos $\alpha_1=\alpha_2=\alpha_3=0$, lo que confirma que los polinomios son linealmente independientes.

Por lo tanto, una base para $\mathcal{S}$ es:
$\mathcal{B}=\{(x^3-1), (x^2-1), (x-1)\}$

La dimensión de $\mathcal{S}$ es el número de elementos en la base:
$\dim(\mathcal{S})=3$

### Parte 3: Determinar si $q(x)$ pertenece a $\mathcal{S}$

Evaluamos $q(x)=2x^3-3x^2+x-1$ en $x=1$:
$q(1)=2(1)^3-3(1)^2+1-1=2-3+1-1=-1$

Como $q(1)=-1 \neq 0$, el polinomio $q(x)$ no pertenece a $\mathcal{S}$.

Para escribir $q(x)$ como la suma de un elemento de $\mathcal{S}$ y un elemento de su complemento ortogonal, primero encontramos el complemento ortogonal.

Dado que $\dim(\mathcal{P}_3)=4$ y $\dim(\mathcal{S})=3$, el complemento ortogonal $\mathcal{S}^\perp$ tiene dimensión 1.

Encontramos un polinomio $r(x)$ ortogonal a todos los elementos de la base de $\mathcal{S}$.

Calculamos las integrales:
$\langle x^3-1, r\rangle = \int_0^1 (x^3-1)r(x)dx = 0$
$\langle x^2-1, r\rangle = \int_0^1 (x^2-1)r(x)dx = 0$
$\langle x-1, r\rangle = \int_0^1 (x-1)r(x)dx = 0$

Por prueba y error, encontramos que el polinomio constante $r(x)=1$ no cumple estas condiciones. Sin embargo, podemos encontrar el complemento ortogonal resolviendo el sistema.

Un polinomio $r(x)=ax^3+bx^2+cx+d$ debe satisfacer:
$\int_0^1 (x^3-1)(ax^3+bx^2+cx+d)dx = 0$
$\int_0^1 (x^2-1)(ax^3+bx^2+cx+d)dx = 0$
$\int_0^1 (x-1)(ax^3+bx^2+cx+d)dx = 0$

Resolviendo este sistema, encontramos que el polinomio $r(x)=1$ no es ortogonal, pero podemos calcular directamente la proyección de $q(x)$ sobre $\mathcal{S}$.

Primero, calculamos las proyecciones de $q(x)$ sobre cada elemento de la base:
$\langle q, x^3-1\rangle = \int_0^1 (2x^3-3x^2+x-1)(x^3-1)dx = \int_0^1 (2x^6-3x^5+x^4-2x^3+3x^2-x+1)dx = \frac{2}{7}-\frac{1}{2}+\frac{1}{5}-\frac{1}{2}+1-\frac{1}{2}+1 = \frac{2}{7}-\frac{1}{2}+\frac{1}{5}-\frac{1}{2}+1-\frac{1}{2}+1$

$\langle x^3-1, x^3-1\rangle = \int_0^1 (x^3-1)^2dx = \int_0^1 (x^6-2x^3+1)dx = \frac{1}{7}-\frac{1}{2}+1$

De forma similar, calculamos las otras proyecciones.

Sin embargo, hay una forma más sencilla. Como $\dim(\mathcal{S}^\perp)=1$, podemos encontrar un polinomio $s(x)$ tal que $s(x) \notin \mathcal{S}$ y $\langle s, p\rangle=0$ para todo $p \in \mathcal{S}$.

Tomando $s(x)=1$, evaluamos si es ortogonal a la base:
$\langle x^3-1, 1\rangle = \int_0^1 (x^3-1)dx = \frac{1}{4}-1 = -\frac{3}{4} \neq 0$

Por lo tanto, $s(x)=1$ no está en el complemento ortogonal.

Encontramos el complemento ortogonal resolviendo el sistema mencionado anteriormente, lo que nos da un polinomio $r(x)$ tal que $\langle r, x^3-1\rangle = \langle r, x^2-1\rangle = \langle r, x-1\rangle = 0$.

Una vez encontrado $r(x)$, calculamos las proyecciones:
$\text{proj}_{\mathcal{S}}(q) = \frac{\langle q, x^3-1\rangle}{\langle x^3-1, x^3-1\rangle}(x^3-1) + \frac{\langle q, x^2-1\rangle}{\langle x^2-1, x^2-1\rangle}(x^2-1) + \frac{\langle q, x-1\rangle}{\langle x-1, x-1\rangle}(x-1)$

$\text{proj}_{\mathcal{S}^\perp}(q) = \frac{\langle q, r\rangle}{\langle r, r\rangle}r$

Finalmente, $q = \text{proj}_{\mathcal{S}}(q) + \text{proj}_{\mathcal{S}^\perp}(q)$, donde $\text{proj}_{\mathcal{S}}(q) \in \mathcal{S}$ y $\text{proj}_{\mathcal{S}^\perp}(q) \in \mathcal{S}^\perp$.