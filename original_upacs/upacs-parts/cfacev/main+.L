NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME : ../main+.f90

  COMPILER OPTIONS : -fopenmp -O3 -proginf -report-all -finline-functions -fpp -I../ -I./ -c

  PARAMETER : 

      Optimization Options : 
        -On                                      : 3
        -fargument-alias                         : disable
        -fargument-noalias                       : enable
        -fassociative-math                       : enable
        -faggressive-associative-math            : disable
        -fassume-contiguous                      : disable
        -fcopyin-intent-out                      : enable
        -fcse-after-vectorization                : disable
        -ffast-formatted-io                      : enable
        -ffast-math                              : enable
        -fignore-asynchronous                    : disable
        -fignore-volatile                        : disable
        -fivdep                                  : disable
        -floop-collapse                          : enable
        -floop-count                             : 5000
        -floop-fusion                            : enable
        -floop-interchange                       : enable
        -floop-normalize                         : enable
        -floop-split                             : disable
        -floop-strip-mine                        : enable
        -floop-unroll                            : enable
        -floop-unroll-completely                 : 4
        -floop-unroll-completely-nest            : 3
        -floop-unroll-max-times                  : auto
        -fmatrix-multiply                        : enable
        -fmove-loop-invariants                   : enable
        -fmove-loop-invariants-if                : enable
        -fmove-loop-invariants-unsafe            : disable
        -fmove-nested-loop-invariants-outer      : enable
        -fnamed-alias                            : disable
        -fnamed-noalias                          : enable
        -fnamed-noalias-aggressive               : disable
        -fouterloop-unroll                       : enable
        -fouterloop-unroll-max-size              : 4
        -fouterloop-unroll-max-times             : 4
        -fprecise-math                           : disable
        -freciprocal-math                        : enable
        -freorder-logical-expression             : enable
        -freplace-loop-equation                  : disable
        -marray-io                               : enable
        -mlist-vector                            : disable
        -mretain-all                             : enable
        -mretain-list-vector                     : disable
        -mretain-none                            : disable
        -msched-none                             : disable
        -msched-insns                            : enable
        -msched-block                            : disable
        -mstack-arrays                           : enable
        -mno-stack-arrays                        : disable
        -mvector                                 : enable
        -mvector-advance-gather                  : enable
        -mvector-advance-gather-limit            : 56
        -mvector-dependency-test                 : enable
        -mvector-floating-divide-instruction     : disable
        -mvector-fma                             : enable
        -mvector-intrinsic-check                 : disable
        -mvector-iteration                       : enable
        -mvector-iteration-unsafe                : enable
        -mvector-loop-count-test                 : disable
        -mvector-low-precise-divide-function     : disable
        -mvector-merge-conditional               : enable
        -mvector-packed                          : disable
        -mvector-power-to-explog                 : disable
        -mvector-power-to-sqrt                   : enable
        -mvector-reduction                       : enable
        -mvector-shortloop-reduction             : disable
        -mvector-sqrt-instruction                : disable
        -mvector-threshold                       : 5
        -mwork-vector-kind=none                  : disable

      Parallelization Options : 
        -fopenmp                                 : enable
        -mparallel                               : disable
        -mparallel-innerloop                     : disable
        -mparallel-omp-routine                   : enable
        -mparallel-outerloop-strip-mine          : disable
        -mparallel-sections                      : disable
        -mparallel-threshold                     : 2000
        -mschedule-dynamic                       : disable
        -mschedule-runtime                       : disable
        -mschedule-static                        : disable
        -mschedule-chunk-size                    : 0
        -pthread                                 : disable

      Inlining Options : 
        -finline-copy-arguments                  : enable
        -finline-functions                       : enable
        -finline-max-depth                       : 2
        -finline-max-function-size               : 50
        -finline-max-times                       : 6

      Code Generation Options : 
        -finstrument-functions                   : disable
        -fpic | -fPIC                            : disable
        -ftrace                                  : disable
        -p                                       : disable

      Debugging Options : 
        -fbounds-check                           : disable
        -fcheck=all                              : disable
        -fcheck=alias                            : disable
        -fcheck=bits                             : disable
        -fcheck=bounds                           : disable
        -fcheck=dangling                         : disable
        -fcheck=do                               : disable
        -fcheck=iovf                             : disable
        -fcheck=pointer                          : disable
        -fcheck=present                          : disable
        -fcheck=recursion                        : disable
        -g                                       : disable
        -minit-stack                             : not specified
        -mmemory-trace                           : disable
        -mmemory-trace-full                      : disable
        -traceback                               : disable

      Language Options : 
        -bss                                     : disable
        -fdefault-integer                        : 4
        -fdefault-double                         : 8
        -fdefault-real                           : 4
        -fextend-source                          : disable
        -ffree-form                              : enable
        -ffixed-form                             : disable
        -ff90-sign                               : disable
        -fmax-continuation-lines                 : 1023
        -frealloc-lhs                            : enable
        -frealloc-lhs-array                      : enable
        -frealloc-lhs-scalar                     : enable
        -save                                    : disable
        -std                                     : Fortran 2008

      Message Options : 
        -Wall                                    : disable
        -Werror                                  : disable
        -Wextension                              : enable
        -Wobsolescent                            : enable
        -Woverflow                               : disable
        -Woverflow-errors                        : disable
        -fdiag-inline                            : 1
        -fdiag-parallel                          : 1
        -fdiag-vector                            : 1
        -pedantic-errors                         : disable
        -w                                       : disable

      List Output Options : 
        -report-file                             : not specified
        -report-append-mode                      : disable
        -report-all                              : enable
        -report-cg                               : enable
        -report-diagnostics                      : enable
        -report-format                           : enable
        -report-inline                           : enable
        -report-option                           : enable
        -report-vector                           : enable

      Directory Options : 
        -fintrinsic-modules-path                 : /opt/nec/ve/nfort/3.1.1/include
        -module                                  : not specified

      Miscellaneous Options : 
        -v                                       : disable


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: MAIN
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    18: inl(1212): Source for routine not found.: UPMPI::MPIF90INIT
    20: inl(1222): Inlined: GETARG
    22: inl(1222): Inlined: GETARG
    24: inl(1222): Inlined: GETARG
    27: opt(3008): Reference within a conditional branch moved outside loop.
    32: inl(1212): Source for routine not found.: DATATYPE::BLKDATAINIT
    34: vec( 101): Vectorized loop.
    35: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::BLKDATAALLOCATION
    35: vec( 103): Unvectorized loop.
    36: inl(1212): Source for routine not found.: DATATYPE::BLKDATAALLOCATION
    36: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::BLKDATAALLOCATION
    41: vec( 101): Vectorized loop.
    42: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::CFLUXDATAALLOCATION
    42: vec( 103): Unvectorized loop.
    43: inl(1212): Source for routine not found.: DATATYPE::CFLUXDATAALLOCATION
    43: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::CFLUXDATAALLOCATION
    46: vec( 101): Vectorized loop.
    47: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::VFLUXDATAALLOCATION
    47: vec( 103): Unvectorized loop.
    48: inl(1212): Source for routine not found.: DATATYPE::VFLUXDATAALLOCATION
    48: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::VFLUXDATAALLOCATION
    51: vec( 101): Vectorized loop.
    52: vec( 101): Vectorized loop.
    53: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::VFLUXDATAALLOCATION
    53: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::CFLUXDATAALLOCATION
    53: vec( 103): Unvectorized loop.
    54: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::CFLUXDATAALLOCATION
    70: par(1801): Parallel routine generated.: MAIN_$1
    71: par(1805): Master-construct generated.
    79: inl(1212): Source for routine not found.: UPMPI::MPIF90BARRIER
    94: vec( 103): Unvectorized loop.
    94: vec( 110): Vectorization obstructive procedure reference.: KERNELMODULE::CFACEV
     1: inl(1212): Source for routine not found.: KERNELMODULE::CFACEV
   125: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::BLKDATADEALLOCATION
   125: vec( 103): Unvectorized loop.
   126: inl(1212): Source for routine not found.: DATATYPE::BLKDATADEALLOCATION
   126: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::BLKDATADEALLOCATION
   128: opt(1097): This statement prevents loop optimization.
   128: vec( 182): Deallocation obstructs vectorization.
   128: vec( 103): Unvectorized loop.
   130: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::CFLUXDATADEALLOCATION
   130: vec( 103): Unvectorized loop.
   131: inl(1212): Source for routine not found.: DATATYPE::CFLUXDATADEALLOCATION
   131: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::CFLUXDATADEALLOCATION
   133: opt(1097): This statement prevents loop optimization.
   133: vec( 182): Deallocation obstructs vectorization.
   133: vec( 103): Unvectorized loop.
   136: vec( 110): Vectorization obstructive procedure reference.: DATATYPE::VFLUXDATADEALLOCATION
   136: vec( 103): Unvectorized loop.
   137: inl(1212): Source for routine not found.: DATATYPE::VFLUXDATADEALLOCATION
   137: opt(1025): Reference to this procedure inhibits optimization.: DATATYPE::VFLUXDATADEALLOCATION
   139: opt(1097): This statement prevents loop optimization.
   139: vec( 182): Deallocation obstructs vectorization.
   139: vec( 103): Unvectorized loop.
   144: inl(1212): Source for routine not found.: UPMPI::MPIF90FINALIZE


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: MAIN
FORMAT LIST

 LINE   LOOP      STATEMENT

     1:           program main
     2:           !$ use omp_lib
     3:             use upmpi
     4:             use dataType
     5:             use kernelModule
     6:             implicit none
     7:             integer :: itr,dir
     8:             integer :: ndim,ndim_min,ndim_max, nb,nbmax
     9:             integer(8) :: total_grid_point
    10:             integer,parameter :: iterations=20
    11:             real(8), parameter :: bytes=8.0
    12:             real(8) :: maxtime,mintime,avgtime, times, t, t_gettod
    13:             character(len=10) arg
    14:             integer(8) :: nof_grid_point
    15:             !
    16:             !-----------------------------------------------------------------------
    17:             !
    18:             call mpif90init
    19:             !
    20:         I   call getarg(1,arg)
    21:             read(arg,*) total_grid_point
    22:         I   call getarg(2,arg)
    23:             read(arg,*) ndim_min
    24:         I   call getarg(3,arg)
    25:             read(arg,*) ndim_max
    26:             !
    27: +------>    do ndim=ndim_min,ndim_max
    28: |           !
    29: |           nbmax = total_grid_point/(ndim*ndim*ndim)
    30: |           !
    31: |           nof_grid_point = ndim*ndim*ndim*nbmax
    32: |           call blkDataInit(ndim,2)
    33: |           !
    34: |V=====>    allocate(blk(nbmax))
    35: |+----->    do nb=1,nbmax
    36: ||            call blkDataAllocation(blk(nb))
    37: |+-----     enddo
    38: |           !
    39: |           select case(ftype)
    40: |           case(1)
    41: |V=====>      allocate(cf(nbmax))
    42: |+----->      do nb=1,nbmax
    43: ||              call cfluxDataAllocation(cf(nb))
    44: |+-----       enddo
    45: |           case(2)
    46: |V=====>      allocate(vf(nbmax))
    47: |+----->      do nb=1,nbmax
    48: ||              call vfluxDataAllocation(vf(nb))
    49: |+-----       enddo
    50: |           case(3)
    51: |V=====>      allocate(cf(nbmax))
    52: |V=====>      allocate(vf(nbmax))
    53: |+----->      do nb=1,nbmax
    54: ||              call cfluxDataAllocation(cf(nb))
    55: ||              call vfluxDataAllocation(vf(nb))
    56: |+-----       enddo
    57: |           case default
    58: |             write(6,*) "unknown ftype ",ftype
    59: |             stop
    60: |           end select
    61: |           !
    62: |           if(mpl_root) then
    63: |             write(6,"('Array size = ',i5,'^3')") ndim
    64: |             write(6,"('Block = ',i5)") nbmax
    65: |             write(6,"('Grid points = ',i8)") nof_grid_point
    66: |             write(6,"('Memory size = ',f16.8,' [GB]')") (ndim+4)**3*nbmax*bytes*nof_3da*1.e-9
    67: |             write(6,"('Memory size / block = ',f16.8,' [GB]')") (ndim+4)**3*bytes*nof_3da*1.e-9
    68: |           endif
    69: |           !
    70: |         !$omp parallel
    71: |         !$omp master
    72: |         !$  if(mpl_root) write(6,"('Number of Threads = ',i5)") omp_get_num_threads()
    73: |         !$omp end master
    74: |         !$omp end parallel
    75: |           !
    76: |+----->    do itr=1,iterations
    77: ||            !
    78: ||            if(itr.eq.2) then
    79: ||              call mpif90barrier
    80: ||        #if defined(FJT_PA)
    81: ||              call fipp_start()
    82: ||              call start_collection("main")
    83: ||              call fapp_start("main",1,1)
    84: ||        #endif
    85: ||        #if defined(GETTOD)
    86: ||              call gettod(t_gettod)
    87: ||              t = t_gettod*1.e-6
    88: ||        #else
    89: ||              t = omp_get_wtime()
    90: ||        #endif
    91: ||            endif
    92: ||            !
    93: ||+---->      do nb=1,nbmax
    94: |||+--->      do dir=1,3
    95: ||||            !
    96: ||||      #include "./kernel_if.inc"
    97: ||||            !
    98: |||+---       enddo
    99: ||+----       enddo
   100: ||            !
   101: |+-----     enddo
   102: |           !
   103: |           call mpif90barrier
   104: |         #if defined(GETTOD)
   105: |           call gettod(t_gettod)
   106: |           times = t_gettod*1.e-6 - t
   107: |         #else
   108: |           times = omp_get_wtime() - t
   109: |         #endif
   110: |           !
   111: |         #if defined(FJT_PA)
   112: |           call fapp_stop("main",1,1)
   113: |           call stop_collection("main")
   114: |           call fipp_stop()
   115: |         #endif
   116: |           !
   117: |           avgtime = times/dble(iterations-1)
   118: |           if(mpl_root) then
   119: |             write(6,"('Performance: ',e12.5,' [GB/s] ',e12.5,' [GFLOPS]',e12.5,' [sec]/itr ',e12.5,' [sec]')") &
   120: |                     nof_grid_point*3*byte*bytes/avgtime*1.0D-9, &
   121: |                     nof_grid_point*3*flop/avgtime*1.0D-9, &
   122: |                     avgtime,times
   123: |           endif
   124: |           !
   125: |+----->    do nb=1,nbmax
   126: ||            call blkDataDeallocation(blk(nb))
   127: |+-----     enddo
   128: |+=====>    deallocate(blk)
   129: |           if(allocated(cf)) then
   130: |+----->      do nb=1,nbmax
   131: ||              call cfluxDataDeallocation(cf(nb))
   132: |+-----       enddo
   133: |+=====>      deallocate(cf)
   134: |           endif
   135: |           if(allocated(vf)) then
   136: |+----->      do nb=1,nbmax
   137: ||              call vfluxDataDeallocation(vf(nb))
   138: |+-----       enddo
   139: |+=====>      deallocate(vf)
   140: |           endif
   141: |           !
   142: +------     enddo
   143:             !
   144:             call mpif90finalize
   145:             !
   146:           end program main


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: MAIN
INLINE LIST

  INLINE REPORT: MAIN (main+.f90:1)
  -> NOINLINE: UPMPI::MPIF90INIT (main+.f90:18)
     *** Source for routine not found.
  -> INLINE: GETARG (main+.f90:20)
  -> INLINE: GETARG (main+.f90:22)
  -> INLINE: GETARG (main+.f90:24)
  -> NOINLINE: DATATYPE::BLKDATAINIT (main+.f90:32)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::BLKDATAALLOCATION (main+.f90:36)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::CFLUXDATAALLOCATION (main+.f90:43)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::VFLUXDATAALLOCATION (main+.f90:48)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::CFLUXDATAALLOCATION (main+.f90:54)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::VFLUXDATAALLOCATION (main+.f90:55)
     *** Source for routine not found.
  -> NOINLINE: UPMPI::MPIF90BARRIER (main+.f90:79)
     *** Source for routine not found.
  -> NOINLINE: KERNELMODULE::CFACEV (kernel_if.inc:1)
     *** Source for routine not found.
  -> NOINLINE: UPMPI::MPIF90BARRIER (main+.f90:103)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::BLKDATADEALLOCATION (main+.f90:126)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::CFLUXDATADEALLOCATION (main+.f90:131)
     *** Source for routine not found.
  -> NOINLINE: DATATYPE::VFLUXDATADEALLOCATION (main+.f90:137)
     *** Source for routine not found.
  -> NOINLINE: UPMPI::MPIF90FINALIZE (main+.f90:144)
     *** Source for routine not found.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: MAIN
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: MAIN
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 20 [s0-s12 s15-s16 s23-s24 s61-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 1264 bytes
      Register spill area      :    0 bytes
      Parameter area           :   64 bytes
      Register save area       :  176 bytes
      User data area           : 1024 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: GETARG
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: GETARG
FORMAT LIST

 LINE   LOOP      STATEMENT

   148:           subroutine getarg(number,value)
   149:             INTEGER,INTENT(IN) :: number
   150:             CHARACTER(*),INTENT(OUT) :: value
   151:           !  INTEGER,INTENT(OUT),OPTIONAL :: length,status
   152:           
   153:           !  call get_command_argument(number,value,length,status)
   154:             call get_command_argument(number,value)
   155:           
   156:           end subroutine getarg


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: GETARG
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: GETARG
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: ../main+.f90

PROCEDURE NAME: GETARG
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 15 [s0-s4 s8-s12 s15-s16 s61-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 224 bytes
      Register spill area      :   0 bytes
      Parameter area           :  40 bytes
      Register save area       : 176 bytes
      User data area           :   0 bytes
      Others                   :   8 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


