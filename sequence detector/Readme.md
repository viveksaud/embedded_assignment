# VHDL Sequence Detector Library

This VHDL library includes a simple Sequence Detector module (`sequence`) and a corresponding testbench (`sequence_tb`). The `sequence` module detects a specific sequence of data input (`data_in`) and indicates the detection through the output signal (`sequence_detected`). The detection is based on a state machine with states (`IDLE`, `S1`, `S10`, `S101`, `DETECTED`).

## Files:

1. **sequence.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a Sequence Detector.
   - **Inputs**:
     - `clk`, `rst`: Clock and Reset inputs.
     - `data_in`: Data input for sequence detection.
   - **Outputs**:
     - `sequence_detected`: Output indicating sequence detection.
   - **Operation**:
     - The process within this architecture implements the behavior of a Sequence Detector based on the rising edge of the clock (`clk`) and the asynchronous reset (`rst`).

2. **sequence_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `sequence` module.
   - **Inputs**:
     - `clk`, `rst`: Inputs to the Sequence Detector during simulation.
     - `data_in`: Input to the Sequence Detector representing the data input.
   - **Outputs**:
     - `sequence_detected`: Output of the Sequence Detector indicating sequence detection.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`clk`, `rst`, `data_in`) to the `sequence` module, simulating different sequence detection scenarios.
     - Additional test cases can be added to cover various scenarios.

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the Sequence Detector design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`sequence` and `sequence_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.


4. **Test Case Scenarios**:
The testbench includes test cases where different inputs (clk, rst, data_in) are applied to the sequence module.
Each test case simulates different sequence detection scenarios.


![Screenshot from 2024-02-20 21-31-33](https://github.com/MohitReezal/Embedded-practical/assets/140707863/3958cb7e-07fd-4ba5-a48b-38ae819a4930)

Finite state machine for sequence detector(Mealy State Machine)
![Screenshot from 2024-02-20 21-32-08](https://github.com/MohitReezal/Embedded-practical/assets/140707863/8444c1a4-4449-435c-8d7a-be0d7c4e9ab6)
