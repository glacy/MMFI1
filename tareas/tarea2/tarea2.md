---
title: Tarea 2
description: Tarea 2
short_title: Tarea 2
author: " "
tags: [espacios-vectoriales, bases, dimension, transformaciones-lineales, autovalores, autovectores, diagonalizacion, aplicacion, intermedio]
subject: Álgebra lineal - Espacios vectoriales
keywords: [álgebra, lineal, espacios, vectoriales]
downloads:
    - file: ./tarea2.md
      title: tarea2.md
    - file: ./tarea2.pdf
      title: tarea2.pdf
    - file: ./solucion_ex1_t2.md
      title: solucion_ex1_t2.md
    - file: ./solucion_ex2_t2.md
      title: solucion_ex2_t2.md
    - file: ./solucion_ex3_t2.md
      title: solucion_ex3_t2.md
abstract:   2.1. definición y ejemplos de espacios vectoriales
            2.2. subespacios
            2.3. combinación lineal y dependencia lineal
            2.4. bases y dimensión
            2.5. transformaciones lineales
            2.6. kernel e imagen
            2.7. autovalores y autovectores
            2.8. diagonalización
---

:::{hint} Instrucciones
- Resuelva de forma razonada cada uno de los siguientes ejercicios.
- Use esquemas y dibujos si lo considera necesario.
- Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
- **Fecha de entrega**: martes 23 de setiembre 2025 (SEMANA 8).
- **Formato de entrega**: documento en formato .pdf a través del módulo de
    evaluaciones en el [tecDigital](https://tecdigital.tec.ac.cr/dotlrn/classes/IF/IF3602/S-2-2025.CA.IF3602.1/evaluation/tda-ce-estudiante/tda-index?loc=1).
:::

## Ejercicio 1
```{exercise}
:label: ex1-t2

Considere el espacio vectorial $\mathcal{P}_3$ de polinomios de grado menor o igual a 3 con coeficientes reales.

- Demuestre que el conjunto $\mathcal{S}=\{p(x) \in \mathcal{P}_3 \mid p(1)=0\}$ es un subespacio vectorial de $\mathcal{P}_3$.
- Encuentre una base para $\mathcal{S}$ y determine su dimensión.
- Determine si el polinomio $q(x)=2x^3-3x^2+x-1$ pertenece a $\mathcal{S}$. Si no pertenece, escriba $q(x)$ como la suma de un elemento de $\mathcal{S}$ y un elemento de su complemento ortogonal (respecto al producto interior $\langle p,q\rangle = \int_0^1 p(x)q(x)dx$).
```

````{solution} ex1-t2
:label: solution-ex1-t2
:class: dropdown


```{include} ./solucion_ex1_t2.md

}
```

````

## Ejercicio 2
```{exercise}
:label: ex2-t2

Sea $T: \mathbb{R}^3 \to \mathbb{R}^3$ una transformación lineal definida por

:::{math}
T\left(\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix}\right)=\begin{pmatrix}2x_1 - x_2 + 4x_3\\x_1 + 3x_2 - 2x_3\\3x_1 + 2x_2 + x_3\end{pmatrix},
:::

- Encuentre la matriz estándar $[T]$ de la transformación lineal.
- Determine el kernel (espacio nulo) de $T$ y una base para el mismo.
- Determine la imagen (rango) de $T$ y una base para la misma.
- Verifique el Teorema de la Dimensión para esta transformación.
```

````{solution} ex2-t1
:label: solution-ex2-t2
:class: dropdown

```{include} ./solucion_ex2_t2.md

```

````

## Ejercicio 3
```{exercise}
:label: ex3-t2

Considere la matriz

:::{math}
A=\begin{pmatrix}5 & 2 & 0\\2 & 5 & 0\\0 & 0 & 3\end{pmatrix}.
:::

- Encuentre los autovalores y autovectores de la matriz $A$.
- Determine si $A$ es diagonalizable. Si lo es, encuentre una matriz $P$ tal que $P^{-1}AP$ es una matriz diagonal.
- Verifique que los autovectores correspondientes a autovalores distintos son ortogonales.
- Use la diagonalización para calcular $A^5$.
```

````{solution} ex3-t2
:label: solution-ex3-t2
:class: dropdown

```{include} ./solucion_ex3_t2.md

}
```

````