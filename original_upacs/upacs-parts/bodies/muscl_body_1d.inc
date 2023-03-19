          ! -:5, *:5
          dq_m(1) = (rho(l)-rho(lm))*dxi
          dq_m(2) = (u  (l)-u  (lm))*dxi
          dq_m(3) = (v  (l)-v  (lm))*dxi
          dq_m(4) = (w  (l)-w  (lm))*dxi
          dq_m(5) = (pre(l)-pre(lm))*dxi
          !
          ! -:5, *:5
          dq_p(1) = (rho(lp)-rho(l))*dxi
          dq_p(2) = (u  (lp)-u  (l))*dxi
          dq_p(3) = (v  (lp)-v  (l))*dxi
          dq_p(4) = (w  (lp)-w  (l))*dxi
          dq_p(5) = (pre(lp)-pre(l))*dxi
          !
          ! sign:20, +:10, *:30, min:10, abs:20
          dq_p_tilda = (sign(.5d0,dq_p)+sign(.5d0,beta*dq_m))*min(abs(dq_p),abs(beta*dq_m))
          dq_m_tilda = (sign(.5d0,dq_m)+sign(.5d0,beta*dq_p))*min(abs(dq_m),abs(beta*dq_p))
          !
          ! -:5, +:5, *:20
          rhoR(lm) = rho(l)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(1)+KAPPA_1P*dq_m_tilda(1))
          uR  (lm) = u  (l)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(2)+KAPPA_1P*dq_m_tilda(2))
          vR  (lm) = v  (l)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(3)+KAPPA_1P*dq_m_tilda(3))
          wR  (lm) = w  (l)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(4)+KAPPA_1P*dq_m_tilda(4))
          preR(lm) = pre(l)-dx_harf*.5*(KAPPA_1M*dq_p_tilda(5)+KAPPA_1P*dq_m_tilda(5))
          !
          ! +:10, *:20
          rhoL(l) = rho(l)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(1)+KAPPA_1M*dq_m_tilda(1))
          uL  (l) = u  (l)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(2)+KAPPA_1M*dq_m_tilda(2))
          vL  (l) = v  (l)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(3)+KAPPA_1M*dq_m_tilda(3))
          wL  (l) = w  (l)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(4)+KAPPA_1M*dq_m_tilda(4))
          preL(l) = pre(l)+dx_harf*.5*(KAPPA_1P*dq_p_tilda(5)+KAPPA_1M*dq_m_tilda(5))
