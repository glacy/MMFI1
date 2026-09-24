---
title: Solución Ejercicio 8
keywords:
  - mapeo-conforme
  - transformaciones-conformes
  - ecuacion-de-laplace
  - aplicacion
tags:
  - mapeo-conforme
  - transformaciones-conformes
  - ecuacion-de-laplace
  - aplicacion
objetivos: []
---

**(a) Conformidad.** El mapeo $f(z) = z^2$ es entero (analítica en todo el plano) y $f'(z) = 2z$ se anula **solo** en $z = 0$. Donde $f'(z_0) \neq 0$, el mapeo local es una rotación de ángulo $\arg f'(z_0)$ más una homotecia de factor $|f'(z_0)|$ — ambas isotrópicas —, así que los ángulos entre curvas se preservan: $w = z^2$ es conforme en $\mathbb{C}\setminus\{0\}$. En el punto crítico $z=0$, en cambio, $f(z) = z^2$ **duplica** ángulos: un sector de ángulo $\theta$ con vértice en el origen se mapea a uno de ángulo $2\theta$ (una esquina de $90°$ se abre a $180°$).

---

**(b) Imagen del cuadrante.** En polares, $z = r e^{i\theta} \Rightarrow w = r^2 e^{i2\theta}$. El primer cuadrante es $r>0$, $0<\theta<\pi/2$; su imagen es $r^2>0$, $0<2\theta<\pi$: el **semiplano superior** $\Im w > 0$. Las fronteras:

$$
\text{semieje } y = 0,\ x>0 \;(\theta = 0) \;\longmapsto\; \text{semieje positivo } \Re w > 0,
$$

$$
\text{semieje } x = 0,\ y>0 \;(\theta = \pi/2) \;\longmapsto\; \text{semieje negativo } \Re w < 0.
$$

El vértice $z=0$ se mapea en $w=0$ (donde las dos fronteras se "despegan" con el doble de ángulo).

---

**(c) Potencial en la esquina.** En el semiplano superior el problema es trivial: la función armónica $\Phi(u,v) = \frac{V_0}{\pi}\arg w$ (con $w = u + iv$) vale $0$ sobre el semieje positivo ($\arg w = 0$) y $V_0$ sobre el negativo ($\arg w = \pi$). Como $\arg(z^2) = 2\arg z$, componiendo con el mapeo:

$$
\phi(x,y) = \frac{V_0}{\pi}\arg(z^2) = \frac{2V_0}{\pi}\,\arg z = \boxed{\;\frac{2V_0}{\pi}\arctan\frac{y}{x}\;}
$$

(esta última forma vale en $x>0$; en general, $\phi = \frac{2V_0}{\pi}\theta$ con $\theta = \arg z \in (0,\pi/2)$). Verificaciones: $\phi = 0$ sobre $y=0$ ✓; $\phi = V_0$ sobre $x=0$ ✓; y $\phi$ solo depende del ángulo polar, así que es armónica (es la parte imaginaria de $\frac{2V_0}{\pi}\ln z$, analítica en el cuadrante).

**Geometría de la solución:**

- **Equipotenciales** $\phi = \text{const}$: rayos $\theta = \text{const}$ que salen del vértice.
- **Líneas de campo** (ortogonales a las equipotenciales): circunferencias $r = \text{const}$ centradas en el vértice.

El mapeo reveló la estructura escondida: un problema con simetría angular en un dominio "con esquina" era, tras enderezar la esquina, un problema de transición lineal entre dos semiejes.

---

**(d) Joukowski y la sustentación.** El único flujo ideal (irrotacional e incompresible) con solución cerrada conocida es el **flujo alrededor de un círculo** — lo conocemos con cualquier circulación $\Gamma$ mediante el potencial complejo $w(z) = U\left(z + \frac{a^2}{z}\right) + \frac{\Gamma}{2\pi i}\ln z$. La transformación de Joukowski $\zeta = z + a^2/z$ es conforme fuera del círculo y lo deforma en un **perfil de ala** (placa, elipse o perfil con curvatura y espesor, según la posición del círculo). Como el mapeo preserva ángulos y hereda armonicidad a las componentes del potencial, la **solución completa del flujo alrededor del perfil es la imagen del flujo alrededor del círculo**: líneas de corriente, presión y todo. La circulación $\Gamma$ se fija con la condición de Kutta (flujo suave en el borde de salida) y el **teorema de Kutta–Joukowski**, $L = \rho U \Gamma$, da la sustentación. Así, un solo mapeo analítico convirtió "resolver el flujo alrededor de un ala" en "resolver el flujo alrededor de un círculo y deformarlo": es el fundamento histórico de la teoría de perfiles y aún hoy calibra los códigos numéricos de CFD.
