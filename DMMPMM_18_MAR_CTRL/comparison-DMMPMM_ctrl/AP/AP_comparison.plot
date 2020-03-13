set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on AP_footprints.xml (used 14 of 14), average length=21 (flank length=6)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 7, '90%%' 12)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'AP_comparison.png'
plot 'Bigfoot_ctrl_motif.p_value' using 2:1 with lines t 'Bigfoot_ctrl_motif.xml/ap','SeSiMCMC_ctrl_motif.p_value' using 2:1 with lines t 'SeSiMCMC_ctrl_motif.xml/ap','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/ap'
