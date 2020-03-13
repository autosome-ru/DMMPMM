set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on TLL_footprints.xml (used 37 of 37), average length=47 (flank length=15)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 18, '90%%' 33)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TLL_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/tll','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/tll','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/tll','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/tll','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/tll','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/tll','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/tll'
