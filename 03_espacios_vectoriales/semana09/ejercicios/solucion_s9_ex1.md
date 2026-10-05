---
title: Solución Ejercicio 1
keywords:
  - espacios-vectoriales
  - axiomas
  - polinomios
  - base
  - dimension
tags:
  - espacios-vectoriales
  - axiomas
  - base
  - polinomios
  - dimension
  - demostracion
objetivos: []
---

**Parte 1: el conjunto es un espacio vectorial.** Denótese

$$
P_3 = \left\{ f(x)=a_0+a_1x+a_2 x^2 + a_3 x^3 \;\middle|\; a_0,a_1,a_2,a_3\in\mathbb{R} \right\}.
$$

El conjunto $P_3$ hereda de las funciones continuas las operaciones de suma y producto por un escalar:

$$
(f+g)(x) = f(x)+g(x),
\qquad
(\lambda f)(x) = \lambda\, f(x).
$$

*Cierre.* Si $f(x)=a_0+a_1x+a_2x^2+a_3x^3$ y $g(x)=b_0+b_1x+b_2x^2+b_3x^3$ pertenecen a $P_3$, entonces

$$
(f+g)(x) = (a_0+b_0) + (a_1+b_1)x + (a_2+b_2)x^2 + (a_3+b_3)x^3 \in P_3,
$$

pues cada coeficiente $a_i+b_i$ es un número real; y

$$
(\lambda f)(x) = (\lambda a_0) + (\lambda a_1)x + (\lambda a_2)x^2 + (\lambda a_3)x^3 \in P_3.
$$

Las dos operaciones devuelven elementos de $P_3$: hay cierre.

*Axiomas.* Verificados uno a uno:

1. **Conmutatividad:** $f+g = g+f$, porque la suma de números reales conmutativa en cada coeficiente.
2. **Asociatividad:** $(f+g)+h = f+(g+h)$, idem.
3. **Neutro aditivo:** el polinomio nulo $\mathbf{0}(x) = 0 + 0x + 0x^2 + 0x^3$ cumple $f+\mathbf{0}=f$.
4. **Inverso aditivo:** $-f(x) = -a_0 - a_1x - a_2x^2 - a_3x^3 \in P_3$ cumple $f+(-f)=\mathbf{0}$.
5. **Neutro multiplicativo:** $1\cdot f = f$.
6. **Distributividades y asociatividad escalar:** $(\lambda+\mu)f = \lambda f+\mu f$, $\;\lambda(f+g)=\lambda f+\lambda g$, $\;\lambda(\mu f) = (\lambda\mu)f$ — todas se reducen, coeficiente a coeficiente, a propiedades de $\mathbb{R}$.

Por lo tanto $P_3$ es un espacio vectorial (de hecho, un subespacio del espacio de las funciones continuas: bastaba verificar el cierre).

**Parte 2: una base y la dimensión.** Considérese el conjunto $\{1,\; x,\; x^2,\; x^3\}$.

*Independencia lineal.* Si

$$
a_0\cdot 1 + a_1\cdot x + a_2\cdot x^2 + a_3\cdot x^3 = \mathbf{0}
$$

(la función nula: cero para **todo** $x$), evaluando en $x=0$ se obtiene $a_0=0$; derivando y evaluando en $x=0$ sucesivamente se obtiene $a_1=0$, $a_2=0$, $a_3=0$. (Equivalentemente: dos polinomios son iguales si y solo si coinciden sus coeficientes.) La única combinación lineal que da el vector nulo es la trivial: el conjunto es linealmente independiente.

*Span.* Todo elemento de $P_3$ es, por la propia definición del conjunto, una combinación lineal de $1, x, x^2, x^3$ con coeficientes $a_0,a_1,a_2,a_3$:

$$
f(x) = a_0\cdot 1 + a_1\cdot x + a_2\cdot x^2 + a_3\cdot x^3.
$$

El conjunto genera todo el espacio.

Con independencia y generación, $\{1, x, x^2, x^3\}$ es una **base** de $P_3$, y los números $a_0,a_1,a_2,a_3$ son las componentes de $f$ en esa base. Como la base tiene cuatro elementos,

$$
\dim P_3 = 4.
$$

**Moraleja:** un espacio de funciones puede ser de dimensión finita si se restringe adecuadamente: $P_3$ "cabe" en $\mathbb{R}^4$ vía sus componentes, mientras que el espacio completo de funciones continuas es de dimensión infinita.
