# Ecuaciones diferenciales parciales  

## Ecuación de Laplace 

La ecuación de Laplace $$\nabla^2 u=0$$

aparece en sistemas en equilibrio o procesos estacionarios. Por ejemplo,
permite describir el potencial electrostático en regiones donde no hay
cargas eléctricas. En la transferencia de calor, la ecuación de Laplace
describe el flujo de calor estacionario en un medio sin fuentes de calor
o generación interna de energía. En el estudio de los fluidos
incompresibles, la ecuación de Laplace aparece al describir el potencial
de velocidad de un fluido que fluye sin vorticidad (flujo irrotacional)\
En coordenadas cilíndricas ($r, \theta, z$):
$$\frac{1}{r} \frac{\partial}{\partial r} \left( r \frac{\partial u}{\partial r} \right) + \frac{1}{r^2} \frac{\partial^2 u}{\partial \theta^2} + \frac{\partial^2 u}{\partial z^2}  = 0$$

En coordenadas esféricas ($r, \theta, \phi$):
$$\frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 \frac{\partial u}{\partial r} \right) + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial u}{\partial \theta} \right) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 u}{\partial \phi^2}  = 0$$

:::{note}
Ecuación de Laplace en coordenadas cilíndricas
$$u(\rho,\phi,z)=R(\rho)\Phi(\phi)Z(z),$$ donde $$\begin{aligned}
    R(\rho)=&AJ_m(k\rho)+BY_m(k\rho),\\
    \Phi(\phi)=&C\cos m\phi+D\sin m\phi,\\
    Z(z)=&Ee^{-kz}+Fe^{kz};
\end{aligned}$$ donde $J_m(x)$ y $Y_m(x)$ son las *funciones de Bessel
de primer y segunda especie*, respectivamente (ver Figuras
[1.1](#fig:Jn){reference-type="ref" reference="fig:Jn"} y
[1.2](#fig:Yn){reference-type="ref" reference="fig:Yn"}).

:::

:::{note}
Ecuación de Laplace en coordenadas esféricas
$$u(r,\theta,\phi)=R(\rho)\Phi(\phi)\Theta(\theta),$$ donde
$$\begin{aligned}
    R(r)=&Ar^l+Br^{-(l+1)},\\
    \Phi(\phi)=&C\cos m\phi+D\sin m\phi,\\
    \Theta(\theta)=&EP_l^m(\cos \theta)+FQ^m_l (\cos \theta);
\end{aligned}$$ donde $P_l^m$ y $Q^m_l$ son los *polinomios asociados de
Legendre de primera y segunda especie*, respectivamente.
:::

## Ecuación de Helmholtz 

La ecuación de Helmholtz

$$\nabla^2 u+k^2u=0.$$

modela la propagación de ondas sonoras en medios homogéneos, describe la
propagación de ondas electromagnéticas en medios homogéneos y
condiciones estacionarias. También es utilizada en la teoría de
difracción y dispersión de ondas luminosas. Describe las oscilaciones en
sistemas con propiedades elásticas, como membranas o placas.

$$\frac{1}{r} \frac{\partial}{\partial r} \left( r \frac{\partial u}{\partial r} \right) + \frac{1}{r^2} \frac{\partial^2 u}{\partial \theta^2} + \frac{\partial^2 u}{\partial z^2} + k^2 u = 0$$

En coordenadas esféricas ($r, \theta, \phi$):
$$\frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 \frac{\partial u}{\partial r} \right) + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial u}{\partial \theta} \right) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 u}{\partial \phi^2} + k^2 u = 0$$

:::{note}
Ecuación de Helmholtz en coordenadas polares
$$u(\rho,\theta)=R(\rho)\Phi(\phi),$$ se obtiene $$\begin{aligned}
    \Phi(\phi)=&A\cos m\phi +B\sin m\phi,\\
    R(\rho)=&CJ_m(k\rho)+DY_m(k\rho)
