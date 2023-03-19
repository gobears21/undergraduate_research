module loopModule
  implicit none
  public :: loopInit
  public :: ijk2l, ipd2l,jpd2l,kpd2l
  public :: l2ijk
  integer, public :: lsrt,lend
  integer(8), public :: lsize
  integer, public :: num_ij, num_i
  integer, public :: isrt(3),iend(3),ovlp
  private
contains
  subroutine loopInit(ndim,ov)
    integer, intent(in) :: ndim,ov
    isrt(:) = 1
    iend(:) = ndim
    ovlp = ov
    !num_ijk = (iend(1)-isrt(1)+2*ovlp+1)*(iend(2)-isrt(2)+2*ovlp+1)*(iend(3)-isrt(3)+2*ovlp+1)
    num_ij  = (iend(1)-isrt(1)+2*ovlp+1)*(iend(2)-isrt(2)+2*ovlp+1)
    num_i   = (iend(1)-isrt(1)+2*ovlp+1)
    lsrt = ijk2l(isrt)
    lend = ijk2l(iend)
    lsize = lend-lsrt+1
  end subroutine loopInit
  pure function ijk2l(ijk)
    integer :: ijk2l
    integer, dimension(3),intent(in) :: ijk
    ijk2l = num_ij*(ijk(3)-isrt(3)+ovlp)+num_i*(ijk(2)-isrt(2)+ovlp)+ijk(1)-isrt(1)+ovlp+1
  end function ijk2l
  subroutine l2ijk(l,ijk)
    integer, intent(in) :: l
    integer, dimension(3), intent(out) :: ijk
    integer :: tmp_div
    !ijk(3) = (l                                                         -1)/num_ij+isrt(3)-ovlp
    !ijk(2) = (l-num_ij*(ijk(3)-isrt(3)+ovlp)                            -1)/num_i +isrt(2)-ovlp
    !ijk(1) = (l-num_ij*(ijk(3)-isrt(3)+ovlp)-num_i*(ijk(2)-isrt(2)+ovlp)-1)       +isrt(1)-ovlp
    tmp_div =  int(dble((l-1))/dble(num_ij))
    ijk(3) = tmp_div+isrt(3)-ovlp
    ijk(2) = int(dble(l-num_ij*tmp_div-1)/dble(num_i))+isrt(2)-ovlp
    ijk(1) = (l-num_ij*tmp_div-num_i*int(dble(l-num_ij*tmp_div-1)/dble(num_i))-1)+isrt(1)-ovlp
  end subroutine l2ijk
  pure function ipd2l(l,d)
    integer :: ipd2l
    integer, intent(in) :: l,d
    ipd2l = l+d
  end function ipd2l
  pure function jpd2l(l,d)
    integer :: jpd2l
    integer, intent(in) :: l,d
    jpd2l = l+d*num_i
  end function jpd2l
  pure function kpd2l(l,d)
    integer :: kpd2l
    integer, intent(in) :: l,d
    kpd2l = l+d*num_ij
  end function kpd2l

end module loopModule
