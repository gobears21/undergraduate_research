NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME : upmpi.f90

  COMPILER OPTIONS : -fopenmp -O3 -proginf -report-all -finline-functions -fpp -c

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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90INIT
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90INIT
FORMAT LIST

 LINE   LOOP      STATEMENT

    18:             subroutine mpif90init
    19:           #if defined(MPI)
    20:               integer :: ierror
    21:               call MPI_INIT(ierror)
    22:               call MPI_COMM_SIZE(MPI_COMM_WORLD,mpl_nPE,ierror)
    23:               call MPI_COMM_RANK(MPI_COMM_WORLD,mpl_myRank,ierror)
    24:               mpl_PEid=mpl_myRank+1
    25:               if(mpl_myRank/=0) mpl_root=.false.
    26:           #endif
    27:             end subroutine mpif90init


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90INIT
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90INIT
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90INIT
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  4 [s8-s11]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90FINALIZE
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90FINALIZE
FORMAT LIST

 LINE   LOOP      STATEMENT

    29:             subroutine mpif90finalize
    30:           #if defined(MPI)
    31:               integer:: ierror
    32:               call MPI_FINALIZE(ierror)
    33:           #endif
    34:             end subroutine mpif90finalize


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90FINALIZE
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90FINALIZE
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90FINALIZE
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  4 [s8-s11]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90BARRIER
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90BARRIER
FORMAT LIST

 LINE   LOOP      STATEMENT

    36:             subroutine mpif90barrier
    37:           #if defined(MPI)
    38:               integer :: ierror
    39:               call MPI_BARRIER(MPI_COMM_WORLD,ierror)
    40:           #endif
    41:             end subroutine mpif90barrier


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90BARRIER
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90BARRIER
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: upmpi.f90

PROCEDURE NAME: UPMPI::MPIF90BARRIER
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  4 [s8-s11]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


