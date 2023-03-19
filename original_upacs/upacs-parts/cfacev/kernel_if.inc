      call cfacev(blk(nb)%rho,blk(nb)%u,blk(nb)%v,blk(nb)%w,blk(nb)%pre,blk(nb)%vis, &
                  vf(nb)%mu,vf(nb)%u,vf(nb)%v,vf(nb)%w, &
                  vf(nb)%dTdx,vf(nb)%dTdy,vf(nb)%dTdz, &
                  vf(nb)%dudx,vf(nb)%dudy,vf(nb)%dudz, &
                  vf(nb)%dvdx,vf(nb)%dvdy,vf(nb)%dvdz, &
                  vf(nb)%dwdx,vf(nb)%dwdy,vf(nb)%dwdz, &
                  blk(nb)%dx,dir,blk_idx_max,blk_idx_ovlp)
