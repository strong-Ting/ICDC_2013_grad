wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 53564.725574 -snap {("G3" 20)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 58835.741617 -snap {("G3" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 22 23 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 22 23 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 22 23 24 25 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 20 21 22 23 24 25 26 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G3}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[0\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]/fb"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/b\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/c\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/d\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_I\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_R\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_I\[48:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_R\[48:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/b\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/c\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/d\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_I\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_R\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_I\[48:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_R\[48:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 16 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 19 21 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 15 16 17 18 19 21 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSelectGroup -win $_nWave1 {G4}
wvSetCursor -win $_nWave1 310807.361963
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvZoomAll -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetCursor -win $_nWave1 313655.414642 -snap {("G3" 2)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2013_grad/sim/signal.rc"
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvMoveSelected -win $_nWave1
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/b\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/c\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/d\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_R\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_I\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_R\[48:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_I\[48:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/b\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/c\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/d\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_R\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_I\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_R\[48:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_I\[48:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/fft_b\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 13 14 )} 
wvSetPosition -win $_nWave1 {("G3" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 14 )} 
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectGroup -win $_nWave1 {G4}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture1/DUT/genblk1\[4\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/b\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/c\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/d\[15:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_R\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_a_I\[16:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_R\[48:0\]} \
{/testfixture1/DUT/genblk1\[4\]/fb/fft_b_I\[48:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture1/DUT/genblk1\[6\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/a\[15:0\]} \
{/testfixture1/DUT/genblk1\[6\]/fb/c\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectGroup -win $_nWave1 {G4}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSelectGroup -win $_nWave1 {G3}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G3}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 15)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[0\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[1\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[0\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[0\]/fb"
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 16 17 )} 
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[63:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[63:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[0\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[1\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[4\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT/genblk1\[6\]/fb"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1/DUT"
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[63:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/y_buffer\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/DUT/clk} \
{/testfixture1/DUT/rst} \
{/testfixture1/DUT/data\[15:0\]} \
{/testfixture1/DUT/data_valid} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fir_d\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture1/DUT/fft_run} \
{/testfixture1/DUT/counter_fir\[5:0\]} \
{/testfixture1/DUT/fft_valid} \
{/testfixture1/DUT/fir_valid} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_R\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/W_I\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[31:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[31:0\]} \
{/testfixture1/DUT/SUM\[41:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/counter_fft\[2:0\]} \
{/testfixture1/DUT/counter_p\[3:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/X\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/Y\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_a\[63:0\]} \
{/testfixture1/DUT/genblk1\[0\]/fb/fft_b\[63:0\]} \
{/testfixture1/DUT/fft_d0\[31:0\]} \
{/testfixture1/DUT/fft_d1\[31:0\]} \
{/testfixture1/DUT/y_buffer\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetPosition -win $_nWave1 {("G2" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 70)}
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 38)}
