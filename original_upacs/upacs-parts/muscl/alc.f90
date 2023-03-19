module kernelModule
  use loopModule
  implicit none
  public :: muscl
  integer,public :: ftype=1
  integer,public :: flop,byte, nof_3da=15

  private

  real(8), parameter :: KAPPA=0.3333333
  real(8) :: KAPPA_1M=1.-KAPPA, KAPPA_1P=1.+KAPPA

contains

  subroutine muscl(rho ,u ,v ,w ,pre , &
                   rhoR,uR,vR,wR,preR, &
                   rhoL,uL,vL,wL,preL, &
                   dx,dir,ndim,ovlp)
    real(8), dimension(:,:,:), allocatable :: rho ,u ,v ,w ,pre, &
                                 rhoR,uR,vR,wR,preR, &
                                 rhoL,uL,vL,wL,preL
    real(8), intent(in) :: dx
    integer, intent(in) :: dir,ndim,ovlp

    integer :: im,jm,km,ip,jp,kp
    real(8) :: dxi,dx_harf,beta
    real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda

    integer :: i,j,k
    integer :: idelta(3), isrt(3),iend(3)

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
    isrt = (/1,1,1/)
    iend = (/ndim,ndim,ndim/)
    !
    dxi = 1./(dx+epsilon(dx))
    dx_harf = 0.5*dx
    beta = (3.-KAPPA)/(1.-KAPPA)
    !
    !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp) &
    !$omp private(dq_p,dq_m,dq_m_tilda,dq_p_tilda)
    !$omp do collapse(2)
!ocl noxfill
!ocl swp
    do k=isrt(3),iend(3)
      do j=isrt(2),iend(2)
        do i=isrt(1),iend(1)
          im = i-idelta(1)
          jm = j-idelta(2)
          km = k-idelta(3)
          ip = i+idelta(1)
          jp = j+idelta(2)
          kp = k+idelta(3)
          !
#include "../bodies/muscl_body_3d.inc"
          !
        enddo
      enddo
    enddo
    !$omp end do
    !$omp end parallel
    !
  end subroutine muscl
end module kernelModule
