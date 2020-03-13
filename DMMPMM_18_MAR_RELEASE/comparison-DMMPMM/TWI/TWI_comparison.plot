set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on TWI_footprints.xml (used 15 of 15), average length=41 (flank length=12)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 7, '90%%' 13)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TWI_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/twi','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/twi','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/twi','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/twi','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/twi'
