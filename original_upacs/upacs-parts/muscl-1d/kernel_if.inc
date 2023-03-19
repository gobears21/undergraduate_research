      call muscl(blk(nb)%rho,blk(nb)%u,blk(nb)%v,blk(nb)%w,blk(nb)%pre , &
                 cf(nb)%rhoR,cf(nb)%uR,cf(nb)%vR,cf(nb)%wR,cf(nb)%preR, &
	         cf(nb)%rhoL,cf(nb)%uL,cf(nb)%vL,cf(nb)%wL,cf(nb)%preL, &
	         blk(nb)%dx,dir,blk_idx_max,blk_idx_ovlp)
