set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on HB_footprints.xml (used 103 of 103), average length=40 (flank length=12)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 51, '90%%' 92)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HB_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/hb','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/hb','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/hb','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/hb','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/hb','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/hb','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/hb'
