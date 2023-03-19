      select case(dir)
      case(1)
        dudx(i,j,k) = dudxi
        dvdx(i,j,k) = dvdxi
        dwdx(i,j,k) = dwdxi
        dTdx(i,j,k) = dTdxi
        dudy(i,j,k) = dudeta
        dvdy(i,j,k) = dvdeta
        dwdy(i,j,k) = dwdeta
        dTdy(i,j,k) = dTdeta
        dudz(i,j,k) = dudzet
        dvdz(i,j,k) = dvdzet
        dwdz(i,j,k) = dwdzet
        dTdz(i,j,k) = dTdzet
      case(2)
        dudx(i,j,k) = dudzet
        dvdx(i,j,k) = dvdzet
        dwdx(i,j,k) = dwdzet
        dTdx(i,j,k) = dTdzet
        dudy(i,j,k) = dudxi
        dvdy(i,j,k) = dvdxi
        dwdy(i,j,k) = dwdxi
        dTdy(i,j,k) = dTdxi
        dudz(i,j,k) = dudeta
        dvdz(i,j,k) = dvdeta
        dwdz(i,j,k) = dwdeta
        dTdz(i,j,k) = dTdeta
      case(3)
        dudx(i,j,k) = dudeta
        dvdx(i,j,k) = dvdeta
        dwdx(i,j,k) = dwdeta
        dTdx(i,j,k) = dTdeta
        dudy(i,j,k) = dudzet
        dvdy(i,j,k) = dvdzet
        dwdy(i,j,k) = dwdzet
        dTdy(i,j,k) = dTdzet
        dudz(i,j,k) = dudxi
        dvdz(i,j,k) = dvdxi
        dwdz(i,j,k) = dwdxi
        dTdz(i,j,k) = dTdxi
      end select
      !
      ! *:4, +:4
      fu(i,j,k) = (u(ip,jp,kp)+u(i,j,k))*0.5
      fv(i,j,k) = (v(ip,jp,kp)+v(i,j,k))*0.5
      fw(i,j,k) = (w(ip,jp,kp)+w(i,j,k))*0.5
      mu(i,j,k) = (vis(ip,jp,kp)+vis(i,j,k))*0.5
      !
