program main
!$ use omp_lib
  use upmpi
  use dataType
  use kernelModule
  implicit none
  integer :: itr,dir
  integer :: ndim,ndim_min,ndim_max, nb,nbmax
  integer(8) :: total_grid_point
  integer,parameter :: iterations=20
  real(8), parameter :: bytes=8.0
  real(8) :: maxtime,mintime,avgtime, times, t, t_gettod
  character(len=10) arg
  integer(8) :: nof_grid_point
  !
  !-----------------------------------------------------------------------
  !
  call mpif90init
  !
  call getarg(1,arg)
  read(arg,*) total_grid_point
  call getarg(2,arg)
  read(arg,*) ndim_min
  call getarg(3,arg)
  read(arg,*) ndim_max
  !
  do ndim=ndim_min,ndim_max
  !
  nbmax = total_grid_point/(ndim*ndim*ndim)
  !
  nof_grid_point = ndim*ndim*ndim*nbmax
  call blkDataInit(ndim,2)
  !
  allocate(blk(nbmax))
  do nb=1,nbmax
    call blkDataAllocation(blk(nb))
  enddo
  !
  select case(ftype)
  case(1)
    allocate(cf(nbmax))
    do nb=1,nbmax
      call cfluxDataAllocation(cf(nb))
    enddo
  case(2)
    allocate(vf(nbmax))
    do nb=1,nbmax
      call vfluxDataAllocation(vf(nb))
    enddo
  case(3)
    allocate(cf(nbmax))
    allocate(vf(nbmax))
    do nb=1,nbmax
      call cfluxDataAllocation(cf(nb))
      call vfluxDataAllocation(vf(nb))
    enddo
  case default
    write(6,*) "unknown ftype ",ftype
    stop
  end select
  !
  if(mpl_root) then
    write(6,"('Array size = ',i5,'^3')") ndim
    write(6,"('Block = ',i5)") nbmax
    write(6,"('Grid points = ',i8)") nof_grid_point
    write(6,"('Memory size = ',f16.8,' [GB]')") (ndim+4)**3*nbmax*bytes*nof_3da*1.e-9
    write(6,"('Memory size / block = ',f16.8,' [GB]')") (ndim+4)**3*bytes*nof_3da*1.e-9
  endif
  !
!$omp parallel
!$omp master
!$  if(mpl_root) write(6,"('Number of Threads = ',i5)") omp_get_num_threads()
!$omp end master
!$omp end parallel
  !
  do itr=1,iterations
    !
    if(itr.eq.2) then
      call mpif90barrier
#if defined(FJT_PA)
      call fipp_start()
      call start_collection("main")
      call fapp_start("main",1,1)
#endif
#if defined(GETTOD)
      call gettod(t_gettod)
      t = t_gettod*1.e-6
#else
      t = omp_get_wtime()
#endif
    endif
    !
    do dir=1,3
    do nb=1,nbmax
      !
#include "./kernel_if.inc"
      !
    enddo
    enddo
    !
  enddo
  !
  call mpif90barrier
#if defined(GETTOD)
  call gettod(t_gettod)
  times = t_gettod*1.e-6 - t
#else
  times = omp_get_wtime() - t
#endif
  !
#if defined(FJT_PA)
  call fapp_stop("main",1,1)
  call stop_collection("main")
  call fipp_stop()
#endif
  !
  avgtime = times/dble(iterations-1)
  if(mpl_root) then
    write(6,"('Performance: ',e12.5,' [GB/s] ',e12.5,' [GFLOPS]',e12.5,' [sec]/itr ',e12.5,' [sec]')") &
            nof_grid_point*3*byte*bytes/avgtime*1.0D-9, &
            nof_grid_point*3*flop/avgtime*1.0D-9, &
            avgtime,times
  endif
  !
  do nb=1,nbmax
    call blkDataDeallocation(blk(nb))
  enddo
  deallocate(blk)
  if(allocated(cf)) then
    do nb=1,nbmax
      call cfluxDataDeallocation(cf(nb))
    enddo
    deallocate(cf)
  endif
  if(allocated(vf)) then
    do nb=1,nbmax
      call vfluxDataDeallocation(vf(nb))
    enddo
    deallocate(vf)
  endif
  !
  enddo
  !
  call mpif90finalize
  !
end program main
