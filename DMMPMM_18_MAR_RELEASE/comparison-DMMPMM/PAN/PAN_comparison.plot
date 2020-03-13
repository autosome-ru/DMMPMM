set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on PAN_footprints.xml (used 25 of 25), average length=40 (flank length=11)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 12, '90%%' 22)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'PAN_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/pan','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/pan','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/pan','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/pan','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/pan','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/pan'
