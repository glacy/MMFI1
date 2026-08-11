---
title: Solución Ejercicio 2
keywords:
  - coordenadas-cilindricas
  - flujo
  - teorema-divergencia
  - integral-superficie
tags:
  - flujo
  - teorema-divergencia
  - integrales-superficie
  - coordenadas-cilindricas
  - calculo
---

El campo está dado, en coordenadas cilíndricas, por

$$\vec{F} = \frac{F_0 \rho}{a}\cos(\lambda z)\,\hat{e}_\rho + F_0\sin(\lambda z)\,\hat{\kappa}.$$

La superficie cerrada está formada por cuatro trozos: el cilindro exterior $\rho = 2a$, el cilindro interior $\rho = a$, y los planos $z = a\pi/2$ y $z = -a\pi/2$. Los vectores normales hacia afuera son, respectivamente, $\hat{e}_\rho$, $-\hat{e}_\rho$, $\hat{\kappa}$ y $-\hat{\kappa}$.

---


**Superficie exterior ($\rho = 2a$).** El elemento de área es $dS = \rho\,d\theta\,dz = 2a\,d\theta\,dz$ y el integrando es

$$\vec{F}\cdot\hat{e}_\rho = \frac{F_0(2a)}{a}\cos(\lambda z) = 2F_0\cos(\lambda z).$$

$$\Phi_{\text{ext}} = \int_{-a\pi/2}^{a\pi/2}\int_0^{2\pi} 2F_0\cos(\lambda z)\,(2a)\,d\theta\,dz
= 8\pi aF_0\int_{-a\pi/2}^{a\pi/2}\cos(\lambda z)\,dz.$$

Como $\int_{-a\pi/2}^{a\pi/2}\cos(\lambda z)\,dz = \frac{2}{\lambda}\sin(\lambda a\pi/2)$,

$$\Phi_{\text{ext}} = \frac{16\pi aF_0}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

**Superficie interior ($\rho = a$).** Con $dS = a\,d\theta\,dz$ y normal $-\hat{e}_\rho$:

$$\vec{F}\cdot(-\hat{e}_\rho) = -\frac{F_0 a}{a}\cos(\lambda z) = -F_0\cos(\lambda z),$$

$$\Phi_{\text{int}} = -\int_{-a\pi/2}^{a\pi/2}\int_0^{2\pi} F_0\cos(\lambda z)\,a\,d\theta\,dz
= -\frac{4\pi aF_0}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

**Plano superior ($z = a\pi/2$).** Con $dS = \rho\,d\rho\,d\theta$ y normal $\hat{\kappa}$:

$$\vec{F}\cdot\hat{\kappa} = F_0\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

$$\Phi_{\text{sup}} = 2\pi F_0\sin\!\left(\frac{\lambda a\pi}{2}\right)\int_a^{2a}\rho\,d\rho
= 2\pi F_0\sin\!\left(\frac{\lambda a\pi}{2}\right)\frac{(2a)^2-a^2}{2}
= 3\pi a^2 F_0\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

**Plano inferior ($z = -a\pi/2$).** Con normal $-\hat{\kappa}$:

$$\vec{F}\cdot(-\hat{\kappa}) = -F_0\sin\!\left(-\frac{\lambda a\pi}{2}\right)
= F_0\sin\!\left(\frac{\lambda a\pi}{2}\right),$$

por lo que el flujo es idéntico al del plano superior:

$$\Phi_{\text{inf}} = 3\pi a^2 F_0\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

**Flujo total:**

$$\Phi = \Phi_{\text{ext}} + \Phi_{\text{int}} + \Phi_{\text{sup}} + \Phi_{\text{inf}}
= \frac{16\pi aF_0}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right)
- \frac{4\pi aF_0}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right)
+ 6\pi a^2 F_0\sin\!\left(\frac{\lambda a\pi}{2}\right),$$

$$\boxed{\Phi = \frac{6\pi aF_0}{\lambda}(2+\lambda a)\sin\!\left(\frac{\lambda a\pi}{2}\right)}$$

---

**Flujo mediante el teorema de la divergencia**

En coordenadas cilíndricas, la divergencia es

$$\nabla\cdot\vec{F} = \frac{1}{\rho}\frac{\partial}{\partial\rho}(\rho F_\rho)
+ \frac{1}{\rho}\frac{\partial F_\theta}{\partial\theta}
+ \frac{\partial F_z}{\partial z},$$

con $F_\rho = \frac{F_0\rho}{a}\cos(\lambda z)$, $F_\theta = 0$ y $F_z = F_0\sin(\lambda z)$:

$$\frac{1}{\rho}\frac{\partial}{\partial\rho}(\rho F_\rho)
= \frac{1}{\rho}\frac{\partial}{\partial\rho}\!\left(\frac{F_0\rho^2}{a}\cos(\lambda z)\right)
= \frac{2F_0}{a}\cos(\lambda z),$$

$$\frac{\partial F_z}{\partial z} = F_0\lambda\cos(\lambda z).$$

Por lo tanto

$$\nabla\cdot\vec{F} = F_0\cos(\lambda z)\left(\frac{2}{a} + \lambda\right).$$

El volumen es la región anular entre $\rho = a$ y $\rho = 2a$, con $z\in[-a\pi/2,\,a\pi/2]$. Por el teorema de Gauss:

$$\Phi = \iiint_V \nabla\cdot\vec{F}\,dV
= F_0\left(\frac{2}{a}+\lambda\right)
\int_a^{2a}\int_0^{2\pi}\int_{-a\pi/2}^{a\pi/2}\cos(\lambda z)\,\rho\,dz\,d\theta\,d\rho.$$

Separando las integrales:

$$\int_a^{2a}\rho\,d\rho = \frac{3a^2}{2}, \qquad
\int_0^{2\pi}d\theta = 2\pi, \qquad
\int_{-a\pi/2}^{a\pi/2}\cos(\lambda z)\,dz = \frac{2}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right),$$

$$\Phi = F_0\left(\frac{2}{a}+\lambda\right)\cdot\frac{3a^2}{2}\cdot 2\pi\cdot\frac{2}{\lambda}\sin\!\left(\frac{\lambda a\pi}{2}\right),$$

$$\Phi = \frac{6\pi a^2F_0}{\lambda}\left(\frac{2}{a}+\lambda\right)\sin\!\left(\frac{\lambda a\pi}{2}\right)
= \frac{6\pi aF_0}{\lambda}(2+\lambda a)\sin\!\left(\frac{\lambda a\pi}{2}\right).$$

$$\boxed{\Phi = \frac{6\pi aF_0}{\lambda}(2+\lambda a)\sin\!\left(\frac{\lambda a\pi}{2}\right)}$$

El resultado coincide con el de la integración directa, confirmando el teorema de la divergencia.
