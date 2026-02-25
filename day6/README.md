# Day 6 - Simple Shift Register

This project implements a 4-bit shift register in Verilog.

## Interface
- input clk
- input reset
- input s_i (serial input)
- output [3:0] s_o (shift register output)

## Files
- shift_reg.v : Design
- shift_reg_tb.v : Testbench

## How it works
On every clock edge, the register shifts and takes s_i as the new bit.
Reset clears the register.
