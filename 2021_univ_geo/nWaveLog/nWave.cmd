wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/t107360223/Desktop/ic_contest/2021_univ_geo/geofence.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter_INSIDE\[2:0\]} \
{/testfixture/u_geofence/counter_det_A\[2:0\]} \
{/testfixture/u_geofence/counter_det_B\[2:0\]} \
{/testfixture/u_geofence/det_AxBy\[21:0\]} \
{/testfixture/u_geofence/det_Ax\[10:0\]} \
{/testfixture/u_geofence/det_Ay\[10:0\]} \
{/testfixture/u_geofence/det_BxAy\[21:0\]} \
{/testfixture/u_geofence/det_Bx\[10:0\]} \
{/testfixture/u_geofence/det_By\[10:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/match_array\[0:5\]} \
{/testfixture/u_geofence/obj_x\[9:0\]} \
{/testfixture/u_geofence/obj_y\[9:0\]} \
{/testfixture/u_geofence/x\[0:5\]} \
{/testfixture/u_geofence/y\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 103476.493421 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter_INSIDE\[2:0\]} \
{/testfixture/u_geofence/counter_det_A\[2:0\]} \
{/testfixture/u_geofence/counter_det_B\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/match_array\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/obj_x\[9:0\]} \
{/testfixture/u_geofence/obj_y\[9:0\]} \
{/testfixture/u_geofence/x\[0:5\]} \
{/testfixture/u_geofence/y\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/det_AxBy\[21:0\]} \
{/testfixture/u_geofence/det_Ax\[10:0\]} \
{/testfixture/u_geofence/det_Ay\[10:0\]} \
{/testfixture/u_geofence/det_BxAy\[21:0\]} \
{/testfixture/u_geofence/det_Bx\[10:0\]} \
{/testfixture/u_geofence/det_By\[10:0\]} \
{/testfixture/u_geofence/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetCursor -win $_nWave1 81990.155428 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 52165.835526 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 103369.596217 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetCursor -win $_nWave1 50455.480263 -snap {("G4" 0)}
wvSelectGroup -win $_nWave1 {G4}
wvSetCursor -win $_nWave1 79210.828125 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 97276.455592 -snap {("G3" 4)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 94379.541365 -snap {("G3" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 91546.765461 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 82460.503125 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 94593.335773 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 97426.111678 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 94486.438569 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 77970.820559 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 100739.925000 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 97426.111678 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 169571.034622 -snap {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/state\[1:0\]} \
{/testfixture/u_geofence/counter_INSIDE\[2:0\]} \
{/testfixture/u_geofence/counter_det_A\[2:0\]} \
{/testfixture/u_geofence/counter_det_B\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/match_array\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/obj_x\[9:0\]} \
{/testfixture/u_geofence/obj_y\[9:0\]} \
{/testfixture/u_geofence/x\[0:5\]} \
{/testfixture/u_geofence/y\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/det_AxBy\[21:0\]} \
{/testfixture/u_geofence/det_BxAy\[21:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/det_Ax\[10:0\]} \
{/testfixture/u_geofence/det_Ay\[10:0\]} \
{/testfixture/u_geofence/det_Bx\[10:0\]} \
{/testfixture/u_geofence/det_By\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetRadix -win $_nWave1 -1Com
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 100526.476933 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 105069.608101 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 106673.066160 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 100366.131127 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 106459.271752 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 190394.956292 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 193334.629400 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter_INSIDE\[2:0\]} \
{/testfixture/u_geofence/counter_det_A\[2:0\]} \
{/testfixture/u_geofence/counter_det_B\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/match_array\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/obj_x\[9:0\]} \
{/testfixture/u_geofence/obj_y\[9:0\]} \
{/testfixture/u_geofence/x\[0:5\]} \
{/testfixture/u_geofence/y\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/det_AxBy\[21:0\]} \
{/testfixture/u_geofence/det_BxAy\[21:0\]} \
{/testfixture/u_geofence/det_Ax\[10:0\]} \
{/testfixture/u_geofence/det_Ay\[10:0\]} \
{/testfixture/u_geofence/det_Bx\[10:0\]} \
{/testfixture/u_geofence/det_By\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetCursor -win $_nWave1 193537.734088 -snap {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/state\[2:0\]} \
{/testfixture/valid} \
{/testfixture/u_geofence/counter_INSIDE\[2:0\]} \
{/testfixture/u_geofence/counter_det_A\[2:0\]} \
{/testfixture/u_geofence/counter_det_B\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/match_array\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/obj_x\[9:0\]} \
{/testfixture/u_geofence/obj_y\[9:0\]} \
{/testfixture/u_geofence/x\[0:5\]} \
{/testfixture/u_geofence/y\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/det_AxBy\[21:0\]} \
{/testfixture/u_geofence/det_BxAy\[21:0\]} \
{/testfixture/u_geofence/det_Ax\[10:0\]} \
{/testfixture/u_geofence/det_Ay\[10:0\]} \
{/testfixture/u_geofence/det_Bx\[10:0\]} \
{/testfixture/u_geofence/det_By\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvExit
