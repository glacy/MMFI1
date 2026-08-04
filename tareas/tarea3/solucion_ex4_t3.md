Dado el estado
:::{math}
|S\rangle = 2|+\rangle + (1+\sqrt{3}i)|-\rangle,
:::


para encontrar el estado unitario paralelo, necesitamos normalizar $|S\rangle$. Primero calculamos la norma:

:::{math}
\begin{aligned}
\langle S|S\rangle &= |2|^2 + |1+\sqrt{3}i|^2 \\
&= 4 + \left|1+\sqrt{3}i\right|^2 \\
&= 4 + \left(1^2 + (\sqrt{3})^2\right) \\
&= 4 + (1 + 3) = 8.
\end{aligned}
:::

Por lo tanto, la norma es
:::{math}
\|S\| = \sqrt{\langle S|S\rangle} = \sqrt{8} = 2\sqrt{2},
:::

de donde

:::{math}
|\hat{S}\rangle = \frac{|S\rangle}{\|S\|} = \frac{2}{2\sqrt{2}}|+\rangle + \frac{1+\sqrt{3}i}{2\sqrt{2}}|-\rangle,
:::

de manera que
:::{math}
\boxed{|\hat{S}\rangle = \frac{1}{\sqrt{2}}|+\rangle + \frac{1+\sqrt{3}i}{2\sqrt{2}}|-\rangle}
:::

---

La forma general de un qubit es:
:::{math}
|\hat{S}\rangle = \cos\left(\frac{\theta}{2}\right)|+\rangle + e^{i\phi}\sin\left(\frac{\theta}{2}\right)|-\rangle
:::

Comparando con nuestro estado normalizado:
:::{math}
\cos\left(\frac{\theta}{2}\right) = \frac{1}{\sqrt{2}}, \quad e^{i\phi}\sin\left(\frac{\theta}{2}\right) = \frac{1+\sqrt{3}i}{2\sqrt{2}}
:::

Resolviendo para $\theta$:
:::{math}
\cos\left(\frac{\theta}{2}\right) = \frac{1}{\sqrt{2}} \Rightarrow \frac{\theta}{2} = \frac{\pi}{4} \Rightarrow \boxed{\theta = \frac{\pi}{2}}
:::


Ahora resolvemos para $\phi$:
:::{math}
e^{i\phi} = \frac{\frac{1+\sqrt{3}i}{2\sqrt{2}}}{\sin\left(\frac{\theta}{2}\right)} = \frac{\frac{1+\sqrt{3}i}{2\sqrt{2}}}{\frac{1}{\sqrt{2}}} = \frac{1+\sqrt{3}i}{2}=\cos\phi+i\sin\phi;
:::



de donde el ángulo $\phi$ satisface
:::{math}
\cos\phi = \frac{1}{2}, \quad \sin\phi = \frac{\sqrt{3}}{2}
:::

Por lo tanto:
:::{math}
\boxed{\phi = \frac{\pi}{3}}
:::
