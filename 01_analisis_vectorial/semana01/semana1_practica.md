---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - operaciones-vectoriales
  - producto-cruz
  - producto-punto
  - identidades-vectoriales
  - coordenadas-polares
  - cinematica
  - demostracion
  - calculo
subject: Cálculo y análisis vectorial - Semana 1
keywords: []
# downloads:
#   - file: ./semana1-practica.md
#     title: semana1-practica.md
#   - file: ./semana1-practica.pdf
#     title: semana1-practica.pdf
# abstract: asdsdasdadasdasdasda
# kernelspec:
#   name: python3
#   display_name: "Python 3"
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::
 
```{exercise}
:label: ex1-s1

 Si $\vec{A}=2\hat{\iota}-\hat{\jmath}-2\hat{\kappa}$, $\vec{B}=2\hat{\iota}-3\hat{\jmath}+3\hat{\kappa}$ y $\vec{C}=-2\hat{\jmath}-2\hat{\kappa}$, calcule

- $(\vec{A}\cdot \vec{B})\vec{C}$ 
- $\vec{A}(\vec{B}\cdot \vec{C})$ 
- $(\vec{A}\times\vec{B})\cdot \vec{C}$ 
- $(\vec{A}\times \vec{B})\times\vec{C}$ 

```

```{exercise} 
:label: ex2-s1

Arfken ejercicio 1.5.12 (pág. 31) / Boas ejercicio 6.3.12(b) (pág. 284) / Riley ejercicio 7.9 (pág. 235)
 Demuestre la _identidad de Lagrange_:
$$(\vec{A}\times\vec{B})\cdot(\vec{C}\times\vec{D})=(\vec{A}\cdot\vec{C})(\vec{B}\cdot\vec{D})-(\vec{A}\cdot\vec{D})(\vec{B}\cdot\vec{C}) $$
```



```{exercise}
:label: ex3-s1
Considere el paralelepípedo con lados $\vec{A}=2\hat{\iota}+3\hat{\jmath}+3\hat{\kappa}$, $\vec{B}=-\hat{\iota}-3\hat{\jmath}+4\hat{\kappa}$ y $\vec{C}=-2\hat{\iota}+3\hat{\jmath}+4\hat{\kappa}$.
- Calcule su volumen.
- Visualícelo.

Utilice la [ecuación %s](#eq-producto-triple-escalar).
```

```{exercise} Arfken ejercicio 1.5.5 (pág. 30)
:label: ex4-s1
El momentum angular orbital $\vec{L}$ de una partícula está dada por $\vec{L}=\vec{r}\times\vec{p}=m \vec{r}\times\vec{v}$. Si la velocidad lineal y la angular se relacionan mediante $\vec{v}=\vec{\omega}\times \vec{r}$, demuestre que 
$$\vec{L}=mr^2[\vec{\omega}-\hat{r}(\hat{r}\cdot\vec{\omega})], $$
donde $\hat{r}$ es un vector unitario en la direccion de $\vec{r}$.
```

```{exercise}
:label: ex5-s1
Demuestre que, en coordenadas polares, 
- $\displaystyle\frac{d \hat{e}_r}{dt}= \hat{e}_\theta \frac{d \theta}{dt} $
- $\displaystyle\frac{d \hat{e}_\theta}{dt}= -\hat{e}_r \frac{d \theta}{dt} $
```

```{exercise} Boas, Ejemplo 3, Cap. 6 (pag. 308)
:label: ex6-s1
Si $\vec{A}=A_r \hat{e}_r + A_\theta \hat{e}_\theta $, calcule $\displaystyle \frac{d \vec{A}}{dt}$.
```
