## Métodos numéricos para resolver EDPs 


Los **métodos numéricos** son técnicas esenciales para resolver
ecuaciones diferenciales parciales (EDPs) cuando las soluciones
analíticas no son posibles o son demasiado complicadas de obtener debido
a geometrías complejas, condiciones de frontera no triviales, o cuando
los sistemas físicos que describen las EDPs no permiten soluciones
exactas. Los métodos numéricos más importantes para resolver EDPs son el
**método de diferencias finitas**, el **método de elementos finitos** y
el **método de volúmenes finitos**.

### Método de diferencias finitas (FDM - finite difference method)

El método de diferencias finitas se basa en la discretización del
dominio continuo en una malla o rejilla de puntos. Luego, las derivadas
parciales de la EDP se reemplazan por **aproximaciones de diferencias
finitas** que se calculan usando los valores de la función en los puntos
de la malla. Esto convierte la EDP en un sistema de ecuaciones
algebraicas que se puede resolver numéricamente, utilizando métodos como
eliminación gaussiana o métodos iterativos (Jacobi, Gauss-Seidel, etc.)

##### Aproximación de las derivadas

Para una función $u(x,t)$, la derivada parcial primera con respecto a
$x$ en un punto $x_i$ se puede aproximar utilizando diferencias finitas.
Por ejemplo, la derivada hacia adelante se escribe como
$$\frac{\partial u}{\partial x} \approx \frac{u(x_{i+1}, t) - u(x_i, t)}{\Delta x},$$
y la derivada segunda con respecto a $x$ (como aparece en la ecuación de
calor o la ecuación de onda) se aproxima como
$$\frac{\partial^2 u}{\partial x^2} \approx \frac{u(x_{i+1}, t) - 2u(x_i, t) + u(x_{i-1}, t)}{\Delta x^2}.$$

<figure id="fig:fdm">
<table>
<tbody>
<tr>
<td style="text-align: center;"><img
src="planeamiento_didactico/figuras/mug_mesh.png" style="width:50.0%"
alt="image" /></td>
<td style="text-align: center;"><img
src="planeamiento_didactico/figuras/ex01_results.png"
alt="image" /></td>
</tr>
</tbody>
</table>
<figcaption>steady-state diffusion equation on the 3D domain <span
class="math inline"><em>Ω</em></span>: find <span
class="math inline"><em>u</em></span> such that <span
class="math inline">−∇ ⋅ ∇<em>u</em> = 0,  ∈ <em>Ω</em></span>, <span
class="math inline"><em>u</em> = 1</span> on the bottom, <span
class="math inline"><em>u</em> = 1</span> on the top and with <span
class="math inline">∇<em>u</em> ⋅ <em>n̂</em> = 0</span> on the remaining
boundaries. <a
href="https://mooseframework.inl.gov/">@moose</a></figcaption>
</figure>

**Ventajas**:

-   Fácil de implementar para geometrías simples.

-   Requiere menos memoria computacional que otros métodos para
    problemas en dominios simples.

**Desventajas**:

-   Puede ser ineficaz para geometrías complejas o dominios irregulares.

-   La estabilidad del método depende de la elección adecuada de
    $\Delta x$ y $\Delta t$ (criterios de estabilidad como el *criterio
    de estabilidad de Courant*).

### Método de elementos finitos (FEM - finite element method)

El método de elementos finitos es una técnica más sofisticada y flexible
que el método de diferencias finitas, especialmente adecuada para
resolver problemas en geometrías complejas o con condiciones de frontera
complicadas. Se basa en dividir el dominio en pequeños subdominios
llamados **elementos finitos** (triángulos, cuadrados o tetraedros en 2D
y 3D) y aproximar la solución mediante funciones de interpolación en
cada elemento. Este método convierte la EDP en su *forma débil* (o
variacional) y la solución se aproxima como una combinación lineal de
funciones base sobre los elementos.

![A pipe connection geometry using Ansys Mechanical's hybrid meshing
capabilities
[\@Ansys](https://www.ansys.com/blog/fundamentals-of-fea-meshing-for-structural-analysis)](planeamiento_didactico/figuras/fea_mesh.jpg){#fig:fem
width="50%"}

**Ventajas**:

-   Muy eficaz para resolver problemas en dominios complejos o con
    geometrías irregulares.

-   Maneja bien condiciones de frontera complicadas.

**Desventajas**:

-   La implementación es más compleja que el método de diferencias
    finitas.

-   Requiere más memoria computacional y tiempo de cálculo.

### Método de volúmenes finitos (FVM - finite volume method)

El método de volúmenes finitos se utiliza principalmente en la *dinámica
de fluidos computacional (CFD)* y en problemas donde se desea conservar
cantidades físicas como masa, energía o momento. Divide el dominio en
volúmenes de control y aplica la ley de conservación dentro de cada uno
de esos volúmenes; de manera que las derivadas espaciales se transforman
en flujos entre los volúmenes vecinos.

![Flow around car (coloured by pressure), with cutting plane (coloured
by flow speed) and streamlines.
[\@openfoam](https://cfd.direct/openfoam/computational-fluid-dynamics/)](planeamiento_didactico/figuras/cfd_fvm.png){#fig:fvm
width="100%"}

**Ventajas**:

-   Asegura la conservación de propiedades físicas.

**Desventajas**:

-   Menos eficiente en problemas no conservativos.

En conclusión, los métodos numéricos son fundamentales para resolver
ecuaciones diferenciales parciales (EDPs) en dominios y geometrías que
no permiten soluciones exactas. El método de diferencias finitas es una
opción adecuada para problemas simples, mientras que el método de
elementos finitos es más flexible y potente para dominios complejos. El
método de volúmenes finitos es esencial cuando la conservación de
cantidades físicas es una prioridad, como en dinámica de fluidos.

  **Método**                **Ventajas**                                          **Desventajas**                                 **Aplicación**
  ------------------------- ----------------------------------------------------- ----------------------------------------------- -------------------------------------------
  **Diferencias Finitas**   Fácil de implementar en geometrías simples            Difícil de usar en geometrías complicadas       Ecuaciones de calor, onda, problemas 1D
  **Elementos Finitos**     Eficaz en geometrías complejas y condiciones mixtas   Más complejo de implementar                     Ecuación de Poisson, elasticidad, fluidos
  **Volúmenes Finitos**     Conservación de cantidades físicas                    Menos eficiente en problemas no conservativos   Dinámica de fluidos computacional (CFD)

  : Comparación de métodos numéricos para resolver EDPs.
