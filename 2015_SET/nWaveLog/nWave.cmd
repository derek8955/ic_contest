wvResizeWindow -win $_nWave1 1912 69 1280 657
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360223/Desktop/ic_contest/2015_SET/SET.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/R_A\[3:0\]} \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/mode\[1:0\]} \
{/testfixture1/u_set/radius\[11:0\]} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvResizeWindow -win $_nWave1 1912 69 1280 657
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 1508.547255 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 8151.957279 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/sqrt_x\[7:0\]} \
{/testfixture1/u_set/xA_tmp\[3:0\]} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 6759.452121 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetCursor -win $_nWave1 5802.104825 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/sqrt_x\[7:0\]} \
{/testfixture1/u_set/xA_tmp\[3:0\]} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/rst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5918.146922 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 6730.441597 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 8122.946755 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 24716.966555 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 26254.524333 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 6585.388976 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 8326.020424 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/sqrt_x\[7:0\]} \
{/testfixture1/u_set/xA_tmp\[3:0\]} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/rst} \
{/testfixture1/u_set/R_A\[3:0\]} \
{/testfixture1/u_set/x_A\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9747.536106 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 8297.009900 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 29184.587270 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/sqrt_x\[7:0\]} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/rst} \
{/testfixture1/u_set/x_A\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_set/counter\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvUnknownSaveResult -win $_nWave1 -clear
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/sqrt_r\[7:0\]} \
{/testfixture1/u_set/sqrt_xy_plus\[8:0\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/sqrt_x\[7:0\]} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/u_set/state\[1:0\]} \
{/testfixture1/u_set/rst} \
{/testfixture1/u_set/x_A\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/u_set/counter\[1:0\]} \
{/testfixture1/u_set/match_array\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 47252.341695 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9660.504534 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 11314.104409 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 35198.468921 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 45729.289179 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 47255.242748 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 59106.041853 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 47008.653293 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 45819.221803 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 59280.104998 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 62320.407926 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 60811.860671 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 62320.407926 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 60840.871195 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 59274.302893 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 62146.344781 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 65163.439291 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 68267.565372 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 72851.228184 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 62407.439499 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 63915.986753 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 65134.428766 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 74330.764914 -snap {("G3" 1)}
