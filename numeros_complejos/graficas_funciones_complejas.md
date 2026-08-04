---
author: " "
subject: Variable compleja - Semana 6
description: Gráficas de funciones complejas
short_title: Gráficas de funciones complejas
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: '1.3'
    jupytext_version: 1.16.7
kernelspec:
  display_name: Python 3
  name: python3
downloads:
  - file: ./graficas_funciones_complejas.md
    title: graficas_funciones_complejas.md
  - file: ./graficas_funciones_complejas.ipynb
    title: graficas_funciones_complejas.ipynb
---

# Gráficas de funciones de variable compleja

##  $\sin (z) \, \text{(contorno)}$

```{code-cell} ipython3
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
plt.title(r"Parte real de $\sin (z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de sin(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(sin_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\sin (z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

##  $\sin (z) \text{ (3D)}$ 

```{code-cell} ipython3

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

##  $\sinh (z) \, \text{(contorno)}$

```{code-cell} ipython3
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

##  $\sinh^{-1} (z) \, \text{(contorno)}$

```{code-cell} ipython3
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

## $\cosh(z) \, \text{(contorno)}$

```{code-cell} ipython3
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

## $\text{Log} (z) \, \text{(contorno)}$

```{code-cell} ipython3import numpy as np
import matplotlib.pyplot as plt

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular log(z) en cada punto de la malla
log_Z = np.log(Z)


# Graficar las partes real e imaginaria de log(z)
plt.figure(figsize=(14, 6))

# Parte real de Log(z)
plt.subplot(1, 2, 1)
plt.contourf(X, Y, np.real(log_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte real de $\log (z)$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

# Parte imaginaria de Log(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(log_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"Parte imaginaria de  $\log (z)$")
plt.xlabel(r'$\Re (z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```

## $\text{Log} (z) \text{ (3D)}$

```{code-cell} ipython3

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
ax1.plot_surface(X, Y, np.real(log_Z), cmap='RdYlBu', edgecolor='none')
ax1.set_title(r"Parte real de $\log z$")
ax1.set_xlabel(r'$\Re (z)$')
ax1.set_ylabel(r'$\Im (z)$')

# Parte imaginaria de log(Z)
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
ax2.plot_surface(X, Y, np.imag(log_Z), cmap='RdYlBu', edgecolor='none')
ax2.set_title(r"Parte imaginaria de $\log z$")
ax2.set_xlabel(r'$\Re (z)$')
ax2.set_ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```


## $\sqrt{z} \, \text{(contorno)}$

```{code-cell} ipython3

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

# Parte imaginaria de sqrt(Z)
plt.subplot(1, 2, 2)
plt.contourf(X, Y, np.imag(sqrt_Z), levels=50, cmap='RdYlBu')
plt.colorbar()
plt.title(r"parte imaginaria de of $\sqrt{z}$")
plt.xlabel(r'$\Re(z)$')
plt.ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()
```


## $\sqrt{z}  \text{ (3D)}$ 
```{code-cell} ipython3

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Definir una malla en el plano complejo
x = np.linspace(-2, 2, 400)
y = np.linspace(-2, 2, 400)
X, Y = np.meshgrid(x, y)
Z = X + 1j * Y

# Calcular sqrt(z) en cada punto de la malla
sqrt_Z = np.sqrt(Z)

# Crear figura para graficar en 3D
fig = plt.figure(figsize=(14, 6))

# Parte real de sqrt(Z)
ax1 = fig.add_subplot(1, 2, 1, projection='3d')
ax1.plot_surface(X, Y, np.real(sqrt_Z), cmap='RdYlBu', edgecolor='none')
ax1.set_title(r"Parte real de $\sqrt{z}$")
ax1.set_xlabel(r'$\Re (z)$')
ax1.set_ylabel(r'$\Im (z)$')

# Parte imaginaria de sqrt(Z)
ax2 = fig.add_subplot(1, 2, 2, projection='3d')
ax2.plot_surface(X, Y, np.imag(sqrt_Z), cmap='RdYlBu', edgecolor='none')
ax2.set_title(r"Parte imaginaria de $\sqrt{z}$")
ax2.set_xlabel(r'$\Re (z)$')
ax2.set_ylabel(r'$\Im (z)$')

plt.tight_layout()
plt.show()

```

