NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFLUX
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    36: opt(1418): Constant-length loop is expanded.
    37: opt(1418): Constant-length loop is expanded.
    38: opt(1418): Constant-length loop is expanded.
    40: opt(1418): Constant-length loop is expanded.
    43: opt(1418): Constant-length loop is expanded.
    44: par(1801): Parallel routine generated.: KERNELMODULE::CFLUX$1
    51: par(1803): Parallelized by "do".
    51: opt(2495): Loop nest collapsed by "collapse" clause.
    51: vec( 102): Partially vectorized loop.
    53: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
    19: vec( 128): Fused multiply-add operation applied.
    31: vec( 128): Fused multiply-add operation applied.
    35: vec( 128): Fused multiply-add operation applied.
    38: vec( 128): Fused multiply-add operation applied.
    41: vec( 128): Fused multiply-add operation applied.
    42: vec( 128): Fused multiply-add operation applied.
    43: vec( 128): Fused multiply-add operation applied.
    44: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFLUX
FORMAT LIST

 LINE   LOOP      STATEMENT

    15:             subroutine cflux(rhoR,uR,vR,wR,preR, &
    16:                              rhoL,uL,vL,wL,preL, &
    17:                              fmass,fmomx,fmomy,fmomz,fene, &
    18:                              area,dir,ndim,ovlp)
    19:               real(8), dimension(:,:,:), allocatable :: rhoR,uR,vR,wR,preR, &
    20:                                            rhoL,uL,vL,wL,preL
    21:               real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene
    22:               real(8), intent(in) :: area
    23:               integer, intent(in) :: dir, ndim,ovlp
    24:           
    25:               real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    26:               real(8) :: switch,p,beta_p,beta_m
    27:               real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    28:               real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    29:           
    30:               integer :: i,j,k
    31:               integer :: idelta(3,3), isrt(3),iend(3)
    32:           
    33:               flop = 153
    34:               byte = 15
    35:           
    36: *======>      idelta(:,1) = (/1,0,0/)
    37: *======>      idelta(:,2) = (/0,1,0/)
    38: *======>      idelta(:,3) = (/0,0,1/)
    39:               !
    40: *======>      isrt = (/1,1,1/)
    41:               iend = (/ndim,ndim,ndim/)
    42:               !
    43: *======>      nv = idelta(:,dir)
    44:               !$omp parallel private(i,j,k) &
    45:               !$omp private(drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    46:               !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    47:               !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m)
    48:               !$omp do collapse(2)
    49:           !ocl swp
    50:           !ocl noxfill
    51: Y------>      do k=isrt(3),iend(3)
    52: |+----->      do j=isrt(2),iend(2)
    53: ||V---->      do i=isrt(1),iend(1)
    54: |||             !
    55: |||       #include "../bodies/cflux_body_3d.inc"
    56: |||             !
    57: ||V----       enddo
    58: |+-----       enddo
    59: Y------       enddo
    60:               !$omp end do
    61:               !$omp end parallel
    62:             end subroutine cflux


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFLUX
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFLUX
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:51)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:51)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:51)

    LOOP BEGIN: (alc.f90:53)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:53)
      *** The number of VLOAD, VSTORE. : 10,  5. (alc.f90:53)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFLUX
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
    Total size                 : 1488 bytes
      Register spill area      :  568 bytes
      Parameter area           :   16 bytes
      Register save area       :  176 bytes
      User data area           :  728 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:51)
  LOOP END

  LOOP BEGIN: (alc.f90:51)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 42
            Not enough registers                        :  1
            Over basic blocks                           : 41
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 64
            Not enough registers                        :  1
            Over basic blocks                           : 63
    *** The number of SCALAR REGISTER TRANSFER          : 18

    LOOP BEGIN: (alc.f90:53)
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 5
              Over basic blocks                         : 5
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END


