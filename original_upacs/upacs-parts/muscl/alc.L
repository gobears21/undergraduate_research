NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::MUSCL
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    37: opt(1418): Constant-length loop is expanded.
    39: opt(1418): Constant-length loop is expanded.
    41: opt(1418): Constant-length loop is expanded.
    44: opt(1418): Constant-length loop is expanded.
    51: par(1801): Parallel routine generated.: KERNELMODULE::MUSCL$1
    56: par(1803): Parallelized by "do".
    56: opt(2495): Loop nest collapsed by "collapse" clause.
    56: vec( 102): Partially vectorized loop.
    58: vec( 101): Vectorized loop.
    16: opt(1418): Constant-length loop is expanded.
    17: opt(1418): Constant-length loop is expanded.
    20: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
    27: vec( 128): Fused multiply-add operation applied.
    28: vec( 128): Fused multiply-add operation applied.
    29: vec( 128): Fused multiply-add operation applied.
    30: vec( 128): Fused multiply-add operation applied.
    31: vec( 128): Fused multiply-add operation applied.
    68: opt(1339): User parallel directives inhibit optimization.: I


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::MUSCL
FORMAT LIST

 LINE   LOOP      STATEMENT

    15:             subroutine muscl(rho ,u ,v ,w ,pre , &
    16:                              rhoR,uR,vR,wR,preR, &
    17:                              rhoL,uL,vL,wL,preL, &
    18:                              dx,dir,ndim,ovlp)
    19:               real(8), dimension(:,:,:), allocatable :: rho ,u ,v ,w ,pre, &
    20:                                            rhoR,uR,vR,wR,preR, &
    21:                                            rhoL,uL,vL,wL,preL
    22:               real(8), intent(in) :: dx
    23:               integer, intent(in) :: dir,ndim,ovlp
    24:           
    25:               integer :: im,jm,km,ip,jp,kp
    26:               real(8) :: dxi,dx_harf,beta
    27:               real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    28:           
    29:               integer :: i,j,k
    30:               integer :: idelta(3), isrt(3),iend(3)
    31:           
    32:               flop = 170
    33:               byte = 25
    34:               !
    35:               select case(dir)
    36:               case(1)
    37: *======>        idelta(:) = (/1,0,0/)
    38:               case(2)
    39: *======>        idelta(:) = (/0,1,0/)
    40:               case(3)
    41: *======>        idelta(:) = (/0,0,1/)
    42:               end select
    43:               !
    44: *======>      isrt = (/1,1,1/)
    45:               iend = (/ndim,ndim,ndim/)
    46:               !
    47:               dxi = 1./(dx+epsilon(dx))
    48:               dx_harf = 0.5*dx
    49:               beta = (3.-KAPPA)/(1.-KAPPA)
    50:               !
    51:               !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp) &
    52:               !$omp private(dq_p,dq_m,dq_m_tilda,dq_p_tilda)
    53:               !$omp do collapse(2)
    54:           !ocl noxfill
    55:           !ocl swp
    56: Y------>      do k=isrt(3),iend(3)
    57: |+----->        do j=isrt(2),iend(2)
    58: ||V---->          do i=isrt(1),iend(1)
    59: |||                 im = i-idelta(1)
    60: |||                 jm = j-idelta(2)
    61: |||                 km = k-idelta(3)
    62: |||                 ip = i+idelta(1)
    63: |||                 jp = j+idelta(2)
    64: |||                 kp = k+idelta(3)
    65: |||                 !
    66: |||       #include "../bodies/muscl_body_3d.inc"
    67: |||                 !
    68: ||V----           enddo
    69: |+-----         enddo
    70: Y------       enddo
    71:               !$omp end do
    72:               !$omp end parallel
    73:               !
    74:             end subroutine muscl


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::MUSCL
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::MUSCL
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:56)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:56)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:56)

    LOOP BEGIN: (alc.f90:58)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:58)
      *** The number of VLOAD, VSTORE. : 15, 10. (alc.f90:58)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:44 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::MUSCL
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
    Total size                 : 38960 bytes
      Register spill area      : 19216 bytes
      Parameter area           :     8 bytes
      Register save area       :   176 bytes
      User data area           : 19552 bytes
      Others                   :     8 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:56)
  LOOP END

  LOOP BEGIN: (alc.f90:56)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 53
            Over basic blocks                           : 53
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 95
            Over basic blocks                           : 95
    *** The number of SCALAR REGISTER TRANSFER          : 25

    LOOP BEGIN: (alc.f90:58)
      *** The number of VECTOR REGISTER SPILL
            Total                                       : 9
              Others                                    : 9
    LOOP END
  LOOP END


