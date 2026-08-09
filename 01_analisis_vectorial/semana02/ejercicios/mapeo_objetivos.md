# Correspondencia entre Objetivos y Ejercicios - Semana 2

## Objetivos de Aprendizaje

### Objetivo 1: Transformaciones entre coordenadas cartesianas y curvilíneas
**Descripción**: Expresar transformaciones entre coordenadas cartesianas y curvilíneas, e interpretar geométricamente los vectores base asociados y los factores de escala.

### Objetivo 2: Generalización del operador nabla
**Descripción**: Generalizar el operador nabla $(\nabla)$ a coordenadas curvilíneas, utilizando los factores de escala, y deducir expresiones para:
- Gradiente de un campo escalar
- Divergencia de un campo vectorial
- Rotacional de un campo vectorial
- Laplaciano de un campo escalar

### Objetivo 3: Aplicaciones físicas
**Descripción**: Aplicar operadores vectoriales en coordenadas curvilíneas para resolver problemas físicos relevantes, como campos de velocidad en flujo axial simétrico o potenciales eléctricos esféricamente simétricos.

---

## Mapeo de Ejercicios por Objetivo

| Ejercicio | Título | Objetivo 1 | Objetivo 2 | Objetivo 3 | Componentes específicos |
|-----------|--------|------------|------------|------------|------------------------|
| s2_ex1 | Vector unitario perpendicular a superficie | - | ✓ | - | Gradiente |
| s2_ex2 | Rotacional de campo vectorial | - | ✓ | - | Rotacional |
| s2_ex3 | Rotacional en rotación rígida | - | ✓ | ✓ | Rotacional, Mecánica |
| s2_ex4 | Divergencia de campo electrostático | - | ✓ | ✓ | Divergencia esférica, Electromagnetismo |
| s2_ex5 | Laplaciano en diferentes sistemas | ✓ | ✓ | - | Laplaciano, Transformación |
| s2_ex6 | Coordenadas paraboloidales | ✓ | - | - | Factores de escala |
| s2_ex7 | Identidades vectoriales | - | ✓ | - | Divergencia, Rotacional, Gradiente |
| s2_ex8 | Coordenadas cilíndricas | ✓ | - | - | Vectores base, Factores de escala |
| s2_ex9 | Potencial esféricamente simétrico | ✓ | ✓ | ✓ | Gradiente, Coordenadas esféricas, Electromagnetismo |
| s2_ex10 | Flujo axial simétrico | - | ✓ | ✓ | Divergencia, Rotacional, Mecánica de fluidos |
| s2_ex11 | Vectores base en coordenadas esféricas | ✓ | - | - | Vectores base, Factores de escala, Ortogonalidad |

---

## Desglose Detallado por Objetivo

### Objetivo 1: Transformaciones entre coordenadas y vectores base

**Ejercicios que cubren este objetivo:**

#### s2_ex5: Laplaciano en diferentes sistemas
- **Cobertura**: Transformación de coordenadas cartesianas a cilíndricas
- **Habilidades**: Cambio de sistema de coordenadas, cálculo de operadores en diferentes sistemas
- **Conceptos clave**: Coordenadas cartesianas, Coordenadas cilíndricas, Laplaciano

#### s2_ex6: Coordenadas paraboloidales
- **Cobertura**: Definición de sistema paraboloidal y cálculo de factores de escala
- **Habilidades**: Cálculo de factores de escala $h_u, h_v, h_\phi$, transformación coordenadas
- **Conceptos clave**: Sistema paraboloidal, Factores de escala, Ortogonalidad

#### s2_ex8: Coordenadas cilíndricas
- **Cobertura**: Transformación cartesiano-cilíndrico completa con vectores base
- **Habilidades**: Derivación de vectores base, normalización, verificación ortogonalidad
- **Conceptos clave**: Vectores base $\hat{e}_\rho, \hat{e}_\phi, \hat{e}_z$, Normalización, Ortogonalidad

