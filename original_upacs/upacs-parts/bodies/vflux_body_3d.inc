      !
      ! +:2
      div_u = dudx(i,j,k)+dvdy(i,j,k)+dwdz(i,j,k)
      !
      ! *:6, +:3
      tau(1,1) = CLAMBDA*div_u + 2.*dudx(i,j,k)
      tau(2,2) = CLAMBDA*div_u + 2.*dvdy(i,j,k)
      tau(3,3) = CLAMBDA*div_u + 2.*dwdz(i,j,k)
      !
      ! +:3
      tau(1,2) = dudy(i,j,k)+dvdx(i,j,k)
      tau(2,3) = dvdz(i,j,k)+dwdy(i,j,k)
      tau(3,1) = dwdx(i,j,k)+dudz(i,j,k)
      !
      tau(2,1) = tau(1,2)
      tau(3,2) = tau(2,3)
      tau(1,3) = tau(3,1)
      !
      ! *:25, +:11, -:4
      fmass(i,j,k) = 0.0
      fmomx(i,j,k) = -area*mu(i,j,k)*(tau(1,1)*nv(1)+tau(1,2)*nv(2)+tau(1,3)*nv(3))
      fmomy(i,j,k) = -area*mu(i,j,k)*(tau(2,1)*nv(1)+tau(2,2)*nv(2)+tau(2,3)*nv(3))
      fmomz(i,j,k) = -area*mu(i,j,k)*(tau(3,1)*nv(1)+tau(3,2)*nv(2)+tau(3,3)*nv(3))
      fene (i,j,k) = -area*(fmomx(i,j,k)*fu(i,j,k)+fmomy(i,j,k)*fv(i,j,k)+fmomz(i,j,k)*fw(i,j,k) &
                      + mu(i,j,k)*PRANDTLI*GAMMA1I*(dTdx(i,j,k)*nv(1)+dTdy(i,j,k)*nv(2)+dTdz(i,j,k)*nv(3)))
