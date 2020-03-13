set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on KNI_footprints.xml (used 33 of 33), average length=38 (flank length=13)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 16, '90%%' 29)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KNI_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/kni','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/kni','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/kni','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/kni','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/kni','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/kni'
