El valor esperado de $\mathcal{A}$ sobre el estado $|\psi\rangle$ es:

$$
\langle \mathcal{A} \rangle = \langle \psi | \mathcal{A} | \psi \rangle
= \langle \psi | (\lambda_+ |+\rangle\langle +| + \lambda_- |-\rangle\langle -|) | \psi \rangle.
$$

Usando la linealidad del producto interno y que $\langle +|\psi\rangle = \alpha=\langle \psi|+\rangle^* $, $\langle -|\psi\rangle = \beta = \langle \psi|-\rangle^*$, se obtiene:

$$
\langle \mathcal{A} \rangle
= \lambda_+ \langle \psi | + \rangle \langle + | \psi \rangle + \lambda_- \langle \psi | - \rangle \langle - | \psi \rangle
= \lambda_+ |\langle +|\psi\rangle|^2 + \lambda_- |\langle -|\psi\rangle|^2.
$$

Por lo tanto:

$$
\boxed{
\langle \mathcal{A} \rangle = \lambda_+ |\alpha|^2 + \lambda_- |\beta|^2
}
$$

(Si $|\psi\rangle$ está normalizado, se cumple que $|\alpha|^2 + |\beta|^2 = 1$).

---

- Las cantidades $p_+ = |\alpha|^2$ y $p_- = |\beta|^2$ son las **probabilidades** de obtener los resultados $\lambda_+$ y $\lambda_-$ al medir el observable $\mathcal{A}$ en el estado $|\psi\rangle$.

- El **valor esperado** representa la **media ponderada** de los posibles resultados de medición:

  $$
  \langle \mathcal{A} \rangle = \lambda_+ p_+ + \lambda_- p_-.
  $$

- Si la medición se repite muchas veces sobre sistemas idénticamente preparados en el estado $|\psi\rangle$, el promedio experimental de los resultados tenderá a $\langle \mathcal{A} \rangle$.

- Si al medir se obtiene el valor $\lambda_+$ (o $\lambda_-$), el estado colapsa al autovector correspondiente $|+\rangle$ (o $|-\rangle$), conforme al [postulado de proyección de von Neumann](https://es.wikipedia.org/wiki/Postulados_de_la_mec%C3%A1nica_cu%C3%A1ntica).

