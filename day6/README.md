# Day 6 - Simple Shift Register

This project implements a 4-bit shift register in Verilog.

## Interface
- input clk
- input reset
- input x_i (serial input)
- output [3:0] sr_o (shift register output)

## Files
- shift_register.v : Design
- shift_register_tb.v : Testbench

## How it works
On every clock edge, the register shifts and takes x_i as the new bit.
Reset clears the register.
