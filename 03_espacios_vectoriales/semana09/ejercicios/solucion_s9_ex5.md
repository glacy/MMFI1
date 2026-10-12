---
title: Solución Ejercicio 5
keywords:
  - espacios-vectoriales
  - base
  - independencia-lineal
  - componentes
  - polinomios
tags:
  - espacios-vectoriales
  - base
  - independencia-lineal
  - componentes
  - polinomios
  - calculo
objetivos: []
---

**Independencia lineal.** Buscamos escalares $a,b,c$ tales que

$$
a\,p_1(x) + b\,p_2(x) + c\,p_3(x) = \mathbf{0},
$$

donde $\mathbf{0}$ es el polinomio nulo (cero para todo $x$). Expandiendo:

$$
a\cdot 1 + b\,(1+x) + c\,(x+x^2) = (a+b) + (b+c)\,x + c\,x^2 = 0.
$$

Dos polinomios son iguales si y solo si coinciden coeficiente a coeficiente:

$$
a+b = 0, \qquad b+c = 0, \qquad c = 0
\qquad\Longrightarrow\qquad
c = 0,\; b = 0,\; a = 0.
$$

La única combinación que da el vector nulo es la trivial: $p_1, p_2, p_3$ son linealmente independientes.

**Generación.** Tres vectores linealmente independientes en un espacio de dimensión 3 (la base canónica $\{1, x, x^2\}$ tiene tres elementos) forman automáticamente una base: ningún vector sobra y ninguna dirección falta. Por lo tanto $\{p_1, p_2, p_3\}$ es una base.

**Componentes de $q$.** Buscamos $a,b,c$ tales que $q = a\,p_1 + b\,p_2 + c\,p_3$:

$$
(a+b) + (b+c)\,x + c\,x^2 = 4 + x - 2x^2.
$$

Igualando coeficientes:

$$
c = -2, \qquad b + c = 1 \;\Rightarrow\; b = 3, \qquad a + b = 4 \;\Rightarrow\; a = 1.
$$

$$
\boxed{\;q(x) = 1\cdot p_1(x) + 3\cdot p_2(x) - 2\cdot p_3(x)\;}
$$
