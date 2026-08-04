---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - raices-complejas
  - funciones-trigonometricas-complejas
  - optica
  - circuitos-rlc
  - identidades-hiperbolicas
  - aplicacion
  - calculo
subject: Variable compleja - Semana 5
keywords: []
# downloads:
#   - file: ./semana5-practica.md
#     title: semana5-practica.md
#   - file: ./semana5-practica.pdf
#     title: semana5-practica.pdf
# abstract: asdsdasdadasdasdasda
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::
 
```{exercise} 
:label: ex1-s5
Boas, Chapter 2, Section 10, pag. 66
Calcule las raíces complejas de los siguientes números:

- $\sqrt[3]{1}$
- $\sqrt[5]{32}$
- $\sqrt[3]{-8}$
- $\sqrt[3]{-1}$
- $\sqrt[5]{i}$
- $\sqrt[3]{2i-2}$


```

```{exercise} 
:label: ex2-s5
Boas, Chapter 2, Section 12, pag. 71
Calcule cada uno de los siguientes números complejos

- $\cosh (2\pi i)$
- $\tanh \displaystyle\left(\frac{3\pi i}{4}\right)$
- $\sinh (\ln 2 +\displaystyle\frac{i \pi}{3})$
- $\sin \displaystyle\left(\frac{i\pi}{2}\right)$
```


```{exercise} 
:label: ex3-s5
Boas, Chapter 2, Section 16 (Some aplications), pag. 79
En óptica, frecuentemente se requiere combinar cierto número de ondas de luz, las cuales pueden ser representadas por funciones seno. Si las ondas se encuentran desfasadas una cantidad fija ($\delta$), estas ondas pueden escribirse como $\sin t$, $\sin(t+\delta)$, $\sin(t+2\delta)$, $\ldots$; por lo que al combinar $n$ ondas, se requiere calcular la parte imaginaria de 
$$e^{it}+e^{i(t+\delta)}+e^{i(t+2\delta)}+\ldots+e^{i(t+n\delta)}=\displaystyle \frac{e^{it}(1-e^{in\delta})}{1-e^{i\delta}}$$

Determine la parte imaginaria de la expresión anterior.

```

```{exercise} 
:label: ex4-s5
Boas, Chapter 2, Section 16 (Some aplications), pag. 79
Demuestre que si $z=x+iy$


$$
\sinh(x+iy) = \sinh x\,\cos y + i\,\cosh x\,\sin y
$$

$$
\cosh(x+iy) = \cosh x\,\cos y + i\,\sinh x\,\sin y
$$

```

```{exercise} 
:label: ex5-s5
Boas, Chapter 2, Section 16 (Some aplications), pag. 79
Onda electromagnética en un medio absorbente  

Una onda electromagnética de amplitud $E_0$ y frecuencia $\omega$ se propaga en la dirección $z$ en un medio con índice de refracción complejo  

$$
\tilde{n} = n + i k,
$$

donde $n$ es el índice de refracción y $k>0$ es el coeficiente de absorción. La onda puede escribirse como  

$$
E(z,t) = E_0 e^{i\left(\frac{\omega \tilde{n}}{c}z - \omega t\right)}.
$$

- Exprese $E(z,t)$ separando la parte real y la parte imaginaria del exponente.  
- Obtenga la expresión para la amplitud $|E(z,t)|$ y discuta el efecto de $k$ sobre la propagación de la onda.  
- Si $n=1.5$, $k=0.1$, $\omega = 2\pi\times 10^9$ rad/s y $c=3\times 10^8$ m/s, calcule $|E(z,t)|$ para $z=1$ m y $t=0$.  

```

```{exercise} 
:label: ex6-s5
Boas, Chapter 2, Section 16 (Some aplications), pag. 79
Corriente en un circuito RLC 

Un circuito RLC serie está alimentado por un voltaje alterno $V(t) = V_0 e^{i\omega t}$ con  

$$
Z(\omega) = R + i\left(\omega L - \frac{1}{\omega C}\right)
$$

como impedancia total.  

- Encuentre la expresión para la corriente $I(t) = \frac{V(t)}{Z(\omega)}$.  
- Exprese $I(t)$ en términos de amplitud y fase: $I(t)=|I|e^{i(\omega t + \phi)}$.  
- Calcule $|I|$ y $\phi$ si $R=10\,\Omega$, $L=0.1\,\mathrm{H}$, $C=100\,\mu\mathrm{F}$, $\omega = 100\,\mathrm{rad/s}$ y $V_0=120\,\mathrm{V}$.

```