\end{aligned}$$ donde $J_m(x)$ y $Y_m(x)$ son las *funciones de Bessel
de primer y segunda especie*, respectivamente (ver Figuras
[1.1](#fig:Jn){reference-type="ref" reference="fig:Jn"} y
[1.2](#fig:Yn){reference-type="ref" reference="fig:Yn"}).

:::

## Ecuación de Poisson 

La ecuación de Poisson $$\nabla^2 u=-\rho,$$

donde $u$ es la función desconocida (como el potencial), $\rho$ es una
función que describe la distribución de fuentes (como la densidad de
carga o masa).

En coordenadas cilíndricas ($r, \theta, z$):
$$\frac{1}{r} \frac{\partial}{\partial r} \left( r \frac{\partial u}{\partial r} \right) + \frac{1}{r^2} \frac{\partial^2 u}{\partial \theta^2} + \frac{\partial^2 u}{\partial z^2} + \rho = 0$$

En coordenadas esféricas ($r, \theta, \phi$):
$$\frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 \frac{\partial u}{\partial r} \right) + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial u}{\partial \theta} \right) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 u}{\partial \phi^2} + \rho = 0$$

:::{note}
Ecuación de Poisson en coordenadas esféricas $$\begin{aligned}
        u=&\sum_{l=0}^\infty R_l(r)P_l(\cos\theta),\\
        \rho=&\sum_{l=0}^\infty F_l(r)P_l(\cos\theta);
    
\end{aligned}$$ donde los $P_l(x)$ son los *polinomios de Legendre* (ver
Figura [1.3](#fig:legendre-p){reference-type="ref"
reference="fig:legendre-p"}).
:::

## Ecuación de onda 

La ecuación de onda
$$\nabla^2 u=\frac{1}{c^2}\frac{\partial^2 u}{\partial t^2}$$ modela las
vibraciones en cuerdas tensas, como una cuerda de guitarra, y las
vibraciones en membranas elásticas, como un tambor. En estos sistemas,
$u(x,t)$ describe el desplazamiento de la cuerda o la membrana respecto
a su posición de equilibrio. La ecuación de onda también describe la
propagación de ondas sísmicas a través de la Tierra, como las ondas
primarias (P) y las ondas secundarias (S) producidas por terremotos.

:::{note}
Ecuación de onda en coordenadas polares
$$u(\rho,\phi,t)=J_m(k\rho)(A\cos m\phi+B\sin m\phi)e^{i\omega t},$$
donde $\omega=kc$; $J_m$ son las *funciones de Bessel de primera
especie* (ver Figura [1.1](#fig:Jn){reference-type="ref"
reference="fig:Jn"}).
:::

## Ecuación de difusión 

Consideremos ahora el caso donde
$$\kappa \frac{\partial ^2u(x,t)}{\partial x^2}=\frac{\partial u}{\partial t},$$
donde $\kappa$ es una constante. La solución
$$u(x,t)=B\int_{\eta_0}^{\eta} \exp (-\nu^2)d\nu,$$ donde
$$\eta=\frac{x}{2(\kappa t)^{1/2}}$$

:::{note}
Difusión de calor Un láser infrarojo entrega un pulso de energía $E$ en
un punto $P$ de una lámina delgada de grosor $b$, conductividad términa
$k$, calor específico $s$ y denisdad $\rho$. Si la lámina se encuentra
inicialmente a una temperatura uniforme, el exceso de temperatura, un
instante posterior $t$ está dado por
$$u(r,t)=\frac{\alpha}{t}\exp{\left(-\frac{r^2}{2\beta t}\right)},$$ y
$$\kappa=k/(s\rho).$$
:::

whitereferencias Estas referencias constituyen una guía para aquellas
personas que deseen profundizar sobre los contenidos y NO DEBE
INTERPRETARSE como una listado de los contenidos a evaluar.

![Funciones de Bessel de primera especie,
$J_n(x)$](planeamiento_didactico/figuras/bessel_Jn.png){#fig:Jn
width="6in"}

![Funciones de Bessel de segunda especie,
$Y_n(x)$](planeamiento_didactico/figuras/bessel_Yn.png){#fig:Yn
width="6in"}

![Funciones de Legendre
$P_n(x)$](planeamiento_didactico/figuras/legendre.png){#fig:legendre-p
width="7in"}

![Funciones de Legendre
$Q_n(x)$](planeamiento_didactico/figuras/legendre_q.png){#fig:legendre-q
width="7in"}
