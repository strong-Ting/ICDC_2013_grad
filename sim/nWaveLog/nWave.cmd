wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/lin/github/CIC_2013_grad/sim/FAS.fsdb}
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 82500
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvResizeWindow -win $_nWave1 486 531 960 332
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetCursor -win $_nWave1 1007.690967 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 2560.210066 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 2516.816675 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2565.031553 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 2888.071242 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 2526.459650 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 3008.608439 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 3505.221691 -snap {("G1" 1)}
wvResizeWindow -win $_nWave1 1776 180 960 332
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
{/testfixture1/DUT/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
{/testfixture1/DUT/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetCursor -win $_nWave1 46596.400861 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 47364.277210 -snap {("G2" 0)}
wvSelectStuckSignals -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[4:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/counter\[5:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/counter\[5:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 35472.509529 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 48)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 48)}
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 77376.895209 78733.959699
wvZoom -win $_nWave1 77376.895209 77740.773810
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 123608.373267 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 123898.233888
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 1664.628137 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 1979.333954
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 38758.505880
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 48)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 1050024.837547
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvSetCursor -win $_nWave1 1050921.959706 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3272.486333 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 2603.779184 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 228.766542 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 3669697.186365 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 3669892.677773
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1919588.823428 -snap {("G1" 7)}
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -negedge
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -anyChange
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1049694.644686
wvSetCursor -win $_nWave1 1049533.035454 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1049831.390960 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 1049926.698969
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvSetCursor -win $_nWave1 1050953.162061
wvSetCursor -win $_nWave1 1048995.842002
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 1047934.890751
wvSetCursor -win $_nWave1 1048840.826575
wvSetCursor -win $_nWave1 1049946.234506
wvSetCursor -win $_nWave1 1049031.987345
wvSetCursor -win $_nWave1 1050075.060242 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/counter\[5:0\]} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/SUM\[36:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 1049842.381992
wvSetCursor -win $_nWave1 1050623.647748
wvSetCursor -win $_nWave1 1049842.381992
wvSetCursor -win $_nWave1 1050794.030174
wvSetCursor -win $_nWave1 1051820.480395
wvSetCursor -win $_nWave1 1052639.147171
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 1054451.586457 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 36116.223976 -snap {("G1" 7)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
