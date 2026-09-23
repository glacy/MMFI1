---
tags:
- analisis-vectorial
- operador-nabla
- divergencia
- rotacional
- coordenadas-esfericas
- flujo
- aplicacion
- intermedio
subject: IF3602 - Métodos Matemáticos para Física e Ingeniería I
---


Por la simetría axial del problema, $v_\phi = 0$ y ningún campo depende de $\phi$. La divergencia en coordenadas esféricas es

$$ \nabla\cdot\vec{v} = \frac{1}{r^2}\,\frac{\partial}{\partial r}\left(r^2 v_r\right) + \frac{1}{r\,\text{sen}\,\theta}\,\frac{\partial}{\partial \theta}\left(\text{sen}\,\theta\, v_\theta\right) + \frac{1}{r\,\text{sen}\,\theta}\,\frac{\partial v_\phi}{\partial \phi} $$

El último término se anula, por lo que

$$ \nabla\cdot\vec{v} = \frac{1}{r^2}\,\frac{\partial}{\partial r}\left(r^2 v_r\right) + \frac{1}{r\,\text{sen}\,\theta}\,\frac{\partial}{\partial \theta}\left(\text{sen}\,\theta\, v_\theta\right) $$

---

Las componentes del rotacional en coordenadas esféricas son

$$ (\nabla\times\vec{v})_r = \frac{1}{r\,\text{sen}\,\theta}\left[\frac{\partial}{\partial \theta}\left(\text{sen}\,\theta\, v_\phi\right) - \frac{\partial v_\theta}{\partial \phi}\right] = 0 $$

$$ (\nabla\times\vec{v})_\theta = \frac{1}{r}\left[\frac{1}{\text{sen}\,\theta}\,\frac{\partial v_r}{\partial \phi} - \frac{\partial}{\partial r}\left(r\,v_\phi\right)\right] = 0 $$

pues $v_\phi = 0$ y los campos no dependen de $\phi$. La componente azimutal es

$$ (\nabla\times\vec{v})_\phi = \frac{1}{r}\left[\frac{\partial\,(r\,v_\theta)}{\partial r} - \frac{\partial v_r}{\partial \theta}\right] $$

de modo que $\vec{\omega} = \nabla\times\vec{v} = \hat{\phi}\,\dfrac{1}{r}\left[\dfrac{\partial\,(r\,v_\theta)}{\partial r} - \dfrac{\partial v_r}{\partial \theta}\right]$: la vorticidad es puramente azimutal, perpendicular al plano de cada línea de corriente, como corresponde a un flujo axialmente simétrico.

---

Con $v_r = f(r)\cos\theta$ y $v_\theta = g(r)\,\text{sen}\,\theta$, la divergencia de la parte 1 da

$$ \nabla\cdot\vec{v} = \frac{\cos\theta}{r^2}\,\frac{d}{dr}\left(r^2 f\right) + \frac{g(r)}{r\,\text{sen}\,\theta}\,\frac{d}{d\theta}\left(\text{sen}^2\theta\right) = \cos\theta\left[\frac{1}{r^2}\,\frac{d}{dr}\left(r^2 f\right) + \frac{2\,g(r)}{r}\right] $$

Para que $\nabla\cdot\vec{v} = 0$ para todo $\theta$ y todo $r$, la expresión entre corchetes debe anularse, lo que da la condición

$$ \boxed{\,g(r) = -\frac{1}{2r}\,\frac{d}{dr}\left[r^2 f(r)\right]\,} $$

---

Para $f(r) = U\left(1 - \dfrac{3a}{2r} + \dfrac{a^3}{2r^3}\right)$:

$$ r^2 f(r) = U\left(r^2 - \frac{3a}{2}\,r + \frac{a^3}{2r}\right) \qquad\Rightarrow\qquad \frac{d}{dr}\left(r^2 f\right) = U\left(2r - \frac{3a}{2} - \frac{a^3}{2r^2}\right) $$

Aplicando la condición de la parte 3:

$$ g(r) = -\frac{U}{2r}\left(2r - \frac{3a}{2} - \frac{a^3}{2r^2}\right) = -U\left(1 - \frac{3a}{4r} - \frac{a^3}{4r^3}\right) $$

por lo que la componente faltante es

$$ v_\theta(r,\theta) = -U\,\text{sen}\,\theta\left(1 - \frac{3a}{4r} - \frac{a^3}{4r^3}\right) $$

**Interpretación en la superficie ($r = a$):**

$$ v_r(a,\theta) = U\cos\theta\left(1 - \frac{3}{2} + \frac{1}{2}\right) = 0, \qquad v_\theta(a,\theta) = -U\,\text{sen}\,\theta\left(1 - \frac{3}{4} - \frac{1}{4}\right) = 0 $$

El fluido se adhiere a la esfera: el campo cumple la condición de **no deslizamiento** en la superficie sólida, tal como se espera para el flujo de Stokes alrededor de una esfera.

**Observación adicional:** para $r \to \infty$, $v_r \to U\cos\theta$ y $v_\theta \to -U\,\text{sen}\,\theta$, es decir, $\vec{v} \to U(\cos\theta\,\hat{r} - \text{sen}\,\theta\,\hat{\theta}) = U\,\hat{z}$: lejos de la esfera el aceite fluye de manera uniforme con velocidad $\vec{U}$, en consonancia con el sistema de referencia fijo en la esfera.
