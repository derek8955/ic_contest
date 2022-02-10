wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/t107360223/Desktop/ic_contest/2018_univ_IDC/LCD_CTRL.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/LCD_CTRL"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/LCD_CTRL/IROM_A\[5:0\]} \
{/test/LCD_CTRL/IROM_Q\[7:0\]} \
{/test/LCD_CTRL/IROM_rd} \
{/test/LCD_CTRL/clk} \
{/test/LCD_CTRL/cmd\[3:0\]} \
{/test/LCD_CTRL/done} \
{/test/LCD_CTRL/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 1912 1 1920 1017
wvResizeWindow -win $_nWave1 1912 1 1920 1017
wvZoomAll -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvExit
