#ident	"@(#)local.cshrc	1.2	00/05/01 SMI"
umask 022
set path=(/bin /usr/bin /usr/ucb /etc .)
if ( $?prompt ) then
	set history=32
endif

#####			Cadence Environment Setup			#####

echo "-- Now source Cadence NC-Verilog --"
source  /usr/cad/cadence/CIC/incisiv.cshrc

echo "-- Now source Cadence GENUS --"
source /usr/cad/cadence/CIC/geneus.cshrc

echo "-- Now source Cadence INNOVUS --"
source /usr/cad/cadence/CIC/innovus.cshrc

echo "-- Now source Cadence Jasper --"
source /usr/cad/cadence/CIC/jasper.cshrc

echo "-- Now source Cadence STRATUS --"
source /usr/cad/cadence/CIC/stratus.cshrc

#####			Synopsys Environment Setup			#####

echo "-- Now source Synopsys Formality --"
source /usr/cad/synopsys/CIC/formality.cshrc

echo "-- Now source Synopsys PrimeTime --"
source /usr/cad/synopsys/CIC/primetime.cshrc

echo "-- Now source Synopsys Spyglass --"
source /usr/cad/synopsys/CIC/spyglass.cshrc

echo "-- Now source Synopsys Design Compiler --"
source /usr/cad/synopsys/CIC/synthesis.cshrc

echo "-- Now source Synopsys TetraMAX --"
source /usr/cad/synopsys/CIC/tmax.cshrc

echo "-- Now source Synopsys Verdi --"
source /usr/cad/synopsys/CIC/verdi64.cshrc

echo "-- Now source Synopsys CustomSim --"
source /usr/cad/synopsys/CIC/xa.cshrc

#####			Mentor Environment Setup			#####

echo "-- Now source Mentor Calibre --"
source /usr/cad/mentor/CIC/calibre.cshrc

echo "-- Now source Mentor Catapult --"
source /usr/cad/mentor/CIC/catapult.cshrc

# echo "-- Now source Mentor Model_Sim --"
# source /usr/cad/mentor/CIC/modelsim.cshrc

# echo "-- Now source Mentor Questa_Sim --"
# source /usr/cad/mentor/CIC/questasim.cshrc

echo "-- Now source Mentor MBISTArchitect --"
source /usr/cad/mentor/CIC/tessent.cshrc


#2014.03.17 by shwu
#2019.02.18 by baiyh
#2020.07.27 by liao


