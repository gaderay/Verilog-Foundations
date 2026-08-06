# Verilog HDL

A collection of Verilog HDL examples and exercises covering the core modeling styles, common digital building blocks, and language features used in RTL design.

## 📁 Repository Structure

| Folder | Description |
|---|---|
| `ALLGATES_FUNCTION` | Implementations of basic logic gates (AND, OR, NOT, NAND, NOR, XOR, XNOR) in Verilog. |
| `BEHAVIOURAL_MODELLING` | Examples using `always` blocks, procedural statements, and behavioral-style design. |
| `DATA_FLOW` | Examples using continuous assignments (`assign`) and dataflow-style modeling. |
| `Flip_Flops` | Verilog implementations of D, JK, T, and SR flip-flops. |
| `GATE_LEVEL` | Gate-level modeling examples built from primitive gate instantiations. |
| `STRUCTURAL_MODELLING` | Designs built by instantiating and interconnecting sub-modules. |
| `Shift_Registers` | Serial-in/serial-out, serial-in/parallel-out, and related shift register designs. |
| `Using_Functions` | Examples demonstrating Verilog `function` and `task` constructs. |
| `examples` | Miscellaneous supporting examples and testbenches. |
| `mux` | Multiplexer designs (2:1, 4:1, etc.) across different modeling styles. |

## 🎯 Purpose

This repository serves as a learning reference for Verilog HDL, progressing from basic gate-level design to more advanced behavioral and structural modeling techniques used in digital circuit design.

## 🛠️ Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/gaderay/Verilog-Foundations.git
   ```
2. Open any module in a Verilog simulator (e.g., ModelSim, Icarus Verilog, Vivado, or EDA Playground).
3. Compile and simulate using the provided testbenches (where included).

## 📋 Requirements

- A Verilog simulator such as:
  - [Icarus Verilog](http://iverilog.icarus.com/) (open source)
  - ModelSim / QuestaSim
  - Xilinx Vivado
  - EDA Playground (online, no install needed)

## 📝 License

This project is open for educational use. Feel free to explore, modify, and learn from the examples.
