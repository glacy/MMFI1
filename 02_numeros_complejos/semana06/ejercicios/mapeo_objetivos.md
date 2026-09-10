# Mapeo de Ejercicios vs Objetivos de Aprendizaje
## Semana 6: Funciones de variable compleja (II)

Este documento detalla la relación entre los ejercicios prácticos de la semana 6 y los objetivos de aprendizaje establecidos en el material de lectura.

### Objetivos de Aprendizaje

1.  **Analizar la definición y propiedades fundamentales** del logaritmo complejo y de las funciones inversas trigonométricas e hiperbólicas en el plano complejo, destacando su multivaluación y regiones de ramificación.
2.  **Visualizar mediante gráficas y representaciones geométricas** las distintas ramas de funciones multivaluadas, interpretando su significado físico y matemático.
3.  **Aplicar el formalismo de funciones multivaluadas** en problemas de física e ingeniería (óptica, circuitos y mecánica cuántica), comprendiendo la elección de ramas principales (branch cuts) para obtener soluciones físicas consistentes.

---

### Matriz de Mapeo

| Ejercicio | Objetivo 1 (Definir/Analizar) | Objetivo 2 (Visualizar/Interpretar) | Objetivo 3 (Aplicar) | Descripción |
| :--- | :---: | :---: | :---: | :--- |
| **s6_ex1** | ✅ | ✅ | | Cálculo de logaritmos complejos en todas las ramas (multivaluación). |
| **s6_ex2** | ✅ | | | Cálculo de potencias complejas ($z^w = e^{w\ln z}$), incluyendo $i^i$ y raíces. |
| **s6_ex3** | ✅ | ✅ | | Evaluación de funciones trigonométricas inversas (arcsin, arccos) para argumentos fuera de rango. |
| **s6_ex4** | ✅ | | | Evaluación de funciones hiperbólicas inversas (cosh, tanh, sinh). |
| **s6_ex5** | | ✅ | ✅ | Aplicación en óptica: modos propagantes vs evanescentes usando branch cuts. |

---

### Detalle de la Conexión Pedagógica

#### Objetivo 1: Analizar definiciones y propiedades
Este objetivo se centra en el dominio algebraico y conceptual de las nuevas funciones.
*   **Ejercicio 1 (s6_ex1):** Refuerza la definición $\ln z = \ln|z| + i\arg z$ y el concepto de **multivaluación** ($+2k\pi i$), que es la característica distintiva del logaritmo complejo.
*   **Ejercicio 2 (s6_ex2):** Aplica la definición de potencia compleja, mostrando casos sorprendentes como $i^i$ que resulta ser real, y reforzando el uso de logaritmos para resolver exponentes.
*   **Ejercicio 3 (s6_ex3):** Extiende las funciones trigonométricas inversas más allá de su dominio real $[-1, 1]$, calculando valores como $\arcsin(2)$ que solo existen en $\mathbb{C}$.
*   **Ejercicio 4 (s6_ex4):** Consolida el cálculo con funciones hiperbólicas inversas y sus singularidades (ej. $\tanh^{-1}(2)$).

#### Objetivo 2: Visualizar y representar geométricamente
Este objetivo evalúa la capacidad de interpretar los resultados.
*   **Ejercicio 1 (s6_ex1):** Pide explícitamente identificar las distintas ramas ($k \in \mathbb{Z}$), lo que implica visualizar las "hojas" de la superficie de Riemann del logaritmo.
*   **Ejercicio 3 (s6_ex3):** Interpretar por qué $\arcsin(2)$ es real parte compleja pura ayuda a visualizar el mapeo del plano z al plano w fuera del rango usual.
*   **Ejercicio 5 (s6_ex5):** Requiere interpretar la transición de valores reales a imaginarios al cruzar los puntos de ramificación (branch points) en $\pm a$.

#### Objetivo 3: Aplicar el formalismo a problemas físicos
Este objetivo conecta la teoría con la física de ondas y señales.
*   **Ejercicio 5 (s6_ex5):** Es una aplicación directa de física de ondas. Utiliza la función de Green $G(z) = \sqrt{z^2-a^2}$ para clasificar modos de propagación (real) vs. evanescencia (imaginario), un concepto clave en guías de onda y mecánica cuántica.

---

### Conclusión

El diseño de la práctica de la semana 6 cumple integralmente con los objetivos:
*   Los ejercicios **s6_ex1 a s6_ex4** cubren el Objetivo 1 y 2, asegurando el dominio del cálculo con logaritmos, potencias y funciones inversas, así como la interpretación de su multivaluación.
*   El ejercicio **s6_ex5** cubre el Objetivo 3, aplicando el concepto de branch cuts y multivaluación a un problema real de propagación de ondas en medios restrictivos.