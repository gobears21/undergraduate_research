set key inside bottom right
plot \
        './rhs.txt' using ($1):($4*(1+4/$1)**3) t 'rhs' w lp pt 6 lt 1 lw 2 lc rgb 'light-green' pi -11 ps 1.5, \
        './rhs-1d.txt' using ($1):($4*(1+4/$1)**3) t 'rhs-1d' w lp pt 7 lt 1 lw 2 lc rgb 'spring-green' pi -11 ps 1.5, \
        './rhs-1d_omp.txt' using ($1):($4*(1+4/$1)**3) t 'rhs-1d(omp)' w lp pt 4 lt 1 lw 2 lc rgb 'forest-green' pi -11 ps 1.5
