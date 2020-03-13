set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on EIP74EF_footprints.xml (used 8 of 8), average length=52 (flank length=17)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 4, '90%%' 7)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EIP74EF_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/Eip74EF','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Eip74EF','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/Eip74EF','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/Eip74EF'
