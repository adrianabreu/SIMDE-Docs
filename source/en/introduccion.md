---
layout: default
lang: en
id: introduccion
title: Introduction
prev: en/index.html
next: en/instruction-level-paralelism.html
---

##  What's SIMDE?

SIMDE is a simulator for supporting teaching of **ILP** (Instruction Level Parallelism) Architectures. It includes two characteristic flavours of ILP architectures: 
* Dynamic Scheduling: Taking a  Superscalar*D162M1 processor as an example.
* Static Scheduling: Taking a VLIW*D162N0 processor as an example.

The simulator places emphasis on similarities and differences between superscalar and VLIW processors because of its educative purposes.

## What can't you expect from SIMDE?

**SIMDE** is not intended to be a realistic simulator. It contains a lot of simplifications in its design that try to clarify the functionalities at the expense of a rigorous approach. Some components are designed in such a way that makes imposible a realistic implementation.

The VLIW design is extremely simple to incide in the differences with the superscalar processor. This design is useful only as a theoretical approach.

**SIMDE** is not a VLIW compiler. The code optimization and scheduling are made by the user.

## Functionalities

SIMDE allows to:

* Load a single sequential code*D162K7 each time. This code will be used as basis for superscalar executions and design of VLIW codes.

* Modify processor parameters for both Superscalar and VLIW processors.

* Create*D162K9, load*D162L0 or modify a (very) long instruction code that can be used in VLIW simulations. Different tools (like basic blocks*D162N8 coloring or a code automatic-checking*D162T5 for detecting inconsistences) have been added in order to simplify the creation of VLIW codes.

* Modify contents from registers and memory.

* Carry out continuous or step by step simulations of Superscalar processor. The use of breakpoints is allowed to stop the execution at any point of code.

* Carry out continuous or step by step simulations of VLIW processor. The use of breakpoints is allowed to stop the execution at any point of code.