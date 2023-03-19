      call vflux(vf(nb)%mu,vf(nb)%u,vf(nb)%v,vf(nb)%w, &
                 vf(nb)%dTdx,vf(nb)%dTdy,vf(nb)%dTdz, &
                 vf(nb)%dudx,vf(nb)%dudy,vf(nb)%dudz, &
                 vf(nb)%dvdx,vf(nb)%dvdy,vf(nb)%dvdz, &
                 vf(nb)%dwdx,vf(nb)%dwdy,vf(nb)%dwdz, &
                 vf(nb)%mass,vf(nb)%xmom,vf(nb)%ymom,vf(nb)%zmom,vf(nb)%ene, &
                 blk(nb)%area,dir,blk_idx_max,blk_idx_ovlp)
