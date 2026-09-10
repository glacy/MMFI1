# Mapeo de Ejercicios vs Objetivos de Aprendizaje
## Semana 7: Integrales de contorno

Este documento detalla la relación entre los ejercicios prácticos de la semana 7 y los objetivos de aprendizaje establecidos en el material de lectura.

### Objetivos de Aprendizaje

1.  **Parametrizar curvas y contornos** en el plano complejo y calcular integrales de contorno directamente a partir de su definición, interpretando la integral como una suma de aportes diferenciales $f(z)\,dz$.
2.  **Aplicar los teoremas centrales de la teoría de Cauchy** — independencia del camino, Cauchy-Goursat, fórmula integral de Cauchy y su versión para derivadas — para evaluar integrales cerradas sin parametrizar.
3.  **Conectar la analiticidad con la física**: evaluar integrales reales por métodos de contorno y deducir las relaciones de dispersión de Kramers-Kronig a partir de la causalidad.

---

### Matriz de Mapeo

| Ejercicio | Objetivo 1 (Parametrizar/Calcular) | Objetivo 2 (Teoremas de Cauchy) | Objetivo 3 (Aplicar) | Descripción |
| :--- | :---: | :---: | :---: | :--- |
| **s7_ex1** | ✅ | ✅ | | Integral de $\bar z$ por dos caminos; falla de la independencia del camino (no analiticidad). |
| **s7_ex2** | ✅ | ✅ | | Integrales de $1/z$ y $1/z^2$ sobre el círculo unitario; conexión con la multivaluación de $\ln z$. |
| **s7_ex3** | ✅ | ✅ | | Independencia del camino con $e^z$ (teorema fundamental) y contorno cerrado de $\sin z$ (Cauchy-Goursat). |
| **s7_ex4** | | ✅ | | Identificación del teorema aplicable en integrales cerradas: singularidades dentro/fuera del contorno. |
| **s7_ex5** | | ✅ | | Aplicación sistemática de la fórmula integral de Cauchy y su versión para derivadas. |
| **s7_ex6** | | ✅ | ✅ | Aplicación física: integral real $1/(x^2+4)$ por contornos (con estimación ML) y relaciones de Kramers-Kronig. |

---

### Detalle de la Conexión Pedagógica

#### Objetivo 1: Parametrizar curvas y calcular directamente
Este objetivo evalúa el dominio operativo de la definición de integral de contorno.
*   **Ejercicio 1 (s7_ex1):** Obliga a parametrizar segmentos rectos y caminos en L, y a operar con $\bar z$. El resultado no trivial (las integrales difieren) siembra la pregunta estructural de la semana: ¿de qué depende la integral?
*   **Ejercicio 2 (s7_ex2):** Ejercita la parametrización canónica del círculo ($z=e^{it}$) y produce el resultado madre de la teoría: $\oint dz/z = 2\pi i$.
*   **Ejercicio 3 (s7_ex3):** Parametriza el segmento recto y verifica el teorema fundamental, cerrando el círculo entre "integrar a mano" e "integrar con estructura".

#### Objetivo 2: Aplicar los teoremas de Cauchy
Este objetivo evalúa el reconocimiento de cuándo la estructura reemplaza al cálculo.
*   **Ejercicio 1 (s7_ex1):** Verifica con las ecuaciones de Cauchy-Riemann por qué $\bar z$ no califica para el teorema fundamental.
*   **Ejercicio 2 (s7_ex2):** Contrasta $1/z$ (antiderivada multivaluada) con $1/z^2$ (antiderivada univaluada), preparando el concepto de residuo.
*   **Ejercicio 4 (s7_ex4):** Evalúa la decisión metodológica: ¿Cauchy-Goursat, fórmula integral o derivadas? Requiere localizar cada singularidad respecto al contorno.
*   **Ejercicio 5 (s7_ex5):** Aplicación sistemática de la fórmula integral de Cauchy y su versión para derivadas ($n=1,2$), incluyendo el caso sutil $f\equiv 1$ con derivadas nulas.
*   **Ejercicio 6 (s7_ex6):** Usa la fórmula integral de Cauchy y la estimación ML, los dos ingredientes del método de contornos para integrales reales.

#### Objetivo 3: Aplicar la teoría a problemas físicos
Este objetivo conecta la analiticidad con la física de materiales y señales.
*   **Ejercicio 6 (s7_ex6):** Es la aplicación integradora de la semana: (a) cálculo de una integral real clásica cerrando con semicírculo, con justificación completa del arco; (b) argumento causalidad ⇒ analiticidad ⇒ Kramers-Kronig, con su consecuencia experimental (reconstruir dispersión a partir de absorción).

---

### Conclusión

El diseño de la práctica de la semana 7 cumple integralmente con los objetivos:
*   Los ejercicios **s7_ex1 a s7_ex3** desarrollan el Objetivo 1 (cálculo directo por parametrización) y transitan hacia el Objetivo 2 al confrontar casos analíticos y no analíticos.
*   Los ejercicios **s7_ex4 y s7_ex5** consolidan el Objetivo 2: selección y aplicación correcta de los teoremas de Cauchy.
*   El ejercicio **s7_ex6** cubre el Objetivo 3, llevando el método de contornos a una integral real y a las relaciones de dispersión que rigen la respuesta causal de materiales y circuitos.
