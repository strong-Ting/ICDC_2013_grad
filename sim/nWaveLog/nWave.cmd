wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                            wvSetCursor -win $_nWave1 31662.378625 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/delay8"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
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
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
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
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetCursor -win $_nWave1 2670.029813 -snap {("G3" 0)}
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/ff0/data\[15:0\]} \
{/testfixture1/DUT/ff0/data_valid} \
{/testfixture1/DUT/ff0/counter32\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/ff0/f0/state\[1:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 1384.459903 -snap {("G3" 0)}
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 58543.527795 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 51441.813578 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
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
{/testfixture1/DUT/ff0/f0/W_R\[31:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
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
{/testfixture1/DUT/ff0/f0/W_R\[31:0\]} \
{/testfixture1/DUT/ff0/f0/W_I\[31:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
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
{/testfixture1/DUT/ff0/f0/W_R\[31:0\]} \
{/testfixture1/DUT/ff0/f0/W_I\[31:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 52555.032358 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvSetCursor -win $_nWave1 55549.986434 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/t0"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
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
{/testfixture1/DUT/ff0/f0/W_R\[31:0\]} \
{/testfixture1/DUT/ff0/f0/W_I\[31:0\]} \
{/testfixture1/DUT/ff0/t0/index\[2:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 1200000
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/lin/github/CIC_2013_grad/sim/FAS.fsdb}
wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 55521.732150 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f1"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f2"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f2"
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_br\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f3"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/din_br\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/din_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/din_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/din_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalClose -win $_nWave1
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f3"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f2"
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f3"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f3"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0/f3"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 118 243 1536 801
wvSetCursor -win $_nWave1 61301.240171 -snap {("G2" 0)}
wvResizeWindow -win $_nWave1 0 23 1536 841
wvResizeWindow -win $_nWave1 118 243 1536 801
wvResizeWindow -win $_nWave1 0 23 1536 841
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57989.838117 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 58441.906656 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 59459.060871 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 60447.960802 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 61394.479307 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 62369.252096 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 63541.804871 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 64516.577660 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 65463.096165 -snap {("G3" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 1255 81 1536 801
wvResizeWindow -win $_nWave1 1360 31 1536 808
wvResizeWindow -win $_nWave1 1360 94 1536 801
wvResizeWindow -win $_nWave1 1536 23 1344 817
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 50525.436759 -snap {("G3" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/fft_d0\[31:0\]} \
{/testfixture1/DUT/ff0/fft_d1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 23)}
wvSetPosition -win $_nWave1 {("G3" 23)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 )} 
wvSetPosition -win $_nWave1 {("G3" 23)}
wvSetPosition -win $_nWave1 {("G3" 23)}
wvSetPosition -win $_nWave1 {("G3" 23)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 )} 
wvSetPosition -win $_nWave1 {("G3" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 66171.481379 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 66242.275771 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 65647.602874 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetCursor -win $_nWave1 50589.635584 -snap {("G3" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G3" 24)}
wvSetPosition -win $_nWave1 {("G3" 24)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/fir_valid} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 35659.098201 -snap {("G1" 4)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -anyChange
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
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSetCursor -win $_nWave1 66482.976706 -snap {("G3" 23)}
wvSetCursor -win $_nWave1 67502.415958 -snap {("G3" 23)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSetCursor -win $_nWave1 42427.042126 -snap {("G3" 14)}
wvSetCursor -win $_nWave1 43050.032780 -snap {("G3" 15)}
wvSetCursor -win $_nWave1 4842.336449 -snap {("G3" 20)}
wvSearchNext -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 67476.962617 -snap {("G3" 23)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 3086.635514 -snap {("G3" 21)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G3" 25)}
wvSetPosition -win $_nWave1 {("G3" 25)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvSetPosition -win $_nWave1 {("G3" 25)}
wvSetPosition -win $_nWave1 {("G3" 25)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/freq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1090436.588785 -snap {("G3" 25)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/ff0"
wvSetPosition -win $_nWave1 {("G3" 26)}
wvSetPosition -win $_nWave1 {("G3" 26)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvSetPosition -win $_nWave1 {("G3" 26)}
wvSetPosition -win $_nWave1 {("G3" 26)}
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
{/testfixture1/DUT/ff0/f0/dout_ar\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_ai\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f0/dout_bi\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/ff0/f1/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f1/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f2/dout_bi\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_br\[23:0\]} \
{/testfixture1/DUT/ff0/f3/dout_bi\[23:0\]} \
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
{/testfixture1/DUT/ff0/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/freq\[3:0\]} \
{/testfixture1/DUT/ff0/fft_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvZoomIn -win $_nWave1
