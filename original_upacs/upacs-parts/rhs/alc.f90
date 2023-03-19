module kernelModule
  use loopModule
  implicit none
  public :: rhs
  integer,public ::  ftype=3
  integer, public :: flop,byte, nof_3da=11+31

  private

  real(8), parameter :: KAPPA=0.3333333, GAMMA=1.4
  real(8) :: KAPPA_1M=1.-KAPPA, KAPPA_1P=1.+KAPPA
  real(8) :: GAMMA1I=1.d0/(GAMMA-1.d0)
   
  real(8),parameter :: CLAMBDA= -2./3.
  real(8),parameter :: PRANDTL=0.72
  real(8) :: PRANDTLI = 1./PRANDTL

contains

  subroutine rhs(rho,u,v,w,pre,vis, &
                 dmas,dmox,dmoy,dmoz,dene, &
                 area,dx,dir,ndim,ovlp)
    real(8), dimension(:,:,:), allocatable :: rho,u,v,w,pre,vis, &
                                 dmas,dmox,dmoy,dmoz,dene
    real(8), intent(in) :: dx,area
    integer, intent(in) :: dir,ndim,ovlp

    integer :: i,j,k,im,jm,km,ip,jp,kp
    integer :: ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd
    integer :: idelta(3), isrt(3),iend(3)
    integer :: ixi,ieta,izet
    real(8) :: dxi,dx_harf,beta
    real(8) :: voli
    real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    real(8) :: switch,p,beta_p,beta_m
    real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m

    real(8) :: dudxi,dudeta,dudzet, &
               dvdxi,dvdeta,dvdzet, &
               dwdxi,dwdeta,dwdzet, &
               dTdxi,dTdeta,dTdzet
    real(8) :: div_u, tau(3,3)
    !
    real(8), dimension(:,:,:), allocatable :: rhoL,uL,vL,wL,preL, &
                                              rhoR,uR,vR,wR,preR
    real(8), dimension(:,:,:),allocatable :: &
                                 mu,fu,fv,fw, &
                                 dTdx,dTdy,dTdz, &
                                 dudx,dudy,dudz, &
                                 dvdx,dvdy,dvdz, &
                                 dwdx,dwdy,dwdz

    real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene



    flop = 170+153 + 132+54 + 15
    byte = 25+15 + 68+21 + 20

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
    nv = idelta(:)
    dxi = 1./(dx+epsilon(dx))
    dx_harf = 0.5*dx
    beta = (3.-KAPPA)/(1.-KAPPA)
    voli = 1.0
    !
    allocate( &
             rhoL(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             uL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             vL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             wL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             preL(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             rhoR(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             uR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             vR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             wR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             preR(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp) &
            )

    allocate( &
             mu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fv(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fw(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dudx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dudy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dudz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dvdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dvdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dvdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dwdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dwdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dwdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dTdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dTdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             dTdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
            )

    allocate( &
             fmass(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fene (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
            )
    !
    !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp,ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd) &
    !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
    !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m) &
    !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
    !$omp private(div_u,tau)

    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
!ocl swp
!ocl noxfill
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
    !
    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
!ocl swp
!ocl noxfill
    do i=isrt(1),iend(1)
      !
#include "../bodies/cflux_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !
    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
    do i=isrt(1),iend(1)
      !
      im = i-idelta(1)
      jm = j-idelta(2)
      km = k-idelta(3)
      !
#include "../bodies/dq_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !
    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
!ocl swp
!ocl noxfill
    do i=isrt(1),iend(1)
      ip = i+idelta(1)
      jp = j+idelta(2)
      kp = k+idelta(3)
      !
      ! xi
      !
#include "../bodies/cfacev_xi_body_3d.inc"
      !
      ! eta
      !
      ia = i +idelta(3); ja=j +idelta(1); ka=k +idelta(2)
      ib = ip+idelta(3); jb=jp+idelta(1); kb=kp+idelta(2)
      ic = i -idelta(3); jc=j -idelta(1); kc=k -idelta(2)
      id = ip-idelta(3); jd=jp-idelta(1); kd=kp-idelta(2)
#include "../bodies/cfacev_eta_body_3d.inc"
      !
      ! zeta
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
    !
    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
!ocl swp
!ocl noxfill
    do i=isrt(1),iend(1)
      !
#include "../bodies/vflux_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !
    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
    do i=isrt(1),iend(1)
      !
      im = i-idelta(1)
      jm = j-idelta(2)
      km = k-idelta(3)
      !
#include "../bodies/dq_body_3d.inc"
      !
    enddo
    enddo
    enddo
    !$omp end do
    !$omp end parallel
    !
    deallocate(rhoL,uL,vL,wL,preL,rhoR,uR,vR,wR,preR)

    deallocate(mu,fu,fv,fw)
    deallocate(dTdx,dTdy,dTdz, dudx,dudy,dudz,dvdx,dvdy,dvdz,dwdx,dwdy,dwdz)

    deallocate(fmass,fmomx,fmomy,fmomz,fene)
    !
  end subroutine rhs
end module kernelModule
