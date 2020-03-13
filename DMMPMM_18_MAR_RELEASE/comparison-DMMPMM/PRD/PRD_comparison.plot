set terminal png small font Arial 9 size 640, 480
set title 'PWM ROC curves based on PRD_footprints.xml (used 11 of 11), average length=49 (flank length=13)'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 5, '90%%' 9)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'PRD_comparison.png'
plot 'Bigfoot_motif.p_value' using 2:1 with lines t 'Bigfoot_motif.xml/prd','Pollard_motif.p_value' using 2:1 with lines t 'Pollard_motif.xml/prd','Down_motif.p_value' using 2:1 with lines t 'Down_motif.xml/prd','SeSiMCMC_motif.p_value' using 2:1 with lines t 'SeSiMCMC_motif.xml/prd','Papatsenko_motif.p_value' using 2:1 with lines t 'Papatsenko_motif.xml/prd','Noyes_motif.p_value' using 2:1 with lines t 'Noyes_motif.xml/prd'
