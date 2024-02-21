# VHDL LCM Finite State Machine Library

This VHDL library includes an LCM Finite State Machine (`lcm_fsm`) module and a corresponding testbench (`lcm_fsm_tb`). The `lcm_fsm` module is a sequential circuit that calculates the LCM of two integers (`n1`, `n2`) using a finite state machine with states (`S`, `IP`, `C`, `UX`, `UY`, `OP`).

## Files:

1. **lcm_fsm.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for an LCM FSM.
   - **Inputs**:
     - `rst`: Active-high asynchronous reset input.
     - `clk`: Clock input.
     - `n1`, `n2`: Input integers for LCM calculation.
   - **Outputs**:
     - `lcm`: Output representing the calculated LCM.
   - **Operation**:
     - The process within this architecture implements the behavior of an LCM FSM based on the rising edge of the clock (`clk`) and the asynchronous reset (`rst`).

2. **lcm_fsm_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `lcm_fsm` module.
   - **Inputs**:
     - `rst`, `clk`: Inputs to the LCM FSM during simulation.
     - `n1`, `n2`: Inputs to the LCM FSM representing two integers.
   - **Outputs**:
     - `lcm`: Output of the LCM FSM representing the calculated LCM.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`rst`, `clk`, `n1`, `n2`) to the `lcm_fsm` module, simulating different LCM calculation scenarios.
     - The clock (`clk`) is toggled in the simulation to observe the corresponding output values (`lcm`).

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the LCM FSM design.
   - **Targets**:
     - `result.vcd`: Generates a VCD waveform file for visualization.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.


4. **Test Case Scenarios**:
The testbench includes various test case scenarios where different inputs (rst, clk, n1, n2) are applied to the lcm_fsm module.
Each test case simulates different LCM calculation states based on the clock toggling and reset condition.
Modify the testbench stimuli or add more test cases as needed to thoroughly test the functionality of the lcm_fsm module.
