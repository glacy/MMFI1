---
jupytext:
  formats: ipynb,md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.16.7
kernelspec:
  display_name: venv (3.12.8.final.0)
  language: python
  name: python3
downloads:
  - file: 02_numeros_complejos/graficas_funciones_complejas.ipynb
  - title: graficas_funciones_complejas.ipynb
---

## Gráficas de funciones de variable compleja

En esta página se presentan gráficas de funciones de variable compleja ($\sin z$, $\cos z$, $\exp z$, $\log z$, entre otras) generadas con Python, usando NumPy y Matplotlib. Cada gráfica va acompañada del código que la produce, organizado en celdas ejecutables.

```{note}
Las celdas de código son interactivas: puede ejecutarlas y modificarlas directamente en el navegador con el botón de ejecución en vivo ( 🚀 ), o bien ejecutarlas localmente con Jupyter.
```


### $\sin (z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: AW-kNTPM4ld9
outputId: 0caeebcb-8abf-4621-94e9-3cf2be272cda
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular sin(z) en cada punto de la malla
sin_Z = np.sin(Z)

# Graficar las partes real e imaginaria de sin(z)
plt.figure(figsize=(14, 6))

# Parte real de sin(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(sin_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\sin(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de sin(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(sin_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\sin(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\sin (z)$  (3D)

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: WYLZG6f7M-gj
outputId: c2aefee0-de16-4903-bc37-d8cd8fb0f2fe
---
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular sin(z) en cada punto de la malla
sin_Z = np.sin(Z)

# Crear figura para graficar en 3D
fig = plt.figure(figsize=(14, 6))

# Parte real de sin(Z)
ax1 = fig.add_subplot(1, 2, 1, projection='3d')
ax1.plot_surface(X, Y, np.real(sin_Z), cmap='RdYlBu', edgecolor='none')
ax1.set_title(r"Parte real de $\sin z $")
ax1.set_xlabel(r'$\Re (z)$')
ax1.set_ylabel(r'$\Im (z)$')
#ax1.set_zlabel(r'$\Re ( \sin z)$')

# Parte imaginaria de sin(Z)
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
ax2.plot_surface(X, Y, np.imag(sin_Z), cmap='RdYlBu', edgecolor='none')
ax2.set_title(r"Parte imaginaria de $\sin z$")
ax2.set_xlabel(r'$\Re (z)$')
ax2.set_ylabel(r'$\Im (z)$')
#ax2.set_zlabel(r'$\Im (\sin (z))$')

plt.tight_layout()
plt.show()
```

### $\cos (z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: AW-kNTPM4ld9
outputId: 0caeebcb-8abf-4621-94e9-3cf2be272cda
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular cos(z) en cada punto de la malla
cos_Z = np.cos(Z)

# Graficar las partes real e imaginaria de cos(z)
plt.figure(figsize=(14, 6))

# Parte real de cos(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(cos_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\cos(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de cos(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(cos_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\cos(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\sinh (z)$  (contorno)

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: CTsJu3cWAzdX
outputId: d2975767-45bc-4e79-9c5a-a5f0223b11fa
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular sinh(z) en cada punto de la malla
sinh_Z = np.sinh(Z)

# Graficar las partes real e imaginaria de sinh(z)
plt.figure(figsize=(14, 6))

# Parte real de sinh(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(sinh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\sinh(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de sinh(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(sinh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\sinh(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\sinh^{-1}(z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: 5cNWQSFaBoFk
outputId: e3ddb3a7-bed7-4cf9-9a49-72b29fee8dff
---
# Calcular sinh^(-1)(z) en cada punto de la malla
arcsinh_Z = np.arcsinh(Z)

# Graficar las partes real e imaginaria de sinh^{-1}(Z)
plt.figure(figsize=(14, 6))

# Parte real de sinh^{-1}(Z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(arcsinh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\sinh^{-1}(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de sinh^(-1)(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(arcsinh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de of $\sinh^{-1}(z)$")
plt.xlabel(r'$\Re (z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\cosh^{-1}(z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: A1XH72yyGcR3
outputId: cf16b3c0-04c5-489a-bb21-e857d7b1cb2e
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular cosh(z) en cada punto de la malla
cosh_Z = np.cosh(Z)

# Graficar las partes real e imaginaria de cosh(z)
plt.figure(figsize=(14, 6))

# Parte real de cosh(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(cosh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\cosh (z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de cosh(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(cosh_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\cosh(z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\ln(z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: q5HFQcWadkHf
outputId: f3a2d1ed-05ce-4d20-a188-18ab2fea1826
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular log(z) en cada punto de la malla
log_Z = np.log(Z)


# Graficar las partes real e imaginaria de ln(z)
plt.figure(figsize=(14, 6))

# Parte real de ln(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(log_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\ln (z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de ln(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(log_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\ln (z)$")
plt.xlabel(r'$\Re (z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### $\ln(z)$ (3D)

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: wSjxQpOui_Zh
outputId: 27c805ad-ffcb-430e-a4c0-3220c3f52957
---
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular log(z) en cada punto de la malla
log_Z = np.log(Z)

# Crear figura para graficar en 3D
fig = plt.figure(figsize=(14, 6))

# Parte real de log(Z)
ax1 = fig.add_subplot(1, 2, 1, projection='3d')
surf1 = ax1.plot_surface(X, Y, np.real(log_Z), cmap='RdYlBu', edgecolor='none')
ax1.set_title(r"Parte real de $\log z$")
ax1.set_xlabel(r'$\Re (z)$')
ax1.set_ylabel(r'$\Im (z)$')
fig.colorbar(surf1, ax=ax1, shrink=0.5, aspect=5)

# Parte imaginaria de log(Z)
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
surf2 = ax2.plot_surface(X, Y, np.imag(log_Z), cmap='RdYlBu', edgecolor='none')
ax2.set_title(r"Parte imaginaria de $\log z$")
ax2.set_xlabel(r'$\Re (z)$')
ax2.set_ylabel(r'$\Im (z)$')
fig.colorbar(surf2, ax=ax2, shrink=0.5, aspect=5)

plt.tight_layout()
plt.show()
```

