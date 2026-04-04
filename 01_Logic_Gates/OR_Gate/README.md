# OR Gate Logic Primitive

This module implements a basic 2-input OR gate, a fundamental component of the **RTL Compendium**. The design has been verified through RTL elaboration and behavioral simulation using **AMD Vivado 2024.2**.

## 1. Hardware Schematic (RTL Analysis)
The following schematic was generated using the **Vivado Elaborated Design** tool. It represents the logical mapping of the HDL code into generic hardware primitives. Notice that while the inputs and buffers remain identical to the AND gate, the central primitive is now inferred as an `RTL_OR`.

![OR Gate RTL Schematic](schematic.png)

## 2. Logic Specification
The OR gate follows the standard Boolean operation where the output is high if at least one input is high.

**Boolean Equation:** $$Y = A + B$$

### Truth Table
| Input A | Input B | Output Y |
| :---: | :---: | :---: |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

---

## 3. Implementation
The logic is implemented across three major Hardware Description Languages to demonstrate cross-platform compatibility.

* **[Verilog Source](verilog/or_gate.v)**
* **[VHDL Source](vhdl/or_gate.vhd)**
* **[SystemVerilog Source](systemverilog/or_gate.sv)**

---

## 4. Verification & Simulation
Exhaustive verification was performed by cycling through all $2^2 = 4$ possible input combinations.

### Behavioral Waveform
The simulation waveform confirms that the output `y` stays high for all states except when both `a` and `b` are low.
![OR Gate Waveform](verilog/waveform_verilog.png)
![OR Gate Waveform](vhdl/waveform_vhdl.png)
![OR Gate Waveform](systemverilog/waveform_systemverilog.png)
