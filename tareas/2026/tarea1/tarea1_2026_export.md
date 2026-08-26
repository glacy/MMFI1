---
title: Tarea 1 - 2026
description: Tarea 1 - 2026
short_title: Tarea 1 - 2026
author: " "
tags: []
subject: Cálculo y análisis vectorial - 2026
keywords: [análisis, vectorial, aplicaciones, prácticas]
exports:
  - format: pdf
    template: curvenote
    output: ./tarea1_2026.pdf
# downloads:
#    - file: ./tarea1_2026.md
#      title: tarea1_2026.md
#    - file: ./tarea1_2026.pdf
#      title: tarea1_2026.pdf
abstract:   1.1. operaciones vectoriales fundamentales
            1.2. productos triples en aplicaciones de ingeniería
            1.3. operador nabla y su interpretación física
            1.4. coordenadas curvilíneas en problemas con simetría
            1.5. teoremas integrales en aplicaciones reales
            1.6. análisis de campos en electromagnetismo
            1.7. dinámica de fluidos y transporte
            1.8. transferencia de calor y energía
---

:::{hint} Instrucciones
- Resuelva de forma razonada cada uno de los siguientes ejercicios.
- Use esquemas y dibujos si lo considera necesario.
- Debe incluir los cálculos y procedimientos que le llevan a su respuesta.
- **Fecha de entrega**: martes 15 de setiembre 2026 (SEMANA 7).
- **Formato de entrega**: documento en formato .pdf a través del módulo de
    evaluaciones en el [tecDigital](https://tecdigital.tec.ac.cr/dotlrn/classes/IF/IF3602/S-2-2026.CA.IF3602.1/evaluation/tda-ce-estudiante/tda-index?loc=1).
:::

## Ejercicio 1

En una planta de tratamiento de aguas residuales, un impulsor giratorio mezcla el fluido en un tanque cilíndrico de radio $R=2\text{ m}$ y altura $H=5\text{ m}$. El impulsor rota con velocidad angular $\vec{\omega}=\omega\hat{\kappa}$ donde $\omega=10\text{ rad/s}$, y un punto de referencia en el impulsor está ubicado en $\vec{r}=1\hat{\iota}+1\hat{\jmath}+2\hat{\kappa}$ metros.

La fuerza de arrastre del fluido sobre un elemento de superficie del impulsor está dada por
$$\vec{F}_{\text{arrastre}} = \vec{v}\times(\vec{\omega}\times\vec{v}),$$
donde $\vec{v}$ es la velocidad del elemento de superficie relativa al fluido.

En un instante dado, la velocidad del elemento de superficie es
$$\vec{v}=2\hat{\iota}-1\hat{\jmath}+3\hat{\kappa}\text{ m/s}.$$

- Calcule el torque (o momento de la fuerza) ejercido sobre el impulsor respecto al origen.
- Determine la potencia mecánica requerida para mantener el impulsor girando a velocidad constante si el radio efectivo del impulsor es $r_{\text{imp}}=0.5\text{ m}$.
- Use el producto triple escalar para calcular el volumen de fluido desplazado por el impulsor en una revolución completa, asumiendo que el impulsor tiene forma de paralelepípedo con vectores de aristas $\vec{a}=0.3\hat{\iota}\text{ m}$, $\vec{b}=0.4\hat{\jmath}\text{ m}$ y $\vec{c}=0.2\hat{\kappa}\text{ m}$.

---

```{include} ./solucion_ex1_t1_2026.md

}

---

## Ejercicio 2

Un transformador eléctrico monofásico opera con un núcleo ferromagnético en forma de toroide rectangular. El núcleo tiene dimensiones: radio mayor $R_0=0.15\text{ m}$, radio menor $a=0.05\text{ m}$, y altura $h=0.08\text{ m}$. Una bobina primaria con $N_1=200$ vueltas transporta una corriente $I_1=5\text{ A}$ que produce un campo magnético principalmente toroidal.

El campo magnético en el toroide puede aproximarse en coordenadas cilíndricas $(\rho,\phi,z)$ como
$$\vec{B}(\rho)=\frac{\mu_0 N_1 I_1}{2\pi\rho}\hat{\phi},$$
donde $\mu_0=4\pi\times10^{-7}\text{ H/m}$ es la permeabilidad del vacío.

- Calcule los factores de escala $h_\rho$, $h_\phi$, $h_z$ para este sistema de coordenadas.
- Determine el flujo magnético total $\Phi_B$ a través de una sección transversal del toroide.
- Use el teorema de Stokes para relacionar la circulación del campo magnético con la corriente encerrada, y verifique la ley de Ampère para este sistema.
- Una bobina secundaria con $N_2=50$ vueltas se enrolla uniformemente sobre el toroide. Calcule la fem inducida $\mathcal{E}$ en la bobina secundaria si la corriente primaria varía como $I_1(t)=5\cos(120\pi t)\text{ A}$ (frecuencia de $60\text{ Hz}$).

---

```{include} ./solucion_ex2_t1_2026.md

}

---

## Ejercicio 3

Un sistema de refrigeración para un servidor de alta potencia utiliza un disipador de calor con geometría cilíndrica de radio $R=0,03\text{ m}$ y altura $H=0,1\text{ m}$. El servidor genera calor uniformemente dentro del disipador con una tasa volumétrica $q_{\text{gen}}=5\times10^7\text{ W/m}^3$ debido al funcionamiento de los procesadores.

En estado estacionario, la temperatura en el disipador varía según la posición en coordenadas cilíndricas $(\rho,\phi,z)$ como

$$T(\rho,z)=T_{\text{base}} + \frac{q_{\text{gen}}}{4k}(R^2-\rho^2),$$

donde $T_{\text{base}}=300\text{ K}$ es la temperatura de la base del disipador (que se mantiene constante mediante refrigeración líquida) y $k=200\text{ W/(m·K)}$ es la conductividad térmica del material del disipador (aluminio).

El flujo de calor $\vec{q}$ está relacionado con el gradiente de temperatura por la ley de Fourier:
$$\vec{q} = -k\nabla T,$$

y en estado estacionario se satisface la ecuación de Poisson:
$$\nabla\cdot(k\nabla T) + q_{\text{gen}} = 0.$$

- Calcule el gradiente de temperatura $\nabla T$ en coordenadas cilíndricas y verifique que apunta desde el interior del disipador hacia la superficie lateral.
- Determine el flujo de calor $\vec{q}$ en un punto $P$ localizado en $\rho=R/2$, $\phi=\pi/4$, $z=H/2$.
- Use el teorema de la divergencia para calcular la tasa total de flujo de calor que sale del disipador a través de su superficie lateral.
- Verifique que el flujo total de calor que sale del disipador es igual al calor generado internamente, confirmando el balance energético en estado estacionario.

---

```{include} ./solucion_ex3_t1_2026.md

}