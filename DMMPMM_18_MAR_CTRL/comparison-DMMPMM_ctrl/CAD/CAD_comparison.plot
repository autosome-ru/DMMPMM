set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on CAD_footprints.xml (used 13 of 13), average length=32 (flank length=9)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 11)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'CAD_comparison.png'
plot 'Bigfoot_ctrl_motif.p_value' using 2:1 with lines t 'Bigfoot_ctrl_motif.xml/cad','SeSiMCMC_ctrl_motif.p_value' using 2:1 with lines t 'SeSiMCMC_ctrl_motif.xml/cad','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/cad'
