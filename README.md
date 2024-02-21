
# Embedded System VHDL Lab

VHDL code and test cases for embedded system lab. The code is compiled using GHDL and the waveforms is visualized using GTKWave. We have executed our code in both linux and windows.


## Prerequisites
Ensure you have the following software installed on your system:
- GHDL
- GTKWave

## Getting Started

### Cloning the Repository
`https://github.com/viveksaud/embedded_assignment.git`

### Installing GHDL
Follow the instructions on the [GHDL GitHub repository](https://github.com/ghdl/ghdl) to install GHDL on your system.

### Installing GTKWave
Follow the instructions on the [GTKWave website](https://gtkwave.sourceforge.net/) to install GTKWave on your system.


## Execution Process

- Go to the problem directory whose make file you want to create. For eg: If you want to create make file for mux
`$ cd mux`
- Run the Makefile by running make command as
`$ make`
- This creates result.vcd and
- You can view content of result.vcd as
`$ cat Makefile`
- Finally, to observe output in graphical representation, run following command
`$ gtkwave result.vcd`
This launches the gtkwave and you can now visualize the output waveform by selecting signals.
## Project Structure
```
VHDL LAB/
|-- Lab1/
|   |-- code.vhdl
|   |-- code_tb.vhdl
|   |-- result.vcd
|   |-- Makefile
|   |-- readme.md
|-- Lab2/
|   |-- ...
|-- Lab3/
|   |-- ...
|-- Lab4/
|   |-- ...
|-- Lab5/
|   |-- ...
|-- Lab6/
|   |-- ...
|-- Lab7/
|   |-- ...
|-- Lab8/
|   |-- ...
|-- readme.md
```