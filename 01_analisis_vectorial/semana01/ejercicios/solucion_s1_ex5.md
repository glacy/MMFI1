---
title: Solución Ejercicio 5
keywords:
  - derivacion-vectorial
  - coordenadas-polares
  - vectores-unitarios
  - derivada-temporal
tags:
  - derivacion-vectorial
  - coordenadas-polares
  - vectores-unitarios
  - derivada-temporal
  - cinematica
---

En coordenadas polares $(r, \theta)$, los vectores unitarios se relacionan con los vectores unitarios cartesianos $\hat{\iota}$ y $\hat{\jmath}$ como:

$$\hat{e}_r = \cos\theta \, \hat{\iota} + \sin\theta \, \hat{\jmath}$$

$$\hat{e}_\theta = -\sin\theta \, \hat{\iota} + \cos\theta \, \hat{\jmath}$$

- Derivada de $\hat{e}_r$

$$\frac{d\hat{e}_r}{dt} = \frac{d}{dt}(\cos\theta \, \hat{\iota} + \sin\theta \, \hat{\jmath})$$

$$= -\sin\theta \frac{d\theta}{dt} \hat{\iota} + \cos\theta \frac{d\theta}{dt} \hat{\jmath}$$

$$= \frac{d\theta}{dt}(-\sin\theta \, \hat{\iota} + \cos\theta \, \hat{\jmath})$$

$$= \frac{d\theta}{dt} \hat{e}_\theta$$

Por lo tanto 

$$\frac{d\hat{e}_r}{dt} = \hat{e}_\theta \frac{d\theta}{dt}$$

- Derivada de $\hat{e}_\theta$

$$\frac{d\hat{e}_\theta}{dt} = \frac{d}{dt}(-\sin\theta \, \hat{\iota} + \cos\theta \, \hat{\jmath})$$

$$= -\cos\theta \frac{d\theta}{dt} \hat{\iota} - \sin\theta \frac{d\theta}{dt} \hat{\jmath}$$

$$= \frac{d\theta}{dt}(-\cos\theta \, \hat{\iota} - \sin\theta \, \hat{\jmath})$$

$$= -\frac{d\theta}{dt}(\cos\theta \, \hat{\iota} + \sin\theta \, \hat{\jmath})$$

$$= -\frac{d\theta}{dt} \hat{e}_r$$

Por lo tanto 

$$\frac{d\hat{e}_\theta}{dt} = -\hat{e}_r \frac{d\theta}{dt}$$
