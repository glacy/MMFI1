---
title: Solución Ejercicio 4
keywords:
  - divergencia
  - campo-electrico
  - electrostatica
  - ley-gauss
  - coordenadas-esfericas
tags:
  - divergencia
  - campo-electrico
  - electrostatica
  - ley-gauss
  - coordenadas-esfericas
---

La expresión general de la divergencia en coordenadas curvilíneas ortogonales es

$$\nabla \cdot \vec{A} = \frac{1}{h_1h_2h_3}\left[ \frac{\partial}{\partial u_1}(h_2h_3A_1)+\frac{\partial}{\partial u_2}(h_1h_3A_2)+\frac{\partial}{\partial u_3}(h_1h_2A_3) \right].$$

Para las coordenadas esféricas los factores de escala son $$h_r=1, \quad h_\theta=r\quad \text{y} \quad h_\phi=r\sin\theta$$
 de donde se obtiene

$$\nabla \cdot \vec{A} = \frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2 A_r\right) + \frac{1}{r\sin\theta}\frac{\partial}{\partial \theta}\left(\sin\theta\, A_\theta\right) + \frac{1}{r\sin\theta}\frac{\partial A_\phi}{\partial \phi}.$$

El campo de una carga puntual es puramente radial, $\vec{E} = E_r\hat{e}_r$ con $E_r = \dfrac{q}{4\pi\epsilon_0 r^2}$, por lo que $E_\theta = E_\phi = 0$ y solo sobrevive el primer término:

$$\nabla \cdot \vec{E} = \frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2 \cdot \frac{q}{4\pi\epsilon_0 r^2}\right) = \frac{1}{r^2}\frac{\partial}{\partial r}\left(\frac{q}{4\pi\epsilon_0}\right) = 0.$$

$$\boxed{\nabla \cdot \vec{E} = 0 \quad \text{para } r > 0}$$

---

La forma diferencial de la ley de Gauss establece

$$\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_0}.$$

Para $r>0$ no hay carga en la vecindad del punto, $\rho=0$, y el resultado coincide: la divergencia se anula. En el origen ($r=0$) se concentra toda la carga puntual $q$, que en términos de densidad se escribe $\rho = q\,\delta^3(\vec{r})$, donde $\delta^3$ es la función delta de Dirac tridimensional. Por lo tanto

$$\nabla \cdot \vec{E} = \frac{q}{\epsilon_0}\,\delta^3(\vec{r}),$$

que integrado sobre cualquier volumen que contenga el origen da $q/\epsilon_0$, en concordancia con la ley de Gauss en forma integral $\oint \vec{E}\cdot d\vec{A} = q/\epsilon_0$.
