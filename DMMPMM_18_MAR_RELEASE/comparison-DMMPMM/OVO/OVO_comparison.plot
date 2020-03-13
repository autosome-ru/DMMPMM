set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on OVO_footprints.xml (used 12 of 12), average length=44 (flank length=11)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 10)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'OVO_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/ovo','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/ovo','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/ovo','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/ovo','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/ovo'
