          dmas(i,j,k) = dmas(i,j,k) + voli*(fmass(i,j,k)-fmass(im,jm,km)) 		! +:5,-:5,*:5
          dmox(i,j,k) = dmox(i,j,k) + voli*(fmomx(i,j,k)-fmomx(im,jm,km))
          dmoy(i,j,k) = dmoy(i,j,k) + voli*(fmomy(i,j,k)-fmomy(im,jm,km))
          dmoz(i,j,k) = dmoz(i,j,k) + voli*(fmomz(i,j,k)-fmomz(im,jm,km))
          dene(i,j,k) = dene(i,j,k) + voli*(fene (i,j,k)-fene (im,jm,km))