#### s2_ex11: Vectores base en coordenadas esféricas
- **Cobertura**: Transformación cartesiano-esférico completa con vectores base
- **Habilidades**: Derivación de vectores base, normalización, verificación ortogonalidad
- **Conceptos clave**: Vectores base $\hat{e}_r, \hat{e}_\theta, \hat{e}_\phi$, Normalización, Ortogonalidad

#### s2_ex9: Potencial esféricamente simétrico
- **Cobertura**: Expresión de potencial en coordenadas esféricas
- **Habilidades**: Transformación a coordenadas esféricas, uso de simetría
- **Conceptos clave**: Coordenadas esféricas, Simetría esférica, Factores de escala

---

### Objetivo 2: Generalización del operador nabla

**Ejercicios que cubren este objetivo:**

#### s2_ex1: Vector unitario perpendicular a superficie
- **Cobertura**: Uso de gradiente en coordenadas cartesianas
- **Habilidades**: Cálculo de gradiente, interpretación geométrica
- **Conceptos clave**: Gradiente, Superficies de nivel, Normalización

#### s2_ex2: Rotacional de campo vectorial
- **Cobertura**: Cálculo de rotacional en coordenadas cartesianas
- **Habilidades**: Operación rotacional, cálculo de derivadas parciales
- **Conceptos clave**: Rotacional, Determinante, Campos vectoriales

#### s2_ex3: Rotacional en rotación rígida
- **Cobertura**: Rotacional de campo de velocidad con operador nabla
- **Habilidades**: Aplicación de identidad bac-cab, cálculo de rotacional
- **Conceptos clave**: Rotacional, Velocidad angular, Identidad triple producto

#### s2_ex4: Divergencia de campo electrostático
- **Cobertura**: Divergencia en coordenadas esféricas del campo de Coulomb
- **Habilidades**: Sustitución de factores de escala, cálculo de divergencia esférica, interpretación física
- **Conceptos clave**: Divergencia esférica, Ley de Gauss, Carga puntual, Delta de Dirac

#### s2_ex5: Laplaciano en diferentes sistemas
- **Cobertura**: Laplaciano en cartesianas y cilíndricas
- **Habilidades**: Cálculo de derivadas parciales segundas, transformación de coordenadas
- **Conceptos clave**: Laplaciano, Coordenadas curvilíneas, Transformación

#### s2_ex7: Identidades vectoriales
- **Cobertura**: Demostración de identidades fundamentales del operador nabla
- **Habilidades**: Demostración matemática, operadores diferenciales
- **Conceptos clave**: Divergencia del rotacional, Rotacional del gradiente, Identidad triple

#### s2_ex9: Potencial esféricamente simétrico
- **Cobertura**: Gradiente en coordenadas esféricas
- **Habilidades**: Operador nabla generalizado, uso de factores de escala
- **Conceptos clave**: Gradiente esférico, Operador nabla, Factores de escala

#### s2_ex10: Flujo axial simétrico
- **Cobertura**: Divergencia y rotacional en coordenadas cilíndricas
- **Habilidades**: Operador nabla generalizado, cálculo en coordenadas curvilíneas
- **Conceptos clave**: Divergencia cilíndrica, Rotacional cilíndrico, Factores de escala

---

### Objetivo 3: Aplicaciones físicas

**Ejercicios que cubren este objetivo:**

#### s2_ex3: Rotacional en rotación rígida
- **Cobertura**: Aplicación en mecánica de rotación
- **Habilidades**: Interpretación física del rotacional, aplicaciones mecánicas
- **Conceptos clave**: Vorticidad, Rotación rígida, Dinámica rotacional

#### s2_ex4: Divergencia de campo electrostático
- **Cobertura**: Aplicación en electromagnetismo (Ley de Gauss)
- **Habilidades**: Interpretación física de la divergencia, campos electrostáticos
- **Conceptos clave**: Ley de Gauss, Carga puntual, Delta de Dirac

#### s2_ex9: Potencial esféricamente simétrico
- **Cobertura**: Aplicación en electrostática esférica
- **Habilidades**: Campo eléctrico de carga puntual, simetría esférica
- **Conceptos clave**: Potencial eléctrico, Campo eléctrico, Ley de Coulomb

