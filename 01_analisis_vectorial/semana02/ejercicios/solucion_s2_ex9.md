---
title: Solución Ejercicio 9
keywords:
  - coordenadas-esfericas
  - operador-nabla
  - gradiente
  - coordenadas-curvilíneas
tags:
  - coordenadas-esfericas
  - operador-nabla
  - gradiente
  - coordenadas-curvilíneas
---

## Campo de potencial eléctrico esféricamente simétrico

### Parte 1: Expresión en coordenadas esféricas

El potencial está dado por:

$$V(r) = \frac{q}{4\pi\epsilon_0 r}$$

En coordenadas esféricas $(r, \theta, \phi)$, esta expresión es exactamente la misma ya que el potencial depende únicamente de la distancia radial $r$:

$$\boxed{V(r,\theta,\phi) = \frac{q}{4\pi\epsilon_0 r}}$$

### Parte 2: Gradiente en coordenadas esféricas

En coordenadas esféricas, los factores de escala son:

$$h_r = 1, \quad h_\theta = r, \quad h_\phi = r\sin\theta$$

El gradiente en coordenadas esféricas está dado por:

$$\nabla V = \frac{1}{h_r}\frac{\partial V}{\partial r}\hat{e}_r + \frac{1}{h_\theta}\frac{\partial V}{\partial \theta}\hat{e}_\theta + \frac{1}{h_\phi}\frac{\partial V}{\partial \phi}\hat{e}_\phi$$

$$= \frac{\partial V}{\partial r}\hat{e}_r + \frac{1}{r}\frac{\partial V}{\partial \theta}\hat{e}_\theta + \frac{1}{r\sin\theta}\frac{\partial V}{\partial \phi}\hat{e}_\phi$$

Como $V(r) = \frac{q}{4\pi\epsilon_0 r}$ depende solamente de $r$:

- $\frac{\partial V}{\partial r} = \frac{\partial}{\partial r}\left(\frac{q}{4\pi\epsilon_0 r}\right) = -\frac{q}{4\pi\epsilon_0 r^2}$
- $\frac{\partial V}{\partial \theta} = 0$ (no hay dependencia de $\theta$)
- $\frac{\partial V}{\partial \phi} = 0$ (no hay dependencia de $\phi$)

Por lo tanto:

$$\nabla V = -\frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r + 0\hat{e}_\theta + 0\hat{e}_\phi = -\frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r$$

$$\boxed{\nabla V = -\frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r}$$

### Parte 3: Campo eléctrico

El campo eléctrico está relacionado con el potencial mediante:

$$\vec{E} = -\nabla V = -\left(-\frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r\right) = \frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r$$

Esto verifica el resultado esperado para una carga puntual:

$$\boxed{\vec{E} = \frac{q}{4\pi\epsilon_0 r^2}\hat{e}_r}$$

### Interpretación física

Este resultado muestra que:

1. **Simetría radial**: El campo eléctrico apunta radialmente hacia afuera desde la carga (si $q > 0$) o hacia la carga (si $q < 0$).
2. **Dependencia del inverso del cuadrado**: El campo disminuye con el cuadrado de la distancia, según la Ley de Coulomb.
3. **Consistencia con la Ley de Gauss**: Este resultado es consistente con la Ley de Gauss para una carga puntual.
4. **Conveniencia de coordenadas esféricas**: Al usar coordenadas esféricas, el cálculo del gradiente se simplifica enormemente debido a la simetría esférica del problema.

### Ventajas de usar coordenadas curvilíneas apropiadas

Este ejercicio demuestra la importancia de elegir el sistema de coordenadas adecuado:

- **Coordenadas cartesianas**: El gradiente tendría componentes en $x$, $y$, $z$ que serían más complicadas de calcular e interpretar
- **Coordenadas esféricas**: El cálculo es directo y el resultado es simple e interpretable físicamente

El uso de coordenadas curvilíneas simplifica enormemente problemas con simetrías, como es común en física e ingeniería.