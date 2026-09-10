# MMFI1 - Métodos Matemáticos para Física e Ingeniería I

Documentación del curso IF3602 (ITCR) en español, con MyST Markdown. Contenido en `01_analisis_vectorial/` … `05_edps/`, configurado en `myst.yml`.

## Build y verificación

```bash
pnpm install          # pnpm 11.20.0
myst build --html     # genera _build/html/ (única verificación necesaria)
```

## Convenciones

- Todo el contenido en español.
- Estructura por semanas: `semana[N]_lectura.md`, `semana[N]_practica.md`.
- Los .pdf en directorios de contenido son exportados, no editarlos.
- Ejercicios en archivos separados bajo `ejercicios/` (`sN_exM.md` enunciado, `solucion_sN_exM.md` solución), incluidos en `semana[N]_practica.md` así:

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
