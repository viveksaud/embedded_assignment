# VHDL Full Adder Library

This VHDL library includes a full adder module (`fulladder`) and a corresponding testbench (`fulladder_tb`). The `fulladder` module takes three inputs (A, B, Cin) and produces two outputs (Sum, Cout) based on the binary addition operation.

## Files:

1. **fulladder.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a full adder.
   - **Inputs**:
     - `A`, `B`: Input bits for addition.
     - `Cin`: Carry-in bit.
   - **Outputs**:
     - `Sum`: Sum bit of the addition.
     - `Cout`: Carry-out bit of the addition.
   - **Operation**:
     - The process within this architecture implements the logic for the sum and carry-out based on the input bits and carry-in.

2. **fulladder_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `fulladder` module.
   - **Inputs**:
     - `A`, `B`, `Cin`: Inputs to the full adder during simulation.
   - **Outputs**:
     - `Sum`, `Cout`: Outputs of the full adder during simulation.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`A`, `B`, `Cin`) to the `fulladder` module, simulating different addition scenarios.
     - The waveform can be observed for the corresponding output values (`Sum`, `Cout`).

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the full adder design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`fulladder` and `fulladder_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.

## Usage:

To compile the design, run:
    make compile

To simulate the design and generate a waveform file, run:
    make simulate

To view the waveform using GTKWave, run:
    make view

To clean up generated files, run:
    make clean

## Test Case Scenarios:
The testbench includes various test case scenarios where different binary inputs (A, B, Cin) are applied to the fulladder module.
Each test case simulates a different binary addition scenario to observe the corresponding output values (Sum, Cout).

                                        
            
              
              
 ![Screenshot from 2024-02-20 21-07-51](https://github.com/MohitReezal/Embedded-practical/assets/140707863/84e14240-07a6-4339-99b0-51b7498c7d4b)
 
![Screenshot from 2024-02-20 21-08-07](https://github.com/MohitReezal/Embedded-practical/assets/140707863/889bf37a-083a-439a-ad6b-d1dc1fca7771)
