set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on BRK_footprints.xml (used 10 of 10), average length=36 (flank length=10)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 5, '90%%' 9)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BRK_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/brk','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/brk','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/brk','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/brk','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/brk','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/brk'
