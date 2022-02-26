wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/t107360223/Desktop/ic_contest/2020_SME/SME.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/\$unit_0x29ffa1f6"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/valid_temp} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/counter_comp_pat\[3:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/counter_pat\[3:0\]} \
{/testfixture/u_SME/fail} \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/star_occur\[4:0\]} \
{/testfixture/u_SME/str_idx\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 2496131.467629 -snap {("G2" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 324564.501253 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 1620825.062020 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 1608032.008686 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 1613165.023913 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 1617034.527699 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1619008.764325 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1617192.466629 -snap {("G2" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/\$unit_0x29ffa1f6"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_SME"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_SME"
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/valid_temp} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/counter_comp_pat\[3:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/counter_pat\[3:0\]} \
{/testfixture/u_SME/fail} \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/star_occur\[4:0\]} \
{/testfixture/u_SME/str_idx\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/str\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetCursor -win $_nWave1 1612849.146053 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1639382.886302 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 1608110.978152 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1608742.733872 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1638751.130582 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1613007.084984 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1614744.413214 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 1613165.023914 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 1628564.069594 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1619166.703256 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 1617034.527700 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1624931.474203 -snap {("G4" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2603205.206930 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 1736041.511491 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 2305885.171112 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2313071.392429 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 2315203.567985 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2316861.926750 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2318994.102306 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2320889.369466 -snap {("G4" 4)}
wvSetCursor -win $_nWave1 2328944.254899 -snap {("G3" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/valid_temp} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/compare_valid\[2:0\]} \
{/testfixture/u_SME/counter_comp_str\[4:0\]} \
{/testfixture/u_SME/counter_pat\[3:0\]} \
{/testfixture/u_SME/fail} \
{/testfixture/u_SME/star_occur\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_SME/pat\[0:7\]} \
{/testfixture/u_SME/counter_comp_pat\[3:0\]} \
{/testfixture/u_SME/counter_comp_pat_temp\[3:0\]} \
{/testfixture/u_SME/fail_temp} \
{/testfixture/u_SME/str\[0:31\]} \
{/testfixture/u_SME/str_idx\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetCursor -win $_nWave1 2324995.781648 -snap {("G5" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvResizeWindow -win $_nWave1 0 -16 1536 801
wvSetCursor -win $_nWave1 2321378.420583 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2325091.538614 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 2327145.603907 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 2324775.528569 -snap {("G5" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2410730.260849 -snap {("G4" 4)}
wvSetCursor -win $_nWave1 2420842.582294 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 2428900.838445 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 2437117.099619 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2460817.853005 -snap {("G4" 4)}
wvSetCursor -win $_nWave1 2463108.925832 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 2481484.909957 -snap {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 5 )} {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 5 )} {( "G4" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2458653.184195 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 2118389.368082 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2142753.742562 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 2150891.001225 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2153103.071541 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 2154604.119255 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 2147004.077669 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2151112.208256 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2153087.271039 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2255316.520645 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 3091558.102618 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 3010158.076183 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 2973579.913457 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3318109.865180 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3347419.796868 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 3352870.970147 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 3355083.040463 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 3362509.276524 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3365116.359397 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 3362825.286569 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3322929.018369 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 3000440.767296 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 3308629.563827 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3297099.147303 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1587940.579364 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1571982.072084 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 1126723.918471 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2971084.971809 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 3316088.938599 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3322962.157081 -snap {("G2" 1)}
wvExit
