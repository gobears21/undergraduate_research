      !
      ! xi derivatives
      !
      ! *:5, /:2, -:3
      dudxi = (u(lp)-u(l))*dxi
      dvdxi = (v(lp)-v(l))*dxi
      dwdxi = (w(lp)-w(l))*dxi
      dTdxi = GAMMA*(pre(lp)/rho(lp)-pre(l)/rho(l))*dxi
      !
