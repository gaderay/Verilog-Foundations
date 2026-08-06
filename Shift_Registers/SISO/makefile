SRC = siso.v siso_tb.v
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
