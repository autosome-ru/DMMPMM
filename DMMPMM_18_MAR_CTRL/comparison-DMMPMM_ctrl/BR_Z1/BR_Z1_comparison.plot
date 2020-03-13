set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on BR_Z1_footprints.xml (used 17 of 17), average length=37 (flank length=8)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 8, '90%%' 15)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BR_Z1_comparison.png'
plot 'Bigfoot_ctrl_motif.p_value' using 2:1 with lines t 'Bigfoot_ctrl_motif.xml/br-Z1','SeSiMCMC_ctrl_motif.p_value' using 2:1 with lines t 'SeSiMCMC_ctrl_motif.xml/br-Z1','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/br-Z1'
