---
title: Solución Ejercicio 7
keywords:
  - kramers-kronig
  - relaciones-de-dispersion
  - causalidad
  - aplicacion
tags:
  - kramers-kronig
  - relaciones-de-dispersion
  - causalidad
  - aplicacion
objetivos: []
---

**(a) Polos.** Los polos anulan el denominador: $\omega^2 + i\gamma\omega - \omega_0^2 = 0$. Con la fórmula cuadrática,

$$
\omega_\pm = \frac{-i\gamma \pm \sqrt{-\gamma^2 + 4\omega_0^2}}{2}
= \pm\sqrt{\omega_0^2 - \frac{\gamma^2}{4}} \;-\; i\,\frac{\gamma}{2}.
$$

(Si $\gamma > 2\omega_0$ la raíz es imaginaria pura, pero la parte imaginaria de ambos polos sigue siendo $-\gamma/2$.) En ambos casos,

$$
\Im\,\omega_\pm = -\frac{\gamma}{2} < 0:
$$

todos los polos viven en el **semiplano inferior**. Un polo en $\Im\omega > 0$ haría que $\chi(\omega)$ creciera al continuar $\omega$ hacia el semiplano superior, lo que en el tiempo corresponde — vía el factor $e^{-i\omega t}$ de la transformada inversa — a una contribución $\sim e^{+|\Im\omega|t}$ **que crece antes del estímulo** ($t<0$): una respuesta acausal e inestable. La causalidad es, literalmente, una condición sobre *dónde pueden vivir los polos*.

---

**(b) Paridad.** Si $\chi(-\omega) = \chi^*(\omega)$, entonces para $\Re\chi$:

$$
\Re\chi(-\omega) = \Re\,\chi^*(\omega) = \Re\chi(\omega)
\quad\Longrightarrow\quad \text{par},
$$

y para $\Im\chi$:

$$
\Im\chi(-\omega) = \Im\,\chi^*(\omega) = -\Im\chi(\omega)
\quad\Longrightarrow\quad \text{impar}.
$$

Esta paridad es la que permite escribir las relaciones de Kramers–Kronig como integrales solo sobre frecuencias positivas:

$$
\Re\chi(\omega) = \frac{2}{\pi}\,\mathcal{P}\!\int_0^{\infty}
\frac{\omega'\,\Im\chi(\omega')}{\omega'^2 - \omega^2}\,d\omega',
\qquad
\Im\chi(\omega) = -\frac{2\omega}{\pi}\,\mathcal{P}\!\int_0^{\infty}
\frac{\Re\chi(\omega')}{\omega'^2 - \omega^2}\,d\omega'.
$$

---

**(c) Dispersión y absorción entrelazadas.** Cerca de $\omega \approx \omega_0$ el denominador se hace pequeño y:

- $\Im\chi(\omega)$ tiene un **pico** (perfil tipo Lorentz de ancho $\approx\gamma$): es la **absorción** — el medio disipa energía a la frecuencia de resonancia.
- $\Re\chi(\omega)$ pasa por **cero en la resonancia** y presenta el característico vaivén: positiva justo debajo de $\omega_0$, negativa justo arriba (o viceversa según la convención de signos): es la **dispersión** — allí el índice de refracción varía bruscamente con la frecuencia.

Las relaciones de Kramers–Kronig garantizan que estas dos curvas **no son independientes**: cada pico de absorción lleva aparejado su vaivén de dispersión con un área y forma ligadas por {eq}`eq-kk` de la lectura. De ahí la frase: no puede fabricarse un material que refracte con fuerza en alguna banda sin que absorba en otra cercana (y viceversa). En plasmonica, las **nanocáscaras núcleo-cáscara** explotan exactamente esta estructura: la geometría (relación radio de núcleo/espesor de la cáscara de oro) mueve los polos de la respuesta — las resonancias plasmónicas — a lo largo del semiplano inferior, desplazando el pico de absorción desde el visible hasta el infrarrojo cercano, por ejemplo hasta la "ventana biológica" donde el tejido humano es transparente: así se elige dónde el material absorbe y dónde dispersa, con la garantía de Kramers–Kronig de que una vez fijada la absorción espectral, la refracción queda determinada.

---

**(d) Verificación experimental.** Si los datos de $\Re Z$ e $\Im Z$ no satisfacen Kramers–Kronig, el sistema medido no puede ser lineal, causal y estable a la vez. Las causas típicas que el test delata: ruido o deriva térmica en la medición (los datos no provienen de una función analítica), procesos no estacionarios (el sistema cambia durante la medición), no-linealidades a la amplitud aplicada, o efectos inductivos parásitos a alta frecuencia. Por eso la "prueba de Kramers–Kronig" es un **control de calidad estándar** en espectroscopía de impedancia: valida la causalidad del conjunto experimento + sistema antes de que el modelo de circuito equivalente se ajuste a los datos.
