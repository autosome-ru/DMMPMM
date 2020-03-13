set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on ABD_A_footprints.xml (used 41 of 41), average length=37 (flank length=10)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 20, '90%%' 36)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ABD_A_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/abd-A','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/abd-A','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/abd-A','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/abd-A','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/abd-A','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/abd-A'
