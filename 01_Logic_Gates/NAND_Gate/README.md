# NAND Gate Logic Primitive

This module implements a 2-input NAND (Not-AND) gate, a "Universal Gate" in digital logic. The design has been verified through RTL elaboration and behavioral simulation using **AMD Vivado 2024.2**.

## 1. Hardware Schematic (RTL Analysis)
The following schematic was generated using the **Vivado Elaborated Design** tool. 

**Note on Decomposition:** As seen in the diagram, Vivado elaborates the NAND logic by connecting an `RTL_AND` primitive to an `RTL_INV` (Inverter). While these appear as two separate components in the elaborated view, they are optimized into a single Physical LUT during the synthesis phase.

![NAND Gate RTL Schematic](schematic.png)

## 2. Logic Specification
The NAND gate outputs a Low (0) only when all its inputs are High (1). For all other input combinations, the output remains High (1).

**Boolean Equation:** $$Y = \overline{A \cdot B}$$

### Truth Table
| Input A | Input B | Output Y |
| :---: | :---: | :---: |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

## 3. Implementation
Consistent with the **RTL Compendium** standard, the logic is provided in Verilog, VHDL, and SystemVerilog.

* **[Verilog Source](verilog/nand_gate.v)**
* **[VHDL Source](vhdl/nand_gate.vhd)**
* **[SystemVerilog Source](systemverilog/nand_gate.sv)**

---

## 4. Verification & Simulation
Verification was performed by sweeping through the 4 possible input states to confirm the NAND truth table.

### Behavioral Waveform
The simulation waveform confirms that the output `y` drops to 0 only at the 40ns mark when both `a` and `b` are asserted.
![NAND Gate Waveform](verilog/waveform_nand.png)

### Tcl Console Output
```text
Starting Simulation...
A=0, B=0 | Y=1
A=0, B=1 | Y=1
A=1, B=0 | Y=1
A=1, B=1 | Y=0
Simulation Complete.
