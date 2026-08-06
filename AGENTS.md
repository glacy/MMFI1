# MMFI1 - Métodos Matemáticos para Física e Ingeniería I

Repositorio de documentación del curso IF3602 (ITCR) en español, construido con MyST Markdown.

## Build y test

```bash
pnpm install                    # Usa pnpm 11.20.0
myst build --html              # Web: genera _build/html/
myst build --pdf               # PDF
pnpm run vercel-build          # Build Vercel: myst build --html && cp -r _build/html/* .
```

## Estructura

- **Contenido**: `01_analisis_vectorial/`, `02_numeros_complejos/`, `03_espacios_vectoriales/`, `04_matrices/`, `05_edps/`
- **Config**: `myst.yml` define el TOC y metadatos del proyecto
- **Bibliografía**: `my_references.bib` (BibTeX, referencias en `programa-curso.md`)
- **Scripts**: Python notebooks (.ipynb) para visualizaciones con numpy/matplotlib
- **Gráficos**: Archivos Asymptote (.asy) para diagramas vectoriales

## Deployment

- **Producción**: `vercel --prod` tras push a `main`
- **Preview automático**: Cada push a `main` genera preview en Vercel
- **Versiones archivadas**: Rama `release/2025` con tags `v2025.*`, producción usa tags `v2026.*`
- **GitHub Actions**: `.github/workflows/deploy-vercel.yml` maneja despliegues por tag/branch
- **Salida**: `_build/html/` se copia al root para Vercel (script custom)

## Convenciones

- Contenido en español con términos matemáticos en español/español-latino
- Estructura por semanas: `semana[N]_lectura.md`, `semana[N]_practica.md`
- Los .pdf en directorios de contenido son versiones exportadas, no fuentes
- Imágenes: mezcla de .svg (generados de .asy), .png, y .gif (animaciones)

## Patrón de ejercicios

Ejercicios extraídos en archivos separados dentro de `ejercicios/` subdirectorio:

```
semana[N]_practica.md         # Archivo principal con ejercicios
ejercicios/
  ├── sN_exM.md              # Enunciado del ejercicio M de semana N
  └── solucion_sN_exM.md     # Solución del ejercicio M de semana N
```

Patrón en `semana[N]_practica.md`:

````
```{exercise}
:label: sN_exM

```{include} ./ejercicios/sN_exM.md

```
````

````
```{solution} sN_exM
:label: solucion-sN_exM
:class: dropdown

```{include} ./ejercicios/solucion_sN_exM.md

```
````
````