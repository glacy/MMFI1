---
title: Tarea  1
description: Tarea  1
short_title: Tarea  1
author: " "
tags: []
subject: Cálculo y análisis vectorial 
keywords: [cálculo, análisis, vectorial]
exports:
 - format: pdf
   template: curvenote
   output: ./tarea1.pdf
# downloads:
#    - file: ./tarea1.md
#      title: tarea1.md
#    - file: ./tarea1.pdf
#      title: tarea1.pdf
abstract:   1.1. multiplicación entre vectores
            1.2. productos triples
            1.3. diferenciación de vectores
            1.4. coordenadas curvilíneas
            1.5. operador nabla
            1.6. teorema de Green
            1.7. teorema de Stokes
            1.8. teorema de Gauss
---

:::{hint} Instrucciones
- Resuelva de forma razonada cada uno de los siguientes ejercicios.
- Use esquemas y dibujos si lo considera necesario.
- Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
- **Fecha de entrega**: martes 16 de setiembre 2025 (SEMANA 7).
- **Formato de entrega**: documento en formato .pdf a través del módulo de
    evaluaciones en el [tecDigital](https://tecdigital.tec.ac.cr/dotlrn/classes/IF/IF3602/S-2-2025.CA.IF3602.1/evaluation/tda-ce-estudiante/tda-index?loc=1).
:::

## Ejercicio 1


Demuestre la identidad vectorial:
$$ \nabla \times (\vec{A}\times \vec{B})=(\vec{B} \cdot \nabla) \vec{A}- (\vec{A}\cdot \nabla) \vec{B} - \vec{B}(\nabla \cdot \vec{A})+\vec{A}(\nabla \cdot \vec{B}) $$






```{include} ./solucion_ex1_t1_v1.md

```

---

```{include} ./solucion_ex1_t1_v2.md

```



## Ejercicio 2


Considera un dispositivo toroidal (tipo tokamak) descrito por coordenadas toroidales ortogonales
:::{math}
\begin{align*}
    x=&a\frac{\sinh\rho}{\cosh  \rho -\cos \theta}\cos \phi,\\
    y=&a\frac{\sinh\rho}{\cosh  \rho -\cos \theta}\sin \phi,\\
    z=&a\frac{\sin\theta}{\cosh  \rho -\cos \theta}.
\end{align*}
:::

donde $a>0$ es una longitud fija del sistema que representa la distancia entre el eje central de simetría del toroide y el círculo generador (la "sección transversal" del toroide).

Denote 
$$R(\rho,\theta)=\displaystyle \frac{a \sinh \rho}{\cosh \rho - \cos \theta}. $$


El campo magnético en un plasma confinado en un dispositivo toroidal puede modelarse en coordenadas toroidales $(\rho,\theta,\phi)$ por

:::{math}
\vec B(\rho,\theta)=B_\phi(\rho,\theta)\hat\phi + B_\theta(\rho,\theta)\hat\theta,
:::

con una parte toroidal dominante tipo $1/R$ y una parte poloidal derivada de un flujo $\psi(\rho)$, es decir:

:::{math}
B_\phi(\rho,\theta)=\frac{B_0 R_0}{R(\rho,\theta)},\qquad
B_\theta(\rho,\theta)=\frac{1}{h_\theta(\rho,\theta)}\frac{d\psi(\rho)}{d\rho},
:::

donde $B_0$ y $R_0$ son constantes dadas y $h_\theta$ es el factor de escala correspondiente a $\theta$.

- Calcule los factores de escala $h_{\rho}$, $h_{\theta}$, $h_{\phi}$.
- Calcule el rotacional del campo magnético, $\mu_0\vec{J}=\nabla \times \vec{B}$.
- Calcule la divergencia del campo magnético, $\nabla \cdot \vec{B}$.


---


```{include} ./solucion_ex2_t1.md

```


## Ejercicio 3


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

---



```{include} ./solucion_ex3_t1.md

```

