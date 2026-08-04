---
generator: evolutia
source: ai_variation
date: '2025-12-16T16:47:01.134846'
model: gpt-4
provider: openai
rag_enabled: false
tags:
- analisis_vectorial
- identidad-vectorial
- operador-nabla
- coordenadas-toroidales
- maxwell
- teorema-stokes
- teorema-green
- aplicacion
- intermedio
original_subject: Cálculo y análisis vectorial
based_on: ex1-t1
---

Demuestre la identidad vectorial en coordenadas cilíndricas:

$$ \nabla \times (\vec{A}\times \vec{B})=(\vec{B} \cdot \nabla) \vec{A}- (\vec{A}\cdot \nabla) \vec{B} - \vec{B}(\nabla \cdot \vec{A})+\vec{A}(\nabla \cdot \vec{B}) $$

Donde los vectores $\vec{A}$ y $\vec{B}$ están dados por:

$$ \vec{A} = (A_\rho, A_\phi, A_z) = (A_\rho(\rho, \phi, z), A_\phi(\rho, \phi, z), A_z(\rho, \phi, z)) $$

$$ \vec{B} = (B_\rho, B_\phi, B_z) = (B_\rho(\rho, \phi, z), B_\phi(\rho, \phi, z), B_z(\rho, \phi, z)) $$

Debe considerar también que en coordenadas cilíndricas, el operador nabla $\nabla$ se expresa como:

$$ \nabla = \hat{e}_\rho \frac{\partial}{\partial \rho} + \hat{e}_\phi \frac{1}{\rho} \frac{\partial}{\partial \phi} + \hat{e}_z \frac{\partial}{\partial z} $$

Nota: El sistema de coordenadas cilíndricas es muy útil en problemas que presentan simetría cilíndrica o axial, como el flujo de calor en un tubo, la propagación de ondas electromagnéticas en guías de onda cilíndricas, entre otros.
