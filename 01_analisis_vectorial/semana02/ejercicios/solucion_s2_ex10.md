---
title: Solución Ejercicio 10
keywords:
  - flujo-axial
  - velocidad
  - rotacional
  - coordenadas-cilindricas
tags:
  - flujo-axial
  - velocidad
  - rotacional
  - coordenadas-cilindricas
---

## Flujo axial simétrico en coordenadas cilíndricas

### Planteamiento del problema

Tenemos un campo de velocidad axial simétrico:

$$\vec{v} = v_\rho(\rho,z)\hat{e}_\rho + v_z(\rho,z)\hat{e}_z$$

En coordenadas cilíndricas, los factores de escala son: $h_\rho = 1$, $h_\phi = \rho$, $h_z = 1$.

### Parte 1: Divergencia en coordenadas cilíndricas

El operador divergencia en coordenadas cilíndricas es:

$$\nabla \cdot \vec{v} = \frac{1}{h_\rho h_\phi h_z}\left[\frac{\partial}{\partial \rho}(h_\phi h_z v_\rho) + \frac{\partial}{\partial \phi}(h_\rho h_z v_\phi) + \frac{\partial}{\partial z}(h_\rho h_\phi v_z)\right]$$

$$= \frac{1}{\rho}\left[\frac{\partial}{\partial \rho}(\rho v_\rho) + \frac{\partial}{\partial \phi}(0) + \frac{\partial}{\partial z}(\rho v_z)\right]$$

$$= \frac{1}{\rho}\left[\frac{\partial}{\partial \rho}(\rho v_\rho) + \rho\frac{\partial v_z}{\partial z}\right]$$

Calculando las derivadas:

$$\frac{\partial}{\partial \rho}(\rho v_\rho) = v_\rho + \rho\frac{\partial v_\rho}{\partial \rho}$$

Por lo tanto:

$$\boxed{\nabla \cdot \vec{v} = \frac{v_\rho}{\rho} + \frac{\partial v_\rho}{\partial \rho} + \frac{\partial v_z}{\partial z}}$$

### Parte 2: Rotacional en coordenadas cilíndricas

El operador rotacional en coordenadas cilíndricas es:

$$\nabla \times \vec{v} = \frac{1}{h_\rho h_\phi h_z}\begin{vmatrix}
h_\rho\hat{e}_\rho & h_\phi\hat{e}_\phi & h_z\hat{e}_z \\
\frac{\partial}{\partial \rho} & \frac{\partial}{\partial \phi} & \frac{\partial}{\partial z} \\
h_\rho v_\rho & h_\phi v_\phi & h_z v_z
\end{vmatrix}$$

$$= \frac{1}{\rho}\begin{vmatrix}
\hat{e}_\rho & \rho\hat{e}_\phi & \hat{e}_z \\
\frac{\partial}{\partial \rho} & \frac{\partial}{\partial \phi} & \frac{\partial}{\partial z} \\
v_\rho & 0 & v_z
\end{vmatrix}$$

Calculando el determinante:

$$\nabla \times \vec{v} = \frac{1}{\rho}\left[\hat{e}_\rho\left(\frac{\partial v_z}{\partial \phi} - \frac{\partial 0}{\partial z}\right) - \rho\hat{e}_\phi\left(\frac{\partial v_z}{\partial \rho} - \frac{\partial v_\rho}{\partial z}\right) + \hat{e}_z\left(\frac{\partial 0}{\partial \rho} - \frac{\partial (\rho v_\rho)}{\partial \phi}\right)\right]$$

$$= \frac{1}{\rho}\left[\hat{e}_\rho(0 - 0) - \rho\hat{e}_\phi\left(\frac{\partial v_z}{\partial \rho} - \frac{\partial v_\rho}{\partial z}\right) + \hat{e}_z(0 - 0)\right]$$

$$= -\hat{e}_\phi\left(\frac{\partial v_z}{\partial \rho} - \frac{\partial v_\rho}{\partial z}\right)$$

$$\boxed{\nabla \times \vec{v} = \hat{e}_\phi\left(\frac{\partial v_\rho}{\partial z} - \frac{\partial v_z}{\partial \rho}\right)}$$

### Parte 3: Flujo incompresible

Para un flujo incompresible con:

$$v_\rho(\rho,z) = -\frac{\rho}{2}f'(z), \quad v_z(\rho,z) = f(z)$$

Calculamos la divergencia:

$$\frac{v_\rho}{\rho} = \frac{-\frac{\rho}{2}f'(z)}{\rho} = -\frac{1}{2}f'(z)$$

$$\frac{\partial v_\rho}{\partial \rho} = \frac{\partial}{\partial \rho}\left(-\frac{\rho}{2}f'(z)\right) = -\frac{1}{2}f'(z)$$

$$\frac{\partial v_z}{\partial z} = f''(z)$$

Por lo tanto:

$$\nabla \cdot \vec{v} = -\frac{1}{2}f'(z) - \frac{1}{2}f'(z) + f''(z) = -f'(z) + f''(z)$$

Para que el flujo sea incompresible, $\nabla \cdot \vec{v} = 0$:

$$f''(z) - f'(z) = 0$$

Esta es una ecuación diferencial ordinaria de segundo orden.

#### Solución de la ecuación diferencial

La ecuación $f''(z) - f'(z) = 0$ tiene solución de la forma $f(z) = Ae^{z} + B$.

Verificamos:
- $f'(z) = Ae^{z}$
- $f''(z) = Ae^{z}$

Sustituyendo:
$$Ae^{z} - Ae^{z} = 0$$ ✓

Por lo tanto, la solución general es:

$$\boxed{f(z) = Ae^{z} + B}$$

Donde $A$ y $B$ son constantes determinadas por las condiciones de contorno del problema.

### Interpretación física

1. **Flujo incompresible**: La condición $\nabla \cdot \vec{v} = 0$ expresa la conservación de masa para un fluido de densidad constante.
2. **Simetría axial**: El campo de velocidad no tiene componente en $\phi$, lo que es apropiado para problemas con simetría axial.
3. **Función $f(z)$**: La solución exponencial describe cómo la velocidad vertical varía con $z$ manteniendo la incompresibilidad.

### Aplicaciones

Este tipo de análisis es fundamental en:
- **Mecánica de fluidos**: Estudio de flujos en tuberías y canales
- **Ingeniería química**: Reactores y mezcladores
- **Meteorología**: Flujo atmosférico
- **Oceanografía**: Corrientes oceánicas

### Resumen de resultados

$$\boxed{\nabla \cdot \vec{v} = \frac{v_\rho}{\rho} + \frac{\partial v_\rho}{\partial \rho} + \frac{\partial v_z}{\partial z}}$$

$$\boxed{\nabla \times \vec{v} = \hat{e}_\phi\left(\frac{\partial v_\rho}{\partial z} - \frac{\partial v_z}{\partial \rho}\right)}$$

$$\boxed{f(z) = Ae^{z} + B \quad \text{para flujo incompresible}}$$