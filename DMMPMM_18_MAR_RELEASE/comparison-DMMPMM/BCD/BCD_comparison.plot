set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on BCD_footprints.xml (used 48 of 48), average length=36 (flank length=11)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 24, '90%%' 43)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BCD_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/bcd','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/bcd','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/bcd','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/bcd','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/bcd','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/bcd','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/bcd-1','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/bcd'
