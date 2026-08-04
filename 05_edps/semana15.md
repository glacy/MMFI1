# Ecuaciones diferenciales parciales  


Las **ecuaciones diferenciales parciales (EDPs) de segundo orden** son
una clase fundamental de ecuaciones que describen muchos fenómenos
físicos en la naturaleza que involucran difusión, equilibrio o
propagación. Por lo tanto, gobiernan procesos tan diversos como la
propagación de ondas, la difusión de calor y la mecánica cuántica, entre
otros. Su resolución, ya sea por métodos analíticos o numéricos, permite
obtener soluciones que describen cómo evolucionan los sistemas dinámicos
o estacionarios bajo diferentes condiciones.

Estas ecuaciones involucran derivadas parciales de segundo orden de una
función desconocida respecto a dos o más variables independientes, como
el tiempo y el espacio.

En su forma más general y sencilla (dos variables independientes), una
EDP de segundo orden tiene la forma $$\label{eq:2edp}
    A\frac{\partial^2 u}{\partial x^2}+B\frac{\partial^2 u}{\partial x \partial y}+C\frac{\partial^2 u}{\partial y^2}+D\frac{\partial u}{\partial x}+E\frac{\partial u}{\partial y}+Fu=R,$$

donde $A,B,\ldots,F$ y $R$ son funciones de $x$ y $y$.

Las ecuaciones diferenciales parciales (EDPs) de segundo orden se
clasifican según la naturaleza de sus coeficientes y las características
de sus soluciones en tres tipos principales: elípticas, parabólicas e
hiperbólicas. Cada una describe diferentes tipos de fenómenos físicos y
requiere métodos específicos para su resolución.

