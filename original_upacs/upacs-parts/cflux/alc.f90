module kernelModule
  use loopModule
  implicit none
  public :: cflux
  integer,public ::  ftype=1
  integer, public :: flop,byte, nof_3da=15

  private

  real(8), parameter :: GAMMA=1.4
  real(8) :: GAMMA1I=1.d0/(GAMMA-1.d0)

contains

  subroutine cflux(rhoR,uR,vR,wR,preR, &
                   rhoL,uL,vL,wL,preL, &
                   fmass,fmomx,fmomy,fmomz,fene, &
                   area,dir,ndim,ovlp)
    real(8), dimension(:,:,:), allocatable :: rhoR,uR,vR,wR,preR, &
                                 rhoL,uL,vL,wL,preL
    real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene
    real(8), intent(in) :: area
    integer, intent(in) :: dir, ndim,ovlp

    real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    real(8) :: switch,p,beta_p,beta_m
    real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m

    integer :: i,j,k
    integer :: idelta(3,3), isrt(3),iend(3)

    flop = 153
    byte = 15

    idelta(:,1) = (/1,0,0/)
    idelta(:,2) = (/0,1,0/)
    idelta(:,3) = (/0,0,1/)
    !
    isrt = (/1,1,1/)
    iend = (/ndim,ndim,ndim/)
    !
    nv = idelta(:,dir)
    !$omp parallel private(i,j,k) &
    !$omp private(drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m)
    !$omp do collapse(2)
!ocl swp
!ocl noxfill
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
    do i=isrt(1),iend(1)
      !
#include "../bodies/cflux_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !$omp end parallel
  end subroutine cflux
end module kernelModule
