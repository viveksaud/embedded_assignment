all:	result.vcd
result.vcd: fulladder.vhdl  fulladdertest.vhdl
	ghdl	-a  -fsynopsys  fulladder.vhdl
	ghdl	-a  -fsynopsys  fulladdertest.vhdl
	ghdl	-e  -fsynopsys  fa_test
	ghdl	-r  -fsynopsys  fa_test --vcd=result.vcd
clean:
	rm  -rf result.vcd
