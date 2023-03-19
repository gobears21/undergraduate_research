NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME : alc.f90

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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::VFLUX
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    42: opt(1418): Constant-length loop is expanded.
    43: opt(1418): Constant-length loop is expanded.
    44: opt(1418): Constant-length loop is expanded.
    46: opt(1418): Constant-length loop is expanded.
    49: opt(1418): Constant-length loop is expanded.
    51: par(1801): Parallel routine generated.: KERNELMODULE::VFLUX$1
    55: par(1803): Parallelized by "do".
    55: opt(2495): Loop nest collapsed by "collapse" clause.
    55: vec( 102): Partially vectorized loop.
    57: vec( 101): Vectorized loop.
     6: vec( 128): Fused multiply-add operation applied.
     7: vec( 128): Fused multiply-add operation applied.
     8: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
    61: opt(1339): User parallel directives inhibit optimization.: I


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::VFLUX
FORMAT LIST

 LINE   LOOP      STATEMENT

    18:             subroutine vflux(mu,fu,fv,fw, &
    19:                              dTdx,dTdy,dTdz, &
    20:                              dudx,dudy,dudz, &
    21:                              dvdx,dvdy,dvdz, &
    22:                              dwdx,dwdy,dwdz, &
    23:                              fmass,fmomx,fmomy,fmomz,fene, &
    24:                              area,dir,ndim,ovlp)
    25:               real(8), dimension(:,:,:), allocatable :: mu,fu,fv,fw, &
    26:                                            dTdx,dTdy,dTdz, &
    27:                                            dudx,dudy,dudz, &
    28:                                            dvdx,dvdy,dvdz, &
    29:                                            dwdx,dwdy,dwdz
    30:               real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene
    31:               real(8), intent(in) :: area
    32:               integer, intent(in) :: dir, ndim,ovlp
    33:           
    34:               real(8) :: nv(3), div_u, tau(3,3)
    35:           
    36:               integer :: i,j,k
    37:               integer :: idelta(3,3), isrt(3),iend(3)
    38:           
    39:               flop = 54
    40:               byte = 21
    41:           
    42: *======>      idelta(:,1) = (/1,0,0/)
    43: *======>      idelta(:,2) = (/0,1,0/)
    44: *======>      idelta(:,3) = (/0,0,1/)
    45:               !
    46: *======>      isrt = (/1,1,1/)
    47:               iend = (/ndim,ndim,ndim/)
    48:               !
    49: *======>      nv = idelta(:,dir)
    50:               !
    51:               !$omp parallel private(i,j,k,div_u,tau)
    52:               !$omp do collapse(2)
    53:           !ocl swp
    54:           !ocl noxfill
    55: Y------>      do k=isrt(3),iend(3)
    56: |+----->      do j=isrt(2),iend(2)
    57: ||V---->      do i=isrt(1),iend(1)
    58: |||             !
    59: |||       #include "../bodies/vflux_body_3d.inc"
    60: |||             !
    61: ||V----       enddo
    62: |+-----       enddo
    63: Y------       enddo
    64:               !$omp end do
    65:               !$omp end parallel
    66:             end subroutine vflux


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::VFLUX
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::VFLUX
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:55)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:55)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:55)

    LOOP BEGIN: (alc.f90:57)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:57)
      *** The number of VLOAD, VSTORE. : 16,  5. (alc.f90:57)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:43 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::VFLUX
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 61 [s0-s12 s15-s16 s18-s63]
      Vector registers         : 64 [v0-v63]
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 2240 bytes
      Register spill area      :  888 bytes
      Parameter area           :    8 bytes
      Register save area       :  176 bytes
      User data area           : 1160 bytes
      Others                   :    8 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:55)
  LOOP END

  LOOP BEGIN: (alc.f90:55)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 59
            Over basic blocks                           : 59
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 107
            Over basic blocks                           : 107
    *** The number of SCALAR REGISTER TRANSFER          : 21

    LOOP BEGIN: (alc.f90:57)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END


