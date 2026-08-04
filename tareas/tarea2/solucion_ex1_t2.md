
Partimos de la amplitud reflejada en incidencia normal

$$
r(\omega)=\frac{n(\omega)-1}{n(\omega)+1}
=\frac{(n'-1)+i n''}{(n'+1)+i n''};
$$

multiplicamos numerador y denominador por el conjugado del denominador para separar parte real e imaginaria:

:::{math}
\begin{align*}
r=&\frac{(n'-1)+i n''}{(n'+1)+i n''}\cdot\frac{(n'+1)-i n''}{(n'+1)-i n''}\\
=&\frac{(n'-1)(n'+1)+n''^2 + i\big[n''(n'+1)-n''(n'-1)\big]}
{(n'+1)^2 + n''^2}.
\end{align*}
:::

Simplificando los términos,

- Parte real del numerador:
  $$
  (n'-1)(n'+1)+n''^2 = n'^2 -1 + n''^2.
  $$
- Parte imaginaria del numerador:
  $$
  n''(n'+1)-n''(n'-1) = 2 n''.
  $$

Por tanto

$$
\boxed{\,r(\omega)=\frac{n'^2 + n''^2 -1}{(n'+1)^2 + n''^2}
\;+\; i\;\frac{2 n''}{(n'+1)^2 + n''^2}}
$$

Por lo tanto

:::{math}
\begin{align*}
\Re \{r(\omega)\}=&\frac{n'^2 + n''^2 -1}{(n'+1)^2 + n''^2}, \\
\Im \{r(\omega)\} =& \frac{2 n''}{(n'+1)^2 + n''^2}.
\end{align*}
:::


---

Dado que la reflectancia, $R(\omega)$, es el módulo al cuadrado de $r(\omega)$, partimos de la definición


$$
r=\frac{(n'-1)+i n''}{(n'+1)+i n''}
\quad\Longrightarrow\quad
|r|^2=\frac{(n'-1)^2 + n''^2}{(n'+1)^2 + n''^2}.
$$

Por tanto,

$$
\boxed{\,R(\omega)=\frac{(n'-1)^2 + n''^2}{(n'+1)^2 + n''^2}}
$$

````{attention} Relación útil

Para un número complejo $z=\displaystyle \frac{z_1}{z_2}$,  
     $$
     |z| = \frac{|z_1|}{|z_2|}
     $$ 
````