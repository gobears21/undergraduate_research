set key inside bottom right
plot \
        './cflux.txt' using ($1):($4*(1+4/$1)**3) t 'cflux' w lp pt 6 lt 1 lw 2 lc rgb 'royalblue' pi -11 ps 1.5, \
        './cflux-1d.txt' using ($1):($4*(1+4/$1)**3) t 'cflux-1d' w lp pt 7 lt 1 lw 2 lc rgb 'forest-green' pi -11 ps 1.5, \
        './vflux.txt' using ($1):($4*(1+4/$1)**3) t 'vflux' w lp pt 8 lt 1 lw 2 lc rgb 'dark-pink' pi -11 ps 1.5, \
        './vflux-1d.txt' using ($1):($4*(1+4/$1)**3) t 'vflux-1d' w lp pt 9 lt 1 lw 2 lc rgb 'dark-goldenrod' pi -11 ps 1.5




