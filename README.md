# Métodos Matemáticos para Física e Ingeniería I (IF3602)

Repositorio del curso IF3602, Instituto Tecnológico de Costa Rica.

## Descripción del curso

Métodos Matemáticos para Física e Ingeniería I proporciona conocimientos en diversas técnicas y métodos matemáticos avanzados para abordar problemas de física e ingeniería. El curso tiene como requisito MA2105 Ecuaciones Diferenciales.

## Objetivos

- **Objetivo general**: Utilizar diversos métodos matemáticos avanzados en el análisis y resolución de problemas de física e ingeniería
- **Objetivos específicos**:
  1. Conocer los fundamentos de varios métodos matemáticos para la resolución de problemas
  2. Resolver problemas aplicados a la física y la ingeniería mediante el uso de métodos matemáticos
  3. Analizar problemas de física e ingeniería desde la perspectiva de los métodos matemáticos aplicables

## Contenidos

El curso cubre 5 unidades principales:

1. **Cálculo y análisis vectorial**
   - Productos entre vectores, productos triples
   - Diferenciación de vectores, coordenadas curvilíneas
   - Operador nabla
   - Teoremas Integrales: Green, Stokes y Gauss

2. **Números y funciones complejas**
   - Introducción a números complejos
   - Funciones en el dominio complejo
   - Coordenadas polares, fórmula de Euler
   - Funciones hiperbólicas y circulares
   - Potencias, raíces y logaritmos complejos

3. **Espacios vectoriales**
   - Vectores en espacios de funciones
   - Notación de Dirac, espacio de Hilbert
   - Expansiones ortogonales, delta de Dirac
   - Ortogonalización de Gram-Schmidt
   - Operadores hermíticos, operadores unitarios

4. **Determinantes y matrices**
   - Representación matricial de operadores
   - Autovalores y diagonalización de matrices hermíticas
   - Descomposición espectral, valores esperados

5. **Ecuaciones diferenciales parciales (EDPs)**
   - Soluciones y condiciones auxiliares
   - Series de Fourier
   - Método de separación de variables
   - Ecuaciones: Helmholtz, Laplace, difusión, Poisson, onda, Schrödinger

## Estructura del repositorio

```
mmfi1/
├── programa-curso.md       # Programa oficial del curso
├── myst.yml                 # Configuración MyST para documentación
├── analisis_vectorial/      # Material semanas 1-3
├── numeros_complejos/       # Material semanas 4-7
├── espacios_vectoriales/    # Material semanas 8-10
├── matrices/                # Material semanas 11-13
├── edps/                    # Material semanas 14-15
├── tareas/                  # Tareas del curso
├── examenes/                # Exámenes parciales
├── proyecto/                # Proyecto de investigación grupal
└── my_references.bib        # Bibliografía
```

## Evaluación

| Instrumento | Porcentaje |
|-------------|------------|
| Exámenes parciales (2) | 60% |
| Tareas (4) | 20% |
| Investigación grupal | 20% |

## Proyecto del curso

El proyecto consiste en investigar un problema físico o de ingeniería descrito mediante ecuaciones diferenciales parciales (EDPs). Se desarrolla en 4 etapas:

1. **P1 (5%)**: Planteamiento del problema y objetivos
2. **P2 (5%)**: Marco teórico
3. **P3 (5%)**: Aplicaciones (resolución analítica o numérica)
4. **P4 (5%)**: Presentación

## Construcción de la documentación

Este proyecto usa MyST Markdown para generar la documentación web y PDF.

```bash
# Instalar dependencias
npm install

# Construir sitio web
myst build

# Construir PDF
myst build --pdf
```

## Bibliografía principal

- Arfken, G. B., & Weber, H. J. (2005). *Mathematical methods for physicists*
- Boas, M. L. (2006). *Mathematical methods in the physical sciences*
- Riley, K. F., Hobson, M. P., & Bence, S. J. (2006). *Mathematical methods for physics and engineering*

## Autor

**Gerardo Lacy Mora**  
Licenciatura en Ingeniería Física, Escuela de Física  
ITCR - glacy@itcr.ac.cr

## Licencia

Este material es parte del curso IF3602 del Instituto Tecnológico de Costa Rica.

## Enlaces relacionados

- [tecDigital](https://tecdigital.tec.ac.cr/dotlrn) - Plataforma del curso
- [Google Colab](https://colab.research.google.com) - Para ejecuciones interactivas
- [MyST Markdown](https://mystmd.org) - Framework de documentación