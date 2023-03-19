      call cflux(cf(nb)%rhoR,cf(nb)%uR  ,cf(nb)%vR  ,cf(nb)%wR  ,cf(nb)%preR, &
                 cf(nb)%rhoL,cf(nb)%uL  ,cf(nb)%vL  ,cf(nb)%wL  ,cf(nb)%preL, &
                 cf(nb)%mass,cf(nb)%xmom,cf(nb)%ymom,cf(nb)%zmom,cf(nb)%ene, &
                 blk(nb)%area,dir,blk_idx_max,blk_idx_ovlp)
