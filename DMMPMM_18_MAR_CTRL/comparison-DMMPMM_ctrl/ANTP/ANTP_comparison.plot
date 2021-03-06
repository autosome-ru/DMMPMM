set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on ANTP_footprints.xml (used 12 of 12), average length=35 (flank length=6)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 10)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ANTP_comparison.png'
plot 'Bigfoot_ctrl_motif.p_value' using 2:1 with lines t 'Bigfoot_ctrl_motif.xml/Antp','SeSiMCMC_ctrl_motif.p_value' using 2:1 with lines t 'SeSiMCMC_ctrl_motif.xml/Antp','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Antp'
