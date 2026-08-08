#!/usr/bin/env python3
"""Genera favicon.ico con el símbolo nabla (∇) para el proyecto MMFI1.

Triángulo invertido blanco sobre círculo azul con gradiente radial.
Produce favicon.ico (multi-resolución) y favicon_preview.png (512px).

Uso:
    python3 scripts/generar_favicon.py
"""

from PIL import Image, ImageDraw
import math

S = 512  # tamaño del canvas

img = Image.new("RGBA", (S, S), (0, 0, 0, 0))

# --- Fondo: círculo con gradiente radial (azul académico) ---
cx, cy = S // 2, S // 2
R = S // 2
for y in range(S):
    for x in range(S):
        dist = math.sqrt((x - cx) ** 2 + (y - cy) ** 2)
        if dist <= R:
            t = dist / R  # 0 centro → 1 borde
            r = int(40 + (1 - t) * 35)
            g = int(90 + (1 - t) * 70)
            b = int(160 + (1 - t) * 50)
            img.putpixel((x, y), (r, g, b, 255))

draw = ImageDraw.Draw(img)

# --- Triángulo invertido blanco (símbolo nabla ∇) ---
# Desplazado ~15px hacia abajo para compensar la percepción visual:
# un triángulo invertido (ancho arriba) se ve "pesado arriba"
# aunque el centroide esté centrado.
margin_x = int(S * 0.24)
top_y = int(S * 0.30)
bottom_y = int(S * 0.76)

tri = [
    (margin_x, top_y),       # vértice superior izquierdo
    (S - margin_x, top_y),   # vértice superior derecho
    (cx, bottom_y),          # vértice inferior (punta)
]

line_w = int(S * 0.07)
draw.line(
    [tri[0], tri[1], tri[2], tri[0]],
    fill=(255, 255, 255, 255),
    width=line_w,
    joint="curve",
)

# Redondear vértices
dot_r = line_w // 2
for vx, vy in tri:
    draw.ellipse(
        [vx - dot_r, vy - dot_r, vx + dot_r, vy + dot_r],
        fill=(255, 255, 255, 255),
    )

# --- Guardar ---
img.save("favicon_preview.png")

img_resized = img.resize((256, 256), Image.LANCZOS)
ico_sizes = [(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)]
img_resized.save("favicon.ico", format="ICO", sizes=ico_sizes)

print("favicon.ico y favicon_preview.png generados")
