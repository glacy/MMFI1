:::{attention} Identidades útiles

Si $z=re^{i\theta} \quad \Rightarrow \quad z^2=r^2=zz^*$
:::




Sustituyendo $\tilde{n} = n + i\kappa$ en la expresión del campo

$$
E(z,t) = E_0 e^{i\left(\frac{\omega (n+i\kappa)}{c}z - \omega t\right)}
        = E_0 e^{-\frac{\omega \kappa}{c}z} e^{i\left(\frac{\omega n}{c}z - \omega t\right)}.
$$

---

La magnitud del campo (su amplitud) es

$$
|E(z,t)| = |E_0| e^{-\frac{\omega \kappa}{c}z}.
$$

---

Ahora, como la intensidad es proporcional al cuadrado de la amplitud:

$$
I(z) \propto |E(z,t)|^2 = |E_0|^2 e^{-2\frac{\omega \kappa}{c}z}.
$$

---

Por definición, $\delta$ es la distancia a la que la intensidad se reduce a $\frac{1}{e}$ de su valor inicial $I(z=0)$:

$$
\frac{I(z=\delta)}{I(z=0)} = e^{-2\frac{\omega \kappa}{c}\delta} = \frac{1}{e}.
$$

De aquí se obtiene:

$$
-2\frac{\omega \kappa}{c}\delta = -1,
\qquad \Rightarrow \qquad
\boxed{\delta = \frac{c}{2\omega\kappa}}.
$$

---

- El parámetro $\kappa$ controla la **atenuación**: valores grandes de $\kappa$ implican menor profundidad de penetración.  
- La expresión $\delta = \frac{\lambda}{4\pi\kappa}$ es muy utilizada en óptica para describir la **penetración de la luz** en materiales absorbentes, como metales y semiconductores, en función de la longitud de onda.


