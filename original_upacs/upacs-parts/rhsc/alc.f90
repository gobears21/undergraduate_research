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
    real(8), dimension(:,:,:), allocatable :: rho ,u ,v ,w ,pre, &
                                 dmas,dmox,dmoy,dmoz,dene
    real(8), intent(in) :: dx,area
    integer, intent(in) :: dir,ndim,ovlp

    integer :: im,jm,km,ip,jp,kp
    real(8) :: dxi,dx_harf,beta
    real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    real(8), dimension(:,:,:), allocatable :: rhoL,uL,vL,wL,preL, &
                                              rhoR,uR,vR,wR,preR

    real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    real(8) :: switch,p,beta_p,beta_m
    real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene

    real(8) :: voli

    integer :: i,j,k
    integer :: idelta(3,3), isrt(3),iend(3)

    flop = 170+153+15
    byte = 25+15+20

    idelta(:,1) = (/1,0,0/)
    idelta(:,2) = (/0,1,0/)
    idelta(:,3) = (/0,0,1/)
    !
    isrt = (/1,1,1/)
    iend = (/ndim,ndim,ndim/)
    !
    nv = idelta(:,dir)
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
             fmass(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fmomz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
             fene (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
            )
    !
    !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp) &
    !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
    !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m)

    !$omp do collapse(2)
    do k=isrt(3),iend(3)
    do j=isrt(2),iend(2)
!ocl swp
!ocl noxfill
    do i=isrt(1),iend(1)
      im = i-idelta(1,dir)
      jm = j-idelta(2,dir)
      km = k-idelta(3,dir)
      ip = i+idelta(1,dir)
      jp = j+idelta(2,dir)
      kp = k+idelta(3,dir)
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
      im = i-idelta(1,dir)
      jm = j-idelta(2,dir)
      km = k-idelta(3,dir)
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
    deallocate(fmass,fmomx,fmomy,fmomz,fene)
    !
  end subroutine rhsc
end module kernelModule
