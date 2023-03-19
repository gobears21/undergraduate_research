module kernelModule
  use loopModule
  implicit none
  public :: rhsv
  integer,public ::  ftype=2
  integer, public :: flop,byte, nof_3da=11+21

  private

  real(8), parameter :: KAPPA=0.3333333, GAMMA=1.4
  real(8) :: KAPPA_1M=1.-KAPPA, KAPPA_1P=1.+KAPPA
  real(8) :: GAMMA1I=1.d0/(GAMMA-1.d0)
   
  real(8),parameter :: CLAMBDA= -2./3.
  real(8),parameter :: PRANDTL=0.72
  real(8) :: PRANDTLI = 1./PRANDTL

contains

  subroutine rhsv(rho,u,v,w,pre,vis, &
                  dmas,dmox,dmoy,dmoz,dene, &
                  dx,area,dir,ndim,ovlp)
    real(8), dimension(*) :: rho,u,v,w,pre,vis, &
                             dmas,dmox,dmoy,dmoz,dene
    real(8), intent(in) :: dx,area
    integer, intent(in) :: dir,ndim,ovlp

    real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
                                 mu,fu,fv,fw, &
                                 dTdx,dTdy,dTdz, &
                                 dudx,dudy,dudz, &
                                 dvdx,dvdy,dvdz, &
                                 dwdx,dwdy,dwdz

    real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: fmass,fmomx,fmomy,fmomz,fene

    integer :: l,lm,lp,la,lb,lc,ld
    integer :: idelta(3)
    integer :: ixi,ieta,izet
    real(8) :: dxi
    real(8) :: dudxi,dudeta,dudzet, &
               dvdxi,dvdeta,dvdzet, &
               dwdxi,dwdeta,dwdzet, &
               dTdxi,dTdeta,dTdzet
    !
    real(8) :: nv(3), div_u, tau(3,3)
    !
    real(8) :: voli
    !
    flop = 132+54+15
    byte = 68+21+20
    !
    select case(dir)
    case(1)
      idelta(:) = (/1,0,0/)
      ixi=1; ieta=2; izet=3
    case(2)
      idelta(:) = (/0,1,0/)
      ixi=3; ieta=1; izet=2
    case(3)
      idelta(:) = (/0,0,1/)
      ixi=2; ieta=3; izet=1
    end select
    !
    call loopInit(ndim,ovlp)
    !
    nv = idelta(:)
    dxi = 1./(dx+epsilon(dx))
    voli = 1.0
    !
    !$omp parallel private(l,lm,lp,la,lb,lc,ld) &
    !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
    !$omp private(div_u,tau)

    !$omp do
!ocl swp
!ocl xfill
    do l=lsrt,lend
      !
      lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
      !
      ! xi
      !
#include "../bodies/cfacev_xi_body_1d.inc"
      !
      ! eta
      !
      la = l+idelta(3)+idelta(1)*num_i+idelta(2)*num_ij
      lb = l+idelta(1)+idelta(3)+(idelta(2)+idelta(1))*num_i+(idelta(3)+idelta(2))*num_ij
      lc = l-idelta(3)-idelta(1)*num_i-idelta(2)*num_ij
      ld = l+idelta(1)-idelta(3)+(idelta(2)-idelta(1))*num_i+(idelta(3)-idelta(2))*num_ij
      !
#include "../bodies/cfacev_eta_body_1d.inc"
      !
      ! zeta
      !
      la = l+idelta(2)+idelta(3)*num_i+idelta(1)*num_ij
      lb = l+idelta(1)+idelta(2)+(idelta(2)+idelta(3))*num_i+(idelta(3)+idelta(1))*num_ij
      lc = l-idelta(2)-idelta(3)*num_i-idelta(1)*num_ij
      ld = l+idelta(1)-idelta(2)+(idelta(2)-idelta(3))*num_i+(idelta(3)-idelta(1))*num_ij
      !
#include "../bodies/cfacev_zeta_body_1d.inc"
      !
#include "../bodies/cfacev_body_1d.inc"
      !
    enddo
    !$omp end do
    !
    !$omp do
!ocl swp
!ocl xfill
    do l=lsrt,lend
      !
#include "../bodies/vflux_body_1d.inc"
      !
    enddo
    !$omp end do
    !
    !$omp do
!ocl swp
!ocl xfill
    do l=lsrt,lend
      !
      lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
      !
#include "../bodies/dq_body_1d.inc"
      !
    enddo
    !$omp end do
    !
    !$omp end parallel
    !
  end subroutine rhsv
end module kernelModule
