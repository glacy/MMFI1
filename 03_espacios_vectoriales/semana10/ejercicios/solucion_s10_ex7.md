---
title: Solución Ejercicio 7
keywords:
  - expansion-ortogonal
  - notacion-dirac
  - proyeccion
  - desigualdad-bessel
  - gram-schmidt
tags:
  - expansion-ortogonal
  - notacion-dirac
  - proyeccion
  - desigualdad-bessel
  - gram-schmidt
  - calculo
objetivos: []
---

**Parte 1: coeficientes como proyecciones.** Los coeficientes de la expansión son los productos internos $c_n = \langle\hat\phi_n|f\rangle$:

$$
c_0 = \int_{-1}^1 \frac{1}{\sqrt{2}}\,x^2\,dx = \frac{1}{\sqrt{2}}\cdot\frac{2}{3} = \frac{\sqrt{2}}{3},
\qquad
c_1 = \int_{-1}^1 \sqrt{\frac{3}{2}}\,x\cdot x^2\,dx = \sqrt{\frac{3}{2}}\int_{-1}^1 x^3\,dx = 0,
$$

donde $c_1$ se anula porque $x^3$ es impar. La parte de $f$ "visible" para la base es entonces

$$
f_\parallel(x) = c_0\hat\phi_0(x) + c_1\hat\phi_1(x) = \frac{\sqrt{2}}{3}\cdot\frac{1}{\sqrt{2}} = \frac{1}{3}.
$$

**Parte 2: Bessel estricta.** Los dos lados de la desigualdad:

$$
\sum_{n=0}^{1}|c_n|^2 = \frac{2}{9},
\qquad
\|f\|^2 = \int_{-1}^1 x^4\,dx = \frac{2}{5}.
$$

En efecto,

$$
\frac{2}{9} = 0{,}22\ldots < 0{,}4 = \frac{2}{5}
\qquad\checkmark
$$

La igualdad de Pitágoras generalizada **no** se cumple porque el conjunto ortonormal es **incompleto**: $\{1/\sqrt2, \sqrt{3/2}\,x\}$ solo genera las funciones lineales, y $f(x) = x^2$ tiene una componente fuera de ese span que las sumas de cuadrados de coeficientes no capturan. Es exactamente la distinción de la semana 9: Bessel vale para conjuntos ortonormales incompletos, y solo se cierra en igualdad cuando el conjunto es una base completa.

**Parte 3: ortogonalidad del residuo y Pitágoras bidireccional.** El residuo es

$$
g(x) = x^2 - \frac{1}{3}.
$$

Ortogonalidad contra cada elemento del conjunto:

$$
\langle\hat\phi_0|g\rangle = \int_{-1}^1 \frac{1}{\sqrt{2}}\left(x^2 - \frac{1}{3}\right)dx
= \frac{1}{\sqrt{2}}\left(\frac{2}{3} - \frac{2}{3}\right) = 0,
\qquad
\langle\hat\phi_1|g\rangle = \sqrt{\frac{3}{2}}\int_{-1}^1\left(x^3 - \frac{x}{3}\right)dx = 0
$$

(ambos integrandos son impares). $\checkmark$

Con $f = f_\parallel + g$ y $f_\parallel \perp g$, la norma al cuadrado se reparte entre las dos partes ortogonales:

$$
\|f_\parallel\|^2 = \int_{-1}^1 \frac{1}{9}\,dx = \frac{2}{9},
\qquad
\|g\|^2 = \int_{-1}^1 \left(x^2 - \frac{1}{3}\right)^2 dx = \frac{8}{45},
$$

$$
\|f_\parallel\|^2 + \|g\|^2 = \frac{2}{9} + \frac{8}{45} = \frac{10}{45} + \frac{8}{45} = \frac{18}{45} = \frac{2}{5} = \|f\|^2.
\qquad\checkmark
$$

**Moraleja:** la función $g(x) = x^2 - \frac{1}{3}$ es precisamente el residuo $\tilde\phi_2$ del ejemplo de Legendre en la lectura: al aplicarle Gram–Schmidt con $x^2$ como tercer vector de partida, ese residuo — normalizado — se convierte en el nuevo eje $\hat\phi_2$. Gram–Schmidt, Bessel y Pitágoras son tres vistas del mismo hecho: cada eje ortonormal nuevo captura exactamente la componente que los anteriores no podían ver.
