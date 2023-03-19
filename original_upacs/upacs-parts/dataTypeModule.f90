module dataType
  implicit none
  !
  public :: blkDataInit
  public :: blk, blkDataType,blkDataAllocation, blkDataDeallocation
  public :: cf, cfluxDataType, cfluxDataAllocation, cfluxDataDeallocation
  public :: vf, vfluxDataType, vfluxDataAllocation, vfluxDataDeallocation
  !public :: fluxDataType, fluxDataAllocation, fluxDataDeallocation
  !
  integer, public :: blk_idx_max, blk_idx_ovlp
  !
  private
  !
  type blkDataType
    real(8) :: dx,area,voli
    real(8), dimension(:,:,:), allocatable :: rho,u,v,w,pre,vis
    real(8), dimension(:,:,:), allocatable :: dmas,dmox,dmoy,dmoz,dene
    !dec$ attributes align:64::rho,u,v,w,pre,vis
  end type blkDataType

  type cfluxDataType
    ! cell face for convective flux
    real(8), dimension(:,:,:), allocatable :: mass,xmom,ymom,zmom,ene
    real(8), dimension(:,:,:), allocatable :: rhoL,uL,vL,wL,preL
    real(8), dimension(:,:,:), allocatable :: rhoR,uR,vR,wR,preR
    !dec$ attributes align:64::mass,xmom,ymom,zmom,ene
    !dec$ attributes align:64::rhoL,uL,vL,wL,preL
    !dec$ attributes align:64::rhoR,uR,vR,wR,preR
  end type cfluxDataType

  type vfluxDataType
    ! cell face for viscous flux
    real(8), dimension(:,:,:), allocatable :: mass,xmom,ymom,zmom,ene
    real(8), dimension(:,:,:), allocatable :: mu,u,v,w,dTdx,dTdy,dTdz
    real(8), dimension(:,:,:), allocatable :: dudx,dudy,dudz, &
                                              dvdx,dvdy,dvdz, &
                                              dwdx,dwdy,dwdz
    !dec$ attributes align:64::mass,xmom,ymom,zmom,ene
    !dec$ attributes align:64::mu,u,v,w,dTdx,dTdy,dTdz
    !dec$ attributes align:64::dudx,dudy,dudz,dvdx,dvdy,dvdz,dwdx,dwdy,dwdz
  end type vfluxDataType

  type fluxDataType
    ! cell face flux
    real(8), dimension(:,:,:), allocatable :: mass,xmom,ymom,zmom,ene
    !dec$ attributes align:64::mass,xmom,ymom,zmom,ene
  end type fluxDataType
  !
  type(blkDataType),dimension(:), allocatable :: blk
  type(cfluxDataType),dimension(:), allocatable :: cf
  type(vfluxDataType),dimension(:), allocatable :: vf
  !
