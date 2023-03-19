set key inside bottom right
plot \
        './rhsc.txt' using ($1):($4*(1+4/$1)**3) t 'rhsc' w lp pt 6 lt 1 lw 2 lc rgb 'light-blue' pi -11 ps 1.5, \
        './rhsc-1d.txt' using ($1):($4*(1+4/$1)**3) t 'rhsc-1d' w lp pt 7 lt 1 lw 2 lc rgb 'royalblue' pi -11 ps 1.5, \
        './rhsc-1d_omp.txt' using ($1):($4*(1+4/$1)**3) t 'rhsc-1d(omp)' w lp pt 4 lt 1 lw 2 lc rgb 'navyblue' pi -11 ps 1.5, \
        './rhsv.txt' using ($1):($4*(1+4/$1)**3) t 'rhsv' w lp pt 6 lt 1 lw 2 lc rgb 'pink' pi -11 ps 1.5, \
        './rhsv-1d.txt' using ($1):($4*(1+4/$1)**3) t 'rhsv-1d' w lp pt 7 lt 1 lw 2 lc rgb 'violet' pi -11 ps 1.5, \
        './rhsv-1d_omp.txt' using ($1):($4*(1+4/$1)**3) t 'rhsv-1d(omp)' w lp pt 4 lt 1 lw 2 lc rgb 'dark-pink' pi -11 ps 1.5




