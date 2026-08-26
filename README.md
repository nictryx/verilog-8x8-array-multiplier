# Verilog 8x8 Array Multiplier

A digital design project implementing an **8-bit × 8-bit unsigned array multiplier** using structural Verilog.

The design uses gate-level multiplication, half adders, full adders, and a right-shift operation to produce the final scaled output. The project was also implemented and tested on a **Nexys 4 DDR FPGA board** using LEDs and 7-segment displays.

## Features

- 8-bit unsigned inputs
- Structural array multiplier design
- Gate-level AND operations
- Half-adder and full-adder based addition
- 16-bit multiplication result
- Right-shift output scaling
- Binary and decimal testbenches
- LED output implementation
- 7-segment display output
- Nexys 4 DDR FPGA implementation

## Design

The multiplier generates partial products using AND gates and combines them using half adders and full adders.

The resulting 16-bit product is shifted right by two bits to implement division by four and produce the required scaled output. 

## Testing

The design includes testbenches using both binary and decimal input formats.

Example test values include:

- 170 × 255
- 249 × 139

The simulated outputs were compared with the FPGA board outputs to verify the design. 

## FPGA Implementation

The design was implemented on a **Nexys 4 DDR** FPGA board.

Inputs are provided using the onboard switches, while outputs can be displayed using:

- LEDs
- 7-segment displays

The top-level module connects the multiplier output to the display system and multiplexes the 7-segment digits.

## Tech Stack

- Verilog HDL
- Digital Logic Design
- FPGA
- Nexys 4 DDR
- Xilinx Vivado
- Structural Modeling
- Gate-Level Design
