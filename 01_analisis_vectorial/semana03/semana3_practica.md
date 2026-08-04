---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - teorema-divergencia
  - teorema-stokes
  - integrales-superficie
  - maxwell
  - flujo
  - calculo
  - demostracion
  - aplicacion
subject: Cálculo y análisis vectorial - Semana 3
keywords: []
# downloads:
#   - file: ./semana3-practica.md
#     title: semana3-practica.md
#   - file: ./semana3-practica.pdf
#     title: semana3-practica.pdf
# abstract: asdsdasdadasdasdasda
# kernelspec:
#   name: python3
#   display_name: "Python 3"
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::
 
```{exercise} 
:label: ex1-s3
Riley Ejercicio 11.25
En un medio uniforme conductor con permitividad relativa unitaria, densidad de carga $\rho$, densidad de corriente $\vec{J}$, campo eléctrico $\vec{E}$ y campo magnetico $\vec{B}$, las ecuaciones del electromagnetismo de Maxwell toma la forma 
:::{math}
\begin{align}
\nabla \cdot \vec{B}=&0, \\
\nabla \cdot \vec{E}=&\rho/\epsilon_0,\\
\nabla \times \vec{E}=&-\frac{\partial \vec{B}}{\partial t}, \\
\nabla \times \vec{B}-\frac{1}{c^2}\left(\frac{\partial \vec{E}}{\partial t}\right)=&\mu_0\vec{J}.
\end{align}
:::

La densidad de energía almacenada en el medio está dada por
$$\frac{1}{2}(\epsilon_0 E^2+\mu^{-1}_0B^2) $$
Demuestre que la tasa de cambio de la energía total almacenada en el volumen $V$ es igual a
$$-\int_V (\vec{J}\cdot \vec{E})dV-\frac{1}{\mu_0}\oint_S (\vec{E}\times \vec{B})\cdot d\vec{S}, $$
donde $S$ es la superficie que encierra $V$.

```

```{exercise} 
:label: ex2-s3
Riley Ejercicio 11.26
Un campo vectorial $\vec{F}$ está definido en coordenadas cilíndricas $\rho,\theta,z$ mediante
$$\vec{F}=F_0\left(\frac{x\cos \lambda z}{a}\hat{\iota} +\frac{y\cos \lambda z}{a}\hat{\jmath}+(\sin \lambda z)\hat{\kappa}\right)\equiv \frac{F_0 \rho}{a}(\cos \lambda z)\hat{e}_\rho + F_0(\sin \lambda z)\hat{\kappa}, $$

1. Calcule, mediante una integral de superficie, el flujo de $\vec{F}$ a través de la superficie cerrada delimitada por los cilíndros $\rho = a$ y $\rho = 2a $ y los planos $z=\pm a\pi/2$.
2. Evalue la misma integral usando el teorema de la divergencia.
```


```{exercise} 
:label: ex3-s3
Boas Ejercicio 6.9.6
Para una curva cerrada simple $C$ en el plano, muestre que el área encerrada es
$$A=\frac{1}{2}\oint_C (xdy-ydx) $$
```

