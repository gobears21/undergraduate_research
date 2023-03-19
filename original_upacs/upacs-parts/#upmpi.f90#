module upmpi
#if defined(MPI)
  use mpi
#endif
  implicit none
  private

  integer, public :: mpl_nPE=1
  integer, public :: mpl_myRank=0
  integer, public :: mpl_PEid=1
  logical, public :: mpl_root=.true.


  public :: mpif90init,mpif90finalize,mpif90barrier

contains

  subroutine mpif90init
#if defined(MPI)
    integer :: ierror
    call MPI_INIT(ierror)
    call MPI_COMM_SIZE(MPI_COMM_WORLD,mpl_nPE,ierror)
    call MPI_COMM_RANK(MPI_COMM_WORLD,mpl_myRank,ierror)
    mpl_PEid=mpl_myRank+1
    if(mpl_myRank/=0) mpl_root=.false.
#endif
  end subroutine mpif90init

  subroutine mpif90finalize
#if defined(MPI)
    integer:: ierror
    call MPI_FINALIZE(ierror)
#endif
  end subroutine mpif90finalize

  subroutine mpif90barrier
#if defined(MPI)
    integer :: ierror
    call MPI_BARRIER(MPI_COMM_WORLD,ierror)
#endif
  end subroutine mpif90barrier

end module upmpi