### $\ln(z)$ (superficie de Riemann)

```{code-cell}
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular el módulo y el argumento de Z
mod_Z = np.abs(Z)
arg_Z = np.angle(Z)

# Crear figura para graficar la superficie de Riemann
fig_riemann = plt.figure(figsize=(12, 10))
ax_riemann = fig_riemann.add_subplot(111, projection='3d')

# Número de ramas (hojas) a visualizar: k = -2, -1, 0, 1, 2
num_branches = 5
branches = np.arange(-(num_branches // 2), num_branches // 2 + 1)
num_branches = len(branches)

# Colormap continuo: el color transita suavemente de una rama a la siguiente
cmap_obj = plt.cm.viridis

# Fracción del argumento dentro de cada rama: 0 en arg = -pi, 1 en arg = pi
frac_arg = (arg_Z + np.pi) / (2 * np.pi)

# Evitar log(0): descartar puntos muy cercanos al origen
valid_mask = mod_Z > 1e-8

for k in branches:
    # Parte imaginaria de log(z) para la rama k: arg(z) + 2*pi*k
    im_log_Z_k = arg_Z + 2 * k * np.pi

    # Puntos inválidos como np.nan (plot_surface no los dibuja)
    X_plot = np.where(valid_mask, X, np.nan)
    Y_plot = np.where(valid_mask, Y, np.nan)
    Z_plot = np.where(valid_mask, im_log_Z_k, np.nan)

    # Posición de color continua: cada rama ocupa un tramo del colormap y el
    # borde de una rama retoma el color exacto donde terminó la anterior
    color_pos = (k + frac_arg - branches[0]) / num_branches
    facecolors = cmap_obj(np.where(valid_mask, color_pos, np.nan))

    # Graficar la superficie de esta rama con transición de color continua
    ax_riemann.plot_surface(X_plot, Y_plot, Z_plot,
                            facecolors=facecolors, shade=False,
                            linewidth=0, antialiased=False,
                            rstride=10, cstride=10)

ax_riemann.set_title(r"Superficie de Riemann de $\log z$", fontsize=16)
ax_riemann.set_xlabel(r'$\Re (z)$', fontsize=12)
ax_riemann.set_ylabel(r'$\Im (z)$', fontsize=12)
ax_riemann.set_zlabel(r'$\Im (\log z)$', fontsize=12)

# Barra de colores continua: las marcas indican la rama k al centro de cada hoja
sm = plt.cm.ScalarMappable(cmap=cmap_obj, norm=plt.Normalize(vmin=0, vmax=1))
sm.set_array([])
tick_pos = [(k + 0.5 - branches[0]) / num_branches for k in branches]
cbar = fig_riemann.colorbar(sm, ax=ax_riemann, shrink=0.6, aspect=20, pad=0.1, ticks=tick_pos)
cbar.ax.set_yticklabels([str(k) for k in branches])
cbar.set_label(r'Rama $k$ de $\log z$', fontsize=12)

plt.tight_layout()
plt.show()
```

### $\sqrt(z)$

```{code-cell}
---
colab:
  base_uri: https://localhost:8080/
  height: 607
id: oN3oO8_LFG87
outputId: 5f620d50-610d-4234-9de8-53f2461c6af1
---
import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular sqrt(z) en cada punto de la malla
sqrt_Z = np.sqrt(Z)

# Graficar las partes real e imaginaria de sqrt(Z)
plt.figure(figsize=(14, 6))

# Parte real de sqrt(Z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(sqrt_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\sqrt{z}$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de sinh^(-1)(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(sqrt_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"parte imaginaria de of $\sqrt{z}$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

## Función de Green $\sqrt{z^2-a^2}$

### Módulo y fase

```{code-cell}
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

