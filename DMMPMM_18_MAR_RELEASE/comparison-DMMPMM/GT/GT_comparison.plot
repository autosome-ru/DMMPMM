set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on GT_footprints.xml (used 8 of 8), average length=48 (flank length=13)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 4, '90%%' 7)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'GT_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/gt','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/gt','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/gt','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/gt','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/gt'