contains
  !
  subroutine blkDataInit(isize,ovlp)
    integer, intent(in) :: isize, ovlp
    blk_idx_max = isize
    blk_idx_ovlp = ovlp
  end subroutine blkDataInit
  !
  subroutine blkDataAllocation(b)
    type(blkDataType), intent(inout) :: b
    integer :: imin,imax
    imin = 1-blk_idx_ovlp
    imax = blk_idx_max + blk_idx_ovlp
    b%dx    = 0.123456789
    b%area = b%dx*b%dx
    b%voli = 1.0d0/(b%area*b%dx)
    allocate(b%rho(imin:imax,imin:imax,imin:imax), &
             b%u  (imin:imax,imin:imax,imin:imax), &
             b%v  (imin:imax,imin:imax,imin:imax), &
             b%w  (imin:imax,imin:imax,imin:imax), &
             b%pre(imin:imax,imin:imax,imin:imax), &
             b%vis(imin:imax,imin:imax,imin:imax))
    b%rho = 0.123456789
    b%u   = 0.123456789
    b%v   = 0.123456789
    b%w   = 0.123456789
    b%w   = 0.123456789
    b%vis = 0.123456789
    allocate(b%dmas(imin:imax,imin:imax,imin:imax), &
             b%dmox(imin:imax,imin:imax,imin:imax), &
             b%dmoy(imin:imax,imin:imax,imin:imax), &
             b%dmoz(imin:imax,imin:imax,imin:imax), &
             b%dene(imin:imax,imin:imax,imin:imax))
    b%dmas = 0.0
    b%dmox = 0.0
    b%dmoy = 0.0
    b%dmoz = 0.0
    b%dene = 0.0
  end subroutine blkDataAllocation
  subroutine blkDataDeallocation(b)
    type(blkDataType), intent(inout) :: b
    deallocate(b%rho,b%u,b%v,b%w,b%pre,b%vis)
    deallocate(b%dmas,b%dmox,b%dmoy,b%dmoz,b%dene)
  end subroutine blkDataDeallocation
  !
  subroutine cfluxDataAllocation(b)
    type(cfluxDataType), intent(inout) :: b
    integer :: imin,imax
    imin = 1-blk_idx_ovlp
    imax = blk_idx_max + blk_idx_ovlp
    allocate(b%rhoL(imin:imax,imin:imax,imin:imax), &
             b%uL  (imin:imax,imin:imax,imin:imax), &
             b%vL  (imin:imax,imin:imax,imin:imax), &
             b%wL  (imin:imax,imin:imax,imin:imax), &
             b%preL(imin:imax,imin:imax,imin:imax))
    allocate(b%rhoR(imin:imax,imin:imax,imin:imax), &
             b%uR  (imin:imax,imin:imax,imin:imax), &
             b%vR  (imin:imax,imin:imax,imin:imax), &
             b%wR  (imin:imax,imin:imax,imin:imax), &
             b%preR(imin:imax,imin:imax,imin:imax))
    b%rhoL = 0.123456789
    b%uL   = 0.0
    b%vL   = 0.0
    b%wL   = 0.0
    b%preL = 0.123456789
    b%rhoR = 0.123456789
    b%uR   = 0.0
    b%vR   = 0.0
    b%wR   = 0.0
    b%preR = 0.123456789
    allocate(b%mass(imin:imax,imin:imax,imin:imax), &
             b%xmom(imin:imax,imin:imax,imin:imax), &
             b%ymom(imin:imax,imin:imax,imin:imax), &
             b%zmom(imin:imax,imin:imax,imin:imax), &
             b%ene (imin:imax,imin:imax,imin:imax))
    b%mass = 0.0
    b%xmom = 0.0
    b%ymom = 0.0
    b%zmom = 0.0
    b%ene  = 0.0
  end subroutine cfluxDataAllocation
  subroutine cfluxDataDeallocation(b)
    type(cfluxDataType), intent(inout) :: b
    deallocate(b%rhoL,b%uL,b%vL,b%wL,b%preL)
    deallocate(b%rhoR,b%uR,b%vR,b%wR,b%preR)
    deallocate(b%mass,b%xmom,b%ymom,b%zmom,b%ene)
  end subroutine cfluxDataDeallocation
  !
  subroutine vfluxDataAllocation(b)
    type(vfluxDataType), intent(inout) :: b
    integer :: imin,imax
    imin = 1-blk_idx_ovlp
    imax = blk_idx_max + blk_idx_ovlp
    allocate(b%mu(imin:imax,imin:imax,imin:imax), &
             b%u (imin:imax,imin:imax,imin:imax), &
             b%v (imin:imax,imin:imax,imin:imax), &
             b%w (imin:imax,imin:imax,imin:imax), &
             b%dTdx(imin:imax,imin:imax,imin:imax), &
             b%dTdy(imin:imax,imin:imax,imin:imax), &
             b%dTdz(imin:imax,imin:imax,imin:imax), &
             b%dudx(imin:imax,imin:imax,imin:imax), &
             b%dudy(imin:imax,imin:imax,imin:imax), &
             b%dudz(imin:imax,imin:imax,imin:imax), &
             b%dvdx(imin:imax,imin:imax,imin:imax), &
             b%dvdy(imin:imax,imin:imax,imin:imax), &
             b%dvdz(imin:imax,imin:imax,imin:imax), &
             b%dwdx(imin:imax,imin:imax,imin:imax), &
             b%dwdy(imin:imax,imin:imax,imin:imax), &
             b%dwdz(imin:imax,imin:imax,imin:imax))
    b%mu   = 0.0
    b%u    = 0.0
    b%v    = 0.0
    b%w    = 0.0
    b%dTdx = 0.0
    b%dTdy = 0.0
    b%dTdz = 0.0
    b%dudx = 0.0
    b%dudy = 0.0
    b%dudz = 0.0
    b%dvdx = 0.0
    b%dvdy = 0.0
    b%dvdz = 0.0
    b%dwdx = 0.0
    b%dwdy = 0.0
    b%dwdz = 0.0
    allocate(b%mass(imin:imax,imin:imax,imin:imax), &
             b%xmom(imin:imax,imin:imax,imin:imax), &
             b%ymom(imin:imax,imin:imax,imin:imax), &
             b%zmom(imin:imax,imin:imax,imin:imax), &
             b%ene (imin:imax,imin:imax,imin:imax))
    b%mass = 0.0
    b%xmom = 0.0
    b%ymom = 0.0
    b%zmom = 0.0
    b%ene  = 0.0
  end subroutine vfluxDataAllocation
  subroutine vfluxDataDeallocation(b)
    type(vfluxDataType), intent(inout) :: b
    deallocate(b%mu,b%u,b%v,b%w)
    deallocate(b%dTdx,b%dTdy,b%dTdz)
    deallocate(b%dudx,b%dudy,b%dudz,&
               b%dvdx,b%dvdy,b%dvdz,&
               b%dwdx,b%dwdy,b%dwdz )
    deallocate(b%mass,b%xmom,b%ymom,b%zmom,b%ene)
  end subroutine vfluxDataDeallocation
  !
  subroutine fluxDataAllocation(b)
    type(fluxDataType), intent(inout) :: b
    integer :: imin,imax
    imin = 1-blk_idx_ovlp
    imax = blk_idx_max + blk_idx_ovlp
    allocate(b%mass(imin:imax,imin:imax,imin:imax), &
             b%xmom(imin:imax,imin:imax,imin:imax), &
             b%ymom(imin:imax,imin:imax,imin:imax), &
             b%zmom(imin:imax,imin:imax,imin:imax), &
             b%ene (imin:imax,imin:imax,imin:imax))
    b%mass = 0.0
    b%xmom = 0.0
    b%ymom = 0.0
    b%zmom = 0.0
    b%ene  = 0.0
  end subroutine fluxDataAllocation
  subroutine fluxDataDeallocation(b)
    type(fluxDataType), intent(inout) :: b
    deallocate(b%mass,b%xmom,b%ymom,b%zmom,b%ene)
  end subroutine fluxDataDeallocation
  !
end module dataType
