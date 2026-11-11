---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - pozo-potencial
  - valor-esperado
  - isospin
  - representacion-matricial
  - probabilidad-cuantica
  - aplicacion
  - calculo
subject: Matrices - Semana 13
keywords: []
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::

```{exercise}
:label: ex1-s13


En el caso de una partícula atrapada en la región $0<x<L$ en un pozo de potencial, las funciones de onda para los auto-estados de energía están dados por
:::{math}
\psi_n(x)=\left\{
\begin{matrix}
\displaystyle \sqrt{\frac{2}{L}}\sin(n\pi x/L) & 0<x<L\\
0&x<0,\quad x>L
\end{matrix}
\right. 
:::
    
Encuentre $\langle x \rangle$, $\langle x^2 \rangle$ y $\Delta x$.
```

```{exercise}
:label: ex2-s13

En la llamada teoría del isospín utilizada para describir la fuerza nuclear fuerte entre partículas nucleares, el protón y el neutrón son considerados dos estados diferentes $|n\rangle$ y $|p\rangle$ respectivamente, de una partícula llamada nucleón. Suponga que como resultado de una colisión entre un nucleón y otra partícula, el estado del nucleón experimenta un cambio representado por el operador $\mathcal{E}$ definido por
:::{math}
\begin{align*}
\mathcal{E}|n\rangle=&(|n\rangle+|p\rangle)/\sqrt{2},\\
\mathcal{E}|p\rangle=&(|n\rangle-|p\rangle)/\sqrt{2},
\end{align*}
:::

que ``mezcla'' los estados $|n\rangle$ y $|p\rangle$.

- Si un neutrón experimenta una de estas colisiones, ¿cuál es la probabilidad de que el nucleón se observe en el estado $|n\rangle$ después de la colisión?
- Construya la representación matricial de $\mathcal{E}$ en la base $\left\{|n\rangle, |p\rangle\right\}$.
- Considere el nucleón en el estado $|\psi\rangle=(|n\rangle-2i|p\rangle)/\sqrt{5}$. Evalúe la probabilidad de encontrar al nucleón en el estado $|p\rangle$ después de una de las colisiones.
    
```

