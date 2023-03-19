      !
      ! eta derivatives
      !
      ! *:21, /:8, +:12, -:16
      dudeta = 0.25*((u(la)-u(l))*dxi &
             +       (u(lb)-u(lp))*dxi &
             +       (u(l)-u(lc))*dxi &
             +       (u(lp)-u(ld))*dxi)
      dvdeta = 0.25*((v(la)-v(l))*dxi &
             +       (v(lb)-v(lp))*dxi &
             +       (v(l)-v(lc))*dxi &
             +       (v(lp)-v(ld))*dxi)
      dwdeta = 0.25*((w(la)-w(l))*dxi &
             +       (w(lb)-w(lp))*dxi &
             +       (w(l)-w(lc))*dxi &
             +       (w(lp)-w(ld))*dxi)
      dTdeta = 0.25*GAMMA*((pre(la)/rho(la)-pre(l)/rho(l))*dxi &
             +             (pre(lb)/rho(lb)-pre(lp)/rho(lp))*dxi &
             +             (pre(l)/rho(l)-pre(lc)/rho(lc))*dxi &
             +             (pre(lp)/rho(lp)-pre(ld)/rho(ld))*dxi)
