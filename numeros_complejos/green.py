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