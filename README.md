# FPGA-Edge-AI-Smart-Irrigation
Hardware Accelerated Edge AI Smart Irrigation System implemented in Verilog RTL on Xilinx FPGA.
FPGA-Edge-AI-Smart-Irrigation
│
├── src/
│   ├── moisture_classifier.v
│   ├── irrigation_controller.v
│   └── top_module.v
│
├── sim/
│   └── tb_top_module.v
│
├── docs/
│   └── simulation_results.png
│
├── README.md
├── LICENSE
└── .gitignore

# FPGA-Based Edge AI Smart Irrigation System

## Overview: 
This project implements a hardware-accelerated Edge AI system for smart irrigation using soil moisture classification. The solution is fully implemented in Verilog RTL and targets AMD/Xilinx FPGA platforms.

The system performs real-time soil moisture classification and automatically controls irrigation without requiring cloud connectivity.

---

## Problem Statement:
Modern agriculture requires efficient water management. Cloud-based irrigation systems introduce latency and dependency on internet connectivity. This project enables real-time, on-device intelligence using FPGA-based Edge AI.

---

## Solution:
The system:
1. Accepts a 10-bit soil moisture sensor input (ADC value).
2. Classifies soil condition into:
   - Dry
   - Optimal
   - Wet
3. Automatically controls irrigation pump based on classification.
All inference is implemented using combinational RTL logic for zero-latency decision making.
---

## AI Model:
A threshold-based classifier is used:

- 0 – 350     → Dry
- 351 – 700   → Optimal
- 701 – 1023  → Wet

The model was validated using a Python-generated dataset before RTL implementation.
---
## Hardware Architecture:
Moisture Sensor (ADC)
       ↓
Moisture Classifier (Verilog RTL)
       ↓
Irrigation Controller
       ↓
Pump Control Output

---

## Project Structure

Target FPGA: Xilinx Zynq-7000 (XC7Z020)
---
src/ → RTL design files
sim/ → Testbench
docs/ → Simulation screenshots


---

## Simulation

Behavioral simulation was performed using Xilinx Vivado.
![Image](https://github.com/user-attachments/assets/c106f840-716d-4e71-a20c-a41f42d48213)
Example test cases:

| Moisture | Class   | Pump |
|----------|--------|------|
| 100      | Dry     | ON   |
| 500      | Optimal | OFF  |
| 900      | Wet     | OFF  |

---

## Key Features

- Real-time Edge AI inference
- Fully RTL-based implementation
- Low-latency decision making
- Energy-efficient design
- FPGA synthesizable

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Python (Dataset generation & validation)
- Jupyter Notebook

---

## Future Improvements

- Add hysteresis to avoid pump flickering
- Add clocked synchronous design
- Integrate real ADC sensor interface
- Add UART monitoring

---




