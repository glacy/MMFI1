**1. Autovalores y autovectores de $\mathcal{U}(t)$**

Por la propiedad funcional, para cualquier autovector $|E_n\rangle$ de $\mathcal{H}$ con autovalor $E_n$ se cumple

$$
\mathcal{U}(t)|E_n\rangle = e^{-\,\tfrac{i}{\hbar} \mathcal{H} t}|E_n\rangle = e^{-\,\tfrac{i}{\hbar} E_n t}\,|E_n\rangle.
$$

Aplicando a los dos autovectores dados:

- Para $|E_1\rangle$ (con $E_1=0$):

$$
\mathcal{U}(t)|E_1\rangle = e^{-\,\tfrac{i}{\hbar}0\cdot t}|E_1\rangle = 1\cdot |E_1\rangle.
$$

- Para $|E_2\rangle$ (con $E_2=\hbar\omega$):

$$
\mathcal{U}(t)|E_2\rangle = e^{-\,\tfrac{i}{\hbar}\hbar\omega t}|E_2\rangle
= e^{-i\omega t}\,|E_2\rangle.
$$

Por tanto los autovalores de $\mathcal{U}(t)$ son $1$ y $e^{-i\omega t}$, y $|E_1\rangle,|E_2\rangle$ son autovectores de $\mathcal{U}(t)$}.

---

**2. Cálculo de $\langle \mathcal{U}(t)\rangle$**

Primero actuamos $\mathcal{U}(t)$ sobre $|\psi\rangle$:

$$
\mathcal{U}(t)|\psi\rangle
= \frac{1}{\sqrt{5}}\big( 2\mathcal{U}(t)|E_1\rangle + \mathcal{U}(t)|E_2\rangle \big)
= \frac{1}{\sqrt{5}}\big( 2\cdot 1\cdot |E_1\rangle + e^{-i\omega t}|E_2\rangle \big).
$$

Ahora el valor esperado:

$$
\langle \mathcal{U}(t)\rangle
= \langle \psi|\mathcal{U}(t)|\psi\rangle
= \frac{1}{5}\big( 2\langle E_1| + \langle E_2| \big)\big( 2|E_1\rangle + e^{-i\omega t}|E_2\rangle \big).
$$

Los productos cruzados $\langle E_1|E_2\rangle$ y $\langle E_2|E_1\rangle$ son cero por ortogonalidad; quedan sólo los términos diagonales:

$$
\boxed{\langle \mathcal{U}(t)\rangle
= \frac{1}{5}\big( 4\cdot 1 + 1\cdot e^{-i\omega t} \big)
= \frac{4 + e^{-i\omega t}}{5}.}
$$







