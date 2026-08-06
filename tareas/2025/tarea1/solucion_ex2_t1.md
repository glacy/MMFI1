:::{attention} Identidades útiles
```{math}
\begin{aligned}
\cosh^2\rho -\sinh^2\rho&= 1, \\
\cos^2\theta+\sin^2\theta &=1, \\
(1-\cosh\rho\cos\theta)^2+\sinh^2\rho\sin^2\theta&=(\cosh\rho-\cos\theta)^2.
\end{aligned}
```
:::


Es útil introducir la cantidad
:::{math}
H(\rho,\theta)=\frac{a}{\cosh\rho-\cos\theta},
:::

de manera que 

$$R(\rho,\theta)=H(\rho,\theta)\sinh\rho$$

y

:::{math}
x = H\sinh\rho\cos\phi,\quad y = H\sinh\rho\sin\phi,\quad z=H\sin\theta.
:::

Los factores de escala se obtienen mediante
:::{math}
h_\rho=\Big\lVert\frac{\partial\vec{r}}{\partial\rho}\Big\rVert,\qquad
h_\theta=\Big\lVert\frac{\partial\vec{r}}{\partial\theta}\Big\rVert,\qquad
h_\phi=\Big\lVert\frac{\partial\vec{r}}{\partial\phi}\Big\rVert,
:::
con $\vec{r}=(x,y,z)$.

---

Derivando respecto a $\phi$ :
:::{math}
\frac{\partial\vec{r}}{\partial\phi}
= \Big(-H\sinh\rho\sin\phi,\; H\sinh\rho\cos\phi,\; 0\Big).
:::
Por tanto
:::{math}
h_\phi=\Big\lVert\frac{\partial\vec{r}}{\partial\phi}\Big\rVert
= H\sinh\rho = R(\rho,\theta).
:::

---

Derivando respecto a $\rho$:

:::{math}
\begin{align}
\frac{\partial x}{\partial\rho}
=& \frac{\partial}{\partial\rho}\Big(H\sinh\rho\Big)\cos\phi, \\
\frac{\partial y}{\partial\rho}
=& \frac{\partial}{\partial\rho}\Big(H\sinh\rho\Big)\sin\phi, \\
\frac{\partial z}{\partial\rho}
=& \frac{\partial H}{\partial\rho}\sin\theta,
\end{align}
:::

de donde 

:::{math}
\begin{aligned}
\Big\lVert\displaystyle \frac{\partial \vec{r}}{\partial\rho}\Big\rVert^2
&= [\partial_\rho(H\sinh\rho)]^2(\cos^2\phi+\sin^2\phi)+[(\partial_\rho H)\sin\theta]^2\\
&= [\partial_\rho(H\sinh\rho)]^2 + (\partial_\rho H)^2\sin^2\theta. \\
% &= [(\partial_\rho H)\sinh \rho+H\cosh \rho]^2 + (\partial_\rho H)^2\sin^2\theta \\
% &= (\partial_\rho H)^2 \sinh^2\rho + 2H\sinh\rho\cosh\rho\partial_\rho H + H^2\cosh^2\rho + (\partial_\rho H)^2\sin^2\theta.
\end{aligned}
:::

Note que 

:::{math}
\begin{align}
\frac{\partial (H\sinh\rho)}{\partial \rho}=&-a\frac{(\cosh\rho-\cos\theta)\cosh\rho-\sinh^2\rho}{(\cosh\rho-\cos\theta)^2}\\
=& -\frac{a}{(\cosh\rho-\cos\theta)^2}(\cosh^2\rho-\cosh\rho\cos\theta-\sinh^2\rho)\\
=&-\frac{a}{(\cosh\rho-\cos\theta)^2}(1-\cosh\rho\cos\theta)\\
=&-\frac{H^2}{a}(1-\cosh\rho\cos\theta)
\end{align}
:::

y que 

$$\frac{\partial H}{\partial \rho}=-a\frac{\sinh\rho}{(\cosh\rho-\cos\theta)^2}=-\frac{1}{a}H^2\sinh\rho$$

de modo que 
:::{math}
\begin{aligned}
\Big\lVert\displaystyle \frac{\partial \vec{r}}{\partial\rho}\Big\rVert^2
&= \frac{H^4}{a^2}(1-\cosh\rho\cos\theta)^2+ \frac{1}{a^2}H^4\sinh^2\rho\sin^2\theta\\
&= \frac{H^2}{a^2}(\cosh\rho-\cos\theta)^2\\
&= H^2.
\end{aligned}
:::

--- 

Derivando respecto a $\theta$:
:::{math}
\begin{align}
\frac{\partial x}{\partial\theta}
=& \frac{\partial H}{\partial\theta}\sinh\rho\cos\phi, \\
\frac{\partial y}{\partial\theta}
=& \frac{\partial H}{\partial\theta}\sinh\rho\sin\phi,\\
\frac{\partial z}{\partial\theta}
=& a\frac{\partial }{\partial\theta}\Big(\frac{\sin\theta}{\cosh\rho-\cos\theta} \Big)
\end{align}
:::

