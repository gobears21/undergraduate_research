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
    real(8), dimension(:,:,:), allocatable  :: rho,u,v,w,pre,vis
    real(8), dimension(:,:,:), allocatable :: mu,fu,fv,fw, &
                                 dTdx,dTdy,dTdz, &
                                 dudx,dudy,dudz, &
                                 dvdx,dvdy,dvdz, &
                                 dwdx,dwdy,dwdz
    real(8), intent(in) :: dx
    integer, intent(in) :: dir, ndim,ovlp

    integer :: i,j,k,ip,jp,kp
    integer :: ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd
    integer :: idelta(3), isrt(3),iend(3)
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
    isrt = (/1,1,1/)
    iend = (/ndim,ndim,ndim/)
    !
    dxi = 1./(dx+epsilon(dx))
    !
    !$omp parallel private(i,j,k,ip,jp,kp,ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd) &
    !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet)
    !$omp do collapse(2)
!ocl noxfill
!ocl swp
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
    do i=isrt(1),iend(1)
      !
      ip = i+idelta(1)
      jp = j+idelta(2)
      kp = k+idelta(3)
      !
      ! xi derivatives
      !
#include "../bodies/cfacev_xi_body_3d.inc"
      !
      ! eta derivatives
      !
      ia = i +idelta(3); ja=j +idelta(1); ka=k +idelta(2)
      ib = ip+idelta(3); jb=jp+idelta(1); kb=kp+idelta(2)
      ic = i -idelta(3); jc=j -idelta(1); kc=k -idelta(2)
      id = ip-idelta(3); jd=jp-idelta(1); kd=kp-idelta(2)
#include "../bodies/cfacev_eta_body_3d.inc"
      !
      ! zeta derivatives
      !
      ia = i +idelta(2); ja=j +idelta(3); ka=k +idelta(1)
      ib = ip+idelta(2); jb=jp+idelta(3); kb=kp+idelta(1)
      ic = i -idelta(2); jc=j -idelta(3); kc=k -idelta(1)
      id = ip-idelta(2); jd=jp-idelta(3); kd=kp-idelta(1)
#include "../bodies/cfacev_zeta_body_3d.inc"
      !
#include "../bodies/cfacev_body_3d.inc"
      !
    enddo
 enddo
    enddo
    !$omp end do
    !$omp end parallel
  end subroutine cfacev
end module kernelModule
