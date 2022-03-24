wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/t107360223/Desktop/ic_contest/2019_CONV/CONV.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 388379.398201 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1103505.400195 -snap {("G1" 8)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1096987.318793 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1093544.515587 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1093476.976534 -snap {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1094422.523271 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 1093476.976534 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1094535.088358 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 1095514.404621 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter_addr\[3:0\]} \
{/testfixture/u_CONV/counter_data\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1103495.269337 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1081555.770924 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1080497.659100 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 1081476.975362 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 1081555.770924 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 1082535.087186 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1071500.894467 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1081020.523932 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter_addr\[3:0\]} \
{/testfixture/u_CONV/counter_data\[3:0\]} \
{/testfixture/u_CONV/Kernel\[0:8\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1071452.491479 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1411498.676362 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1401456.463478 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1409480.102928 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1410515.701735 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1401422.693952 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 1399475.880761 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1390501.629146 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter_addr\[3:0\]} \
{/testfixture/u_CONV/counter_data\[3:0\]} \
{/testfixture/u_CONV/Kernel\[0:8\]} \
{/testfixture/u_CONV/nx_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1389511.056375 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 1388959.487445 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 1389511.056375 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 1388407.918515 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1390479.116129 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1400486.152423 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1401479.539321 -snap {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter_addr\[3:0\]} \
{/testfixture/u_CONV/counter_data\[3:0\]} \
{/testfixture/u_CONV/Kernel\[0:8\]} \
{/testfixture/u_CONV/nx_state\[2:0\]} \
{/testfixture/idata\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -2Com
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_CONV"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/data_conv\[39:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/idata\[19:0\]} \
{/testfixture/u_CONV/data_buffer\[19:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/zero_flag} \
{/testfixture/u_CONV/counter_addr\[3:0\]} \
{/testfixture/u_CONV/counter_data\[3:0\]} \
{/testfixture/u_CONV/Kernel\[0:8\]} \
{/testfixture/u_CONV/nx_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1404507.540180 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 1402481.368602 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1403494.454391 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1402976.654988 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 1404541.309707 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2489443.945403 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 44373354.924565 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 44373492.120061 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 44367514.913906 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 44366445.545573 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 44356499.857246 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 44357456.660491 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 44358514.772315 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 44359471.575561 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 44360495.917858 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 44361531.516665 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 44362488.319910 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 45048466.104814 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 45049512.960130 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 45048466.104814 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 45064504.941336 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/counter_layer1\[2:0\]} \
{/testfixture/u_CONV/state\[2:0\]} \
{/testfixture/u_CONV/x\[5:0\]} \
{/testfixture/u_CONV/y\[5:0\]} \
{/testfixture/u_CONV/nx_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 45059484.538426 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 45061004.167109 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 45060454.849480 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 45061501.704796 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 45105593.449640 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 45229527.611163 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 45219446.844741 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 51017504.081180 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 43673451.567163 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 51017493.679058 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 51012473.276148 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 51020476.653882 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 51016503.106287 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 51010497.196039 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 51015438.803388 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 51011531.106367 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 51011598.645420 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 51017485.799505 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 51011486.080332 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 51019770.870785 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 44354374.866244 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 44399412.157821 -snap {("G1" 1)}
wvExit
