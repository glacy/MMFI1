````{attention} Relaciones útiles

Para un número complejo $z=a+ib$,  
     $$
     \sqrt{z} = \sqrt{\frac{|z|+a}{2}} + i\,\mathrm{sgn}(b)\sqrt{\frac{|z|-a}{2}},
     $$
     con $|z| = \sqrt{a^2+b^2}$. 
````


A partir de

$$
\varepsilon(\omega)=\varepsilon_\infty-\frac{\omega_p^2}{\omega(\omega+i\gamma)}
$$

multiplicando numerador y denominador por $\omega-i\gamma$:

$$
\frac{1}{\omega(\omega+i\gamma)}=\frac{\omega-i\gamma}{\omega(\omega^2+\gamma^2)},
$$

de donde 

$$
\varepsilon(\omega)=\varepsilon_\infty-\frac{\omega_p^2(\omega-i\gamma)}{\omega(\omega^2+\gamma^2)}.
$$

De esta expresión se obtiene directamente

$$\boxed{
\varepsilon'(\omega)=\varepsilon_\infty-\frac{\omega_p^2}{\omega^2+\gamma^2}, \qquad
\varepsilon''(\omega)=\frac{\omega_p^2\,\gamma}{\omega(\omega^2+\gamma^2)}}.
$$

---

Como $$\varepsilon=\varepsilon'+i\varepsilon''$$ y $$n=n'+ i n''=\sqrt{\varepsilon}$$

podemos escribir, a partir de la fórmula estándar para la raíz cuadrada de un número complejo que

$$
\boxed{n' = \sqrt{\frac{|\varepsilon| + \varepsilon'}{2}}, \qquad
n'' = \mathrm{sgn}(\varepsilon'')\sqrt{\frac{|\varepsilon| - \varepsilon'}{2}}}.
$$

donde 
y

$$
| \varepsilon | = \sqrt{(\varepsilon')^2 + (\varepsilon'')^2};
$$

---

Cómo

$$\Re\{\epsilon(\omega) \}=\varepsilon'(\omega)=\varepsilon_\infty-\frac{\omega_p^2}{\omega^2+\gamma^2}$$
y
$$\Im\{\epsilon(\omega)\}=\varepsilon''(\omega)=\frac{\omega_p^2\,\gamma}{\omega(\omega^2+\gamma^2)} $$
para los parámetros dados:
$$
\varepsilon'(\omega) \approx -20.772, \qquad
\varepsilon''(\omega) \approx 0.3629.
$$

---


$$
|\varepsilon|=\sqrt{(\varepsilon')^2+(\varepsilon'')^2}\approx 20.7749.
$$

$$
n'=\sqrt{\frac{|\varepsilon|+\varepsilon'}{2}}\approx 0.0398, \qquad
n''=\sqrt{\frac{|\varepsilon|-\varepsilon'}{2}}\approx 4.558.
$$


