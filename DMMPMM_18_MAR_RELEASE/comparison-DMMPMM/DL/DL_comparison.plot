set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on DL_footprints.xml (used 38 of 38), average length=38 (flank length=12)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 19, '90%%' 34)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DL_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/dl','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/dl','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/dl','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/dl-A','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/dl','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/dl','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/dl'
