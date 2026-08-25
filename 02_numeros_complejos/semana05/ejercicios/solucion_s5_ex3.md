---
title: Solución Ejercicio 3
keywords:
  - optica
  - series-geometricas
  - fasores
tags:
  - optica
  - series-geometricas
  - fasores
  - calculo
  - demostracion
---

Tenemos la expresión:
$$S = e^{it}+e^{i(t+\delta)}+e^{i(t+2\delta)}+\ldots+e^{i(t+n\delta)}$$

Esta es una serie geométrica con primer término $a = e^{it}$ y razón $r = e^{i\delta}$.
La suma de una serie geométrica finita es:
$$S = a \frac{1 - r^{n+1}}{1 - r} = e^{it} \frac{1 - (e^{i\delta})^{n+1}}{1 - e^{i\delta}}$$

*(Nota: El enunciado da la fórmula como $e^{it}\frac{1-e^{in\delta}}{1-e^{i\delta}}$. Si asumimos que la suma va de $k=0$ hasta $n-1$, entonces el término superior es $e^{i(t+(n-1)\delta)}$ y la razón es $e^{i\delta}$. En este caso $S = e^{it}\frac{1-e^{in\delta}}{1-e^{i\delta}}$. Asumiremos esta versión dada en el problema).*

Queremos la parte imaginaria de $S$.
$$S = e^{it} \frac{1 - e^{in\delta}}{1 - e^{i\delta}}$$

Para simplificar, multipliquemos numerador y denominador por el conjugado del denominador, $1 - e^{-i\delta}$:
$$S = e^{it} \frac{(1 - e^{in\delta})(1 - e^{-i\delta})}{|1 - e^{i\delta}|^2}$$

Calculamos el denominador:
$$|1 - e^{i\delta}|^2 = (1 - \cos\delta)^2 + (\sin\delta)^2$$
$$= 1 - 2\cos\delta + \cos^2\delta + \sin^2\delta$$
$$= 2 - 2\cos\delta = 4\sin^2(\delta/2)$$
*(Usando la identidad $1 - \cos\theta = 2\sin^2(\theta/2)$)*

Ahora trabajemos con el numerador:
$$N = (1 - e^{in\delta})(1 - e^{-i\delta}) = 1 - e^{-i\delta} - e^{in\delta} + e^{i(n-1)\delta}$$

Separamos en parte real e imaginaria usando Euler $e^{ix} = \cos x + i\sin x$:
$$N = [1 - \cos(-\delta) - \cos(n\delta) + \cos((n-1)\delta)] + i[-\sin(-\delta) - \sin(n\delta) + \sin((n-1)\delta)]$$
Como $\cos(-x) = \cos x$ y $\sin(-x) = -\sin x$:
$$N = [1 - \cos\delta - \cos(n\delta) + \cos((n-1)\delta)] + i[\sin\delta - \sin(n\delta) + \sin((n-1)\delta)]$$

La parte imaginaria de $N$ es:
$$\text{Im}(N) = \sin\delta - \sin(n\delta) + \sin((n-1)\delta)$$

Usamos identidades trigonométricas para simplificar:
$\sin((n-1)\delta) - \sin(n\delta) = -2\cos\left(\frac{2n-1}{2}\delta\right)\sin\left(\frac{-\delta}{2}\right) = 2\cos\left(\frac{2n-1}{2}\delta\right)\sin\left(\frac{\delta}{2}\right)$

Entonces:
$$\text{Im}(N) = \sin\delta + 2\cos\left(\frac{2n-1}{2}\delta\right)\sin\left(\frac{\delta}{2}\right)$$

Recordamos que $S = e^{it} \frac{N}{|1 - e^{i\delta}|^2} = (\cos t + i\sin t) \frac{\text{Re}(N) + i\text{Im}(N)}{4\sin^2(\delta/2)}$.

La parte imaginaria total de $S$ será:
$$\text{Im}(S) = \frac{\sin t \cdot \text{Re}(N) + \cos t \cdot \text{Im}(N)}{4\sin^2(\delta/2)}$$

Sustituyendo $\text{Im}(N)$:
$$\text{Im}(S) = \frac{\sin t [1 - \cos\delta - \cos(n\delta) + \cos((n-1)\delta)] + \cos t [\sin\delta - \sin(n\delta) + \sin((n-1)\delta)]}{4\sin^2(\delta/2)}$$

*Nota: Esta es la forma completa. A menudo en óptica, para interferencia de múltiples rendijas, se busca la intensidad (módulo al cuadrado), que se simplifica a $I \propto \frac{\sin^2(n\delta/2)}{\sin^2(\delta/2)}$. La parte imaginaria por sí sola corresponde a la superposición de ondas senoidales desplazadas.*