La ecuación [\[eq:2edp\]](#eq:2edp){reference-type="eqref"
reference="eq:2edp"} se dice *hiperbólica* si $B^2>4AC$, *parabólica* si
$B^2=4AC$ y *elíptica* si $B^2<4AC$. Como $A$, $B$ y $C$, en general,
son funciones de $x$ y $y$, la ecuación
[\[eq:2edp\]](#eq:2edp){reference-type="eqref" reference="eq:2edp"}
puede ser de distinto tipo en diferentes partes del plano $xy$.

Ya que [\[eq:2edp\]](#eq:2edp){reference-type="eqref"
reference="eq:2edp"} es demasiado general, analicemos el caso donde
$A,B,\ldots,F$ son constantes y $R=0$; y donde todas las derivadas
parciales sean del mismo orden, de manera que
[\[eq:2edp\]](#eq:2edp){reference-type="eqref" reference="eq:2edp"} toma
la forma $$\label{eq:2edpc}
    A\frac{\partial^2 u}{\partial x^2}+B\frac{\partial^2 u}{\partial x \partial y}+C\frac{\partial^2 u}{\partial y^2}=0,$$

donde $A$, $B$ y $C$ son constantes.

Similar al caso de EDPs de primer orden, podemos asumir que
$u(x,y)=f(p)$, donde $p=p(x,y)=ax+by$. Si la solución es independiente
de la forma de $f$, debe satisfacerse que $$\label{eq:solc}
Aa^2+Bab+C^2b=0.$$

Esta ecuación cuadrática tiene por soluciones
$$b/a=[-B\pm(B^2-4AC)^{1/2}]/2C.$$

Si denotamos a $\lambda_1$ y $\lambda_2$ a estas raíces de
[\[eq:solc\]](#eq:solc){reference-type="eqref" reference="eq:solc"}, la
solución general de [\[eq:2edpc\]](#eq:2edpc){reference-type="eqref"
reference="eq:2edpc"} está dada por
$$u(x,y)=f(x+\lambda_1y)+g(x+\lambda_2y),$$ donde $f$ y $g$ son
funciones arbitrarias.

En términos generales, las ecuaciones hiperbólicas y elípticas de la
forma [\[eq:2edpc\]](#eq:2edpc){reference-type="eqref"
reference="eq:2edpc"} con $A$, $B$ y $C$ reales, tienen por solución
funciones cuyos argumentos tienen la forma $x+\alpha y$ y $x+i\beta y$,
respectivamente; donde $\alpha$ y $\beta$ son también reales.

### EDPs hiperbólicas

Las ecuaciones hiperbólicas describen propagación de ondas y otros
fenómenos que involucran señales que se mueven con una velocidad finita,
como las ondas sonoras o electromagnéticas. Un ejemplo importante es la
ecuación de onda, que describe cómo las ondas se propagan en un medio
$$\frac{\partial^2 u}{\partial t^2} = c \nabla^2 u.$$

:::{note} Ecuación de onda unidimensional

Considere
$$\frac{\partial^2 u}{\partial x^2}-\frac{1}{c^2}\frac{\partial^2 u}{\partial t^2}=0.$$
Esta ecuación es [\[eq:2edpc\]](#eq:2edpc){reference-type="eqref"
reference="eq:2edpc"} con $A=1$, $B=0$ y $C=-1/c^2$, por lo que los
valores $\lambda_1$ y $\lambda_2$ son las soluciones de
$$1-\frac{\lambda^2}{c^2}=0 \quad \Rightarrow \quad \lambda_{1,2}=\pm c.$$
Por lo tanto, la solución general de la ecuación de onda unidimensional
está dada en términos de dos funciones arbitrarias $f$ y $g$:
$$u(x,t)=f(x-ct)+g(x+ct).$$

El caso particular en que $f(p)=g(p)=A\cos(kp+\epsilon)$ permite
describir una *onda estacionaria*. Para este caso 
```{math}
\begin{aligned}
u(x,t)=&A[\cos(kx-kct+\epsilon) +\cos(kx+kct+\epsilon)]\\
=&2A\cos(kct)\cos(kx+\epsilon).
\end{aligned}
```

Los valores para los que $\cos(kx+\epsilon)=0$ define
los *nodos*.
:::

### EDPs elípticas

Las ecuaciones elípticas suelen describir fenómenos estacionarios o en
equilibrio. La ecuación de Laplace $$\nabla^2 \phi =0,$$ es un ejemplo
clave que describe campos escalares en situaciones sin evolución
temporal, como el campo eléctrico en regiones sin cargas o el flujo de
calor en estado estacionario. También incluyen la ecuación de Poisson
$$\nabla^2 \phi =-\rho,$$ que describe fenómenos como la distribución
del potencial en presencia de fuentes (por ejemplo, densidades de carga
o masa).

:::{note} Ecuación de Laplace

Considere
$$\frac{\partial^2 u}{\partial x^2}+\frac{\partial^2 u}{\partial y^2}=0.$$
Esta ecuación es [\[eq:2edpc\]](#eq:2edpc){reference-type="eqref"
reference="eq:2edpc"} con $A=C=1$ y $B=0$, por lo que los valores
$\lambda_1$ y $\lambda_2$ son las soluciones de
$$1+\lambda^2=0 \quad \Rightarrow \quad \lambda_{1,2}=\pm i$$ Por lo
tanto, la solución general de la ecuación de Laplace está dada en
términos de dos funciones arbitrarias $f$ y $g$:
$$u(x,y)=f(x-iy)+g(x+iy).$$
:::

### EDPs parabólicas

Las ecuaciones parabólicas describen fenómenos de difusión temporal,
donde una cantidad, como calor, se propaga lentamente en el espacio a
medida que el tiempo avanza. La ecuación de calor es el ejemplo más
representativo. Describe cómo la temperatura cambia con el tiempo debido
a la conducción térmica.
$$\frac{\partial u}{\partial t} = \alpha \nabla^2 u.$$

En el caso de funciones parabólicas $(B^2=4AC)$, se tiene que
$\lambda_1=\lambda_2$, por lo que solo una combinación de $x$ y $y$
resulta viable: $$u(x,y)=f(x-(B/2C)y).$$ Para encontrar la segunda parte
de la solución general considere una solución de la forma
$$u(x,y)=h(x,y)g(x-(B/2C)y),$$ lo que conlleva que
$$A\frac{\partial^2 h}{\partial x^2}+B\frac{\partial^2 h}{\partial x \partial y}+C\frac{\partial^2 h}{\partial y^2}=0;$$
es decir, $h(x,y)$ deber ser *alguna* solución de la ecuación original.
Sin pérdida de generalidad, podemos tomar $h(x,y)=x$, de manera que la
solución general de la ecuación parabólica está dada por
$$u(x,y)=f(x-(B/2C)y)+xg(x-(B/2C)y),$$ donde $f$ y $g$ son funciones
arbitrarias.

:::{note} EDP parabólica sujeta a condiciones de contorno

Considere
$$\frac{\partial^2 u}{\partial x^2}+2\frac{\partial^2 u}{\partial x \partial y}+\frac{\partial^2 u}{\partial y^2}=0.$$
sujeta a las condiciones $u(0,y)=0$ y $u(x,1)=x^2.$\
Para este caso, se forma la *ecuación auxiliar*
$$1+2\lambda+\lambda^2=0,$$ es decir, $\lambda=-1$ y la ecuación es
parabólica.
La solución general estará dada por

$$u(x,y)=f(x-y)+xg(x-y).$$ La condición $u(0,y)=0$ implica que $f(p)=0$,
mientras que la condición $u(x,1)=x^2$ implica que $xg(x-1)=x^2$, de
donde $g(p)=p+1$. Por lo tanto, la solución particular está dada por
$$u(x,y)=x(x-y+1)=x^2-xy-x$$
:::

## Separación de variables 

Algunas EDPs admiten soluciones de la forma $$\label{eq:sep}
    u(x,y,z,t)=X(x)Y(y)Z(z)T(t),$$ donde $X,Y,Z$ y $T$ son funciones de
$x,y,z$ y $t$; respectivamente. En esta circunstancia, $u$ se dice
*separable* y al método para encontrar dicha solución se le llama
*separación de variables*. Este método se caracteriza por convertir una
EDP varias EDOs.

:::{note} Separación de variables

Considere la ecuación
$$\nabla^2u(\mathbf{r})=\frac{1}{c^2}\frac{\partial^2 u(\mathbf{r})}{\partial t^2}.$$
En coordenadas cartesianas, esta ecuación toma la forma
$$\frac{\partial^2 u}{\partial x^2}+\frac{\partial^2 u}{\partial y^2}+\frac{\partial^2 u}{\partial z^2}=\frac{1}{c^2}\frac{\partial^2 u}{\partial t^2}.$$
Si se sustituye [\[eq:sep\]](#eq:sep){reference-type="eqref"
reference="eq:sep"}, se obtiene
$$\frac{X^{\prime \prime}}{X} +\frac{Y^{\prime \prime}}{Y}+\frac{Z^{\prime \prime}}{Z}=\frac{1}{c^2}\frac{T^{\prime \prime}}{T},$$
en donde los primas hacen referencia a derivadas *ordinarias* respecto a
la variable de la que depende cada función. Debe cumplirse, por lo tanto
que cada término en la ecuación anterior tiene que ser *una constante*:
$$\frac{X^{\prime \prime}}{X}=-l^2, \quad \frac{Y^{\prime \prime}}{Y}=-m^2, \quad \frac{Z^{\prime \prime}}{Z}=-n^2, \quad \frac{1}{c^2}\frac{T^{\prime \prime}}{T}=-\mu^2;$$
de manera que 
```{math}
\begin{aligned}
    X(x)=&A\exp{(ilx)}+B\exp{(-ilx)},\\
    Y(y)=&C\exp{(imy)}+D\exp{(-imy)},\\
    Z(z)=&E\exp{(inz)}+F\exp{(-inz)},\\
    T(t)=&G\exp{(ic\mu t)}+H\exp{(-ic\mu t)},
\end{aligned}
```

 donde $A,B,\ldots,H$ son constantes a determinar una vez
que se le impongan condiciones de frontera a la solución.
:::

En el ejemplo anterior, a las cantidades $n,m,l,\mu$ se les denominan
**constantes de separación**.

### Superposición de soluciones separadas

En términos generales, si la EDP (separable) es lineal, se pueden
construir soluciones a esta por medio de *superponer* soluciones
correspondientes a distintos valores de las constantes de separación.
Por ejemplo, en el caso de dos variables independientes, si
$$u_{\lambda_k}=X_{\lambda_k}(x)Y_{\lambda_k}(y)$$ es solución a la EDP
lineal, obtenida para el valor de la constante de separación
$\lambda_k$, entonces
$$u(x,y)= \sum_i a_i X_{\lambda_i}(x)Y_{\lambda_i}(y)$$ también es
solución para cualesquiera constantes $a_i$; siempre que $\lambda_i$
sean valores permitidos de la constante de separación $\lambda$, dadas
las condiciones de frontera.

:::{note} Ecuación de Laplace en coordenadas polares

Consideremos la *ecuación de Laplace* en coordenadas polares:
$$\nabla^2 u(\mathbf{r})=0.$$

Si $u$ tiene simetría polar $$u(r,\theta)=R(r)\Theta (\theta),$$ la
ecuación de Laplace toma la forma
$$\frac{\Theta}{r}\frac{\partial}{\partial r}\left(r \frac{\partial R}{\partial r}\right)+\frac{P}{r^2}\frac{\partial^2 \Theta}{\partial \theta^2}=0,$$
que puede ser reescrita como
$$\frac{r}{R}\frac{\partial}{\partial r}\left(r \frac{\partial R}{\partial r}\right)+\frac{1}{\Theta}\frac{\partial^2 \Theta}{\partial \theta^2}=0;$$
de donde 
```{math}
\begin{aligned}
    \frac{r}{R}\frac{d}{d r}\left(r \frac{d R}{d r}\right)=&n^2,\\
    \frac{1}{\Theta}\frac{d^2 \Theta}{d \theta^2}=&-n^2.
\end{aligned}
```
Si $n\neq 0$, la función angular tiene por solución
general $$\Theta(\theta)=A\cos(n\theta)+B\sin(n\theta);$$ mientras que
la parte radial equivale a $$r^2R^{\prime \prime}+rR^\prime-n^2R=0;$$ la
cual tiene por solución $$R(r)=Cr^n+Dr^{-n}.$$

En el caso $n=0$ 
```{math}
\begin{aligned}
    \Theta(\theta)=&A\phi+B,\\
    R(r)=&C\ln(r)+D.
\end{aligned}
```
Para que $u=R\Theta$ sea uni-valuada, se requiere que
$A=0$, por lo que para $n=0$: $$u(r,\theta)=C\ln(r)+D.$$ Por lo tanto,
la solución general de la ecuación de Laplace en el plano polar es
$$u(r,\theta)=(C_0\ln r+D_0)+\sum_{n=1}(A_n\cos n\theta+B_n\sin n\theta)(C_nr^n+D_nr^{-n}).$$
:::

### Integrales particulares de una EDP

Consideremos ahora el caso en que $R(x,y)\neq0$ en la ecuación
[\[eq:2edpc\]](#eq:2edpc){reference-type="eqref" reference="eq:2edpc"}.

Similar al caso de las EDOs, una solución a la ecuación
$$A\frac{\partial^2 u}{\partial x^2}+B\frac{\partial^2 u}{\partial x \partial y}+C\frac{\partial^2 u}{\partial y^2}=R(x,y)$$
se puede encontrar a partir de la solución general de la EDP homogénea y
de cualquier *integral particular* de $R(x,y)$ que satisfaga la EDP.

:::{note} Integral particular
Considere
$$\frac{\partial^2 u}{\partial x^2}+\frac{\partial^2 u}{\partial y^2}=6(x+y).$$
Ya vimos que la solución general de la EDP homogénea es
$$u(x,y)=f(x+iy)+g(x-iy);$$ mientras que (por inspección)
$$R(x,y)=x^3+y^3$$ es solución de
$$\frac{\partial^2 R}{\partial x^2}+\frac{\partial^2 R}{\partial y^2}=R$$
Por lo que la solución general está dada por
$$u(x,y)=f(x+iy)+g(x-iy)+x^3+y^3$$
:::




