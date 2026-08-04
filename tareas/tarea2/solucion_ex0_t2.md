
Consideremos una onda electromagnética plana de amplitud $E_0$ y frecuencia $\omega$ que se propaga en la dirección $z$ dentro de un medio con índice de refracción complejo $\tilde{n}=n+i \kappa$.  

---

### 1. Campo eléctrico y número de onda

La expresión general para el campo eléctrico es

$$
\vec{E}(z,t)=\vec{E}_0\,e^{i(kz-\omega t)}, 
\qquad k = n \frac{\omega}{c}, 
\qquad n = n+i \kappa.
$$

Separando partes real e imaginaria:

$$
\vec{E}(z,t)=\vec{E}_0\,e^{-k_0 \kappa z}\,e^{i(k_0 n z-\omega t)}, 
\qquad k_0 = \frac{\omega}{c}.
$$

La amplitud espacial decae como $e^{-k_0 \kappa z}$.

---

### 2. Atenuación e intensidad

La intensidad de la onda obedece

$$
I(z)\propto|\vec{E}(z)|^2 
\quad \Rightarrow \quad
I(z)=I_0\,e^{-2 k_0 \kappa z}=I_0\,e^{-\alpha z},
$$

donde

$$
\alpha = 2 k_0 \kappa = \frac{2\omega \kappa}{c},
\qquad 
\delta_{\text{skin}}=\frac{1}{\alpha}=\frac{c}{2\omega \kappa}.
$$

$\alpha$ es el coeficiente de absorción y $\delta_{\text{skin}}$ la profundidad de penetración.

---

### 3. Velocidades de fase y grupo

- **Velocidad de fase**:
$$
v_p=\frac{\omega}{k}=\frac{c}{n}.
$$

- **Velocidad de grupo** (para $n(\omega)$ dependiente de $\omega$):
$$
k(\omega)=\frac{\omega n(\omega)}{c} 
\quad \Rightarrow \quad 
v_g=\frac{d\omega}{dk}=\frac{c}{n+\omega\,\frac{dn}{d\omega}}.
$$

---

### 4. Relación con permitividad y conductividad

El índice complejo se relaciona con la permitividad como  

$$
n^2(\omega)=\varepsilon_r(\omega)\mu_r(\omega).
$$

Para medios no magnéticos ($\mu_r\approx1$):

$$
n^2=\varepsilon_r=\varepsilon+i\varepsilon\kappa,
$$

con  
$$
\varepsilon = n^2 - \kappa^2,
\qquad 
\varepsilon\kappa = 2 n \kappa.
$$

Si el medio tiene conductividad eléctrica $\sigma$:

$$
\varepsilon(\omega)=\varepsilon + i\varepsilon\kappa,
\qquad
\varepsilon\kappa = \frac{\sigma}{\varepsilon_0\omega}.
$$

---

### 5. Impedancia de onda y vector de Poynting

La impedancia es

$$
\eta(\omega)=\sqrt{\frac{\mu}{\varepsilon}} \approx \frac{Z_0}{n(\omega)}, 
\qquad 
Z_0=\sqrt{\frac{\mu_0}{\varepsilon_0}}\approx 377\,\Omega.
$$

El vector de Poynting promedio:

$$
\langle\vec{S}\rangle = \frac{1}{2}\Re\{\vec{E}\times\vec{H}^*\},
$$

y para ondas en $z$:

$$
\langle S_z\rangle = \frac{1}{2}\Re\!\left(\frac{|\vec{E}|^2}{\eta^*}\right).
$$

La potencia disipada por unidad de volumen es  

$$
p_{\text{abs}} = \frac{1}{2}\sigma |\vec{E}|^2 
= \frac{1}{2}\omega\varepsilon_0\varepsilon\kappa |\vec{E}|^2.
$$

---

### 6. Reflexión normal en una interfaz

Para incidencia normal desde vacío al medio:

$$
r=\frac{n-1}{n+1}, 
\qquad R=|r|^2,
\qquad t=\frac{2}{n+1},
\qquad T=n|t|^2.
$$

---

### 7. Límite de buen conductor

Si $\sigma \gg \omega \varepsilon_0$, la permitividad está dominada por la conducción:  

$$
\varepsilon(\omega)\approx i\,\frac{\sigma}{\varepsilon_0\omega}.
$$

El índice resulta  

$$
n\approx\sqrt{i\frac{\sigma}{\varepsilon_0\omega}}
=\left(1+i\right)\sqrt{\frac{\sigma}{2\varepsilon_0\omega}},
$$

con  

$$
n\approx \kappa \approx \sqrt{\frac{\sigma}{2\varepsilon_0\omega}}, 
\qquad 
\delta \approx \sqrt{\frac{2}{\mu_0\sigma\omega}}.
$$

---

### Observaciones finales

- $\kappa>0$ indica absorción; $\kappa<0$ ganancia.  
- La diferencia $v_p \neq v_g$ produce dispersión de pulsos.  
- La potencia absorbida se convierte en calor o trabajo eléctrico en el medio.  
- Fórmulas de Fresnel con $n$ complejo permiten predecir reflectancia y transmitancia.  