### Parte real e imaginaria (3D)

```{code-cell}
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Función de Green G(z) = sqrt(z^2 - a^2), con a = 1
# Construida como producto de raíces principales sqrt(z-a)*sqrt(z+a):
# así el corte de rama queda exactamente en el segmento [-a, a]
a = 1
G_Z = np.sqrt(Z - a) * np.sqrt(Z + a)

# Crear figura para graficar en 3D
fig = plt.figure(figsize=(14, 6))

# Parte real de G(Z): real para |x| > a (modos propagantes)
ax1 = fig.add_subplot(1, 2, 1, projection='3d')
ax1.plot_surface(X, Y, np.real(G_Z), cmap='RdYlBu', edgecolor='none')
ax1.set_title(r"Parte real de $G(z)=\sqrt{z^2-a^2}$")
ax1.set_xlabel(r'$\Re (z)$')
ax1.set_ylabel(r'$\Im (z)$')

# Parte imaginaria de G(Z): sobre el corte [-a, a] es puramente imaginaria
# (onda evanescente: decae exponencialmente sin propagar energía)
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
ax2.plot_surface(X, Y, np.imag(G_Z), cmap='RdYlBu', edgecolor='none')
ax2.set_title(r"Parte imaginaria de $G(z)=\sqrt{z^2-a^2}$")
ax2.set_xlabel(r'$\Re (z)$')
ax2.set_ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

### Ramas $k = 0, 1$ (plotly)

```{code-cell}
# Versión interactiva de G(z) con plotly: la figura se puede girar,
# hacer zoom y ver desde distintos ángulos con el ratón
import numpy as np
import plotly.graph_objects as go
from plotly.subplots import make_subplots

# Definir una malla en el plano complejo
a = 1
x = np.linspace(-2, 2, 200)
y = np.linspace(-2, 2, 200)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Función de Green con corte de rama en [-a, a]
G_Z = np.sqrt(Z - a) * np.sqrt(Z + a)

# Figura con dos superficies 3D interactivas
fig = make_subplots(rows=1, cols=2, horizontal_spacing=0.03,
                    specs=[[{'type': 'surface'}, {'type': 'surface'}]])

# Parte real: modos propagantes para |x| > a
fig.add_trace(
    go.Surface(x=x, y=y, z=np.real(G_Z), colorscale='RdBu',
               colorbar=dict(title='Re G', x=0.44, len=0.65)),
    row=1, col=1)

# Parte imaginaria: onda evanescente sobre el corte [-a, a]
fig.add_trace(
    go.Surface(x=x, y=y, z=np.imag(G_Z), colorscale='RdBu',
               colorbar=dict(title='Im G', x=1.0, len=0.65)),
    row=1, col=2)

fig.update_layout(
    title='Función de Green G(z) = √(z² − a²): partes real (izquierda) e imaginaria (derecha)',
    height=550,
    scene=dict(xaxis_title='Re(z)', yaxis_title='Im(z)', zaxis_title='Re G'),
    scene2=dict(xaxis_title='Re(z)', yaxis_title='Im(z)', zaxis_title='Im G'),
)
fig.show()
```

### Superficie de Riemann (plotly)

```{code-cell}
# Versión interactiva de la superficie de Riemann de G(z) con plotly:
# dos hojas G_k(z) = (-1)^k G(z) que se conectan a través del corte [-a, a]
import numpy as np
import plotly.graph_objects as go

# Definir una malla en el plano complejo
a = 1
x = np.linspace(-2, 2, 200)
y = np.linspace(-2, 2, 200)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Función de Green con corte de rama en [-a, a]
G_Z = np.sqrt(Z - a) * np.sqrt(Z + a)

# Cada hoja con su propia escala de color
fig = go.Figure()
for k, escala, nombre in [(0, 'Viridis', 'Hoja k = 0: G(z)'),
                          (1, 'Hot', 'Hoja k = 1: −G(z)')]:
    G_k = ((-1) ** k) * G_Z
    fig.add_trace(go.Surface(x=x, y=y, z=np.imag(G_k),
                             colorscale=escala, opacity=0.95,
                             showscale=False, name=nombre))

fig.update_layout(
    title='Superficie de Riemann de G(z) = √(z² − a²): dos hojas unidas por el corte de rama',
    height=600,
    legend=dict(x=0.05, y=0.95),
    scene=dict(xaxis_title='Re(z)', yaxis_title='Im(z)', zaxis_title='Im(Gₖ)',
               aspectmode='cube'),
)
fig.show()
```
