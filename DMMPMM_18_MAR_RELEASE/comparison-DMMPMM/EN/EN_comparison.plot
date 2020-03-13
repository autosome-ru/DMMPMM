set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on EN_footprints.xml (used 56 of 56), average length=44 (flank length=10)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 28, '90%%' 50)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EN_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/en','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/en','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/en','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/en','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/en','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/en','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/en'
