set key inside bottom right
plot \
        './muscl.txt' using ($1):($4*(1+4/$1)**3) t 'muscl' w lp pt 7 lt 1 lw 2 lc rgb 'royalblue' pi -11 ps 1.5, \
        './muscl-1d.txt' using ($1):($4*(1+4/$1)**3) t 'muscl-1d' w lp pt 8 lt 1 lw 2 lc rgb 'spring-green' pi -11 ps 1.5, \
        './muscl-1d_omp.txt' using ($1):($4*(1+4/$1)**3) t 'muscl-1d(omp)' w lp pt 10 lt 1 lw 2 lc rgb 'violet' pi -13 ps 1.5




