import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from IPython.display import HTML

# Parámetros de la onda estacionaria
A = 1.0        # Amplitud
c = 1.0        # Velocidad de la onda
k = 2*np.pi    # Número de onda
epsilon = 0    # Fase

# Configuración del espacio y tiempo
L = 4.0        # Longitud del dominio espacial
Nx = 200       # Número de puntos espaciales
T = 4.0        # Tiempo total de simulación
Nt = 200       # Número de frames

# Crear mallas espacial y temporal
x = np.linspace(0, L, Nx)
t_values = np.linspace(0, T, Nt)

# Función para la onda estacionaria
def onda_estacionaria(x, t, A, k, c, epsilon):
    """
    Calcula la onda estacionaria:
    u(x,t) = 2A * cos(k*c*t) * cos(k*x + epsilon)
    """
    return 2 * A * np.cos(k * c * t) * np.cos(k * x + epsilon)

# Función para encontrar los nodos
def encontrar_nodos(k, epsilon, L):
    """
    Encuentra las posiciones de los nodos donde cos(k*x + epsilon) = 0
    """
    # Resolver k*x + epsilon = (n + 0.5)*pi para n entero
    nodos = []
    n = 0
    while True:
        x_nodo = ((n + 0.5) * np.pi - epsilon) / k
        if 0 <= x_nodo <= L:
            nodos.append(x_nodo)
            n += 1
        else:
            break
    
    n = -1
    while True:
        x_nodo = ((n + 0.5) * np.pi - epsilon) / k
        if 0 <= x_nodo <= L:
            nodos.append(x_nodo)
            n -= 1
        else:
            break
    
    return sorted(nodos)

# Encontrar los nodos
nodos = encontrar_nodos(k, epsilon, L)

# Configurar la figura
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(12, 8))

# Configurar el primer subplot para la animación
ax1.set_xlim(0, L)
ax1.set_ylim(-2.2*A, 2.2*A)
ax1.set_xlabel('Posición (x)')
ax1.set_ylabel('Amplitud u(x,t)')
ax1.set_title('Onda Estacionaria Unidimensional')
ax1.grid(True, alpha=0.3)

# Configurar el segundo subplot para mostrar las ondas viajeras
ax2.set_xlim(0, L)
ax2.set_ylim(-2.2*A, 2.2*A)
ax2.set_xlabel('Posición (x)')
ax2.set_ylabel('Amplitud')
ax2.set_title('Descomposición en Ondas Viajeras')
ax2.grid(True, alpha=0.3)

# Inicializar líneas
line_estacionaria, = ax1.plot([], [], 'b-', linewidth=2, label='Onda estacionaria')
line_nodos = ax1.scatter([], [], color='red', s=50, zorder=5, label='Nodos')
line_f, = ax2.plot([], [], 'g--', linewidth=1.5, alpha=0.7, label='f(x-ct)')
line_g, = ax2.plot([], [], 'r--', linewidth=1.5, alpha=0.7, label='g(x+ct)')
line_suma, = ax2.plot([], [], 'b-', linewidth=2, alpha=0.8, label='f + g')

# Añadir leyendas
ax1.legend(loc='upper right')
ax2.legend(loc='upper right')

# Texto para mostrar el tiempo
time_text = ax1.text(0.02, 0.95, '', transform=ax1.transAxes, fontsize=12)

# Función de inicialización
def init():
    line_estacionaria.set_data([], [])
    line_f.set_data([], [])
    line_g.set_data([], [])
    line_suma.set_data([], [])
    time_text.set_text('')
    return line_estacionaria, line_f, line_g, line_suma, time_text

# Función de animación
def animate(i):
    t = t_values[i]
    
    # Calcular la onda estacionaria
    u_estacionaria = onda_estacionaria(x, t, A, k, c, epsilon)
    
    # Calcular las ondas viajeras individuales
    f_onda = A * np.cos(k * (x - c * t) + epsilon)  # f(x-ct)
    g_onda = A * np.cos(k * (x + c * t) + epsilon)  # g(x+ct)
    
    # Actualizar las líneas
    line_estacionaria.set_data(x, u_estacionaria)
    line_f.set_data(x, f_onda)
    line_g.set_data(x, g_onda)
    line_suma.set_data(x, f_onda + g_onda)
    
    # Actualizar nodos
    line_nodos.set_offsets(np.column_stack([nodos, np.zeros_like(nodos)]))
    
    # Actualizar texto del tiempo
    time_text.set_text(f'Tiempo: t = {t:.2f} s\n'
                      f'Período: T = {2*np.pi/(k*c):.2f} s')
    
    return line_estacionaria, line_f, line_g, line_suma, line_nodos, time_text

# Crear la animación
anim = FuncAnimation(fig, animate, frames=len(t_values),
                    init_func=init, blit=True, interval=50)

plt.tight_layout()
plt.show()

# Para guardar la animación (opcional)
# anim.save('onda_estacionaria.gif', writer='pillow', fps=20)

# Mostrar información sobre los nodos
print("Posiciones de los nodos (donde cos(kx + ε) = 0):")
for i, nodo in enumerate(nodos):
    print(f"Nodo {i+1}: x = {nodo:.3f}")

print(f"\nParámetros de la onda:")
print(f"Amplitud: A = {A}")
print(f"Velocidad de la onda: c = {c}")
print(f"Número de onda: k = {k:.3f}")
print(f"Longitud de onda: λ = {2*np.pi/k:.3f}")
print(f"Frecuencia angular: ω = {k*c:.3f}")
print(f"Período: T = {2*np.pi/(k*c):.3f}")