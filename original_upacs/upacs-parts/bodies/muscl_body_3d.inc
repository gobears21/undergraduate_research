          ! -:5, *:5
          dq_m(1) = (rho(i,j,k)-rho(im,jm,km))*dxi
          dq_m(2) = (u  (i,j,k)-u  (im,jm,km))*dxi
          dq_m(3) = (v  (i,j,k)-v  (im,jm,km))*dxi
          dq_m(4) = (w  (i,j,k)-w  (im,jm,km))*dxi
          dq_m(5) = (pre(i,j,k)-pre(im,jm,km))*dxi
          !
          ! -:5, *:5
          dq_p(1) = (rho(ip,jp,kp)-rho(i,j,k))*dxi
          dq_p(2) = (u  (ip,jp,kp)-u  (i,j,k))*dxi
          dq_p(3) = (v  (ip,jp,kp)-v  (i,j,k))*dxi
          dq_p(4) = (w  (ip,jp,kp)-w  (i,j,k))*dxi
          dq_p(5) = (pre(ip,jp,kp)-pre(i,j,k))*dxi
          !
          ! sign:20, +:10, *:30, min:10, abs:20
          dq_p_tilda = (sign(.5d0,dq_p)+sign(.5d0,beta*dq_m))*min(abs(dq_p),abs(beta*dq_m))
          dq_m_tilda = (sign(.5d0,dq_m)+sign(.5d0,beta*dq_p))*min(abs(dq_m),abs(beta*dq_p))
          !
          ! -:5, +:5, *:20
          rhoR(im,jm,km) = rho(i,j,k)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(1)+KAPPA_1P*dq_m_tilda(1))
          uR  (im,jm,km) = u  (i,j,k)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(2)+KAPPA_1P*dq_m_tilda(2))
          vR  (im,jm,km) = v  (i,j,k)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(3)+KAPPA_1P*dq_m_tilda(3))
          wR  (im,jm,km) = w  (i,j,k)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(4)+KAPPA_1P*dq_m_tilda(4))
          preR(im,jm,km) = pre(i,j,k)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(5)+KAPPA_1P*dq_m_tilda(5))
          !
          ! +:10, *:20
          rhoL(i,j,k) = rho(i,j,k)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(1)+KAPPA_1M*dq_m_tilda(1))
          uL  (i,j,k) = u  (i,j,k)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(2)+KAPPA_1M*dq_m_tilda(2))
          vL  (i,j,k) = v  (i,j,k)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(3)+KAPPA_1M*dq_m_tilda(3))
          wL  (i,j,k) = w  (i,j,k)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(4)+KAPPA_1M*dq_m_tilda(4))
          preL(i,j,k) = pre(i,j,k)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(5)+KAPPA_1M*dq_m_tilda(5))
