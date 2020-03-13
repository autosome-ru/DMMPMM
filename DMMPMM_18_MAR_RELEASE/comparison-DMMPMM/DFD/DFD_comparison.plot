set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on DFD_footprints.xml (used 16 of 16), average length=33 (flank length=11)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 8, '90%%' 14)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DFD_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/Dfd','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Dfd','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/Dfd','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/Dfd','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/Dfd','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/Dfd'
