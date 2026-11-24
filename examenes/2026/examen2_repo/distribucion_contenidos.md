---
title: Propuesta de contenidos - Examen 2 de reposición
description: Correspondencia entre los 4 ejercicios del Examen 2 (2026) y los 4 ejercicios del Examen 2 de reposición (2026)
short_title: Propuesta Examen 2 (reposición)
author: " "
tags: [numeros_complejos, evaluacion, distribucion]
subject: Variable compleja - 2026
keywords: [examen, reposición, correspondencia, niveles de dificultad, variable compleja]
---

# Propuesta de Examen 2 de reposición — correspondencia con el Examen 2 (2026)

## Parámetros

- Evaluación **individual**, duración **2 horas**, valor **100 puntos**.
- **4 ejercicios de 25 puntos**, de longitud mínima (entre 1 y 3 incisos cada uno).
- Misma estructura y mismo reparto de puntajes por inciso que el Examen 2 original.
- Estimación de tiempo: Ex1 ≈ 18 min, Ex2 ≈ 15 min, Ex3 ≈ 18 min, Ex4 ≈ 15 min (≈ 66 min), con holgura dentro de las 2 horas.
- Evalúa los **mismos contenidos** del Examen 2 (bloques 2.1, 2.4, 2.6 y 2.8 de la Tarea 2), con aumentos de dificultad concentrados en Ex 2, Ex 3 y Ex 4; Ex 1 es un análogo directo del original en la familia coseno.

## Correspondencia examen original → examen de reposición

| Ejercicio | Puntos | Contenido (bloque tarea) | Examen 2 original | Reposición |
|---|---|---|---|---|
| Ex 1 | 25 | Cauchy-Riemann: armónica (8), conjugada armónica (12), función analítica elemental (5); bloque 2.1 | $u=\sin x\cosh y \to f=\sin z$ | $u=\cos x\cosh y \to f=\cos z$ |
| Ex 2 | 25 | Fórmula integral de Cauchy (8), versión para derivadas con polo triple (9), polo exterior vía Cauchy-Goursat (8); bloque 2.4 | $\dfrac{e^z}{z-2i}$ sobre $\lvert z\rvert=3$ y $\lvert z\rvert=1$ | $\dfrac{ze^z}{z-(1+i)}$ sobre $\lvert z\rvert=2$ y $\lvert z\rvert=1$ |
| Ex 3 | 25 | Integral trigonométrica por la circunferencia unitaria; bloque 2.8 | $\displaystyle\int_0^{2\pi}\frac{d\theta}{3+2\cos\theta} = \frac{2\pi}{\sqrt5}$ (raíces reales) | $\displaystyle\int_0^{2\pi}\frac{d\theta}{2+\sin\theta} = \frac{2\pi}{\sqrt3}$ (raíces puramente imaginarias) |
| Ex 4 | 25 | Singularidades y regiones de Laurent (5), serie en dos regiones (12), integración desde la serie (8); bloque 2.6 | $\dfrac{1}{z(z-3)}$ (polo simple en el centro) | $\dfrac{1}{z^2(z-3)}$ (polo doble en el centro) |

## En qué consiste el aumento de dificultad (misma técnica, un escalón más)

- **Ex 1**: análogo del original en la **familia coseno**: los signos cambian ($u_x<0$ y la conjugada resultante $v=-\sin x\sinh y$ lleva signo negativo), lo que exige cuidado al imponer $v_x=-u_y$.
- **Ex 2**: el numerador $ze^z$ obliga a derivar con **regla del producto** para $g''$, y el polo $z_0=1+i$ no está sobre un eje; el original usaba $e^z$ pura (derivadas triviales) y un polo puramente imaginario.
- **Ex 3**: la sustitución requiere la identidad $\sin\theta = \frac{z-z^{-1}}{2i}$ y las raíces del cuadrático resultan **puramente imaginarias** ($i(\pm\sqrt3-2)$); en el original ($\cos\theta$) las raíces eran reales negativas.
- **Ex 4**: el polo en el centro de expansión es **doble**: la parte principal tiene dos términos y el residuo sale de la serie (o de derivar); en el original era simple.

En los cuatro casos el procedimiento a aplicar es exactamente el mismo que se evaluó en el Examen 2 y se trabajó en la Tarea 2.

## Nota

- En `examen2/distribucion_contenidos.md` las filas de Ex 3 y Ex 4 aparecen intercambiadas respecto de los archivos reales del examen (`ex3_e2.md` es la integral trigonométrica y `ex4_e2.md` es Laurent); aquí se documenta el orden real de aplicación.

## Pendientes

- Ajustar la fecha en el frontmatter (`examen2_repo_2026.md` y `examen2_repo_2026_export.md`) cuando se confirme la aplicación.
- Generar el PDF: `myst build --pdf examenes/2026/examen2_repo/examen2_repo_2026_export.md` (los enlaces de descarga del archivo principal apuntan al PDF).
- Agregado a `myst.yml` (toc oculto y navegación "Examen 2 (Extraordinario)"); correr `myst build --html` para verificar.
