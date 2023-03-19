module kernelModule
  use loopModule
  implicit none
  public :: rhsc
  integer,public ::  ftype=1
  integer, public :: flop,byte, nof_3da=10+15

  private

  real(8), parameter :: KAPPA=0.3333333, GAMMA=1.4
  real(8) :: KAPPA_1M=1.-KAPPA, KAPPA_1P=1.+KAPPA
  real(8) :: GAMMA1I=1.d0/(GAMMA-1.d0)
   

contains

  subroutine rhsc(rho ,u ,v ,w ,pre , &
                  dmas,dmox,dmoy,dmoz,dene, &
                  area,dx,dir,ndim,ovlp)
    real(8), dimension(*) :: rho ,u ,v ,w ,pre, &
                             dmas,dmox,dmoy,dmoz,dene
    real(8), intent(in) :: dx,area
    integer, intent(in) :: dir,ndim,ovlp

    real(8) :: dxi,dx_harf,beta
    real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
                             rhoL,uL,vL,wL,preL, &
                             rhoR,uR,vR,wR,preR

    real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    real(8) :: switch,p,beta_p,beta_m
    real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: fmass,fmomx,fmomy,fmomz,fene

    real(8) :: voli

    integer :: l,lm,lp
    integer :: idelta(3,3)

    flop = 170+153+15
    byte = 25+15+20

    idelta(:,1) = (/1,0,0/)
    idelta(:,2) = (/0,1,0/)
    idelta(:,3) = (/0,0,1/)
    !
    call loopInit(ndim,ovlp)
    !
    nv = idelta(:,dir)
    dxi = 1./(dx+epsilon(dx))
    dx_harf = 0.5*dx
    beta = (3.-KAPPA)/(1.-KAPPA)
    voli = 1.0
    !
    !$omp parallel private(l,lm,lp) &
    !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
    !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m)
    !$omp do
!ocl swp
!ocl xfill
    do l=lsrt,lend
      lp = l+idelta(1,dir)+idelta(2,dir)*num_i+idelta(3,dir)*num_ij
      lm = l-idelta(1,dir)-idelta(2,dir)*num_i-idelta(3,dir)*num_ij
      !
#include "../bodies/muscl_body_1d.inc"
      !
    enddo
    !$omp end do
    !
    !$omp do
!ocl swp
!ocl noxfill
    do l=lsrt,lend
      !
#include "../bodies/cflux_body_1d.inc"
      !
    enddo
    !$omp end do
    !
    !$omp do
!ocl swp
!ocl xfill
    do l=lsrt,lend
      lm = l-idelta(1,dir)-idelta(2,dir)*num_i-idelta(3,dir)*num_ij
      !
#include "../bodies/dq_body_1d.inc"
      !
    enddo
    !$omp end do
    !$omp end parallel
    !
  end subroutine rhsc
end module kernelModule
