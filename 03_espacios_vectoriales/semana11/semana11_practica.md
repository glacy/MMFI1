---
title: Ejercicios
description: Ejercicios
short_title: Ejercicios
author: " "
tags: 
  - operadores-lineales
  - operadores-adjuntos
  - conmutadores
  - matrices-pauli
  - operadores-hermiticos
  - demostracion
  - calculo
subject: Espacios vetoriales - Semana 10
keywords: []
---

:::{hint} Instrucciones
Resuelva de forma razonada cada uno de los siguientes ejercicios. Use esquemas y dibujos si lo considera necesario. Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
:::

```{exercise}
:label: ex1-s10

El operador $\mathcal{B}$ definido para dos estados ortonormales
    $|\varphi_1\rangle$ y $|\varphi_2\rangle$ está dado por
    $$\mathcal{B}|\varphi_1\rangle=2|\varphi_2\rangle \quad \mbox{y} \quad \mathcal{B}|\varphi_2\rangle=i|\varphi_1\rangle.$$
    Determine $\mathcal{B}^\dag|\varphi_2\rangle$.
```

```{exercise}
:label: ex2-s10

Considere un par de vectores ortogonales $|\phi_1\rangle$ y
$|\phi_2\rangle$ que expanden el espacio de Hilbert de cierto
sistema. El operador $\mathcal{A}$ tiene el siguiente efecto sobre
dichos estado base: 
:::{math}
\begin{aligned}
\mathcal{A}|\phi_1\rangle=&+2|\phi_1\rangle+2i|\phi_2\rangle\\
\mathcal{A}|\phi_2\rangle=&2i|\phi_1\rangle-|\phi_2\rangle
\end{aligned}
:::

Determine $\mathcal{A}^\dag|\phi_1\rangle$ y
$\langle \phi_2 | \mathcal{A}$.
```

```{exercise}
:label: ex3-s10

Para los [operadores de espín de Pauli](#eq-pauli),

1.  determine su acción sobre los vectores bra $\langle \pm |$.

2.  calcule $[\hat{\sigma}_i,\hat{\sigma}_j].$

```

```{exercise}
:label: ex4-s10

Considere el operador de aniquilación de fotones
    $\hat{a}|n\rangle=\sqrt{n}|n-1\rangle$. Demuestre que
    $$\hat{a}^\dag | n\rangle = \sqrt{n+1}|n+1\rangle.$$ El operador
    $\hat{a}^\dag$ se conoce como el *operador de creación de fotones*.
```

```{exercise}
:label: ex5-s10

Si $\mathcal{A}$ es hermítico, demuestre que
    $$\langle \psi | \mathcal{A}|\phi \rangle^* = \langle \phi | \mathcal{A}|\psi \rangle,$$
    de donde $$A_{mn}=A^*_{nm}.$$
```

```{exercise}
:label: ex6-s10

Demuestre que $(\mathcal{A}^\dag)^\dag=\mathcal{A}$.
```

```{exercise}
:label: ex7-s10

Demuestre que los autovalores de un operador hermítico son reales.
```