all:	result.vcd
result.vcd:	oneToEight.vhdl	oneToEightTest.vhdl
	ghdl	-a	-fsynopsys	oneToEight.vhdl
	ghdl	-a	-fsynopsys	oneToEightTest.vhdl
	ghdl	-e	-fsynopsys	demux_test
	ghdl	-r	-fsynopsys	demux_test	--vcd=result.vcd
clean:
	rm	-rf	result.vcd

