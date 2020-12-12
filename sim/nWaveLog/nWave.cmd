wvResizeWindow -win $_nWave1 1536 23 1344 817
wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1536 841
wvResizeWindow -win $_nWave1 1248 207 1536 801
wvResizeWindow -win $_nWave1 1536 23 1344 817
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 13696.250839 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetSignalFilter -win $_nWave1 "counter32"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalSetSignalFilter -win $_nWave1 "counte*"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
