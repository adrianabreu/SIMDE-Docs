---
layout: default
lang: es
id: estructura-comun
title: Estructura común
prev: es/ejemplo-de-codigo-secuencial.html
next: es/juego-de-instrucciones.html
---

Tanto la máquina Superescalar como la VLIW diseñadas para este simulador mantienen una estructura básica común.


## Características Comunes

1. Ambas máquinas están diseñadas para trabajar con palabras de 32 bits, tanto para los tipos de datos entero y flotante.

2. El juego de instrucciones, basado en MIPS IV.

3. Las dos máquinas son monoprograma. El código (tanto el secuencial en la máquina superescalar como el de instrucciones largas en la VLIW) siempre se coloca empezando en la dirección 0, por lo que los saltos son siempre a direcciones absolutas.


## Elementos Comunes

* Memoria*D162L5.

* Registros de Propósito General*D162L8 (GPR).

* Registros de Punto Flotante*D162L9 (FPR).
