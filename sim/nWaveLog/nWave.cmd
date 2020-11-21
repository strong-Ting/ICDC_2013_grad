wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1536 801
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 17
wvScrollDown -win $_nWave1 17
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/pow2_add_0\[32:0\]} \
{/testfixture1/DUT/pow2_add_1\[32:0\]} \
{/testfixture1/DUT/pow2_add_2\[32:0\]} \
{/testfixture1/DUT/pow2_add_3\[32:0\]} \
{/testfixture1/DUT/pow2_add_4\[32:0\]} \
{/testfixture1/DUT/pow2_add_5\[32:0\]} \
{/testfixture1/DUT/pow2_add_6\[32:0\]} \
{/testfixture1/DUT/pow2_add_7\[32:0\]} \
{/testfixture1/DUT/pow2_add_8\[32:0\]} \
{/testfixture1/DUT/pow2_add_9\[32:0\]} \
{/testfixture1/DUT/pow2_add_10\[32:0\]} \
{/testfixture1/DUT/pow2_add_11\[32:0\]} \
{/testfixture1/DUT/pow2_add_12\[32:0\]} \
{/testfixture1/DUT/pow2_add_13\[32:0\]} \
{/testfixture1/DUT/pow2_add_14\[32:0\]} \
{/testfixture1/DUT/pow2_add_15\[32:0\]} \
{/testfixture1/DUT/cmp_1_0\[36:0\]} \
{/testfixture1/DUT/cmp_1_1\[36:0\]} \
{/testfixture1/DUT/cmp_1_2\[36:0\]} \
{/testfixture1/DUT/cmp_1_3\[36:0\]} \
{/testfixture1/DUT/cmp_1_4\[36:0\]} \
{/testfixture1/DUT/cmp_1_5\[36:0\]} \
{/testfixture1/DUT/cmp_1_6\[36:0\]} \
{/testfixture1/DUT/cmp_1_7\[36:0\]} \
{/testfixture1/DUT/cmp_2_0\[36:0\]} \
{/testfixture1/DUT/cmp_2_1\[36:0\]} \
{/testfixture1/DUT/done} \
{/testfixture1/DUT/cmp_2_2\[36:0\]} \
{/testfixture1/DUT/cmp_2_3\[36:0\]} \
{/testfixture1/DUT/cmp_3_0\[36:0\]} \
{/testfixture1/DUT/cmp_3_1\[36:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/pow2_add_0\[32:0\]} \
{/testfixture1/DUT/pow2_add_1\[32:0\]} \
{/testfixture1/DUT/pow2_add_2\[32:0\]} \
{/testfixture1/DUT/pow2_add_3\[32:0\]} \
{/testfixture1/DUT/pow2_add_4\[32:0\]} \
{/testfixture1/DUT/pow2_add_5\[32:0\]} \
{/testfixture1/DUT/pow2_add_6\[32:0\]} \
{/testfixture1/DUT/pow2_add_7\[32:0\]} \
{/testfixture1/DUT/pow2_add_8\[32:0\]} \
{/testfixture1/DUT/pow2_add_9\[32:0\]} \
{/testfixture1/DUT/pow2_add_10\[32:0\]} \
{/testfixture1/DUT/pow2_add_11\[32:0\]} \
{/testfixture1/DUT/pow2_add_12\[32:0\]} \
{/testfixture1/DUT/pow2_add_13\[32:0\]} \
{/testfixture1/DUT/pow2_add_14\[32:0\]} \
{/testfixture1/DUT/pow2_add_15\[32:0\]} \
{/testfixture1/DUT/cmp_1_0\[36:0\]} \
{/testfixture1/DUT/cmp_1_1\[36:0\]} \
{/testfixture1/DUT/cmp_1_2\[36:0\]} \
{/testfixture1/DUT/cmp_1_3\[36:0\]} \
{/testfixture1/DUT/cmp_1_4\[36:0\]} \
{/testfixture1/DUT/cmp_1_5\[36:0\]} \
{/testfixture1/DUT/cmp_1_6\[36:0\]} \
{/testfixture1/DUT/cmp_1_7\[36:0\]} \
{/testfixture1/DUT/cmp_2_0\[36:0\]} \
{/testfixture1/DUT/cmp_2_1\[36:0\]} \
{/testfixture1/DUT/done} \
{/testfixture1/DUT/cmp_2_2\[36:0\]} \
{/testfixture1/DUT/cmp_2_3\[36:0\]} \
{/testfixture1/DUT/cmp_3_0\[36:0\]} \
{/testfixture1/DUT/cmp_3_1\[36:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetCursor -win $_nWave1 62502.006261 -snap {("G1" 49)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 54973.441732
wvGetSignalOpen -win $_nWave1
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 845
wvResizeWindow -win $_nWave1 0 23 1536 801
wvZoom -win $_nWave1 22563209.991457 22588408.691478
wvZoom -win $_nWave1 22571316.704769 22574311.795897
wvZoom -win $_nWave1 4493932.584270 4610658.105939
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 9619.218901 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10266.666327 -snap {("G1" 1)}
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 22391845.906902
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/fft_valid} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/fft_valid} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 851346.613626 904489.260219
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 21691492.776886
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/fft_valid} \
{/testfixture1/fir_valid} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/done} \
{/testfixture1/fft_valid} \
{/testfixture1/fir_valid} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/fft_d2\[31:0\]} \
{/testfixture1/DUT/fft_d3\[31:0\]} \
{/testfixture1/DUT/fft_d4\[31:0\]} \
{/testfixture1/DUT/fft_d5\[31:0\]} \
{/testfixture1/DUT/fft_d6\[31:0\]} \
{/testfixture1/DUT/fft_d7\[31:0\]} \
{/testfixture1/DUT/fft_d8\[31:0\]} \
{/testfixture1/DUT/fft_d9\[31:0\]} \
{/testfixture1/DUT/fft_d10\[31:0\]} \
{/testfixture1/DUT/fft_d11\[31:0\]} \
{/testfixture1/DUT/fft_d12\[31:0\]} \
{/testfixture1/DUT/fft_d13\[31:0\]} \
{/testfixture1/DUT/fft_d14\[31:0\]} \
{/testfixture1/DUT/fft_d15\[31:0\]} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
