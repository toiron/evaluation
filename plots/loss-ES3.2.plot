#!/usr/bin/gnuplot
set term postscript eps enhanced color
set output 'loss-ES3-2.eps'

YLABEL="Average Packet Loss (%)"

#set title "Loss changes based on count of emulated maps / hping3 processes"
set border 3
set xlabel "Count of concurrent flows"
set yrange [0<*:*]
#set yrange [0:2.5]
set ylabel YLABEL offset character 1;
set xtics nomirror; set ytics nomirror;
set key right bottom;

plot 'enhs-ES3.2-datfiles/edjcmlaci-ES3.2.dat' using 1:14:15:16 with yerrorbars lt 4 lc 3 lw 3 title "Partov", \
 'enhs-ES3.2-datfiles/edjcmlaci-ES3.2.dat' using 1:14 with lines lt 2 lc 3 lw 3 notitle, \
 'enhs-ES3.2-datfiles/hdjcmlaci-ES3.2.dat' using 1:14:15:16 with yerrorbars lt 8 lc 4 lw 3 title "Hping3", \
 'enhs-ES3.2-datfiles/hdjcmlaci-ES3.2.dat' using 1:14 with lines lt 3 lc 4 lw 3 notitle, \
 'enhs-ES3.2-datfiles/ns3djcmlaci-ES3.2.dat' using 1:14:15:16 with yerrorbars lt 10 lc 2 lw 3 title "NS-3", \
 'enhs-ES3.2-datfiles/ns3djcmlaci-ES3.2.dat' using 1:14 with lines lt 4 lc 2 lw 3 notitle

