---
title: Solución Ejercicio 11
keywords:
  - coordenadas-esfericas
  - coordenadas-cartesianas
  - transformacion-coordenadas
  - vectores-base
tags:
  - coordenadas-esfericas
  - coordenadas-cartesianas
  - transformacion-coordenadas
  - vectores-base
---

Las coordenadas esféricas $(r, \theta, \phi)$ se relacionan con las coordenadas cartesianas $(x, y, z)$ mediante:

$$x = r\sin\theta\cos\phi, \quad y = r\sin\theta\sin\phi, \quad z = r\cos\theta$$

donde
- $r \geq 0$ es la distancia desde el origen
- $\theta$ es el ángulo polar (colatitud), medido desde el eje $z$ positivo ($0 \leq \theta \leq \pi$)
- $\phi$ es el ángulo azimutal medido desde el eje $x$ positivo ($0 \leq \phi \leq 2\pi$)

**Vectores base en coordenadas esféricas**

Los vectores base en coordenadas esféricas se obtienen derivando el vector de posición $\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$ con respecto a cada coordenada y normalizando:

$$\vec{r} = r\sin\theta\cos\phi\,\hat{\iota} + r\sin\theta\sin\phi\,\hat{\jmath} + r\cos\theta\,\hat{\kappa}$$

Derivando respecto a $r$:

$$\vec{e}_r = \frac{\partial \vec{r}}{\partial r} = \sin\theta\cos\phi\,\hat{\iota} + \sin\theta\sin\phi\,\hat{\jmath} + \cos\theta\,\hat{\kappa}$$

Derivando respecto a $\theta$:

$$\vec{e}_\theta = \frac{\partial \vec{r}}{\partial \theta} = r\cos\theta\cos\phi\,\hat{\iota} + r\cos\theta\sin\phi\,\hat{\jmath} - r\sin\theta\,\hat{\kappa}$$

Derivando respecto a $\phi$:

$$\vec{e}_\phi = \frac{\partial \vec{r}}{\partial \phi} = -r\sin\theta\sin\phi\,\hat{\iota} + r\sin\theta\cos\phi\,\hat{\jmath}$$

**Normalización de los vectores base**

Para $\hat{e}_r$:

$$|\vec{e}_r| = \sqrt{\sin^2\theta\cos^2\phi + \sin^2\theta\sin^2\phi + \cos^2\theta} = \sqrt{\sin^2\theta + \cos^2\theta} = 1$$

Por lo tanto, $\hat{e}_r = \vec{e}_r$ ya está normalizado:

$$\hat{e}_r = \sin\theta\cos\phi\,\hat{\iota} + \sin\theta\sin\phi\,\hat{\jmath} + \cos\theta\,\hat{\kappa}$$

Para $\hat{e}_\theta$:

$$|\vec{e}_\theta| = \sqrt{r^2\cos^2\theta\cos^2\phi + r^2\cos^2\theta\sin^2\phi + r^2\sin^2\theta} = \sqrt{r^2(\cos^2\theta + \sin^2\theta)} = r$$

Normalizando:

$$\hat{e}_\theta = \frac{\vec{e}_\theta}{|\vec{e}_\theta|} = \cos\theta\cos\phi\,\hat{\iota} + \cos\theta\sin\phi\,\hat{\jmath} - \sin\theta\,\hat{\kappa}$$

Para $\hat{e}_\phi$:

$$|\vec{e}_\phi| = \sqrt{r^2\sin^2\theta\sin^2\phi + r^2\sin^2\theta\cos^2\phi} = \sqrt{r^2\sin^2\theta} = r\sin\theta$$

Normalizando:

$$\hat{e}_\phi = \frac{\vec{e}_\phi}{|\vec{e}_\phi|} = -\sin\phi\,\hat{\iota} + \cos\phi\,\hat{\jmath}$$

**Verificación de la ortogonalidad**

El sistema es ortogonal: los productos punto entre vectores unitarios distintos se anulan. Por ejemplo,

$$\hat{e}_r \cdot \hat{e}_\theta = \sin\theta\cos\theta(\cos^2\phi + \sin^2\phi) - \sin\theta\cos\theta = \sin\theta\cos\theta - \sin\theta\cos\theta = 0$$

y de forma análoga $\hat{e}_r \cdot \hat{e}_\phi = 0$ y $\hat{e}_\theta \cdot \hat{e}_\phi = 0$.

**Cálculo de los factores de escala**

Los factores de escala se definen como $h_i = |\vec{e}_i|$:

- $h_r = |\vec{e}_r| = 1$
- $h_\theta = |\vec{e}_\theta| = r$
- $h_\phi = |\vec{e}_\phi| = r\sin\theta$

En resumen,

$$\boxed{\hat{e}_r = \sin\theta\cos\phi\,\hat{\iota} + \sin\theta\sin\phi\,\hat{\jmath} + \cos\theta\,\hat{\kappa}}$$
$$\boxed{\hat{e}_\theta = \cos\theta\cos\phi\,\hat{\iota} + \cos\theta\sin\phi\,\hat{\jmath} - \sin\theta\,\hat{\kappa}}$$
$$\boxed{\hat{e}_\phi = -\sin\phi\,\hat{\iota} + \cos\phi\,\hat{\jmath}}$$

$$\boxed{h_r = 1, \quad h_\theta = r, \quad h_\phi = r\sin\theta}$$

