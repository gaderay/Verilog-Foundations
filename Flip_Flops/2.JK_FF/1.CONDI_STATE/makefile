SRC = JK_FF.v JK_FF_tb.v
OUT = sim.out

compile:
	iverilog -o $(OUT) $(SRC)

run: compile
	vvp $(OUT)

wave:
	gtkwave dump.vcd

sim: run wave

clean:
	rm -f $(OUT) dump.vcd
