---
title: Solución Ejercicio 6
keywords:
  - ley-gauss
  - electromagnetismo
  - campo-electrico
  - teorema-divergencia
tags:
  - ley-gauss
  - campo-electrico
  - electromagnetismo
  - teorema-divergencia
---

**Ley de Gauss y su relación con el teorema de la divergencia**

La ley de Gauss en forma integral establece que el flujo del campo eléctrico a través de una superficie cerrada $S$ es igual a la carga neta encerrada dividida por $\epsilon_0$:

$$\oint_S \vec{E}\cdot\hat{n}\,dS = \frac{Q_{\text{enc}}}{\epsilon_0}.$$

Aplicando el teorema de la divergencia al primer miembro y escribiendo $Q_{\text{enc}} = \int_V \rho\,dV$:

$$\int_V \nabla\cdot\vec{E}\,dV = \frac{1}{\epsilon_0}\int_V \rho\,dV
\;\Longrightarrow\;
\nabla\cdot\vec{E} = \frac{\rho}{\epsilon_0},$$

que es la forma diferencial de la ley de Gauss. Ambas son equivalentes gracias al teorema de la divergencia, y el teorema permite *calcular* $\vec{E}$ a partir del flujo cuando hay simetría.

**Cálculo del campo por simetría esférica**

La distribución de carga es esféricamente simétrica, luego $\vec{E}(\vec{r}) = E(r)\hat{r}$, con $E$ dependiendo solo de la distancia al origen. Tomamos como superficie de Gauss una esfera de radio $r$ concéntrica con la distribución, con lo que $\vec{E}\cdot\hat{n} = E(r)$ constante sobre ella:

$$\oint_S \vec{E}\cdot\hat{n}\,dS = E(r)\cdot 4\pi r^2 = \frac{Q_{\text{enc}}}{\epsilon_0}.$$

La densidad de carga uniforme es $\rho_0 = Q/\left(\frac{4}{3}\pi R^3\right)$.

**Exterior ($r > R$):** la carga encerrada es toda la carga $Q_{\text{enc}} = Q$, luego

$$E(r)\cdot 4\pi r^2 = \frac{Q}{\epsilon_0}
\;\Longrightarrow\;
\vec{E}(r) = \frac{Q}{4\pi\epsilon_0 r^2}\,\hat{r},
\qquad r > R,$$

que coincide con el campo de una carga puntual, como era de esperar.

**Interior ($r < R$):** solo contribuye la carga contenida en la esfera de radio $r$:

$$Q_{\text{enc}} = \rho_0\cdot\frac{4}{3}\pi r^3 = Q\frac{r^3}{R^3},$$

$$E(r)\cdot 4\pi r^2 = \frac{1}{\epsilon_0}Q\frac{r^3}{R^3}
\;\Longrightarrow\;
\vec{E}(r) = \frac{Qr}{4\pi\epsilon_0 R^3}\,\hat{r},
\qquad r < R.$$

El campo crece linealmente con $r$ dentro de la esfera.

---


**Continuidad en $r = R$**

Evaluando ambas expresiones en $r = R$:

$$\vec{E}(R^-) = \displaystyle\frac{QR}{4\pi\epsilon_0 R^3}\hat{r} = \frac{Q}{4\pi\epsilon_0 R^2}\hat{r},$$

$$\vec{E}(R^+) = \displaystyle\frac{Q}{4\pi\epsilon_0 R^2}\hat{r}.$$

Ambos valores coinciden, por lo que el campo es continuo en la superficie de la esfera:

$$\boxed{\vec{E}(r) = \begin{cases}
\displaystyle \frac{Qr}{4\pi\epsilon_0 R^3}\,\hat{r}, & r < R\\[8pt]
\displaystyle \frac{Q}{4\pi\epsilon_0 r^2}\,\hat{r}, & r > R
\end{cases}}$$
