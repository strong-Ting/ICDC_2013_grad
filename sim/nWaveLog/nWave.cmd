wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 283 196 1536 801
wvResizeWindow -win $_nWave1 283 31 1536 832
wvResizeWindow -win $_nWave1 283 152 1536 845
wvSetCursor -win $_nWave1 1043045.265452 -snap {("G1" 1)}
wvResizeWindow -win $_nWave1 0 23 1536 841
wvSetCursor -win $_nWave1 977795.661648 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 976088.549921 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 976088.549921 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1060401.905705 -snap {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1064859.364105 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 1060591.584786 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1063910.968700 -snap {("G4" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvSetPosition -win $_nWave1 {("G4" 19)}
wvSetPosition -win $_nWave1 {("G4" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d1\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d2\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d3\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d4\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d5\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d6\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d7\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d8\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d9\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d10\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d11\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d12\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d13\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d14\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d15\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           )} 
wvSetPosition -win $_nWave1 {("G4" 19)}
wvSetPosition -win $_nWave1 {("G4" 19)}
wvSetPosition -win $_nWave1 {("G4" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d1\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d2\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d3\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d4\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d5\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d6\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d7\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d8\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d9\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d10\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d11\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d12\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d13\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d14\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d15\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           )} 
wvSetPosition -win $_nWave1 {("G4" 19)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1060686.424326 -snap {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G4" 20)}
wvSetPosition -win $_nWave1 {("G4" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d1\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d2\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d3\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d4\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d5\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d6\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d7\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d8\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d9\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d10\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d11\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d12\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d13\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d14\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq_comb\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 20 )} 
wvSetPosition -win $_nWave1 {("G4" 20)}
wvSetPosition -win $_nWave1 {("G4" 20)}
wvSetPosition -win $_nWave1 {("G4" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/done} \
{/testfixture1/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d1\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d2\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d3\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d4\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d5\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d6\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d7\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d8\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d9\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d10\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d11\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d12\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d13\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d14\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq_comb\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 20 )} 
wvSetPosition -win $_nWave1 {("G4" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1059453.510301 -snap {("G4" 20)}
wvSetCursor -win $_nWave1 1060401.905705 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1058599.954437 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 1060212.226624 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1057841.238114 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 1059548.349842 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 1056987.682250 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 1054996.051902 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1051486.988906 -snap {("G4" 1)}
