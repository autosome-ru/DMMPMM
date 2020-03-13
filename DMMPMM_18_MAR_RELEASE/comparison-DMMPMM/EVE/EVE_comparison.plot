set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on EVE_footprints.xml (used 20 of 20), average length=52 (flank length=12)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EVE_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/eve','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/eve','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/eve','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/eve','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/eve','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/eve','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/eve'
