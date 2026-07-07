
# Universal Shift Register (Verilog HDL)

## Description
Designed and implemented a 4-bit Universal Shift Register in Verilog HDL. The register supports multiple operations including hold, shift left, shift right, and parallel load using a 2-bit control signal.

## Features
- 4-bit register
- Synchronous reset
- Hold operation
- Shift Left
- Shift Right
- Parallel Load
- Positive edge-triggered clock

## Inputs
- clk
- rst
- ctrl[1:0]
- parallel_in[3:0]
- serial_in_l
- serial_in_r

## Output
- out[3:0]

## Control Table

| ctrl | Operation |
|------|-----------|
| 00 | Hold |
| 01 | Shift Right |
| 10 | Shift Left |
| 11 | Parallel Load |

## Tools Used
- Verilog HDL
- Vivado Simulator

## Verification
The design was verified using a self-written Verilog testbench by testing:
- Reset
- Parallel Load
- Shift Right
- Shift Left
- Hold Operation
