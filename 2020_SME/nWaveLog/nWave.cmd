wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 37016.098020 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 12 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetCursor -win $_nWave1 37117.021983 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 70985.778896 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 70756.406254
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57975.762614 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 8982.232680 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispat} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/lens_pat\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 7917.943619 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 8963.882869 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 2972.669447 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8028.042487 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 9009.757397 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 4000.258885 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 7972.993053 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 7982.167959 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 85996.391124 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 58957.944027 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 59967.183654 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 59031.343272 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 49984.886252 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 43030.307732 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 58940.422138 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 58004.581756 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 58986.296666 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 58004.581756 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 59500.091385 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 60270.783464 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 58050.456285 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 117007.572389 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 117998.462205 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 133063.657364 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 135045.436995 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 314621.278803 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 317025.104097 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 7853.719279 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 65362.028205 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 49874.787384 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 116983.717634 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 119038.896511 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 117974.607450 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 119075.596134 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 119038.896511 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 126158.623334 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 127186.212772 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 126195.322956 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 127002.714658 -snap {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/reset} \
{/testfixture/u_SME/str_idx\[4:0\]} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/lens_pat\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 118378.303300 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 116851.598992 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 118025.986922 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 126026.504692 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 118025.986922 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 119090.275983 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 117915.888053 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 116998.397483 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 118943.477492 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 116851.598992 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 120154.565044 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 120998.656368 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 218032.459049 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 208949.302406 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 210857.682792 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 206967.522775 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 203003.963513 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 50205.083989 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 78096.797316 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 70830.272002 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 58352.400250 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57618.407794 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 23707.956328 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 59012.993461 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 58866.194970 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 58205.601759 -snap {("G2" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 58999.231102 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 57944.116947 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 166322.690525 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 176029.740756 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 198856.906137 -snap {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/reset} \
{/testfixture/u_SME/str_idx\[4:0\]} \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetCursor -win $_nWave1 200948.784636 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 203040.663136 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 140339.357584 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 138757.603841 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 128041.313984 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 134867.443824 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 128114.713229 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 127087.123791 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 128963.392006 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 134981.212655 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 136997.856928 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 138952.111842 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 137007.031833 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 138997.986370 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 136997.856928 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 138997.986370 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 138979.636559 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 134992.681287 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 139002.573823 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 175864.592453 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 317451.737212 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 329984.658398 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 329691.061415 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 361050.889097 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 362691.362236 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 373260.853602 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 417190.302093 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 360085.689018 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 423062.241741 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 418724.346326 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 378134.563510 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 288000.289915 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 303120.534509 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 307010.694525 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 303047.135263 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 304808.717157 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 306863.896034 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvSetCursor -win $_nWave1 304955.515649 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 306790.496788 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 305175.713385 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 306863.896034 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 318314.178347 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 378061.164264 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 379749.346913 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 386281.879771 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 417109.562922 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 423054.901816 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 553136.714827 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 573835.302086 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 686638.932683 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 692070.476858 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 719279.577201 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 721114.558341 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 725004.718357 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 717103.289568 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 720039.259392 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 753949.710859 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 787860.162325 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 790649.333658 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 753656.113876 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 765913.787891 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 777731.066432 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 772299.522258 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 788006.960816 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 788887.751763 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 790649.333658 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 772960.115469 -snap {("G2" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 787006.896095 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 788970.325915 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 785942.607034 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 793099.033479 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 791080.554226 -snap {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/reset} \
{/testfixture/u_SME/str_idx\[4:0\]} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/valid_temp} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetCursor -win $_nWave1 788915.276480 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 58003.753834 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 121053.705803 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 119053.576360 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 120980.306557 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 116961.697861 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 804850.252700 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 812006.679146 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 813096.657943 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 815078.437574 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 814894.939460 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 818968.597591 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 787030.750850 -snap {("G3" 1)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 789190.523652 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 788126.234591 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 788860.227047 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 791062.204415 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 788896.926669 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 777042.948505 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 787612.439872 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 788823.527423 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 787942.736476 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 789043.725160 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 777079.648128 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 774877.670760 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 778988.028513 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 789043.725160 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 788089.534968 -snap {("G2" 1)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 58352.400250 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 166689.686753 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 198776.166966 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 203253.520948 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 204868.304351 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 207290.479456 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 207635.455910 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 205066.482314 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 202791.105701 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 144196.487940 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 152050.207219 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 152809.889411 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 141139.409361 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 144956.170132 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 141066.010115 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 158828.627550 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 140919.211624 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 122789.597961 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 134973.872730 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 132771.895362 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 130790.115731 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 132992.093099 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 131083.712713 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 167342.940039 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 162865.586057 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 164994.164180 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 155268.764138 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 164957.464557 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 162828.886435 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 190940.797499 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 164884.065311 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 162975.684926 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 188812.219376 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 220740.891211 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 222942.868579 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 220619.782456 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 59086.392706 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 129696.466972 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 131017.653393 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 135128.011146 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 131458.048866 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 149147.267055 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 148853.670073 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 149954.658757 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 151129.046686 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 157147.784825 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 159056.165211 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 156780.788597 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 158909.366720 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 150908.848950 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 170800.044507 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 170946.842998 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 172635.025647 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 149073.867810 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 171020.242244 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 173075.421120 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 309979.694010 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 301098.385293 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 310933.884203 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 301171.784538 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 311080.682694 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 311300.880431 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 320108.789903 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 321136.379341 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 358790.192333 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 361138.968192 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 374791.227873 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 361065.568946 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 566803.654358 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 550802.618817 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 564968.673218 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 760797.860474 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1096826.946745 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 1099249.121850 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 1100790.506008 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1098808.726377 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1097781.136938 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1099102.323359 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1101084.102990 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 245447.077280 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 359656.303431 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 364937.379152 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 363028.998766 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 365157.576889 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 362808.801029 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 364937.379152 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 363322.595749 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 365010.778397 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 346881.164735 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 348789.545120 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 347248.160963 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 338954.046210 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 336972.266579 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57691.807040 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 351949.382643 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 342565.289093 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 914565.610039 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 888729.075588 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 886967.493694 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 889169.471062 -snap {("G3" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 887187.691431 -snap {("G3" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 885031.588591 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 886976.668599 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 889031.847476 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 884976.539157 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 883013.109337 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1001018.911467 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 1222959.880344 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 1230923.698491 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1225015.059221 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1229033.667917 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 1224941.659975 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 1224060.869028 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1225033.409032 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 374922.608185 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 352022.043558 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 353031.283185 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 352719.336391 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 353012.933374 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 354976.363194 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 353012.933374 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 353031.283185 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 354958.013382 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 981989.418715 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 982934.434002 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1651051.067058 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 1230932.135066 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1223922.507111 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1225017.990852 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1225953.831234 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1229036.599549 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1285003.524316 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 1283003.394874 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1276851.620603 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 969969.374758 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 970960.264573 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 969932.675135 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 970960.264573 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 259564.348114 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 398032.942426 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 399060.531864 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 428965.219502 -snap {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/reset} \
{/testfixture/u_SME/str_idx\[4:0\]} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/valid_temp} \
{/testfixture/u_SME/str\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/pat\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvSetCursor -win $_nWave1 441060.497686 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 8018.867582 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 50939.076445 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 440982.667553 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10644445.756776 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 15669040.961504 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 8000.517770 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1607902.223882 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1611003.342008 -snap {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/reset} \
{/testfixture/u_SME/str_idx\[4:0\]} \
{/testfixture/u_SME/counter_pat\[2:0\]} \
{/testfixture/u_SME/counter_str\[4:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/valid_temp} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/locate_valid} \
{/testfixture/u_SME/counter_comp_pat\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/fail} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/str\[0:31\]} \
{/testfixture/u_SME/star_occur\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1612985.121640 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 1609003.212566 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 1611021.691820 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 1612966.771828 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 1611021.691820 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1612930.072206 -snap {("G3" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1616945.010940 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1619018.539629 -snap {("G2" 2)}
wvExit
