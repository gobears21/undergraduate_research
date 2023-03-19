module kernelModule
  use loopModule
  implicit none
  public :: vflux
  integer,public ::  ftype=2
  integer,public :: flop,byte, nof_3da=21

  private

  real(8),parameter :: GAMMA=1.4
  real(8) :: GAMMA1I=1.d0/(GAMMA-1.d0)
  real(8),parameter :: CLAMBDA= -2./3.
  real(8),parameter :: PRANDTL=0.72 
  real(8) :: PRANDTLI = 1./PRANDTL

contains

  subroutine vflux(mu,fu,fv,fw, &
                   dTdx,dTdy,dTdz, &
                   dudx,dudy,dudz, &
                   dvdx,dvdy,dvdz, &
                   dwdx,dwdy,dwdz, &
                   fmass,fmomx,fmomy,fmomz,fene, &
                   area,dir,ndim,ovlp)
    real(8), dimension(*) :: mu,fu,fv,fw, &
                             dTdx,dTdy,dTdz, &
                             dudx,dudy,dudz, &
                             dvdx,dvdy,dvdz, &
                             dwdx,dwdy,dwdz
    real(8), dimension(*) :: fmass,fmomx,fmomy,fmomz,fene
    real(8), intent(in) :: area
    integer, intent(in) :: dir, ndim,ovlp

    real(8) :: nv(3), div_u, tau(3,3)

    integer :: l
    integer :: idelta(3,3)

    flop = 54
    byte = 21

    idelta(:,1) = (/1,0,0/)
    idelta(:,2) = (/0,1,0/)
    idelta(:,3) = (/0,0,1/)
    !
    call loopInit(ndim,ovlp)
    nv = idelta(:,dir)
    !
    !$omp parallel private(l,div_u,tau)
    !$omp do
    do l=lsrt,lend
      !
#include "../bodies/vflux_body_1d.inc"
      !
    enddo
    !$omp end do
    !$omp end parallel
  end subroutine vflux
end module kernelModule
