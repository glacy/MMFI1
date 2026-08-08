---
title: Solución Ejercicio 6
keywords:
  - coordenadas-paraboloidales
  - factores-de-escala
  - transformacion-coordenadas
  - geometria-esferica
tags:
  - coordenadas-paraboloidales
  - factores-de-escala
  - transformacion-coordenadas
  - geometria-esferica
---

**Cálculo de los factores de escala del sistema paraboloidal**

**Definición del sistema de coordenadas**

El sistema paraboloidal de coordenadas está definido por:

$$x = uv\cos \phi$$
$$y = uv\sin \phi$$
$$z = \frac{1}{2}(u^2 - v^2)$$

**Definición de los factores de escala**

Los factores de escala $h_u$, $h_v$, y $h_\phi$ se definen como:

$$h_u = \left|\frac{\partial \vec{r}}{\partial u}\right|, \quad h_v = \left|\frac{\partial \vec{r}}{\partial v}\right|, \quad h_\phi = \left|\frac{\partial \vec{r}}{\partial \phi}\right|$$

Donde $\vec{r} = x\hat{\iota} + y\hat{\jmath} + z\hat{\kappa}$ es el vector de posición.

**Cálculo de las derivadas parciales del vector de posición**

**Derivada respecto a u**

$$\frac{\partial \vec{r}}{\partial u} = \frac{\partial x}{\partial u}\hat{\iota} + \frac{\partial y}{\partial u}\hat{\jmath} + \frac{\partial z}{\partial u}\hat{\kappa}$$

$$= v\cos \phi \hat{\iota} + v\sin \phi \hat{\jmath} + u\hat{\kappa}$$

**Derivada respecto a v**

$$\frac{\partial \vec{r}}{\partial v} = \frac{\partial x}{\partial v}\hat{\iota} + \frac{\partial y}{\partial v}\hat{\jmath} + \frac{\partial z}{\partial v}\hat{\kappa}$$

$$= u\cos \phi \hat{\iota} + u\sin \phi \hat{\jmath} - v\hat{\kappa}$$

**Derivada respecto a $\phi$**

$$\frac{\partial \vec{r}}{\partial \phi} = \frac{\partial x}{\partial \phi}\hat{\iota} + \frac{\partial y}{\partial \phi}\hat{\jmath} + \frac{\partial z}{\partial \phi}\hat{\kappa}$$

$$= -uv\sin \phi \hat{\iota} + uv\cos \phi \hat{\jmath} + 0\hat{\kappa}$$

**Cálculo de las magnitudes (factores de escala)**

**Factor de escala $h_u$**

$$h_u = \left|\frac{\partial \vec{r}}{\partial u}\right| = \sqrt{(v\cos \phi)^2 + (v\sin \phi)^2 + u^2}$$

$$= \sqrt{v^2\cos^2 \phi + v^2\sin^2 \phi + u^2} = \sqrt{v^2(\cos^2 \phi + \sin^2 \phi) + u^2}$$

$$= \sqrt{v^2(1) + u^2} = \sqrt{u^2 + v^2}$$

**Factor de escala $h_v$**

$$h_v = \left|\frac{\partial \vec{r}}{\partial v}\right| = \sqrt{(u\cos \phi)^2 + (u\sin \phi)^2 + (-v)^2}$$

$$= \sqrt{u^2\cos^2 \phi + u^2\sin^2 \phi + v^2} = \sqrt{u^2(\cos^2 \phi + \sin^2 \phi) + v^2}$$

$$= \sqrt{u^2(1) + v^2} = \sqrt{u^2 + v^2}$$

**Factor de escala $h_\phi$**

$$h_\phi = \left|\frac{\partial \vec{r}}{\partial \phi}\right| = \sqrt{(-uv\sin \phi)^2 + (uv\cos \phi)^2}$$

$$= \sqrt{u^2v^2\sin^2 \phi + u^2v^2\cos^2 \phi} = \sqrt{u^2v^2(\sin^2 \phi + \cos^2 \phi)}$$

$$= \sqrt{u^2v^2(1)} = |uv|$$

Como $u$ y $v$ son típicamente positivos en este sistema de coordenadas:

$$h_\phi = uv$$

**Verificación de la ortogonalidad del sistema**

Para verificar que el sistema es ortogonal, calculamos los productos punto entre los vectores base:

**Producto $\frac{\partial \vec{r}}{\partial u} \cdot \frac{\partial \vec{r}}{\partial v}$**

$$= (v\cos \phi)(u\cos \phi) + (v\sin \phi)(u\sin \phi) + (u)(-v)$$

$$= uv\cos^2 \phi + uv\sin^2 \phi - uv = uv(\cos^2 \phi + \sin^2 \phi) - uv$$

$$= uv(1) - uv = 0$$

**Producto $\frac{\partial \vec{r}}{\partial u} \cdot \frac{\partial \vec{r}}{\partial \phi}$**

$$= (v\cos \phi)(-uv\sin \phi) + (v\sin \phi)(uv\cos \phi) + (u)(0)$$

$$= -uv^2\cos \phi \sin \phi + uv^2\sin \phi \cos \phi + 0 = 0$$

**Producto $\frac{\partial \vec{r}}{\partial v} \cdot \frac{\partial \vec{r}}{\partial \phi}$**

$$= (u\cos \phi)(-uv\sin \phi) + (u\sin \phi)(uv\cos \phi) + (-v)(0)$$

$$= -u^2v\cos \phi \sin \phi + u^2v\sin \phi \cos \phi + 0 = 0$$

Como todos los productos punto son cero, el sistema de coordenadas es ortogonal.

**Elemento de volumen en coordenadas paraboloidales**

El elemento de volumen en este sistema de coordenadas es:

$$dV = h_u h_v h_\phi \, du \, dv \, d\phi$$

$$dV = (\sqrt{u^2 + v^2})(\sqrt{u^2 + v^2})(uv) \, du \, dv \, d\phi$$

$$dV = uv(u^2 + v^2) \, du \, dv \, d\phi$$

**Interpretación geométrica**

El sistema paraboloidal de coordenadas es útil para problemas con simetría parabólica, como:

- Campos eléctricos alrededor de paraboloides de carga
- Problemas de conducción de calor en geometrías parabólicas
- Mecánica cuántica en potencial parabólico
- Flujos de fluidos alrededor de superficies parabólicas

**Resultado final**

Los factores de escala del sistema paraboloidal de coordenadas son:

$$\boxed{h_u = \sqrt{u^2 + v^2}}$$
$$\boxed{h_v = \sqrt{u^2 + v^2}}$$
$$\boxed{h_\phi = uv}$$