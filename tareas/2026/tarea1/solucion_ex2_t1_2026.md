**Determinar el flujo magnético total $\Phi_B$**

El flujo magnético a través de una superficie $S$ está dado por:
$$\Phi_B = \iint_S \vec{B} \cdot d\vec{S},$$
donde $d\vec{S}$ es el vector diferencial de superficie.

Para una sección transversal del toroide, usamos coordenadas cilíndricas. El elemento de superficie en una sección radial-azimutal es $d\vec{S} = \hat{\phi}\,h_z\,dz\,h_\rho\,d\rho = \hat{\phi}\,dz\,d\rho$.

El campo magnético está dado por:
$$\vec{B}(\rho)=\frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi}.$$

Por lo tanto, el flujo magnético es:
$$\Phi_B = \iint_S \vec{B} \cdot d\vec{S} = \int_{0}^{h}\int_{R_0-a}^{R_0} \frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi} \cdot \hat{\phi}\,d\rho\,dz$$
$$= \int_{0}^{h}\int_{R_0-a}^{R_0} \frac{\mu_0 N_1 I_1}{2\pi\rho}\,d\rho\,dz$$
$$= \frac{\mu_0 N_1 I_1}{2\pi}\int_{0}^{h}\int_{R_0-a}^{R_0} \frac{1}{\rho}\,d\rho\,dz.$$

Integrando con respecto a $\rho$:
$$\int_{R_0-a}^{R_0} \frac{1}{\rho}\,d\rho = \ln\left(\frac{R_0}{R_0-a}\right).$$

Integrando con respecto a $z$:
$$\int_{0}^{h} dz = h.$$

Por lo tanto:
$$\Phi_B = \frac{\mu_0 N_1 I_1}{2\pi} \cdot h \cdot \ln\left(\frac{R_0}{R_0-a}\right)$$
$$= \frac{4\pi\times10^{-7} \times 200 \times 5}{2\pi} \times 0.08 \times \ln\left(\frac{0.15}{0.15-0.05}\right)$$
$$= \frac{4\pi\times10^{-7} \times 1000}{2\pi} \times 0.08 \times \ln\left(\frac{0.15}{0.10}\right)$$
$$= 2\times10^{-4} \times 0.08 \times \ln(1.5)$$
$$= 1.6\times10^{-5} \times 0.4055 \text{ Wb}$$
$$\approx 6.49\times10^{-6}\text{ Wb}.$$

 Parte 3: Verificar la ley de Ampère usando el teorema de Stokes

El teorema de Stokes establece que:
$$\oint_C \vec{B} \cdot d\vec{l} = \iint_S (\nabla \times \vec{B}) \cdot d\vec{S}.$$

La ley de Ampère en forma diferencial es:
$$\nabla \times \vec{B} = \mu_0 \vec{J},$$
donde $\vec{J}$ es la densidad de corriente.

Para el campo magnético dado $\vec{B}(\rho)=\frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi}$, calculamos su rotacional en coordenadas cilíndricas:

$$\nabla \times \vec{B} = \frac{1}{\rho}\begin{vmatrix}
\hat{e}_\rho & \rho\,\hat{e}_\phi & \hat{e}_z \\
\frac{\partial}{\partial \rho} & \frac{\partial}{\partial \phi} & \frac{\partial}{\partial z} \\
B_\rho & \rho B_\phi & B_z
\end{vmatrix}.$$

Dado que $B_\rho = 0$, $B_z = 0$ y $B_\phi = \frac{\mu_0 N_1 I_1}{2\pi\rho}$:

