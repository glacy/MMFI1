

### Ejercicio 1: Ortonormalización de Gram–Schmidt 
```{exercise}  
:label: ex1-s9  

 
Considera los siguientes vectores en $\mathbb{C}^2$:  
$$
v_1 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \quad 
v_2 = \begin{pmatrix} 1 \\ -1 \end{pmatrix}.
$$

1. Aplica el **algoritmo de Gram–Schmidt** para construir una base ortonormal $\{u_1, u_2\}$.  
2. Verifica que $\langle u_i | u_j \rangle = \delta_{ij}$ para $i,j=1,2$.  

```

### Ejercicio 2: Operadores de Proyección 

```{exercise}  
:label: ex2-s9  

Sea $u_1$ el primer vector ortonormal obtenido en el Ejercicio 1.  

1. Construye el operador de proyección $P_1 = |u_1\rangle \langle u_1|$.  
2. Aplica $P_1$ a un estado general $|\psi\rangle = \alpha |u_1\rangle + \beta |u_2\rangle$.  
3. Calcula la probabilidad de obtener el resultado asociado a $u_1$ al medir el estado $|\psi\rangle$.  

```

### Ejercicio 3: Descomposición de la Identidad  
```{exercise}  
:label: ex3-s9 
Usando la base ortonormal $\{u_1, u_2\}$:  

1. Escribe la **descomposición de la identidad** en esta base:  
$$
I = |u_1\rangle \langle u_1| + |u_2\rangle \langle u_2|.
$$
2. Verifica que $I |\psi\rangle = |\psi\rangle$ para un estado arbitrario $|\psi\rangle = \alpha |u_1\rangle + \beta |u_2\rangle$.  
3. Explica cómo esta descomposición permite expresar operadores lineales en términos de sus componentes sobre la base $\{u_1, u_2\}$.  

```

### Ejercicio 4: Interpretación Cuántica  
```{exercise}  
:label: ex4-s9 
Considera que los estados $|u_1\rangle$ y $|u_2\rangle$ representan los estados de un **qubit**.  

1. Explica el significado físico del operador de proyección $P_1$ en el contexto de la **medición cuántica**.  
2. Relaciona la descomposición de la identidad con la suma de todas las probabilidades posibles de medición.  
3. Discute cómo la ortonormalidad de la base garantiza la conservación de la probabilidad total.  

```

### Reto Avanzado  
```{exercise}  
:label: ex5-s9 

Si el operador observable $A$ tiene la forma:  
$$
A = \lambda_1 |u_1\rangle \langle u_1| + \lambda_2 |u_2\rangle \langle u_2|,
$$
donde $\lambda_1, \lambda_2 \in \mathbb{R}$,  

1. Calcula el **valor esperado** $\langle A \rangle$ para un estado $|\psi\rangle = \alpha |u_1\rangle + \beta |u_2\rangle$.  
2. Interpreta físicamente el resultado en términos de las probabilidades de medir $\lambda_1$ y $\lambda_2$.  
```
