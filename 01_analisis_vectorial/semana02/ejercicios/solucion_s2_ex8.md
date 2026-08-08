---
title: Solución Ejercicio 8
keywords:
  - coordenadas-cilindricas
  - coordenadas-cartesianas
  - transformacion-coordenadas
  - vectores-base
tags:
  - coordenadas-cilindricas
  - coordenadas-cartesianas
  - transformacion-coordenadas
  - vectores-base
---

**Relación entre coordenadas cilíndricas y cartesianas**

**Definición de coordenadas cilíndricas**

Las coordenadas cilíndricas $(\rho, \phi, z)$ se relacionan con las coordenadas cartesianas $(x, y, z)$ mediante:

$$x = \rho \cos \phi, \quad y = \rho \sin \phi, \quad z = z$$

Donde:
- $\rho \geq 0$ es la distancia desde el eje $z$
- $\phi$ es el ángulo azimutal medido desde el eje $x$ positivo
- $z$ es la misma coordenada que en cartesianas

**Vectores base en coordenadas cilíndricas**

Los vectores base en coordenadas cilíndricas se obtienen derivando las coordenadas cartesianas con respecto a las coordenadas cilíndricas y normalizando:

$$\vec{e}_\rho = \frac{\partial \vec{r}}{\partial \rho} = \frac{\partial x}{\partial \rho}\hat{\iota} + \frac{\partial y}{\partial \rho}\hat{\jmath} + \frac{\partial z}{\partial \rho}\hat{\kappa}$$

$$= \cos\phi\hat{\iota} + \sin\phi\hat{\jmath} + 0\hat{\kappa} = \cos\phi\hat{\iota} + \sin\phi\hat{\jmath}$$

$$\vec{e}_\phi = \frac{\partial \vec{r}}{\partial \phi} = \frac{\partial x}{\partial \phi}\hat{\iota} + \frac{\partial y}{\partial \phi}\hat{\jmath} + \frac{\partial z}{\partial \phi}\hat{\kappa}$$

$$= -\rho\sin\phi\hat{\iota} + \rho\cos\phi\hat{\jmath} + 0\hat{\kappa} = -\rho\sin\phi\hat{\iota} + \rho\cos\phi\hat{\jmath}$$

$$\vec{e}_z = \frac{\partial \vec{r}}{\partial z} = \frac{\partial x}{\partial z}\hat{\iota} + \frac{\partial y}{\partial z}\hat{\jmath} + \frac{\partial z}{\partial z}\hat{\kappa}$$

$$= 0\hat{\iota} + 0\hat{\jmath} + 1\hat{\kappa} = \hat{\kappa}$$

**Normalización de los vectores base**

**Para $\hat{e}_\rho$**

$$|\vec{e}_\rho| = \sqrt{\cos^2\phi + \sin^2\phi} = \sqrt{1} = 1$$

Por lo tanto, $\hat{e}_\rho = \vec{e}_\rho$ ya está normalizado:

$$\hat{e}_\rho = \cos\phi\hat{\iota} + \sin\phi\hat{\jmath}$$

**Para $\hat{e}_\phi$**

$$|\vec{e}_\phi| = \sqrt{(-\rho\sin\phi)^2 + (\rho\cos\phi)^2} = \sqrt{\rho^2(\sin^2\phi + \cos^2\phi)} = \sqrt{\rho^2} = \rho$$

Normalizando:

$$\hat{e}_\phi = \frac{\vec{e}_\phi}{|\vec{e}_\phi|} = \frac{-\rho\sin\phi\hat{\iota} + \rho\cos\phi\hat{\jmath}}{\rho} = -\sin\phi\hat{\iota} + \cos\phi\hat{\jmath}$$

**Para $\hat{e}_z$**

$$|\vec{e}_z| = |\hat{\kappa}| = 1$$

Por lo tanto, $\hat{e}_z = \hat{\kappa}$ ya está normalizado:

$$\hat{e}_z = \hat{\kappa}$$

**Cálculo de los factores de escala**

Los factores de escala se definen como $h_i = |\vec{e}_i|$:

- $h_\rho = |\vec{e}_\rho| = 1$
- $h_\phi = |\vec{e}_\phi| = \rho$
- $h_z = |\vec{e}_z| = 1$

**Verificación de ortogonalidad**

Los vectores base son ortogonales entre sí:

$$\hat{e}_\rho \cdot \hat{e}_\phi = (\cos\phi\hat{\iota} + \sin\phi\hat{\jmath}) \cdot (-\sin\phi\hat{\iota} + \cos\phi\hat{\jmath})$$

$$= \cos\phi(-\sin\phi) + \sin\phi(\cos\phi) = -\cos\phi\sin\phi + \sin\phi\cos\phi = 0$$

$$\hat{e}_\rho \cdot \hat{e}_z = (\cos\phi\hat{\iota} + \sin\phi\hat{\jmath}) \cdot \hat{\kappa} = 0$$

$$\hat{e}_\phi \cdot \hat{e}_z = (-\sin\phi\hat{\iota} + \cos\phi\hat{\jmath}) \cdot \hat{\kappa} = 0$$

**Resultado final**

$$\boxed{\hat{e}_\rho = \cos\phi\hat{\iota} + \sin\phi\hat{\jmath}}$$
$$\boxed{\hat{e}_\phi = -\sin\phi\hat{\iota} + \cos\phi\hat{\jmath}}$$
$$\boxed{\hat{e}_z = \hat{\kappa}}$$

$$\boxed{h_\rho = 1, \quad h_\phi = \rho, \quad h_z = 1}$$