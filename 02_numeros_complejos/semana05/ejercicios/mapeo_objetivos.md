# Mapeo de Ejercicios vs Objetivos de Aprendizaje
## Semana 5: Funciones de variable compleja (I)

Este documento detalla la relación entre los ejercicios prácticos de la semana 5 y los objetivos de aprendizaje establecidos en el material de lectura.

### Objetivos de Aprendizaje

1.  **Definir y clasificar funciones complejas elementales** (exponencial, trigonométricas, hiperbólicas, logaritmos), identificando sus propiedades de periodicidad, ramificación y dominios de analiticidad.
2.  **Modelar fenómenos físicos y de ingeniería** aplicando funciones complejas a la propagación de ondas en medios absorbentes (índice de refracción complejo) y al análisis de circuitos de corriente alterna (RLC).
3.  **Interpretar físicamente las soluciones complejas**, distinguiendo el rol de la parte real e imaginaria en contextos físicos (absorción vs. oscilación, resistencia vs. reactancia).

---

### Matriz de Mapeo

| Ejercicio | Objetivo 1 (Definir/Clasificar) | Objetivo 2 (Modelar) | Objetivo 3 (Interpretar) | Descripción |
| :--- | :---: | :---: | :---: | :--- |
| **s5_ex1** | ✅ | | | Cálculo de raíces complejas (multivaluación y periodicidad). |
| **s5_ex2** | ✅ | | | Evaluación de funciones hiperbólicas y trigonométricas con argumentos complejos. |
| **s5_ex3** | | ✅ | | Aplicación en óptica: suma de ondas usando series geométricas complejas. |
| **s5_ex4** | ✅ | | | Demostración de identidades algebraicas para funciones hiperbólicas. |
| **s5_ex5** | | ✅ | ✅ | Onda EM en medio absorbente: separar partes real/imag para entender fase/absorción. |
| **s5_ex6** | | ✅ | ✅ | Circuito RLC: separar partes real/imag de la impedancia (Resistencia/Reactancia). |
| **s5_ex7** | ✅ | | ✅ | Demostración algebraica del índice de refracción complejo (separación parte real/imag). |
| **s5_ex8** | | ✅ | ✅ | Cálculo de profundidad de penetración (aplicación de decaimiento exponencial). |

---

### Detalle de la Conexión Pedagógica

#### Objetivo 1: Definir y clasificar
Este objetivo sienta las bases teóricas necesarias para manipular el lenguaje matemático de la variable compleja.
*   **Ejercicio 1 (s5_ex1):** Esencial para comprender la **ramificación** de las funciones de raíz y logaritmo, una propiedad única de las funciones complejas vs. reales.
*   **Ejercicio 2 (s5_ex2):** Refuerza el dominio de las definiciones exponenciales de $\sin, \cos, \sinh, \cosh$, asegurando que el estudiante pueda operar algebraicamente con estas funciones.
*   **Ejercicio 4 (s5_ex4):** Profundiza en la estructura interna de las funciones hiperbólicas, conectándolas con las trigonométricas mediante demostración algebraica.
*   **Ejercicio 7 (s5_ex7):** Requiere manipular expresiones algebraicas complejas para aislar la parte real ($n$) del índice de refracción, fortaleciendo la habilidad de operar con raíces de números complejos.

#### Objetivo 2: Modelar fenómenos físicos y de ingeniería
Este objetivo mide la capacidad de traducir un problema físico al lenguaje complejo.
*   **Ejercicio 3 (s5_ex3):** Aplica el concepto de **fasores y series** en óptica, mostrando cómo $e^{i\theta}$ simplifica la superposición de ondas.
*   **Ejercicio 5 (s5_ex5):** Modela una onda electromagnética real en un medio con índice de refracción complejo, conectando directamente la teoría de la exponencial compleja con la física de propagación.
*   **Ejercicio 6 (s5_ex6):** Modela la dinámica de un circuito RLC utilizando la impedancia compleja $Z(\omega)$, el estándar en análisis de circuitos de CA.
*   **Ejercicio 8 (s5_ex8):** Modela la atenuación de la intensidad de una onda en un medio absorbente, utilizando la dependencia exponencial de la posición.

#### Objetivo 3: Interpretar físicamente las soluciones complejas
Este objetivo es crucial para la intuición de ingeniería: extraer significado físico de las matemáticas complejas.
*   **Ejercicio 5 (s5_ex5):** Requiere interpretar la parte real de la exponencial ($e^{...n z}$) como oscilación/velocidad de fase y la parte imaginaria ($e^{...k z}$) como atenuación/absorción. Cumple explícitamente el objetivo de distinguir roles de partes real/imaginaria.
*   **Ejercicio 6 (s5_ex6):** Requiere separar la impedancia $Z = R + iX$ para interpretar $R$ (parte real) como resistencia (disipación) y $X$ (parte imaginaria) como reactancia (almacenamiento de energía inductiva/capacitiva). Cumple explícitamente el objetivo de distinguir resistencia/reactancia.
*   **Ejercicio 7 (s5_ex7):** La demostración en sí misma separa explícitamente la componente de refracción $n$ (parte real de la raíz) de la componente de absorción $\kappa$ (parte imaginaria), reforzando la interpretación física del índice complejo.
*   **Ejercicio 8 (s5_ex8):** Conecta el coeficiente de atenuación $\kappa$ (parte imaginaria) con una magnitud física medible: la profundidad de penetración $\delta$.

---

### Conclusión

El diseño de la práctica de la semana 5 cumple integralmente con los objetivos actualizados:
*   Los ejercicios **s5_ex1, s5_ex2, s5_ex4 y s5_ex7** cubren el Objetivo 1, asegurando la competencia matemática y algebraica.
*   Los ejercicios **s5_ex3, s5_ex5, s5_ex6 y s5_ex8** cubren el Objetivo 2, aplicando la teoría a óptica y circuitos.
*   Los ejercicios **s5_ex5, s5_ex6, s5_ex7 y s5_ex8** son el corazón del Objetivo 3, entrenando al estudiante en la lectura crítica de soluciones complejas, transformando números complejos en parámetros físicos medibles.