      select case(dir)
      case(1)
        dudx(l) = dudxi
        dvdx(l) = dvdxi
        dwdx(l) = dwdxi
        dTdx(l) = dTdxi
        dudy(l) = dudeta
        dvdy(l) = dvdeta
        dwdy(l) = dwdeta
        dTdy(l) = dTdeta
        dudz(l) = dudzet
        dvdz(l) = dvdzet
        dwdz(l) = dwdzet
        dTdz(l) = dTdzet
      case(2)
        dudx(l) = dudzet
        dvdx(l) = dvdzet
        dwdx(l) = dwdzet
        dTdx(l) = dTdzet
        dudy(l) = dudxi
        dvdy(l) = dvdxi
        dwdy(l) = dwdxi
        dTdy(l) = dTdxi
        dudz(l) = dudeta
        dvdz(l) = dvdeta
        dwdz(l) = dwdeta
        dTdz(l) = dTdeta
      case(3)
        dudx(l) = dudeta
        dvdx(l) = dvdeta
        dwdx(l) = dwdeta
        dTdx(l) = dTdeta
        dudy(l) = dudzet
        dvdy(l) = dvdzet
        dwdy(l) = dwdzet
        dTdy(l) = dTdzet
        dudz(l) = dudxi
        dvdz(l) = dvdxi
        dwdz(l) = dwdxi
        dTdz(l) = dTdxi
      end select
      !
      ! *:4, +:4
      fu(l) = (u(lp)+u(l))*0.5
      fv(l) = (v(lp)+v(l))*0.5
      fw(l) = (w(lp)+w(l))*0.5
      mu(l) = (vis(lp)+vis(l))*0.5
      !
