
**(a) Contorno y estimación del arco.** Consideramos

$$
f(z) = \frac{z\,e^{ikz}}{z^2+b^2},
\qquad b > 0,\; k>0,
$$

cuya integral sobre el contorno cerrado $C_R$ (segmento $[-R,R]$ más semicírculo superior) coincide, sobre el segmento, con $\displaystyle\int_{-R}^{R} \frac{x\,e^{ikx}}{x^2+b^2}\,dx$.

El factor clave es el **lema de Jordan**: en el semiplano superior, $\Im z \ge 0$, de modo que

$$
|e^{ikz}| = e^{-k\,\Im z} \le 1,
$$

con decaimiento exponencial lejos del eje real. Sobre el arco $z = Re^{i\theta}$, $\theta\in[0,\pi]$, se tiene $\Im z = R\sin\theta$, y la estimación da

$$
\left|\int_{\text{arco}} f\,dz\right|
\le \frac{R}{R^2-b^2}\,R\int_0^\pi e^{-kR\sin\theta}\,d\theta
\le \frac{R^2}{R^2-b^2}\cdot\frac{\pi}{kR}
\;\xrightarrow[R\to\infty]{}\; 0,
$$

donde usamos el resultado clásico del lema de Jordan, $\displaystyle\int_0^\pi e^{-kR\sin\theta}\,d\theta \le \frac{\pi}{kR}$. Aunque $f$ decae solo como $1/R$, la exponencial $e^{ikz}$ "apaga" la contribución del arco en el semiplano superior. Por eso se cierra **arriba** para $k>0$ (cerrar abajo no funcionaría: allí $e^{ikz}$ crece).

```{note}
Justificación de la cota, en tres pasos. **(i) Simetría:** como $\sin(\pi-\theta) = \sin\theta$, $\displaystyle\int_0^\pi e^{-kR\sin\theta}\,d\theta = 2\int_0^{\pi/2} e^{-kR\sin\theta}\,d\theta$. **(ii) Desigualdad de Jordan:** $\sin\theta$ es cóncava en $[0,\pi/2]$, luego su gráfica queda sobre la cuerda que une $(0,0)$ con $(\pi/2,1)$: $\displaystyle\sin\theta \ge \frac{2\theta}{\pi}$. **(iii)** Como $e^{-x}$ decrece, $e^{-kR\sin\theta} \le e^{-2kR\theta/\pi}$, y

$$
2\int_0^{\pi/2} e^{-\frac{2kR}{\pi}\theta}\,d\theta
= \frac{\pi}{kR}\left(1 - e^{-kR}\right)
\;\le\; \frac{\pi}{kR}. \qquad\blacksquare
$$
```

---

**(b) Residuo e integral de contorno.** Polos de $f$: $z = \pm ib$ (simples). En el semiplano superior solo está $z = ib$, con residuo

$$
\operatorname{Res}_{z=ib} f = \lim_{z\to ib} (z-ib)\,\frac{z\,e^{ikz}}{(z-ib)(z+ib)}
= \frac{ib\; e^{ik(ib)}}{2ib} = \frac{e^{-kb}}{2},
$$

por lo que el teorema del residuo da

$$
\oint_{C_R} f\,dz = 2\pi i\cdot\frac{e^{-kb}}{2} = \pi i\,e^{-kb}.
$$

---

**(c) Parte imaginaria y paridad.** Como el arco no aporta, en el límite $R\to\infty$:

$$
\int_{-\infty}^{\infty} \frac{x\,e^{ikx}}{x^2+b^2}\,dx = \int_{-\infty}^{\infty} \frac{x\cos(kx)}{x^2+b^2}\,dx + i\int_{-\infty}^{\infty} \frac{x\sin(kx)}{x^2+b^2}\,dx = \pi i\,e^{-kb}.
$$

Igualando partes reales e imaginarias:

- **Parte real**: $\displaystyle\int_{-\infty}^{\infty} \frac{x\cos(kx)}{x^2+b^2}\,dx = 0$ — coherente con la paridad: $x$ es impar y $\cos(kx)$ par, luego el producto es impar y la integral simétrica se anula.
- **Parte imaginaria**:

$$
\boxed{\;J(k) = \int_{-\infty}^{\infty} \frac{x\,\sin(kx)}{x^2+b^2}\,dx = \pi\,e^{-kb}, \qquad k>0\;}
$$

Para $k<0$: el integrando de $J$ es **par** en $k$ (pues $\sin(kx)$ y $k$ cambian de signo juntos), así que $J(-k) = J(k) = \pi e^{-b|k|}$. Consistentemente, para $k<0$ la exponencial $e^{ikz}$ decae en el semiplano **inferior**, el contorno se cierra abajo (sentido horario, signo invertido) y el polo $z=-ib$ da el mismo módulo.

