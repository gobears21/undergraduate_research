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
    real(8), dimension(:,:,:), allocatable :: mu,fu,fv,fw, &
                                 dTdx,dTdy,dTdz, &
                                 dudx,dudy,dudz, &
                                 dvdx,dvdy,dvdz, &
                                 dwdx,dwdy,dwdz
    real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene
    real(8), intent(in) :: area
    integer, intent(in) :: dir, ndim,ovlp

    real(8) :: nv(3), div_u, tau(3,3)

    integer :: i,j,k
    integer :: idelta(3,3), isrt(3),iend(3)

    flop = 54
    byte = 21

    idelta(:,1) = (/1,0,0/)
    idelta(:,2) = (/0,1,0/)
    idelta(:,3) = (/0,0,1/)
    !
    isrt = (/1,1,1/)
    iend = (/ndim,ndim,ndim/)
    !
    nv = idelta(:,dir)
    !
    !$omp parallel private(i,j,k,div_u,tau)
    !$omp do collapse(2)
!ocl swp
!ocl noxfill
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
    do i=isrt(1),iend(1)
      !
#include "../bodies/vflux_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !$omp end parallel
  end subroutine vflux
end module kernelModule
