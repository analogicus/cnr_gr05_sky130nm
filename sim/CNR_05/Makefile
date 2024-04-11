

all: typical etc mc summary

include ../../tech/make/sim.make

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=CNR_GR05
LIB =CNR_GR05_SKY130NM
OPT=



test:
	${MAKE} typical OPT="Debug"

typical: netlist
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

slow: netlist
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: netlist
	cicsim run --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: netlist
	cicsim run --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"
	

etc: netlist
	cicsim run --name ${VIEW}_etc ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

mc: netlist
	cicsim run --name ${VIEW}_mc --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run --name ${VIEW}_ntc ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run --name ${VIEW}_temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

dut: 
	perl ../../tech/script/genxdut ../../work/xsch/${CELL}.spice ${CELL}

csv:
	python3 raw2csv.py

summary:
	cicsim summary --output "README.md"

slide:
	pandoc -s  -t slidy README.md -o README.html

plot:
	python3 plot.py show_plots .svg

combine:
	python3 plot.py show_plots multi_plots .svg

single:
	python3 plot.py show_plots single_output .svg

verilog:
	# This command is not implemented yet, use 'ngspice vlnggen <verilog_file>' instead


clean:
	-rm -rf output_*
	-rm -rf plots
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
	-rm *.svg
	-rm *.so 
	-rm -rf *obj_dir
	-rm inouts.h
	-rm inputs.h
	-rm outputs.h
