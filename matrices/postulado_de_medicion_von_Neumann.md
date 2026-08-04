### El postulado de la medición de von Neumann

En la mecánica cuántica, si una cierta cantidad observable $Q$ toma
valores $q_1, q_2, q_2, \ldots$, entonces este observabe es
representable como un operador Hermítico $\mathcal{Q}$ tal que

1.  los valores propios de $\mathcal{Q}$ son todos los posibles valores
    $q_1, q_2, q_2, \ldots$,

2.  si una medida de $Q$ resulta en $q_n$, el sistema estará el
    eigen-estado $|q_n\rangle$, donde
    $$\mathcal{Q}|q_n\rangle=q_n|q_n\rangle$$

3.  los eigen-estados $|q_1\rangle$, $|q_2\rangle$, $\ldots$ forman una
    base ortonormal completa; por lo que cualquier otro estado del
    sistema puede escribirse
    $$|\psi\rangle=|q_1\rangle\langle q_1|\psi \rangle + |q_2\rangle\langle q_2|\psi \rangle +\cdots$$

4.  si el sistema se encuentra en el estado $|\psi \rangle$, la
    probabilidad de obtener el resultado $q_n$ luego de medir $Q$ está
    dada por $$|\langle q_n |\psi\rangle|^2$$

El **postulado de proyección de von Neumann** establece que

5.  Si al medir $Q$ para un sistema en el estado $|\psi\rangle$ la
    medición resulta en el valor $q_n$, entonces el estado del sistema
    inmediatamente después de la medición es $|q_n\rangle.$

En términos del proyector $\hat{P}_n = |q_n\rangle \langle q_n | $ el estado del sistema después
de la medición que dio como resultado $q_n$ está dado por
$$\frac{\hat{P}_n|\psi\rangle}{\sqrt{\langle \psi | \hat{P}_n | \psi\rangle}}= \frac{\hat{P}_n|\psi\rangle}{\sqrt{|\langle q_n | \psi \rangle}|^2},$$
donde el término en el denominador garantiza que el estado después de la
medición esté normalizado.

En su formulación, von Neumann propuso que, cuando se mide una
observable representada por un operador $\mathcal{A}$, el sistema
cuántico "colapsa" a uno de los autovectores del operador
correspondiente, y el resultado de la medición es el autovalor asociado
con ese autovector. Esta idea se conoce como el **colapso de la función
de onda**, y es un aspecto central en la discusión del **problema de la
medición en mecánica cuántica**. El **teorema de von Neumann** formalizó
el proceso de medición en términos matemáticos. De acuerdo con este
teorema, el proceso de medición altera el estado cuántico de un sistema,
proyectándolo en un subespacio correspondiente al valor medido.



:::{seealso} Referencias

@cresser [11.2 Representations of State Vectors and Operators, 174-184]

@boas2006mathematical [Cap. 2, Sección 11 "EIGENVALUES AND EIGENVECTORS" pag. 148-149]

@riley2006mathematical [Cap. 8.13 "Eigenvectors and eigenvalues"; , pág. 272-282]

:::

