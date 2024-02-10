all:	result.vcd
result.vcd: lcm.vhdl	lcmtest.vhdl
	ghdl    -a  -fsynopsys  lcm.vhdl
	ghdl    -a  -fsynopsys  lcmtest.vhdl
	ghdl    -e  -fsynopsys  fsmtestlcm
	ghdl    -r  -fsynopsys  fsmtestlcm   --vcd=result.vcd	--stop-time=20us
clean:
	rm  -rf result.vcd
