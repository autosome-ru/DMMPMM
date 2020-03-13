set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on FTZ_footprints.xml (used 66 of 66), average length=35 (flank length=8)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 33, '90%%' 59)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'FTZ_comparison.png'
plot 'Bigfoot_ctrl_motif.p_value' using 2:1 with lines t 'Bigfoot_ctrl_motif.xml/ftz','SeSiMCMC_ctrl_motif.p_value' using 2:1 with lines t 'SeSiMCMC_ctrl_motif.xml/ftz','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/ftz'
