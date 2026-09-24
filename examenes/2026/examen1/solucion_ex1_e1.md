Para dos campos vectoriales arbitrarios $\vec{a}$ y $\vec{b}$ se cumple

$$ \nabla\times(\vec{a}\times\vec{b}) = \vec{a}\,(\nabla\cdot\vec{b}) - \vec{b}\,(\nabla\cdot\vec{a}) + (\vec{b}\cdot\nabla)\,\vec{a} - (\vec{a}\cdot\nabla)\,\vec{b} $$

En este ejercicio $\vec{a}=\vec{m}$ y $\vec{b}=\vec{r}/r^3$.

 Como el momento dipolar $\vec{m}$ es **constante**, se tiene $\nabla\cdot\vec{m} = 0$ y $(\vec{b}\cdot\nabla)\,\vec{m} = \vec{0}$, de modo que la identidad se reduce a

$$ \nabla\times(\vec{m}\times\vec{r}/r^3) = \vec{m}\,(\nabla\cdot\vec{r}/r^3) - (\vec{m}\cdot\nabla)\,\vec{r}/r^3 $$

Entonces

$$ \vec{B} = \nabla\times\vec{A} = \frac{\mu_0}{4\pi}\,\nabla\times\left(\vec{m}\times\frac{\vec{r}}{r^3}\right) = \frac{\mu_0}{4\pi}\left[\vec{m}\,\nabla\cdot\left(\frac{\vec{r}}{r^3}\right) - (\vec{m}\cdot\nabla)\frac{\vec{r}}{r^3}\right] $$

Para $r \neq 0$ se cumple $\nabla\cdot(\vec{r}/r^3) = 0$, por lo que el primer término se anula y queda

$$ \vec{B} = -\frac{\mu_0}{4\pi}\,(\vec{m}\cdot\nabla)\,\frac{\vec{r}}{r^3} $$

---

Escribimos $\vec{r} = (x, y, z)$, con $r = (x^2 + y^2 + z^2)^{1/2}$ y $\partial r/\partial x_j = x_j/r$. Para cada componente $i$ (con suma implícita sobre $j$):

$$ \left[(\vec{m}\cdot\nabla)\,\frac{\vec{r}}{r^3}\right]_i = m_j\,\frac{\partial}{\partial x_j}\left(\frac{x_i}{r^3}\right) = m_j\left(\frac{\delta_{ij}}{r^3} + x_i\,\frac{\partial r^{-3}}{\partial x_j}\right) $$

Como $\partial r^{-3}/\partial x_j = -3\,r^{-4}\,\dfrac{\partial r}{\partial x_j} = -\dfrac{3x_j}{r^5}$, resulta

$$ \left[(\vec{m}\cdot\nabla)\,\frac{\vec{r}}{r^3}\right]_i = \frac{m_i}{r^3} - \frac{3\,x_i\,(\vec{m}\cdot\vec{r})}{r^5} $$

En forma vectorial:

$$ (\vec{m}\cdot\nabla)\,\frac{\vec{r}}{r^3} = \frac{\vec{m}}{r^3} - \frac{3\,(\vec{m}\cdot\vec{r})\,\vec{r}}{r^5} $$

---

Sustituyendo en la expresión de $\vec{B}$:

$$ \vec{B} = -\frac{\mu_0}{4\pi}\left(\frac{\vec{m}}{r^3} - \frac{3\,(\vec{m}\cdot\vec{r})\,\vec{r}}{r^5}\right) = \frac{\mu_0}{4\pi}\,\frac{3\,(\vec{m}\cdot\vec{r})\,\vec{r} - r^2\,\vec{m}}{r^5} $$

Como $\hat{r} = \vec{r}/r$, se tiene $(\vec{m}\cdot\vec{r})\,\vec{r} = (\hat{r}\cdot\vec{m})\,\hat{r}\,r^2$, y por lo tanto

$$ \boxed{\vec{B}(\vec{r}) = \frac{\mu_0}{4\pi}\,\frac{3\,\hat{r}\left(\hat{r}\cdot\vec{m}\right) - \vec{m}}{r^3}}$$

