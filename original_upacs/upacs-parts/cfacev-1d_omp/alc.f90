module kernelModule
  use loopModule
  implicit none
  public :: cfacev
  integer,public ::  ftype=2
  integer,public :: flop,byte, nof_3da=22

  private

  real(8),parameter :: GAMMA=1.4

contains

  subroutine cfacev(rho,u,v,w,pre,vis, &
                   mu,fu,fv,fw, &
                   dTdx,dTdy,dTdz, &
                   dudx,dudy,dudz, &
                   dvdx,dvdy,dvdz, &
                   dwdx,dwdy,dwdz, &
                   dx,dir,ndim,ovlp)
    real(8), dimension(*) :: rho,u,v,w,pre,vis
    real(8), dimension(*) :: mu,fu,fv,fw, &
                             dTdx,dTdy,dTdz, &
                             dudx,dudy,dudz, &
                             dvdx,dvdy,dvdz, &
                             dwdx,dwdy,dwdz
    real(8), intent(in) :: dx
    integer, intent(in) :: dir, ndim,ovlp

    integer :: l,lp,la,lb,lc,ld
    integer :: idelta(3)
    integer :: ixi,ieta,izet
    !real(8) :: dvaldx(4,3), dxi
    real(8) :: dxi
    real(8) :: dudxi,dudeta,dudzet, &
               dvdxi,dvdeta,dvdzet, &
               dwdxi,dwdeta,dwdzet, &
               dTdxi,dTdeta,dTdzet
    !
    flop = 132
    byte = 68
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
    dxi = 1./(dx+epsilon(dx))
    !
    call loopInit(ndim,ovlp)
    !
    !$omp parallel private(l,lp,la,lb,lc,ld) &
    !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet)
    !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
!ocl swp
!ocl xfill
    do l=lsrt,lend
      !
      lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
      !
      ! xi derivatives
      !
#include "../bodies/cfacev_xi_body_1d.inc"
      !
      ! eta derivatives
      !
      la = l+idelta(3)+idelta(1)*num_i+idelta(2)*num_ij
      lb = l+idelta(1)+idelta(3)+(idelta(2)+idelta(1))*num_i+(idelta(3)+idelta(2))*num_ij
      lc = l-idelta(3)-idelta(1)*num_i-idelta(2)*num_ij
      ld = l+idelta(1)-idelta(3)+(idelta(2)-idelta(1))*num_i+(idelta(3)-idelta(2))*num_ij
      !
#include "../bodies/cfacev_eta_body_1d.inc"
      !
      ! zeta derivatives
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
    !$omp end parallel
  end subroutine cfacev
end module kernelModule
