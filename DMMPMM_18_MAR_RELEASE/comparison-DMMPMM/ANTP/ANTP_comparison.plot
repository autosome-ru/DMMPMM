set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on ANTP_footprints.xml (used 12 of 12), average length=47 (flank length=12)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 10)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ANTP_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/Antp','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/Antp','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/Antp','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/Antp','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/Antp','Noyes_hd_motif.p_value' using 2:1 with lines t 'Noyes_hd_motif.xml/Antp'
