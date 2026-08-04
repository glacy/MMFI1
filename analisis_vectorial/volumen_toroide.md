:::{note} Cálculo del volumen de un toroide en coordenadas curvilíneas (cilíndricas)
:class:dropdown

```{figure} ./toroide.png
:label: fig-toroide
:alt: representación de un toroide
:align: center
:width: 400px


Toroide. Imagen generada con [Geogebra](https://www.geogebra.org/3d).
```

Un **toroide** (anillo) puede definirse como la revolución de un círculo de radio menor $a>0$, centrado en $(R,0)$ del plano $xz$, alrededor del eje $z$, con $R>a$ (toro anular). Buscamos su volumen.

Usando **[coordenadas cilíndricas]** $(\rho,\phi,z)$, 
$$
x=\rho\cos\phi,\quad y=\rho\sin\phi,\quad z=z,
$$
y elemento de volumen (factor de escala $h_\rho=1,\ h_\phi=\rho,\ h_z=1$):
$$
dV=\rho\,d\rho\,d\phi\,dz.
$$

La sección meridiana del toro en el plano $(\rho,z)$ es el disco:
$$
(\rho - R)^2 + z^2 \le a^2.
$$
De aquí,
- $\phi \in [0,2\pi)$,
- $\rho \in [R-a,\,R+a]$,
- para cada $\rho$, $z \in \big[-\sqrt{a^2-(\rho-R)^2},\ \sqrt{a^2-(\rho-R)^2}\big]$.

*Integral de volumen*
$$
V = \iiint_{\text{toro}} \rho\,dz\,d\rho\,d\phi
= \int_{0}^{2\pi}\!\!\int_{R-a}^{R+a}\!\!\int_{-\sqrt{a^2-(\rho-R)^2}}^{\sqrt{a^2-(\rho-R)^2}} \rho \, dz\, d\rho\, d\phi.
$$

- Al integrar en $z$, obtenemos
$$
\int_{-\sqrt{a^2-(\rho-R)^2}}^{\sqrt{a^2-(\rho-R)^2}} \rho\, dz
= 2\rho\,\sqrt{a^2-(\rho-R)^2}.
$$

- Al integrar en $\phi$
$$
V = \int_{0}^{2\pi} \left[ \int_{R-a}^{R+a} 2\rho\,\sqrt{a^2-(\rho-R)^2}\, d\rho \right] d\phi
= 2\pi \int_{R-a}^{R+a} 2\rho\,\sqrt{a^2-(\rho-R)^2}\, d\rho.
$$
Es decir,
$$
V = 4\pi \int_{R-a}^{R+a} \rho\,\sqrt{a^2-(\rho-R)^2}\, d\rho.
$$

- Para integrar en $\rho$ usemos la sustitución simétrica $u=\rho-R$ $\Rightarrow$ $d\rho=du$, $\rho=u+R$, con $u\in[-a,a]$:
$$
V = 4\pi \int_{-a}^{a} (u+R)\,\sqrt{a^2-u^2}\, du
= 4\pi \left[ \int_{-a}^{a} u\sqrt{a^2-u^2}\, du \;+\; R\int_{-a}^{a} \sqrt{a^2-u^2}\, du \right].
$$
La primera integral es **impar** en límites simétricos $[-a,a]$ por lo que vale 0. El segundo es el área de un **semicírculo** de radio $a$:
$$
\int_{-a}^{a} \sqrt{a^2-u^2}\, du = \frac{\pi a^2}{2}.
$$
Luego,
$$
V = 4\pi \left[ R \cdot \frac{\pi a^2}{2} \right] = 2\pi^2 R a^2; \qquad (R>a>0).
$$

:::
