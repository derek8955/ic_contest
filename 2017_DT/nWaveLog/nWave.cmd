wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360223/Desktop/ic_contest/2017_DT/DT.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 9999978560.127558 -snap {("G1" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 46307.639624 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 9999962572.012760 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 9999968499.734686 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
{/testfixture/u_dut/res_di\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
{/testfixture/u_dut/res_di\[7:0\]} \
{/testfixture/u_dut/res_do\[7:0\]} \
{/testfixture/u_dut/res_rd} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 17535351.227979 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 152999495.006006 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 152870449.422075 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCenterMarker -win $_nWave1
wvZoomCursorMarker -win $_nWave1
wvZoom -win $_nWave1 0.000000 152870500.000000
wvZoomCursorMarker -win $_nWave1
wvZoom -win $_nWave1 0.000000 152870500.000000
wvCenterMarker -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 18192411.464890 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetRadix -win $_nWave1 -1Com
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
{/testfixture/u_dut/res_di\[7:0\]} \
{/testfixture/u_dut/res_do\[7:0\]} \
{/testfixture/u_dut/res_rd} \
{/testfixture/u_dut/sti_addr\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 10881.576811 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 22962446.506212 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18320475.608818 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 18326489.111793 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 18303127.129999 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 18320451.745721 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18345388.692576 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18338134.308035 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 18320427.882614 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18321477.859324 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 18319950.620473 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 18320523.335042 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18321382.406896 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 18320475.608828 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18321430.133110 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 18307804.298989 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 18326536.838017 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
{/testfixture/u_dut/res_di\[7:0\]} \
{/testfixture/u_dut/res_do\[7:0\]} \
{/testfixture/u_dut/res_rd} \
{/testfixture/u_dut/sti_addr\[9:0\]} \
{/testfixture/u_dut/res_wr} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 18332545.568367 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 18320518.562418 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18326555.928500 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18327438.863460 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18331495.591658 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 18332545.568367 -snap {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_dut"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_dut/clk} \
{/testfixture/u_dut/fw_finish} \
{/testfixture/u_dut/res_addr\[13:0\]} \
{/testfixture/u_dut/state\[3:0\]} \
{/testfixture/u_dut/counter\[3:0\]} \
{/testfixture/u_dut/res_di\[7:0\]} \
{/testfixture/u_dut/res_do\[7:0\]} \
{/testfixture/u_dut/res_rd} \
{/testfixture/u_dut/sti_addr\[9:0\]} \
{/testfixture/u_dut/res_wr} \
{/testfixture/u_dut/minimum\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 18327558.178996 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 18326627.517821 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18327033.190641 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 18327486.589674 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 18328441.113956 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 18329491.090666 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 18312786.915736 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19079455.607384 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 19073418.241302 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 19074492.081119 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 19071580.782060 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32775447.263186 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 32774487.966280 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 32774965.228421 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 32774368.650744 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 6538.491330 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 134468.608183 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 139159442.891624 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 139163506.300468 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 139163912.641353 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 139160449.910337 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 139159400.490850 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 139160513.511533 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 139159365.156860 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 138308469.677847 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 138302445.232560 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 138303540.586249 -snap {("G1" 3)}
wvExit
