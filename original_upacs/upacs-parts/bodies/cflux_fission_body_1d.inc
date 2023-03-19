! copy form cflux_fission4.f90 by Mr. Miyoshi@fjt
!
      c_bari  = 1.0d0/sqrt(GAMMA*(preL(l)+preR(l))/(rhoL(l)+rhoR(l)))					! *:1,.+:2,/:2*13,sqrt:1*19
!ocl fission_point

      uuL = nv(1)*uL(l)+nv(2)*vL(l)+nv(3)*wL(l) 								! *:3,+:2
      uuR = nv(1)*uR(l)+nv(2)*vR(l)+nv(3)*wR(l)								! *:3,+:2
      !
      drho = rhoR(l)-rhoL(l)											! -:1
      duu  = uuR-uuL													! -:1
      dp   = preR(l)-preL(l)											! -:1
      !
      rho_bar = 0.5*(rhoL(l)+rhoR(l))										! *:1,+:1
      uu_bar  = 0.5*(uuL+uuR)												! *:1,+:1
      M_bar   = uu_bar*c_bari												! *:1
      !
      M_bar_p = abs(M_bar+1.d0)												! +:1,abs:1
      M_bar_m = abs(M_bar-1.d0)												! -:1,abs:1
      !
      mass = 0.5d0*(rhoL(l)*uuL + rhoR(l)*uuR - abs(uu_bar)*drho &						! *:11,+:4,-:3,abs:2
           + 0.5d0*(M_bar_p - M_bar_m)*rho_bar*duu &
           + 0.5d0*(M_bar_p + M_bar_m - 2.d0*abs(M_bar))*dp*c_bari)
      !mass_abs = abs(mass)												! abs:1
      !
!ocl fission_point
      uuL = nv(1)*uL(l)+nv(2)*vL(l)+nv(3)*wL(l) 								! *:3,+:2
      uuR = nv(1)*uR(l)+nv(2)*vR(l)+nv(3)*wR(l)								! *:3,+:2
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
      p = beta_p*preL(l) + beta_m*preR(l)									! *:2,+:1
      !
!ocl fission_point
      mass_abs = abs(mass)												! abs:1
      fmass(l) = area*mass												! *:24,+:7,-:8
      fmomx(l) = area*(0.5d0*mass*(uL(l)+uR(l))-0.5d0*mass_abs*(uR(l)-uL(l))+p*nv(1))
      fmomy(l) = area*(0.5d0*mass*(vL(l)+vR(l))-0.5d0*mass_abs*(vR(l)-vL(l))+p*nv(2))
      fmomz(l) = area*(0.5d0*mass*(wL(l)+wR(l))-0.5d0*mass_abs*(wR(l)-wL(l))+p*nv(3))
      hL  = GAMMA*GAMMA1I*preL(l)/rhoL(l)+0.5*uL(l)*uL(l)+vL(l)*vL(l)+wL(l)*wL(l)	! *:6,+3,/:1*13
      hR  = GAMMA*GAMMA1I*preR(l)/rhoR(l)+0.5*uR(l)*uR(l)+vR(l)*vR(l)+wR(l)*wR(l)	! *:6,+:3,/:1*13
      fene (l) = area*(0.5d0*mass*(hL   +hR   )-0.5d0*mass_abs*(hR-hL))
