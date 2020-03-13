set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on TTK_footprints.xml (used 8 of 8), average length=47 (flank length=14)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 4, '90%%' 7)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TTK_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/ttk','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/ttk','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/ttk','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/ttk','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/ttk'