#### s2_ex10: Flujo axial simétrico
- **Cobertura**: Aplicación en mecánica de fluidos
- **Habilidades**: Flujo incompresible, ecuaciones diferenciales
- **Conceptos clave**: Mecánica de fluidos, Flujo incompresible, Ecuaciones diferenciales

---

## Matriz de Cobertura

```
                          Objetivo 1    Objetivo 2    Objetivo 3
                          │             │             │
Ejercicio  │  s2_ex1     │    -         │     ✓       │     -      │
Ejercicio  │  s2_ex2     │    -         │     ✓       │     -      │
Ejercicio  │  s2_ex3     │    -         │     ✓       │     ✓      │
Ejercicio  │  s2_ex4     │    -         │     ✓       │     ✓      │
Ejercicio  │  s2_ex5     │    ✓         │     ✓       │     -      │
Ejercicio  │  s2_ex6     │    ✓         │     -       │     -      │
Ejercicio  │  s2_ex7     │    -         │     ✓       │     -      │
Ejercicio  │  s2_ex8     │    ✓         │     -       │     -      │
Ejercicio  │  s2_ex9     │    ✓         │     ✓       │     ✓      │
Ejercicio  │  s2_ex10    │    -         │     ✓       │     ✓      │
Ejercicio  │  s2_ex11    │    ✓         │     -       │     -      │
                          └─────────────┴─────────────┴─────────────
                            Total: 5      Total: 8      Total: 4
```

---

## Distribución por Sistema de Coordenadas

### Coordenadas Cartesianas
- s2_ex1: Gradiente
- s2_ex2: Rotacional
- s2_ex5: Laplaciano (primera parte)

### Coordenadas Cilíndricas
- s2_ex5: Laplaciano (segunda parte)
- s2_ex8: Vectores base y factores de escala
- s2_ex10: Flujo axial simétrico

### Coordenadas Esféricas
- s2_ex4: Divergencia del campo electrostático
- s2_ex9: Potencial esféricamente simétrico
- s2_ex11: Vectores base y factores de escala

### Sistema Paraboloidal
- s2_ex6: Factores de escala

---

## Distribución por Operador Vectorial

### Gradiente (∇)
- s2_ex1: Vector unitario perpendicular
- s2_ex9: Potencial esférico

### Divergencia (∇·)
- s2_ex4: Campo electrostático (esféricas)
- s2_ex7: Identidad fundamental
- s2_ex10: Flujo incompresible

### Rotacional (∇×)
- s2_ex2: Campo vectorial
- s2_ex3: Velocidad de rotación
- s2_ex7: Identidad fundamental
- s2_ex10: Flujo axial

### Laplaciano (∇²)
- s2_ex5: En diferentes sistemas
- s2_ex7: Identidad triple

---

## Aplicaciones Físicas por Dominio

### Electromagnetismo
- s2_ex4: Ley de Gauss (esféricas)
- s2_ex9: Potencial de carga puntual

### Mecánica
- s2_ex3: Rotación rígida

### Mecánica de Fluidos
- s2_ex10: Flujo axial simétrico

### Matemáticas Fundamentales
- s2_ex1, s2_ex2, s2_ex5, s2_ex6, s2_ex7, s2_ex8, s2_ex11: Conceptos teóricos

---

## Conclusión

Los 11 ejercicios de la semana 2 proporcionan una cobertura **completa y equilibrada** de los tres objetivos de aprendizaje:

1. **Objetivo 1 (4 ejercicios)**: Cubre transformaciones, vectores base y factores de escala en múltiples sistemas
2. **Objetivo 2 (8 ejercicios)**: Cubre todos los operadores del nabla en diversos sistemas de coordenadas
3. **Objetivo 3 (4 ejercicios)**: Aplica conceptos a problemas físicos reales en diferentes dominios

La progresión va desde conceptos fundamentales (identidades, factores de escala) hasta aplicaciones prácticas (flujo, campos eléctricos), asegurando una comprensión profunda del análisis vectorial en coordenadas curvilíneas.