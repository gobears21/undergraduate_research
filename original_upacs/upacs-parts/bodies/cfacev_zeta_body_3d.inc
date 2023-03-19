      !
      ! zeta derivatives
      !
      ! *:21, /:8, +:12, -:16
      dudzet = 0.25*((u(ia,ja,ka)-u(i,j,k))*dxi &
             +       (u(ib,jb,kb)-u(ip,jp,kp))*dxi &
             +       (u(i,j,k)-u(ic,jc,kc))*dxi &
             +       (u(ip,jp,kp)-u(id,jd,kd))*dxi)
      dvdzet = 0.25*((v(ia,ja,ka)-v(i,j,k))*dxi &
             +       (v(ib,jb,kb)-v(ip,jp,kp))*dxi &
             +       (v(i,j,k)-v(ic,jc,kc))*dxi &
             +       (v(ip,jp,kp)-v(id,jd,kd))*dxi)
      dwdzet = 0.25*((w(ia,ja,ka)-w(i,j,k))*dxi &
             +       (w(ib,jb,kb)-w(ip,jp,kp))*dxi &
             +       (w(i,j,k)-w(ic,jc,kc))*dxi &
             +       (w(ip,jp,kp)-w(id,jd,kd))*dxi)
      dTdzet = 0.25*GAMMA*((pre(ia,ja,ka)/rho(ia,ja,ka)-pre(i,j,k)/rho(i,j,k))*dxi &
             +             (pre(ib,jb,kb)/rho(ib,jb,kb)-pre(ip,jp,kp)/rho(ip,jp,kp))*dxi &
             +             (pre(i,j,k)/rho(i,j,k)-pre(ic,jc,kc)/rho(ic,jc,kc))*dxi &
             +             (pre(ip,jp,kp)/rho(ip,jp,kp)-pre(id,jd,kd)/rho(id,jd,kd))*dxi)
