      !
      ! +:2
      div_u = dudx(l)+dvdy(l)+dwdz(l)
      !
      ! *:6, +:3
      tau(1,1) = CLAMBDA*div_u + 2.*dudx(l)
      tau(2,2) = CLAMBDA*div_u + 2.*dvdy(l)
      tau(3,3) = CLAMBDA*div_u + 2.*dwdz(l)
      !
      ! +:3
      tau(1,2) = dudy(l)+dvdx(l)
      tau(2,3) = dvdz(l)+dwdy(l)
      tau(3,1) = dwdx(l)+dudz(l)
      !
      tau(2,1) = tau(1,2)
      tau(3,2) = tau(2,3)
      tau(1,3) = tau(3,1)
      !
      ! *:25, +:11, -:4
      fmass(l) = 0.0
      fmomx(l) = -area*mu(l)*(tau(1,1)*nv(1)+tau(1,2)*nv(2)+tau(1,3)*nv(3))
      fmomy(l) = -area*mu(l)*(tau(2,1)*nv(1)+tau(2,2)*nv(2)+tau(2,3)*nv(3))
      fmomz(l) = -area*mu(l)*(tau(3,1)*nv(1)+tau(3,2)*nv(2)+tau(3,3)*nv(3))
      fene (l) = -area*(fmomx(l)*fu(l)+fmomy(l)*fv(l)+fmomz(l)*fw(l) &
                      + mu(l)*PRANDTLI*GAMMA1I*(dTdx(l)*nv(1)+dTdy(l)*nv(2)+dTdz(l)*nv(3)))
