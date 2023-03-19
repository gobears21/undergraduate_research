set key inside bottom right
plot \
        './cfacev.txt' using ($1):($4*(1+4/$1)**3) t 'cfacev' w lp pt 7 lt 1 lw 2 lc rgb 'royalblue' pi -11 ps 1.5, \
        './cfacev-1d.txt' using ($1):($4*(1+4/$1)**3) t 'cfacev-1d' w lp pt 8 lt 1 lw 2 lc rgb 'spring-green' pi -11 ps 1.5, \
        './cfacev-1d_omp.txt' using ($1):($4*(1+4/$1)**3) t 'cfacev-1d(omp)' w lp pt 10 lt 1 lw 2 lc rgb 'violet' pi -13 ps 1.5




