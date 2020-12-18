debImport "/home/lin/github/CIC_2013_grad/src/FAS.v" -path \
          {/home/lin/github/CIC_2013_grad/src}
verdiWindowResize -win $_Verdi_1 "0" "23" "1920" "1057"
srcHBSelect "FAS.genblk1\[0\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[0\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[0\]" -delim "."
srcHBSelect "FAS.genblk1\[0\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[1\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[1\]" -delim "."
srcHBSelect "FAS.genblk1\[1\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[2\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[2\]" -delim "."
srcHBSelect "FAS.genblk1\[2\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[2\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[5\]" -delim "."
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[5\]" -delim "."
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "FAS.genblk1\[5\]" -delim "."
srcHBSelect "FAS.genblk1\[5\]" -win $_nTrace1
nsMsgSelect -range {0 2-2}
nsMsgAction -tab cmpl -index {0 2}
nsMsgSelect -range {0 2-2}
nsMsgSelect -range {0 3-3}
nsMsgAction -tab cmpl -index {0 3}
nsMsgSelect -range {0 3-3}
nsMsgSelect -range {0 2-2}
nsMsgAction -tab cmpl -index {0 2}
nsMsgSelect -range {0 2-2}
nsMsgSelect -range {0 3-3}
nsMsgAction -tab cmpl -index {0 3}
nsMsgSelect -range {0 3-3}
nsMsgSelect -range {0 2-2}
nsMsgAction -tab cmpl -index {0 2}
nsMsgSelect -range {0 2-2}
nsMsgSelect -range {0 3-3}
nsMsgAction -tab cmpl -index {0 3}
nsMsgSelect -range {0 3-3}
nsMsgSelect -range {0 1-1}
nsMsgSelect -range {0 2-2}
nsMsgAction -tab cmpl -index {0 2}
nsMsgSelect -range {0 2-2}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dout_r" -line 206 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dout_r" -line 206 -pos 2 -win $_nTrace1
srcAction -pos 205 5 3 -win $_nTrace1 -name "dout_r" -ctrlKey off
nsMsgSwitchTab -tab general
nsMsgSwitchTab -tab cmpl
nsMsgSelect -range {0 1-1}
nsMsgAction -tab cmpl -index {0 1}
nsMsgSelect -range {0 1-1}
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcSignalView -on
srcSignalViewSelect "FAS.ff0.data\[15:0\]"
srcSignalViewSelect "FAS.ff0.counter\[4:0\]"
srcSignalViewSelect "FAS.ff0.counter\[4:0\]"
srcSignalViewSelect "FAS.ff0.counter\[4:0\]"
srcSignalViewExpand "FAS.ff0.counter\[4:0\]"
srcSignalViewSelect "FAS.ff0.counter\[4:0\]"
srcSignalViewCollapse "FAS.ff0.counter\[4:0\]"
srcDeselectAll -win $_nTrace1
srcSignalView -off
srcSignalView -on
srcDeselectAll -win $_nTrace1
srcTBInvokeSim
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
verdiWindowWorkMode -win $_Verdi_1 -interactiveDebug
srcDeselectAll -win $_nTrace1
srcAction -pos 13 11 4 -win $_nTrace1 -name "fft_d10" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcAction -pos 13 14 4 -win $_nTrace1 -name "fft_d11" -ctrlKey off
srcDeselectAll -win $_nTrace1
viaLogViewerGoToTime -logID 1 -next -window "$_InteractiveConsole_2"
tfgBehaviorAnalysis -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0 \
           -bboxIgnoreProtected 0 -cellModel 0 -confined_flattern 32768
tfgBehaviorAnalysis -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0 \
           -bboxIgnoreProtected 0 -cellModel 0 -confined_flattern 32768
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
srcNextTraced
srcHBSelect "FAS.ff0" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "FAS.ff0"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "FFT\(@1\):SigOp0:383:383:Combo"
schSelect -win $_nSchema3 -inst "FFT\(@1\):SigOp0:383:383:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {383 383 1 32 1 1}
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "FFT\(@1\):SigOp0:383:383:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {383 383 1 32 1 1}
srcDeselectAll -win $_nTrace1
srcAction -pos 423 1 4 -win $_nTrace1 -name "	" -ctrlKey off
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -port "counter\[4:0\]"
schSelect -win $_nSchema3 -port "dout_r\[23:0\]"
schPopViewUp -win $_nSchema3
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schSelect -win $_nSchema3 -port "fft_d1\[31:0\]"
schSelect -win $_nSchema3 -port "fft_d2\[31:0\]"
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "841"
debExit
