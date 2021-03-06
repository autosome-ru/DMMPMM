set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on UBX_footprints.xml (used 60 of 60), average length=59 (flank length=19)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 30, '90%%' 54)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'UBX_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/Ubx','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Ubx','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/Ubx','Bergman_motif.p_value' using 2:1 with lines t 'Bergman_motif.xml/Ubx','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/Ubx','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/Ubx','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/Ubx'
