---
layout: default
lang: es
id: example-codes
title: Códigos de ejemplo
prev: software-pipelining.html
---

```
// Nuevo bucle (faltan los códigos inicial y final)
LOOP:
	// SF pertenece a dos iteraciones antes
	SF 		F2 (R2)
	// ADDF pertenece a una iteración anterior 
	ADDF	F2 F1 F0
	// LF es de esta iteración 
	LF 		F1 2(R2)
	ADDI 	R2 R2 #1
	BNE		R2 R5 LOOP
```