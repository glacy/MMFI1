---
title: Solución Ejercicio 1
keywords:
  - maxwell
  - energia
  - flujo
  - divergencia
  - poynting
tags:
  - maxwell
  - flujo
  - divergencia
  - electromagnetismo
  - teorema-divergencia
---

La energía total almacenada en el volumen $V$ es

$$U = \int_V \frac{1}{2}\left(\epsilon_0 E^2 + \frac{1}{\mu_0}B^2\right)dV.$$

Como $V$ es un volumen fijo, la tasa de cambio de la energía es

$$\frac{dU}{dt} = \int_V \frac{\partial}{\partial t}\left[\frac{1}{2}\left(\epsilon_0 E^2 + \frac{1}{\mu_0}B^2\right)\right]dV.$$

Derivando y usando $E^2 = \vec{E}\cdot\vec{E}$, $B^2 = \vec{B}\cdot\vec{B}$:

$$\frac{dU}{dt} = \int_V \left(\epsilon_0\,\vec{E}\cdot\frac{\partial\vec{E}}{\partial t} + \frac{1}{\mu_0}\,\vec{B}\cdot\frac{\partial\vec{B}}{\partial t}\right)dV.$$

---

Usamos las ecuaciones de Maxwell para sustituir las derivadas temporales.

De la ley de Faraday:

$$\frac{\partial\vec{B}}{\partial t} = -\nabla\times\vec{E}.$$

De la ley de Ampère-Maxwell, con $c^2 = 1/(\mu_0\epsilon_0)$:

$$\frac{\partial\vec{E}}{\partial t} = c^2\left(\nabla\times\vec{B} - \mu_0\vec{J}\right), \qquad\Longrightarrow\qquad
\epsilon_0\,\frac{\partial\vec{E}}{\partial t} = \frac{1}{\mu_0}(\nabla\times\vec{B}) - \vec{J}.$$

Sustituyendo:

$$\frac{dU}{dt} = \int_V \left[\frac{1}{\mu_0}\,\vec{E}\cdot(\nabla\times\vec{B}) - \frac{1}{\mu_0}\,\vec{B}\cdot(\nabla\times\vec{E}) - \vec{J}\cdot\vec{E}\right]dV.$$

---

Reordenamos el integrando. Usamos la identidad vectorial

$$\nabla\cdot(\vec{E}\times\vec{B}) = \vec{B}\cdot(\nabla\times\vec{E}) - \vec{E}\cdot(\nabla\times\vec{B}),$$

de modo que

$$\vec{E}\cdot(\nabla\times\vec{B}) - \vec{B}\cdot(\nabla\times\vec{E}) = -\nabla\cdot(\vec{E}\times\vec{B}).$$

Por lo tanto

$$\frac{dU}{dt} = -\int_V (\vec{J}\cdot\vec{E})\,dV - \frac{1}{\mu_0}\int_V \nabla\cdot(\vec{E}\times\vec{B})\,dV.$$

---

Aplicando el teorema de Gauss (de la divergencia) al último término:

$$\int_V \nabla\cdot(\vec{E}\times\vec{B})\,dV = \oint_S (\vec{E}\times\vec{B})\cdot d\vec{S},$$

donde $S$ es la superficie cerrada que encierra $V$. Resulta

$$\frac{dU}{dt} = -\int_V (\vec{J}\cdot\vec{E})\,dV - \frac{1}{\mu_0}\oint_S (\vec{E}\times\vec{B})\cdot d\vec{S},$$

que es exactamente la expresión pedida:

$$\boxed{\frac{dU}{dt} = -\int_V (\vec{J}\cdot\vec{E})\,dV - \frac{1}{\mu_0}\oint_S (\vec{E}\times\vec{B})\cdot d\vec{S}}$$

---

**Interpretación física.** El primer término, $-\int_V \vec{J}\cdot\vec{E}\,dV$, es la potencia disipada por efecto Joule en el conductor. El segundo término involucra al [vector de Poynting](https://es.wikipedia.org/wiki/Vector_de_Poynting)

$$\vec{S}_p = \frac{1}{\mu_0}\,\vec{E}\times\vec{B},$$

cuyo flujo a través de $S$ mide la energía electromagnética que sale del volumen por unidad de tiempo. La ecuación expresa la conservación de la energía electromagnética: la energía del campo dentro de $V$ solo puede cambiar por disipación interna o por el flujo que atraviesa la frontera.
