set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on CAD_footprints.xml (used 13 of 13), average length=34 (flank length=10)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 11)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'CAD_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/cad','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/cad','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/cad','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/cad','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/cad','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/cad','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/cad','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/cad'
