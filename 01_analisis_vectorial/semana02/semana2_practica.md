---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - gradiente
  - divergencia
  - rotacional
  - laplaciano
  - coordenadas-curvilineas
  - identidades-vectoriales
  - calculo
  - demostracion
subject: Cálculo y análisis vectorial - Semana 2
keywords: []
# downloads:
#   - file: ./semana2-practica.md
#     title: semana2-practica.md
#   - file: ./semana2-practica.pdf
#     title: semana2-practica.pdf
# abstract: asdsdasdadasdasdasda
# kernelspec:
#   name: python3
#   display_name: "Python 3"
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::
 
```{exercise}
:label: ex1-s2

Determine un vector unitario perpendicular a la superficie $$ x^2+y^2+z^2=3$$

```

```{exercise}  
:label: ex2-s2
(pág. 235)
Calcule el rotacional del campo vectorial $$\vec{A}=x\sin y\hat{\iota}+\cos y\hat{\jmath}+3xy\hat{\kappa} $$
```



```{exercise}
:label: ex3-s2
La velocidad, $\vec{v}$, de un punto sobre un cuerpo r\'igido rotando alrededor de un eje con velocidad angular $\vec{\omega}$, est\'a dada por $$\vec{v}=\vec{\mathbf{\omega}} \times \vec{r}, $$donde $\vec{r} $ es el vector de posici\'on de dicho punto respecto a alg\'un origen sobre el eje de rotaci\'on. Calcule $\nabla \times \vec{v}$
```

```{exercise} 
:label: ex4-s2
El campo electrostático de una carga puntual $q$ es
$$\vec{E}=\frac{q}{4\pi \epsilon_0}\cdot \frac{\hat{r}}{r^{2}},$$
Calcule la divergencia de $\vec{E}$.
```

```{exercise}
:label: ex5-s2
Evalue el laplaciano de la función $$\psi (x,y,z)=\frac{zx^2}{x^2+y^2+z^2} $$
- en coordenadas cartesianas,
- en coordenadas cilíndricas
```

```{exercise} 
:label: ex6-s2
El sistema paraboloidal de cordenadas $u$, $v$, $\phi$ est\'a definido en t\'ermino de las coordenadas cartesianas por medio de$$x=uv\cos \phi, \qquad y=uv\sin \phi, \qquad z=\frac{1}{2}(u^2-v^2). $$
Calcule los factores de escala $h_u$, $h_v$ y $h_\phi$.
```

```{exercise} 
:label: ex7-s2
Demuestre que 
- $ \nabla \cdot (\nabla \times \vec{u})=0$
- $\nabla \times (\nabla f)=0$
- $\nabla \times (\nabla \times \vec{u})=\nabla (\nabla \cdot \vec{u})-\nabla \cdot \nabla \vec{u}$
```