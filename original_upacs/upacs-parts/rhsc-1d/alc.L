NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSC
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    45: opt(1418): Constant-length loop is expanded.
    46: opt(1418): Constant-length loop is expanded.
    47: opt(1418): Constant-length loop is expanded.
    49: inl(1212): Source for routine not found.: LOOPMODULE::LOOPINIT
    51: opt(1418): Constant-length loop is expanded.
    57: par(1801): Parallel routine generated.: KERNELMODULE::RHSC$1
    65: par(1803): Parallelized by "do".
    65: vec( 101): Vectorized loop.
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
    77: par(1803): Parallelized by "do".
    77: vec( 101): Vectorized loop.
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
    87: par(1803): Parallelized by "do".
    87: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSC
FORMAT LIST

 LINE   LOOP      STATEMENT

    17:             subroutine rhsc(rho ,u ,v ,w ,pre , &
    18:                             dmas,dmox,dmoy,dmoz,dene, &
    19:                             area,dx,dir,ndim,ovlp)
    20:               real(8), dimension(*) :: rho ,u ,v ,w ,pre, &
    21:                                        dmas,dmox,dmoy,dmoz,dene
    22:               real(8), intent(in) :: dx,area
    23:               integer, intent(in) :: dir,ndim,ovlp
    24:           
    25:               real(8) :: dxi,dx_harf,beta
    26:               real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    27:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
    28:                                        rhoL,uL,vL,wL,preL, &
    29:                                        rhoR,uR,vR,wR,preR
    30:           
    31:               real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    32:               real(8) :: switch,p,beta_p,beta_m
    33:               real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    34:               real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    35:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: fmass,fmomx,fmomy,fmomz,fene
    36:           
    37:               real(8) :: voli
    38:           
    39:               integer :: l,lm,lp
    40:               integer :: idelta(3,3)
    41:           
    42:               flop = 170+153+15
    43:               byte = 25+15+20
    44:           
    45: *======>      idelta(:,1) = (/1,0,0/)
    46: *======>      idelta(:,2) = (/0,1,0/)
    47: *======>      idelta(:,3) = (/0,0,1/)
    48:               !
    49:               call loopInit(ndim,ovlp)
    50:               !
    51: *======>      nv = idelta(:,dir)
    52:               dxi = 1./(dx+epsilon(dx))
    53:               dx_harf = 0.5*dx
    54:               beta = (3.-KAPPA)/(1.-KAPPA)
    55:               voli = 1.0
    56:               !
    57:               !$omp parallel private(l,lm,lp) &
    58:               !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
    59:               !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    60:               !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    61:               !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m)
    62:               !$omp do
    63:           !ocl swp
    64:           !ocl xfill
    65: Y------>      do l=lsrt,lend
    66: |               lp = l+idelta(1,dir)+idelta(2,dir)*num_i+idelta(3,dir)*num_ij
    67: |               lm = l-idelta(1,dir)-idelta(2,dir)*num_i-idelta(3,dir)*num_ij
    68: |               !
    69: |         #include "../bodies/muscl_body_1d.inc"
    70: |               !
    71: Y------       enddo
    72:               !$omp end do
    73:               !
    74:               !$omp do
    75:           !ocl swp
    76:           !ocl noxfill
    77: Y------>      do l=lsrt,lend
    78: |               !
    79: |         #include "../bodies/cflux_body_1d.inc"
    80: |               !
    81: Y------       enddo
    82:               !$omp end do
    83:               !
    84:               !$omp do
    85:           !ocl swp
    86:           !ocl xfill
    87: Y------>      do l=lsrt,lend
    88: |               lm = l-idelta(1,dir)-idelta(2,dir)*num_i-idelta(3,dir)*num_ij
    89: |               !
    90: |         #include "../bodies/dq_body_1d.inc"
    91: |               !
    92: Y------       enddo
    93:               !$omp end do
    94:               !$omp end parallel
    95:               !
    96:             end subroutine rhsc


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSC
INLINE LIST

  INLINE REPORT: KERNELMODULE::RHSC (alc.f90:17)
  -> NOINLINE: LOOPMODULE::LOOPINIT (alc.f90:49)
     *** Source for routine not found.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSC
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:65)
    <Vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:65)
    *** The number of VLOAD, VSTORE. : 15, 10. (alc.f90:65)
  LOOP END

  LOOP BEGIN: (alc.f90:77)
    <Vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:77)
    *** The number of VLOAD, VSTORE. : 10,  5. (alc.f90:77)
  LOOP END

  LOOP BEGIN: (alc.f90:87)
    <Vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:87)
    *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:87)
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:48 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSC
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
    Total size                 : 37584 bytes
      Register spill area      : 18472 bytes
      Parameter area           :    16 bytes
      Register save area       :   176 bytes
      User data area           : 18920 bytes
      Others                   :     0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:65)
    *** The number of VECTOR REGISTER SPILL
          Total                                         : 9
            Others                                      : 9
  LOOP END

  LOOP BEGIN: (alc.f90:77)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 3
            Over basic blocks                           : 3
    *** The number of SCALAR REGISTER TRANSFER          : 5
  LOOP END

  LOOP BEGIN: (alc.f90:87)
  LOOP END


