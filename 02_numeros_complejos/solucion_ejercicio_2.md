# Solución — Ejercicio 2: Circuitos eléctricos y logaritmo complejo

En análisis de circuitos de corriente alterna se representa la tensión compleja como  
$$V(t)=V_0 e^{i(\omega t+\phi)},$$  
y la fase se obtiene mediante la parte imaginaria del logaritmo complejo:
$$\phi=\operatorname{Im}(\text{Log } V(t)).$$


---




Para trabajar con una única determinación del logaritmo se elige una **rama**. La elección más común —y muy conveniente en ingeniería— es la **rama principal** definida imponiendo
$$\arg (z)\in(-\pi,\pi],$$
es decir, tomar el corte de rama a lo largo del eje real negativo $(-\infty,0]$. Ventajas de esta elección en contextos físicos:

- Evita la discontinuidad en la parte positiva del eje real (donde suele situarse la mayoría de las magnitudes físicas positivas).
- Garantiza que para números complejos con pequeña parte imaginaria la fase quede en el intervalo $(-\pi,\pi]$, que es la convención típicamente usada en diagramas de Bode y análisis de fasores.
- Simplifica la interpretación física de la fase: dos fasores que difieren en $2\pi$ rad son físicamente equivalentes, y la rama principal da la representación canónica.

Si se eligiera otro corte, la representación del argumento (y por ende de la fase) sufriría un salto en la curva que cruza ese corte; por eso la elección del eje real negativo es práctica y coherente con convenciones.

---


---

## 4. Cálculo explícito pedido en el ejercicio
Se pidió evaluar la fase cuando
$$V(t)=I(t)\,(2+3i).$$

Tomamos $V=2+3i$. Entonces
- módulo: $|V|=\sqrt{2^2+3^2}=\sqrt{13}$,
- fase (rama principal): 
  $$
  \phi=\Arg(2+3i)=\operatorname{atan2}(3,2)=\arctan\!\left(\frac{3}{2}\right).
  $$
Numéricamente:
$$
\phi \approx \arctan(1.5)\approx 0.98279\ \text{rad}\approx 56.31^\circ.
$$

Observación: si hubiéramos usado la expresión multivaluada del logaritmo, la fase habría podido expresarse como
$$
\phi = \arctan\!\left(\frac{3}{2}\right) + 2\pi k,\qquad k\in\mathbb{Z},
$$
pero las distintas adiciones $2\pi k$ representan la misma fase física. Para representaciones continuas a través de frecuencia (por ejemplo en un barrido $\omega$) a menudo se aplica *phase unwrapping* para evitar saltos artificiales de $2\pi$.

---

## 5. Efectos prácticos y consideraciones físicas
- **Ambigüedad de $2\pi k$:** Físicamente no importa si la fase se expresa con un aumento de $2\pi$: señales $e^{i(\omega t+\phi)}$ y $e^{i(\omega t+\phi+2\pi k)}$ son idénticas. No obstante, la representación matemática y gráfica sí requiere una convención consistente.
- **Cruce del corte:** Si en un barrido de parámetros (p. ej. frecuencia) el fasor atraviesa el eje real negativo, la representación en la rama principal sufre un salto de fase de $\pm 2\pi$. Para evitar interpretaciones erróneas se usa *phase unwrapping* o se elige un corte distinto según la aplicación.
- **Implicaciones en transformadas (Laplace / Fourier):** El logaritmo complejo aparece también al analizar polos y ceros en el plano complejo; la elección de ramas y cortes interfiere en la continuación analítica y en la identificación de ramas físicas (p. ej. hojas físicas y no físicas en teoría de scattering).
- **Uso de $\operatorname{atan2}$:** En implementaciones numéricas siempre usar $\operatorname{atan2}(Y,X)$ en lugar de $\arctan(Y/X)$ para asegurar el cuadrante correcto y la rama principal consistente.

---

## 6. Resumen conciso
- $\log z$ es multivaluada por la ambigüedad $\arg (z)\mapsto\arg (z)+2\pi k$; los puntos $0$ e $\infty$ son puntos de ramificación.
- El eje real negativo $(-\infty,0]$ se usa como *branch cut* para definir la rama principal $\arg (z)\in(-\pi,\pi]$, convención estándar en ingeniería.
- La fase física de un fasor $V=X+iY$ se obtiene por $\phi=\arg (V)=\operatorname{Im}(\text{Log } V)=\operatorname{atan2}(Y,X)$; en el ejemplo $2+3i$ se obtiene $\phi\approx 0.98279\ \text{rad}\approx56.31^\circ$.
- Para análisis en frecuencia y representaciones gráficas es crucial controlar saltos de $2\pi$ (phase unwrapping) y usar $\operatorname{atan2}$ para evitar ambigüedades de cuadrante.


