:::{attention} Identidades útiles
En coordenadas curvilineas

```{math}
\nabla \times \vec{A}=\frac{1}{h_1h_2h_3} \begin{vmatrix}
  h_1\hat{e}_1 & h_2\hat{e}_2 & h_3\hat{e}_3\\ 
  \displaystyle\frac{\partial}{\partial u_1} & \displaystyle\frac{\partial}{\partial u_2} & \displaystyle\frac{\partial}{\partial u_3} \\
  h_1A_1 & h_2A_2 & h_3A_3
    \end{vmatrix}\\
```

Factores de escala en coordenadas cilíndricas $(\rho,\phi,z)$:
$$h_\rho=1, \quad h_\phi=\rho, \quad h_z=1$$
:::


En coordenadas cilíndricas $(\rho,\phi,z)$, el rotacional de un campo vectorial  
$\vec{A}=A_\rho\,\hat{\rho}+A_\phi\,\hat{\phi}+A_z\,\hat{z}$ está dado por

:::{math}
\nabla\times\vec{A}=\frac{1}{\rho}
\begin{vmatrix}
\hat{\rho} & \rho\,\hat{\phi} & \hat{z}\\
\partial_\rho & \partial_\phi & \partial_z\\
A_\rho & \rho A_\phi & A_z
\end{vmatrix}.
:::

De esta expresión se obtiene en componentes cilíndricas:

:::{math}
\begin{aligned}
(\nabla\times\vec{A})_\rho &= \frac{1}{\rho}\left(\frac{\partial A_z}{\partial \phi}-\frac{\partial(\rho A_\phi)}{\partial z}\right),\\
(\nabla\times\vec{A})_\phi &= \frac{\partial A_\rho}{\partial z}-\frac{\partial A_z}{\partial \rho},\\
(\nabla\times\vec{A})_z &= \frac{1}{\rho}\left(\frac{\partial(\rho A_\phi)}{\partial \rho}-\frac{\partial A_\rho}{\partial \phi}\right).
\end{aligned}
:::

---
Para este caso

:::{math}
A_\rho = 0,\qquad A_\phi = k z,\qquad A_z = 0.
:::

---


(a) Componente radial:
:::{math}
B_\rho = \frac{1}{\rho}\left(\frac{\partial A_z}{\partial \phi}-\frac{\partial(\rho A_\phi)}{\partial z}\right)
= \frac{1}{\rho}\left(0 - \frac{\partial(\rho k z)}{\partial z}\right)
= -\frac{k\rho}{\rho} = -k.
:::
:::{math}
\boxed{B_\rho = -k.}
:::

---

(b) Componente azimutal:
:::{math}
B_\phi = \frac{\partial A_\rho}{\partial z}-\frac{\partial A_z}{\partial \rho}
= 0 - 0 = 0.
:::
:::{math}
\boxed{B_\phi = 0.}
:::

---

(c) Componente axial:
:::{math}
B_z = \frac{1}{\rho}\left(\frac{\partial(\rho A_\phi)}{\partial \rho}-\frac{\partial A_\rho}{\partial \phi}\right)
= \frac{1}{\rho}\left(\frac{\partial(\rho k z)}{\partial \rho}-0\right)
= \frac{1}{\rho}(k z)
= \frac{k z}{\rho}.
:::

:::{math}
\boxed{B_z = \dfrac{k z}{\rho}.}
:::

---

Por lo tanto, 

:::{math}
\boxed{
\vec{B} = (-k)\,\hat{\rho} + 0\,\hat{\phi} + \frac{k z}{\rho}\,\hat{z}
= -k\,\hat{\rho} + \frac{k z}{\rho}\,\hat{z}.
}
:::

---

Este campo magnético no es uniforme:  
- tiene una componente radial constante $-k$,  
- y una componente axial que crece linealmente con $z$ e inversamente con $\rho$.  

El potencial vectorial $\vec{A}=kz\,\hat{\phi}$ describe un sistema con simetría azimutal y un campo magnético que se curva alrededor del eje, típico de configuraciones con corriente axial variable.
