wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/t107360223/Desktop/ic_contest/2014_STI/STI_DAC.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_rtl"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_rtl/dac/clk} \
{/testfixture1/u_rtl/dac/counter\[2:0\]} \
{/testfixture1/u_rtl/dac/data_in\[7:0\]} \
{/testfixture1/u_rtl/dac/even1_wr} \
{/testfixture1/u_rtl/dac/even2_wr} \
{/testfixture1/u_rtl/dac/even3_wr} \
{/testfixture1/u_rtl/dac/even4_wr} \
{/testfixture1/u_rtl/dac/finish} \
{/testfixture1/u_rtl/dac/odd1_wr} \
{/testfixture1/u_rtl/dac/odd2_wr} \
{/testfixture1/u_rtl/dac/odd3_wr} \
{/testfixture1/u_rtl/dac/odd4_wr} \
{/testfixture1/u_rtl/dac/oem_addr\[4:0\]} \
{/testfixture1/u_rtl/dac/oem_dataout\[7:0\]} \
{/testfixture1/u_rtl/dac/oem_finish} \
{/testfixture1/u_rtl/dac/output_valid} \
{/testfixture1/u_rtl/dac/pi_end} \
{/testfixture1/u_rtl/dac/ptr\[7:0\]} \
{/testfixture1/u_rtl/dac/so_data} \
{/testfixture1/u_rtl/dac/so_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 2174058.039894 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2181288.619149 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2181470.902660 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2181531.663830 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2182564.603723 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 2187547.019681 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2188458.437234 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 2186514.079787 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 2188579.959574 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2217445.867021 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 2216534.449468 -snap {("G1" 16)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2218539.568085 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 2215501.509574 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2216473.688298 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 2218539.568085 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 2217506.628191 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 2216517.254170 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9999392.062121 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 2217537.662233 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2218519.134574 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2219500.606915 -snap {("G1" 12)}
wvExit
