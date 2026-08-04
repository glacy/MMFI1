:::{attention} Identidades útiles

El *conmutador* de dos operadores
$$[\mathcal{A},\mathcal{B}]=\mathcal{A}\mathcal{B}-\mathcal{B}\mathcal{A}.$$

:::

Los tres *operadores de spin de
Pauli* para un sistema de medio espín, cuyos espacio de estados está
expandido por los estados base $\{|+\rangle, |-\rangle \}$ están
definidos, en notación de Dirac, mediante 
```{math}
:label: eq-pauli
\begin{aligned}
    \hat{\sigma}_x=&|-\rangle \langle+|+|+\rangle \langle-| \\
    \hat{\sigma}_y=&i|-\rangle \langle+|-i|+\rangle \langle-| \\
    \hat{\sigma}_z=&|+\rangle \langle+|-|-\rangle \langle-|. 
\end{aligned}
```

Considere el estado del sistema está dado por  
   :::{math}
   |\psi\rangle = \cos\frac{\theta}{2}|+\rangle + e^{i\phi}\sin\frac{\theta}{2}|-\rangle.
   :::

---

Calcule, usando notación de Dirac, $\langle \psi | [\hat{\sigma}_y,\hat{\sigma}_x] $.