TOP = tb

SRC = \
half_subtractor_gatelevel.v\
half_subtractor_gatelevel_tb.v

VCS = vcs -full64 -sverilog
VCS_OPTS = -debug_access+all -kdb -l compile.log

compile:
	$(VCS) $(VCS_OPTS) $(SRC)

run:
	./simv -l run.log

gui:
	verdi -sv -f filelist.f -top $(TOP) &

waves:
	verdi -ssf dump.fsdb &

all: compile run waves

clean:
	rm -rf \
		csrc \
		simv \
		simv.daidir \
		verdiLog \
		novas* \
		*.log \
		*.vpd \
		*.fsdb \
			*.key \
		DVEfiles
