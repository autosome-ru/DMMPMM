set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on KR_footprints.xml (used 45 of 45), average length=37 (flank length=11)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 22, '90%%' 40)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KR_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/Kr','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Kr','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/Kr','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/Kr','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/Kr','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/Kr','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/Kr'
