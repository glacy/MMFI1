1. **Teorema de la divergencia y la ley de Gauss**

El teorema de la divergencia aplicado a la ley de Gauss diferencial sobre el volumen $\tau$ de un cilindro coaxial de radio $r$ y longitud $L$ da

$$ \oiint_\sigma \vec{E}\cdot\hat{n}\,d\sigma = \iiint_\tau \nabla\cdot\vec{E}\,d\tau = \frac{1}{\epsilon_0}\iiint_\tau \rho\,d\tau = \frac{Q_{\text{enc}}}{\epsilon_0} $$

**Flujo:** en las tapas del cilindro, $\hat{n}$ es $\pm\hat{z}$ y $\vec{E}$ es radial, por lo que el flujo es nulo. Solo aporta la superficie lateral, donde $\hat{n} = \hat{r}$:

$$ \oiint_\sigma \vec{E}\cdot\hat{n}\,d\sigma = E(r)\,(2\pi r L) $$

**Carga encerrada:**

$$ Q_{\text{enc}} = \begin{cases} \rho_0\,\pi r^2 L & r < a \\[4pt] \rho_0\,\pi a^2 L & r > a \end{cases} $$

Igualando ambas expresiones:

$$ \vec{E}(r) = \begin{cases} \dfrac{\rho_0\,r}{2\,\epsilon_0}\,\hat{r} & r < a \\[8pt] \dfrac{\rho_0\,a^2}{2\,\epsilon_0\,r}\,\hat{r} & r > a \end{cases} $$

El campo crece linealmente dentro del haz y decae como $1/r$ fuera de él.

---

2. **Divergencia en cilíndricas.** 

Para un campo radial $\vec{E} = E_r(r)\,\hat{r}$:

$$ \nabla\cdot\vec{E} = \frac{1}{r}\,\frac{\partial}{\partial r}\left(r\,E_r\right) $$

- Dentro del haz: $r E_r = \dfrac{\rho_0 r^2}{2\epsilon_0} \Rightarrow \nabla\cdot\vec{E} = \dfrac{1}{r}\cdot\dfrac{\rho_0 r}{\epsilon_0} = \dfrac{\rho_0}{\epsilon_0}$
- Fuera del haz: $r E_r = \dfrac{\rho_0 a^2}{2\epsilon_0}$ (constante) $\Rightarrow \nabla\cdot\vec{E} = 0$

**Integral de volumen** sobre el cilindro sólido $0 \le r \le R$, $R > a$, de longitud $L$:

$$ \iiint_\tau \nabla\cdot\vec{E}\,d\tau = \int_0^L\!\!\int_0^{2\pi}\!\!\int_0^a \frac{\rho_0}{\epsilon_0}\,r\,dr\,d\phi\,dz = \frac{\rho_0}{\epsilon_0}\,(2\pi L)\,\frac{a^2}{2} = \frac{\rho_0\,\pi a^2 L}{\epsilon_0} $$

**Flujo** a través de la superficie cerrada (radio $R$, longitud $L$): en las tapas el flujo es nulo ($\vec{E}\perp\hat{n}$) y en la pared lateral,

$$ \oiint_\sigma \vec{E}\cdot\hat{n}\,d\sigma = E(R)\,(2\pi R L) = \frac{\rho_0 a^2}{2\epsilon_0 R}\,(2\pi R L) = \frac{\rho_0\,\pi a^2 L}{\epsilon_0}$$

Ambos cálculos coinciden:

$$ \iiint_\tau \nabla\cdot\vec{E}\,d\tau = \oiint_\sigma \vec{E}\cdot\hat{n}\,d\sigma = \frac{Q_{\text{enc}}}{\epsilon_0} $$

---

3. **Ley de Ampère y el teorema de Stokes**

Integrando la ley de Ampère diferencial $\nabla\times\vec{B} = \mu_0\vec{J}$ sobre una superficie plana $\sigma$ (disco de radio $r$ perpendicular al haz) y aplicando el teorema de Stokes, con $C = \partial\sigma$ la circunferencia de radio $r$:

$$ \oint_C \vec{B}\cdot d\vec{l} = \iint_\sigma (\nabla\times\vec{B})\cdot\hat{n}\,d\sigma = \mu_0\iint_\sigma \vec{J}\cdot\hat{n}\,d\sigma = \mu_0\,I_{\text{enc}} $$

**Circulación:** sobre la circunferencia $C$, $\vec{B} = B(r)\,\hat{\phi}$ y $d\vec{l} = r\,d\phi\,\hat{\phi}$, de modo que $\vec{B}\cdot d\vec{l} = B(r)\,r\,d\phi$:

$$ \oint_C \vec{B}\cdot d\vec{l} = B(r)\,(2\pi r) $$

**Corriente encerrada** por el disco de radio $r$:

$$ I_{\text{enc}} = \begin{cases} \rho_0 v\,\pi r^2 & r < a \\[4pt] \rho_0 v\,\pi a^2 = I & r > a \end{cases} $$

Igualando circulación y corriente encerrada:

$$ \vec{B}(r) = \begin{cases} \dfrac{\mu_0\,\rho_0 v\,r}{2}\,\hat{\phi} & r < a \\[8pt] \dfrac{\mu_0\,I}{2\pi r}\,\hat{\phi} = \dfrac{\mu_0\,\rho_0 v\,a^2}{2r}\,\hat{\phi} & r > a \end{cases} $$
