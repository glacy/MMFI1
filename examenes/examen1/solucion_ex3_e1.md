:::{attention} Identidades útiles

$$
\sin z = \frac{e^{iz} - e^{-iz}}{2i}
$$
---
Si $z=re^{i\theta}$ ($z\neq 0$), entonces
$$\text{Log} (z)=\text{Log} (re^{i\theta})=\ln r +i\theta=\ln |z| + i\arg (z),$$
:::


Por definición

$$
z = \arcsin(3) \quad \Longleftrightarrow \quad \sin z = 3.
$$

---

Sea $u = e^{iz}$, de modo que $e^{-iz} = u^{-1}$. Sustituyendo

$$
\frac{u - u^{-1}}{2i} = 3,
$$

de donde 

$$
u - u^{-1} = 6i \quad \Longrightarrow \quad u^2 - 6i\,u - 1 = 0.
$$

---

Resolviendo la ecuación cuadrática

$$
u = \frac{6i \pm \sqrt{(6i)^2 + 4}}{2}
   = \frac{6i \pm \sqrt{-36 + 4}}{2}
   = \frac{6i \pm \sqrt{-32}}{2}.
$$

Dado que $\sqrt{-32} = i\sqrt{32} = 4\sqrt{2}\,i$, se obtiene:

$$
u = \frac{6i \pm 4\sqrt{2}\,i}{2}
  = i(3 \pm 2\sqrt{2}).
$$

---

Por tanto:

$$
u_1 = i(3 + 2\sqrt{2}), \qquad
u_2 = i(3 - 2\sqrt{2}).
$$

---

Como $u = e^{iz}$, por lo tanto:

$$
e^{iz} = u \quad \Rightarrow \quad iz = \ln u + 2\pi i k, \qquad k \in \mathbb{Z}.
$$

De donde:

$$
z = -i \ln u + 2\pi k.
$$

---



Por tanto:

$$
\ln u_j = \ln r_j + \ln(i) = \ln r_j + i\frac{\pi}{2},
$$

y en general:

$$
\ln u_j = \ln r_j + i\left(\frac{\pi}{2} + 2\pi k\right).
$$

Sustituyendo en $z$:

$$
z = -i\left[\ln r_j + i\left(\frac{\pi}{2} + 2\pi k\right)\right]
   = \frac{\pi}{2} + 2\pi k - i\ln r_j.
$$

---



Las soluciones de $\sin z = 3$ son:

$$
\boxed{z = \frac{\pi}{2} + 2\pi k \;\pm\; i\ln(3 + 2\sqrt{2})},
\qquad k \in \mathbb{Z}.
$$

---

En la rama principal se toma $k=0$ y la parte imaginaria negativa

$$
\arcsin(3) = \frac{\pi}{2} - i\ln(3 + 2\sqrt{2}).
$$

entonces:

$$
\arcsin(3) \approx 1.570796327 - i\,1.762747174.
$$



