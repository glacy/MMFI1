---
title: Solución Ejercicio 2
---


Método 1: Usando el producto triple escalar

Sabemos que $\vec{X} \cdot (\vec{Y} \times \vec{Z})$ es invariante ante permutaciones cíclicas de los vectores. Por lo tanto:

$$(\vec{A} \times \vec{B}) \cdot (\vec{C} \times \vec{D}) = \vec{C} \cdot [(\vec{C} \times \vec{D}) \times \vec{A} \times \vec{B}]$$

Usando la identidad del producto triple vectorial:
$$\vec{X} \times (\vec{Y} \times \vec{Z}) = \vec{Y}(\vec{X} \cdot \vec{Z}) - \vec{Z}(\vec{X} \cdot \vec{Y})$$

Tenemos:
$$\vec{C} \times \vec{D} = \vec{E}$$

$$(\vec{A} \times \vec{B}) \cdot \vec{E} = \vec{C} \cdot [\vec{A} \times (\vec{B} \times \vec{E})]$$

$$= \vec{C} \cdot [\vec{B}(\vec{A} \cdot \vec{E}) - \vec{E}(\vec{A} \cdot \vec{B})]$$

$$= (\vec{C} \cdot \vec{B})(\vec{A} \cdot \vec{E}) - (\vec{C} \cdot \vec{E})(\vec{A} \cdot \vec{B})$$

$$= (\vec{B} \cdot \vec{C})[\vec{A} \cdot (\vec{C} \times \vec{D})] - [\vec{C} \cdot (\vec{C} \times \vec{D})](\vec{A} \cdot \vec{B})$$

Como $\vec{C} \cdot (\vec{C} \times \vec{D}) = 0$ (producto punto de vectores perpendiculares):

$$= (\vec{B} \cdot \vec{C})[\vec{A} \cdot (\vec{C} \times \vec{D})]$$

Usando la propiedad cíclica del producto triple escalar:
$$\vec{A} \cdot (\vec{C} \times \vec{D}) = \vec{C} \cdot (\vec{D} \times \vec{A}) = \vec{D} \cdot (\vec{A} \times \vec{C})$$

Tomando la última forma:
$$= (\vec{B} \cdot \vec{C})[\vec{D} \cdot (\vec{A} \times \vec{C})]$$

Usando nuevamente la identidad del producto triple vectorial:
$$\vec{D} \cdot [\vec{A} \times \vec{C}] = \vec{A} \cdot [\vec{C} \times \vec{D}] = \vec{A} \cdot [\vec{C} \times \vec{D}]$$
