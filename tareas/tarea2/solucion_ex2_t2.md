## Solución del Ejercicio 2

### Parte 1: Encontrar la matriz estándar $[T]$ de la transformación lineal

La matriz estándar de una transformación lineal $T: \mathbb{R}^3 \to \mathbb{R}^3$ se obtiene aplicando $T$ a los vectores de la base estándar $e_1=(1,0,0)^T$, $e_2=(0,1,0)^T$, $e_3=(0,0,1)^T$.

Aplicando $T$ a $e_1$:
$T(e_1) = T\left(\begin{pmatrix}1\\0\\0\end{pmatrix}\right) = \begin{pmatrix}2(1) - 0 + 4(0)\\1 + 3(0) - 2(0)\\3(1) + 2(0) + 0\end{pmatrix} = \begin{pmatrix}2\\1\\3\end{pmatrix}$

Aplicando $T$ a $e_2$:
$T(e_2) = T\left(\begin{pmatrix}0\\1\\0\end{pmatrix}\right) = \begin{pmatrix}2(0) - 1 + 4(0)\\0 + 3(1) - 2(0)\\3(0) + 2(1) + 0\end{pmatrix} = \begin{pmatrix}-1\\3\\2\end{pmatrix}$

Aplicando $T$ a $e_3$:
$T(e_3) = T\left(\begin{pmatrix}0\\0\\1\end{pmatrix}\right) = \begin{pmatrix}2(0) - 0 + 4(1)\\0 + 3(0) - 2(1)\\3(0) + 2(0) + 1\end{pmatrix} = \begin{pmatrix}4\\-2\\1\end{pmatrix}$

Por lo tanto, la matriz estándar $[T]$ es:
$$[T] = \begin{pmatrix}2 & -1 & 4\\1 & 3 & -2\\3 & 2 & 1\end{pmatrix}$$

### Parte 2: Determinar el kernel (espacio nulo) de $T$ y una base para el mismo

El kernel de $T$, denotado como $\ker(T)$, es el conjunto de todos los vectores $x \in \mathbb{R}^3$ tales que $T(x)=0$. Esto es equivalente a resolver el sistema $[T]x=0$.

$$\begin{pmatrix}2 & -1 & 4\\1 & 3 & -2\\3 & 2 & 1\end{pmatrix}\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix} = \begin{pmatrix}0\\0\\0\end{pmatrix}$$

Este sistema de ecuaciones se puede escribir como:
\begin{align*}
2x_1 - x_2 + 4x_3 &= 0 \quad (1)\\
x_1 + 3x_2 - 2x_3 &= 0 \quad (2)\\
3x_1 + 2x_2 + x_3 &= 0 \quad (3)
\end{align*}

Resolvemos el sistema:

De la ecuación (2), obtenemos $x_1 = -3x_2 + 2x_3$.

Sustituyendo en la ecuación (1):
$2(-3x_2 + 2x_3) - x_2 + 4x_3 = 0$
$-6x_2 + 4x_3 - x_2 + 4x_3 = 0$
$-7x_2 + 8x_3 = 0$
$x_2 = \frac{8}{7}x_3$

Sustituyendo en la expresión para $x_1$:
$x_1 = -3\left(\frac{8}{7}x_3\right) + 2x_3 = -\frac{24}{7}x_3 + \frac{14}{7}x_3 = -\frac{10}{7}x_3$

Verificamos con la ecuación (3):
$3\left(-\frac{10}{7}x_3\right) + 2\left(\frac{8}{7}x_3\right) + x_3 = -\frac{30}{7}x_3 + \frac{16}{7}x_3 + x_3 = -\frac{14}{7}x_3 + x_3 = 0$

Por lo tanto, el kernel de $T$ está formado por todos los vectores de la forma:
$$\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix} = \begin{pmatrix}-\frac{10}{7}x_3\\\frac{8}{7}x_3\\x_3\end{pmatrix} = x_3\begin{pmatrix}-\frac{10}{7}\\\frac{8}{7}\\1\end{pmatrix}$$

Una base para el kernel es:
$$\mathcal{B}_{\ker(T)} = \left\{\begin{pmatrix}-\frac{10}{7}\\\frac{8}{7}\\1\end{pmatrix}\right\}$$

O, equivalentemente:
$$\mathcal{B}_{\ker(T)} = \left\{\begin{pmatrix}-10\\8\\7\end{pmatrix}\right\}$$

La dimensión del kernel es $\dim(\ker(T)) = 1$.

### Parte 3: Determinar la imagen (rango) de $T$ y una base para la misma

La imagen de $T$, denotada como $\text{Im}(T)$, es el espacio generado por las columnas de la matriz estándar $[T]$.

Las columnas de $[T]$ son:
$c_1 = \begin{pmatrix}2\\1\\3\end{pmatrix}, \quad c_2 = \begin{pmatrix}-1\\3\\2\end{pmatrix}, \quad c_3 = \begin{pmatrix}4\\-2\\1\end{pmatrix}$

Para encontrar una base, verificamos si estas columnas son linealmente independientes.

Consideramos la combinación lineal:
$\alpha_1 c_1 + \alpha_2 c_2 + \alpha_3 c_3 = 0$

Esto nos da el sistema:
\begin{align*}
2\alpha_1 - \alpha_2 + 4\alpha_3 &= 0\\
\alpha_1 + 3\alpha_2 - 2\alpha_3 &= 0\\
3\alpha_1 + 2\alpha_2 + \alpha_3 &= 0
\end{align*}

Este sistema es el mismo que resolvimos para el kernel, y su solución es $\alpha_1 = -\frac{10}{7}\alpha_3$, $\alpha_2 = \frac{8}{7}\alpha_3$.

Por lo tanto, las tres columnas son linealmente dependientes. Podemos eliminar una de ellas y usar las otras dos como base.

Tomamos $c_1$ y $c_2$ como base (verificamos que son linealmente independientes):
$\alpha_1 c_1 + \alpha_2 c_2 = 0$
\begin{align*}
2\alpha_1 - \alpha_2 &= 0\\
\alpha_1 + 3\alpha_2 &= 0\\
3\alpha_1 + 2\alpha_2 &= 0
\end{align*}

De la primera ecuación, $\alpha_2 = 2\alpha_1$.
Sustituyendo en la segunda: $\alpha_1 + 3(2\alpha_1) = \alpha_1 + 6\alpha_1 = 7\alpha_1 = 0$, por lo que $\alpha_1 = 0$ y $\alpha_2 = 0$.

Por lo tanto, $c_1$ y $c_2$ son linealmente independientes.

Una base para la imagen es:
$$\mathcal{B}_{\text{Im}(T)} = \left\{\begin{pmatrix}2\\1\\3\end{pmatrix}, \begin{pmatrix}-1\\3\\2\end{pmatrix}\right\}$$

La dimensión de la imagen es $\dim(\text{Im}(T)) = 2$.

### Parte 4: Verificar el Teorema de la Dimensión para esta transformación

El Teorema de la Dimensión establece que para una transformación lineal $T: V \to W$:
$$\dim(\ker(T)) + \dim(\text{Im}(T)) = \dim(V)$$

Para nuestra transformación:
$\dim(\ker(T)) = 1$
$\dim(\text{Im}(T)) = 2$
$\dim(\mathbb{R}^3) = 3$

Verificamos:
$$\dim(\ker(T)) + \dim(\text{Im}(T)) = 1 + 2 = 3 = \dim(\mathbb{R}^3)$$

Por lo tanto, el Teorema de la Dimensión se cumple para esta transformación.