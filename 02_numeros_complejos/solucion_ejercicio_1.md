---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: '1.3'
    jupytext_version: 1.16.7
kernelspec:
  display_name: Python 3
  name: python3
---

En física e ingeniería, las **ecuaciones de ondas** describen la propagación de perturbaciones (sonido, electromagnetismo, elasticidad) en diferentes medios.  

En 2D, la ecuación de onda homogénea para un campo escalar $u(x,y,t)$ es  

$$
\nabla^2 u - \frac{1}{c^2}\frac{\partial^2 u}{\partial t^2} = 0,
$$

donde $c$ es la velocidad de propagación.  

Si buscamos soluciones armónicas en el tiempo del tipo  

$$
u(x,y,t) = U(x,y) e^{-i\omega t},
$$

la ecuación se transforma en la **ecuación de Helmholtz**:  

$$
\nabla^2 U + k^2 U = 0,
$$

con $k = \omega/c$ el número de onda.

La [función de Green](https://es.wikipedia.org/wiki/Funci%C3%B3n_de_Green) $G(z)$ para esta ecuación en el plano complejo aparece al resolver  

$$
\nabla^2 G + k^2 G = \delta(x)\delta(y),
$$

donde la delta representa una fuente puntual en el origen.

Usando coordenadas complejas $z = x + iy$, la distancia radial al punto fuente es  

$$
r^2 = x^2 + y^2 = z\,\bar{z}.
$$

Para fuentes en geometrías especiales, como **guías de ondas** o **medios estratificados**, la variable $z$ se transforma y aparece una forma generalizada  

$$
G(z) = \sqrt{z^2 - a^2},
$$

donde $a$ representa una distancia característica, por ejemplo:
- la distancia entre dos fuentes,
- el borde de una [guía de ondas](https://es.wikipedia.org/wiki/Gu%C3%ADa_de_onda),
- el límite entre regiones con propagación y regiones evanescentes.

---


Consideremos  
$$
G(z)=\sqrt{z^2-a^2} = \exp\!\Big(\tfrac{1}{2}\text{Log}(z^2-a^2)\Big),
$$
donde $\text{Log}$ denota la función logaritmo complejo (multivaluada).  

Los puntos donde el argumento del logaritmo se anula o se comporta singularmente son puntos de ramificación. Resolviendo
$$
z^2-a^2=0 \quad\Longrightarrow\quad z=\pm a.
$$
Además, en el plano de Riemann compacto el punto $z=\infty$ actúa también como punto de ramificación.  
Por tanto, los puntos de ramificación finitos son
$$
z=+a,\qquad z=-a,
$$
y se añade $z=\infty$ como ramificación en el infinito.

---


Para hacer $G(z)$ monovaluada sobre una región conectada, se introduce un *branch cut* que conecte los puntos de ramificación. La elección estándar y conveniente es el segmento real que une $-a$ y $+a$:
$$
\text{branch cut: } [-a,a]\subset\mathbb{R}.
$$
Con este corte se define la *rama principal* tomando
$$
\arg (z^2-a^2)\in(-\pi,\pi],\qquad \sqrt{z^2-a^2}=\exp\!\Big(\tfrac{1}{2}\text{Log}(z^2-a^2)\Big)
$$
con $\text{Log}$ principal.

- Para $z$ reales y $|z|>a$ se obtiene $\sqrt{z^2-a^2}$ real.  
- Para $z$ en $-a<z<a$ (sobre el corte) la función presenta la discontinuidad de salto entre ramas.


---

Si $z$ es un número de onda o una variable espectral (típico en funciones de Green), entonces:

- Los puntos $z=\pm a$ son **umbrales** o transiciones:
  - $|z|>a$: $z^2-a^2>0$, $\sqrt{z^2-a^2}$ real → **modos propagantes**.
  - $|z|<a$: $z^2-a^2<0$, $\sqrt{z^2-a^2}$ imaginario → **modos evanescentes**.
- El *branch cut* $[-a,a]$ separa las regiones propagante y evanescente.  
- La elección de la rama principal fija la convención física (p.ej. solución de radiación saliente).

---

Los puntos $z=\pm a$ son de ramificación porque allí el argumento del radical se anula y la función cambia de hoja al rodearlos. Tomando como corte el segmento real $[-a,a]$ se define una rama principal monovaluada; esta elección separa regiones propagantes y evanescentes y fija la convención física necesaria para condiciones como causalidad o radiación.


```{code-cell} ipython3
:tags: [remove-input]

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Parámetros
a = 1.0
x = np.linspace(-3, 3, 400)
y = np.linspace(-3, 3, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j*Y

# Definición de la función sqrt(z^2 - a^2)
W = np.sqrt(Z**2 - a**2)

# Datos para gráficas
mod_W = np.abs(W)
phase_W = np.angle(W)

# Gráfica 3D: Módulo
fig = plt.figure(figsize=(14, 6))

ax1 = fig.add_subplot(1, 2, 1, projection='3d')
ax1.plot_surface(X, Y, mod_W, cmap='viridis', edgecolor='none')
ax1.set_title(r"Módulo $|\sqrt{z^2 - a^2}|$")
ax1.set_xlabel("Re(z)")
ax1.set_ylabel("Im(z)")
ax1.set_zlabel("Módulo")

# Gráfica 3D: Fase
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
ax2.plot_surface(X, Y, phase_W, cmap='twilight', edgecolor='none')
ax2.set_title(r"Fase $\mathrm{Arg}(\sqrt{z^2 - a^2})$")
ax2.set_xlabel("Re(z)")
ax2.set_ylabel("Im(z)")
ax2.set_zlabel("Fase")

plt.tight_layout()
plt.show()


```