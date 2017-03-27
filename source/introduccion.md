---
layout: default
id: introduccion
title: Introducción
prev: index.html
next: installation.html
---

## ¿Qué es SIMDE?

SIMDE es un simulador de Arquitecturas **ILP** (Instruction Level Parallelism) que incluye sus dos vertientes más características: 
* Planificación dinámica: Cogiendo como ejemplo una máquina **Superescalar**.
* Planificación estática: Tomando como ejemplo una máquina **VLIW**.

El objetivo del simulador es servir de herramienta para el apoyo docente en la enseñanza de estas arquitecturas. Para ello hace hincapié en los aspectos más destacables de las dos vertientes estudiadas, así como en sus diferencias.

## ¿Qué no es SIMDE?

**SIMDE** no pretende ser un simulador realista de estas arquitecturas. En su diseño contiene un gran número de simplificaciones que intentan clarificar el funcionamiento de la máquina a costa de un mayor rigor técnico. Algunos de los componentes de las máquinas funcionan de manera imposible de implementar en la práctica (o de costes prohibitivos). 

El diseño de la máquina VLIW es extremadamente simple para resaltar aún más sus diferencias con la máquina Superescalar. Este diseño no tiene ninguna utilidad más que como máquina teórica.

**SIMDE** no es un compilador VLIW. Todas las optimizaciones del código y su posterior planificación las realiza el usario.

## Funcionalidades

SIMDE permite:

* Cargar un único programa secuencial*D162K7 cada vez que servirá como base para la ejecución Superescalar o para diseñar un código VLIW.

* Modificar los parámetros de las máquinas Superescalar*D162K2 y VLIW*D162K3.

* Crear*D162K9, cargar*D162L0 o modificar*D162L1 un código de instrucciones largas que usar en la simulación VLIW. Además se añaden herramientas para facilitar la creación de este código, como el coloreado de bloques básicos*D162N8 o el chequeo automático*D162T5 del código creado para detectar inconsistencias.

* Modificar el contenido*D162K4 de la memoria y registros.

* Realizar simulaciones continuas o paso a paso de la máquina Superescalar, permitiendo el uso de breakpoints para detener la ejecución en un punto del código determinado.

* Realizar simulaciones continuas o paso a paso de la máquina VLIW, permitiendo el uso de breakpoints para detener la ejecución en un punto del código determinado.

	ILP

El Paralelismo a Nivel de Instrucción es la capacidad de un conjunto de instrucciones de poder ser ejecutadas en paralelo.

Existen numerosas técnicas que intentan explotar esta capacidad, desde la segmentación hasta la emisión de múltiples instrucciones por ciclo. Es precisamente con este último grupo de máquinas con las que trabaja este simulador.

Existen dos claras vertientes para manejar la emisión múltiple (Multiple Issue), que se ven en los dos puntos siguientes.


	Planificación Dinámica de Instrucciones

El hardware se encarga de reordenar las instrucciones para aprovechar el paralelismo, con lo que se emplea una ejecución fuera de orden (out_of_order). Las máquinas Superescalares*D162M1 suelen emplear esta técnica. 


	Planificación Estática de Instrucciones

El compilador se encarga de reordenar las instrucciones para aprovechar el paralelismo, con lo que se consigue una gran simplificación del hardware. Emplea ejecución en orden (in_order). Esta es la técnica básica en las máquinas VLIW*D162N0.

	Abrir...

Permite abrir un fichero con código secuencial*D162K7.


	Salir

Termina la ejecución del programa.