$$\nabla \times \vec{B} = \frac{1}{\rho}\left[\hat{e}_\rho\left(\frac{\partial}{\partial \phi}(\rho B_\phi) - \frac{\partial B_z}{\partial \phi}\right) - \rho\,\hat{e}_\phi\left(\frac{\partial B_z}{\partial \rho} - \frac{\partial B_\rho}{\partial z}\right) + \hat{e}_z\left(\frac{\partial(\rho B_\phi)}{\partial \rho} - \frac{\partial B_\rho}{\partial \phi}\right)\right]$$
$$= \frac{1}{\rho}\left[\hat{e}_\rho(0 - 0) - \rho\,\hat{e}_\phi(0 - 0) + \hat{e}_z\left(\frac{\partial}{\partial \rho}\left(\frac{\mu_0 N_1 I_1}{2\pi}\right) - 0\right)\right]$$
$$= \frac{1}{\rho}\left[0 - 0 + 0\right] = \vec{0}.$$

Esto indica que no hay densidad de corriente en la región donde definimos el campo magnético (fuera de las bobinas), lo cual es consistente con la ley de Ampère.

Para verificar la ley de Ampère en forma integral, consideramos una trayectoria circular $C$ de radio $\rho$ en el plano $z$:

$$\oint_C \vec{B} \cdot d\vec{l} = \oint_0^{2\pi} \frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi} \cdot \hat{\phi}\,\rho\,d\phi$$
$$= \oint_0^{2\pi} \frac{\mu_0 N_1 I_1}{2\pi\rho} \cdot \rho\,d\phi$$
$$= \frac{\mu_0 N_1 I_1}{2\pi} \oint_0^{2\pi} d\phi$$
$$= \frac{\mu_0 N_1 I_1}{2\pi} \cdot 2\pi$$
$$= \mu_0 N_1 I_1.$$

De acuerdo con la ley de Ampère, esta circulación debe ser igual a $\mu_0 I_{\text{enc}}$, donde $I_{\text{enc}}$ es la corriente total encerrada por la trayectoria. Como la trayectoria encierra todas las $N_1$ vueltas de la bobina primaria, $I_{\text{enc}} = N_1 I_1$, por lo que:

$$\oint_C \vec{B} \cdot d\vec{l} = \mu_0 N_1 I_1 = \mu_0 I_{\text{enc}},$$

lo cual verifica la ley de Ampère para este sistema.

 Parte 4: Calcular la fem inducida en la bobina secundaria

La fem inducida $\mathcal{E}$ en la bobina secundaria está dada por la ley de Faraday:
$$\mathcal{E} = -N_2\frac{d\Phi_B}{dt},$$
donde $N_2$ es el número de vueltas de la bobina secundaria y $\Phi_B$ es el flujo magnético a través de cada vuelta.

Dado que $I_1(t) = 5\cos(120\pi t)\text{ A}$, el flujo magnético es:
$$\Phi_B(t) = \frac{\mu_0 N_1 I_1(t)}{2\pi} \cdot h \cdot \ln\left(\frac{R_0}{R_0-a}\right)$$
$$= \frac{4\pi\times10^{-7} \times 200 \times 5\cos(120\pi t)}{2\pi} \times 0.08 \times \ln\left(\frac{0.15}{0.10}\right)$$
$$= 2\times10^{-4} \times 0.08 \times \ln(1.5) \times 5\cos(120\pi t)$$
$$\approx 6.49\times10^{-6} \times 5\cos(120\pi t)$$
$$\approx 3.25\times10^{-5}\cos(120\pi t)\text{ Wb}.$$

La derivada del flujo magnético es:
$$\frac{d\Phi_B}{dt} = -3.25\times10^{-5} \times 120\pi \sin(120\pi t)$$
$$\approx -1.23\times10^{-2}\sin(120\pi t)\text{ Wb/s}.$$

Por lo tanto, la fem inducida es:
$$\mathcal{E} = -N_2\frac{d\Phi_B}{dt} = -50 \times (-1.23\times10^{-2}\sin(120\pi t))$$
$$\approx 0.615\sin(120\pi t)\text{ V}.$$

La fem máxima es:
$$\mathcal{E}_{\text{máx}} = 0.615\text{ V}.$$

La frecuencia de la fem inducida es la misma que la de la corriente primaria: $f = \frac{120\pi}{2\pi} = 60\text{ Hz}$.