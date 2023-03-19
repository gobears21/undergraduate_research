      !
      ! xi derivatives
      !
      ! *:5, /:2, -:3
      dudxi = (u(ip,jp,kp)-u(i,j,k))*dxi
      dvdxi = (v(ip,jp,kp)-v(i,j,k))*dxi
      dwdxi = (w(ip,jp,kp)-w(i,j,k))*dxi
      dTdxi = GAMMA*(pre(ip,jp,kp)/rho(ip,jp,kp)-pre(i,j,k)/rho(i,j,k))*dxi
      !
