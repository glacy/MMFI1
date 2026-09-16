# Aplicaciones integradoras

## Integrales reales por método de contornos

El primer regalo de la teoría: integrales reales que en el eje resisten todo intento de antiderivada caen en el plano complejo con sorprendente docilidad. Calcularemos la clásica

$$
I = \int_{-\infty}^{\infty} \frac{dx}{1+x^2}.
$$

La estrategia: cerrar el eje real con un semicírculo de radio $R$ en el semiplano superior, formando el contorno cerrado $C_R$ (segmento $[-R,R]$ más arco). Sobre ese contorno, integrar la función compleja $f(z) = \dfrac{1}{z^2+1}$:

1. **Singularidades**: $z = \pm i$. Solo $z = i$ está dentro de $C_R$. Escribiendo

$$
\frac{1}{z^2+1} = \frac{1}{(z-i)(z+i)} = \frac{1}{z+i}\cdot\frac{1}{z-i},
$$

la fórmula integral de Cauchy {eq}`eq-cif` con $g(z) = \frac{1}{z+i}$ da

$$
\oint_{C_R} \frac{dz}{z^2+1} = 2\pi i\, g(i) = 2\pi i\cdot\frac{1}{2i} = \pi.
$$

2. **El arco se desvanece**: sobre el arco, $\|1/(z^2+1)\| \le \frac{1}{R^2-1}$ y la longitud vale $\pi R$, así que por la estimación ML el aporte del arco es $\le \frac{\pi R}{R^2-1}\to 0$ cuando $R\to\infty$.

3. **Sobrevive el segmento**: en el límite, el segmento es exactamente la integral real buscada:

$$
\boxed{\;\int_{-\infty}^{\infty} \frac{dx}{1+x^2} = \pi\;}
$$