      uuL = nv(1)*uL(i,j,k)+nv(2)*vL(i,j,k)+nv(3)*wL(i,j,k) 								! *:3,+:2
      hL  = GAMMA*GAMMA1I*preL(i,j,k)/rhoL(i,j,k)+0.5*uL(i,j,k)*uL(i,j,k)+vL(i,j,k)*vL(i,j,k)+wL(i,j,k)*wL(i,j,k)	! *:6,+3,/:1*13
      !
      uuR = nv(1)*uR(i,j,k)+nv(2)*vR(i,j,k)+nv(3)*wR(i,j,k)								! *:3,+:2
      hR  = GAMMA*GAMMA1I*preR(i,j,k)/rhoR(i,j,k)+0.5*uR(i,j,k)*uR(i,j,k)+vR(i,j,k)*vR(i,j,k)+wR(i,j,k)*wR(i,j,k)	! *:6,+:3,/:1*13
      !
      drho = rhoR(i,j,k)-rhoL(i,j,k)											! -:1
      duu  = uuR-uuL													! -:1
      dp   = preR(i,j,k)-preL(i,j,k)											! -:1
      !
      rho_bar = 0.5*(rhoL(i,j,k)+rhoR(i,j,k))										! *:1,+:1
      uu_bar  = 0.5*(uuL+uuR)												! *:1,+:1
      c_bari  = 1.0d0/sqrt(GAMMA*(preL(i,j,k)+preR(i,j,k))/(rhoL(i,j,k)+rhoR(i,j,k)))					! *:1,.+:2,/:2*13,sqrt:1*19
      M_bar   = uu_bar*c_bari												! *:1
      !
      M_bar_p = abs(M_bar+1.d0)												! +:1,abs:1
      M_bar_m = abs(M_bar-1.d0)												! -:1,abs:1
      !
      mass = 0.5d0*(rhoL(i,j,k)*uuL + rhoR(i,j,k)*uuR - abs(uu_bar)*drho &						! *:11,+:4,-:3,abs:2
           + 0.5d0*(M_bar_p - M_bar_m)*rho_bar*duu &
           + 0.5d0*(M_bar_p + M_bar_m - 2.d0*abs(M_bar))*dp*c_bari)
      mass_abs = abs(mass)												! abs:1
      !
      M_p = uuL*c_bari													! *:1
      M_p_abs = abs(M_p)												! abs:1
      M_m = uuR*c_bari													! *:1
      M_m_abs = abs(M_m)												! abs:1
      !
      switch = sign(1.d0,1.d0-M_p_abs)											! -:1,sign:1
      switch = 0.5d0*(switch+abs(switch))										! *:1.+:1,abs:1
      beta_p = switch*(0.25d0*(2.d0-M_p)*(M_p+1.d0)*(M_p+1.d0)) &							! *:6,+:5,-:2,/:1*13
             + (1.d0-switch)*(0.5d0*(M_p+M_p_abs)/(M_p+1.d-23))
      switch = sign(1.d0,1.d0-M_m_abs)											! -:1,sign:1
      switch = 0.5d0*(switch+abs(switch))										! *:1,+:1,abs:1
      beta_m = switch*(0.25d0*(2.d0+M_m)*(M_m-1.d0)*(M_m-1.d0)) &							! *:6,+:3,-:4,/:1*13
             + (1.d0-switch)*(0.5d0*(M_m-M_m_abs)/(M_m+1.d-23))
      !
      p = beta_p*preL(i,j,k) + beta_m*preR(i,j,k)									! *:2,+:1
      !
      fmass(i,j,k) = area*mass												! *:24,+:7,-:8
      fmomx(i,j,k) = area*(0.5d0*mass*(uL(i,j,k)+uR(i,j,k))-0.5d0*mass_abs*(uR(i,j,k)-uL(i,j,k))+p*nv(1))
      fmomy(i,j,k) = area*(0.5d0*mass*(vL(i,j,k)+vR(i,j,k))-0.5d0*mass_abs*(vR(i,j,k)-vL(i,j,k))+p*nv(2))
      fmomz(i,j,k) = area*(0.5d0*mass*(wL(i,j,k)+wR(i,j,k))-0.5d0*mass_abs*(wR(i,j,k)-wL(i,j,k))+p*nv(3))
      fene (i,j,k) = area*(0.5d0*mass*(hL   +hR   )-0.5d0*mass_abs*(hR-hL))
