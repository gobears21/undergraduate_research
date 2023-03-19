module kernelModule
  use loopModule
  implicit none
  public :: muscl
  integer,public ::  ftype=1
  integer,public :: flop,byte, nof_3da=15

  private

  real(8), parameter :: KAPPA=0.3333333
  real(8) :: KAPPA_1M=1.-KAPPA, KAPPA_1P=1.+KAPPA

contains

  subroutine muscl(rho ,u ,v ,w ,pre , &
                   rhoR,uR,vR,wR,preR, &
                   rhoL,uL,vL,wL,preL, &
                   dx,dir,ndim,ovlp)
    real(8), dimension(*) :: rho ,u ,v ,w ,pre
    real(8), dimension(*) :: rhoR,uR,vR,wR,preR, &
                                 rhoL,uL,vL,wL,preL
    real(8), intent(in) :: dx
    integer, intent(in) :: dir,ndim,ovlp

    real(8) :: dxi,dx_harf,beta
    real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda

    integer :: l,lm,lp
    integer :: idelta(3)

    flop = 170
    byte = 25
    !
    select case(dir)
    case(1)
      idelta(:) = (/1,0,0/)
    case(2)
      idelta(:) = (/0,1,0/)
    case(3)
      idelta(:) = (/0,0,1/)
    end select
    !
    !
    dxi = 1./(dx+epsilon(dx))
    dx_harf = 0.5*dx
    beta = (3.-KAPPA)/(1.-KAPPA)
    !
    call loopInit(ndim,ovlp)
    !
    !$omp parallel private(l,lm,lp) &
    !$omp private(dq_p,dq_m,dq_m_tilda,dq_p_tilda)
    !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
!ocl swp
!ocl xfill
    do l=lsrt,lend
      !
      lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
      lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
      !
#include "../bodies/muscl_body_1d.inc"
      !
    enddo
    !$omp end do
    !$omp end parallel
    !
  end subroutine muscl
end module kernelModule
