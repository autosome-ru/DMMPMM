set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on SD_footprints.xml (used 19 of 19), average length=40 (flank length=13)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 9, '90%%' 17)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SD_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/sd','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/sd','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/sd','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/sd'