En este caso, note que 

$$\frac{\partial H}{\partial\theta}=\frac{H^2}{a}\sin\theta, $$

de manera que 
:::{math}
\begin{align}
\frac{\partial x}{\partial\theta}
=& \frac{H^2}{a}\sin\theta\sinh\rho\cos\phi, \\
\frac{\partial y}{\partial\theta}
=& \frac{H^2}{a}\sin\theta\sinh\rho\sin\phi,\\
\frac{\partial z}{\partial\theta}
=& -\frac{1}{a}H^2(\cosh\rho\cos\theta-1).
\end{align}
:::

de donde 
:::{math}
\begin{aligned}
\Big\lVert\displaystyle \frac{\partial \vec{r}}{\partial\theta}\Big\rVert^2
&= \frac{H^4}{a^2}(1-\cosh\rho\cos\theta)^2+ \frac{1}{a^2}H^4\sinh^2\rho\sin^2\theta\\
&= \frac{H^4}{a^2}(\cosh\rho-\cos\theta)^2\\
&= H^2.
\end{aligned}
:::

Por lo tanto
:::{math}
\Big\lVert\frac{\partial\vec{r}}{\partial\rho}\Big\rVert^{2}
= H(\rho,\theta)^2,\qquad
\Big\lVert\frac{\partial\vec{r}}{\partial\theta}\Big\rVert^{2}
= H(\rho,\theta)^2.
:::

Es decir, los módulos de los vectores base en $\rho$ y $\theta$ coinciden y valen $H(\rho,\theta)$.

---

Por tanto los factores de escala del sistema toroidal dado son:
:::{math}
\boxed{
\begin{align*}
    h_{\rho}(\rho,\theta)=& h_{\theta}(\rho,\theta)=\frac{a}{\cosh\rho-\cos\theta}=H(\rho,\theta), \\
    h_{\phi}(\rho,\theta)=& \frac{a\sinh\rho}{\cosh\rho-\cos\theta}=R(\rho,\theta)
 \end{align*}
 }
:::

---

Ya con los factores de escala, podemos expresar $\nabla \cdot \vec{B}$ y $\nabla \times \vec{B}$.

Las componentes del rotacional están dadas por 

:::{math}
\begin{align}
(\nabla \times \vec{B})_\rho=& \frac{1}{h_\theta h_\phi}[\partial_\theta(h_\phi B_\phi)-\partial_\phi(h_\theta B_\theta)] \\
(\nabla \times \vec{B})_\theta=& \frac{1}{h_\phi h_\rho}[\partial_\phi(h_\rho B_\rho)-\partial_\rho(h_\phi B_\phi)] \\
(\nabla \times \vec{B})_\phi=& \frac{1}{h_\rho h_\theta}[\partial_\rho(h_\theta B_\theta)-\partial_\theta(h_\rho B_\rho)] \\
\end{align}
:::

Ahora, como $B_\rho=0$, y tanto los factores de escala, como las componente del campo no depende de $\phi$, las componentes del rotacional se simplifican:

:::{math}
\begin{align}
(\nabla \times \vec{B})_\rho=& \frac{1}{h_\theta h_\phi}\partial_\theta(h_\phi B_\phi) \\
(\nabla \times \vec{B})_\theta=& -\frac{1}{h_\phi h_\rho}\partial_\rho(h_\phi B_\phi) \\
(\nabla \times \vec{B})_\phi=& \frac{1}{h_\rho h_\theta}\partial_\rho(h_\theta B_\theta) \\
\end{align}
:::
Nótese que $h_\phi B_\phi = RB_\phi=B_0 R_0=\text{constante}$ y que $h_\theta B_\theta=\frac{d\psi(\rho)}{d\rho}$, de manera que

:::{math}
\boxed{
\nabla \times \vec{B}= \frac{1}{H^2}\frac{d^2\psi}{d\rho^2}\hat{\phi}.
}
:::

---

En el caso de la divergencia, tenemos que 

:::{math}
\nabla \cdot \vec{B} =  \frac{1}{h_\rho h_\theta h_\phi}\left[\partial_\rho (h_\theta h_\phi B_\rho)+\partial_\theta (h_\rho h_\phi B_\theta)+\partial_\phi (h_\rho h_\theta B_\phi) \right]
:::
que simplifica a 
:::{math}
\begin{align}
\nabla \cdot \vec{B} =&  \frac{1}{H^2R}\frac{d\psi}{d\rho}\frac{\partial h_\phi}{\partial \theta} \\
                     =& \frac{1}{H^2R}\frac{d\psi}{d\rho}(\sin\theta R)\\
                     =& \frac{1}{H^2}\frac{d\psi}{d\rho}.
\end{align}
:::

:::{math}
\boxed{
\nabla \cdot \vec{B}= \frac{(\cosh\rho-\cos\theta)^2}{a^2}\frac{d\psi}{d\rho}.
}
:::
