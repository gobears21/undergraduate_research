NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    55: opt(1418): Constant-length loop is expanded.
    58: opt(1418): Constant-length loop is expanded.
    61: opt(1418): Constant-length loop is expanded.
    65: inl(1212): Source for routine not found.: LOOPMODULE::LOOPINIT
    67: opt(1418): Constant-length loop is expanded.
    71: par(1801): Parallel routine generated.: KERNELMODULE::RHSV$1
    77: par(1803): Parallelized by "do".
    77: vec( 101): Vectorized loop.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
   111: par(1803): Parallelized by "do".
   111: vec( 101): Vectorized loop.
     6: vec( 128): Fused multiply-add operation applied.
     7: vec( 128): Fused multiply-add operation applied.
     8: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
   121: par(1803): Parallelized by "do".
   121: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
FORMAT LIST

 LINE   LOOP      STATEMENT

    20:             subroutine rhsv(rho,u,v,w,pre,vis, &
    21:                             dmas,dmox,dmoy,dmoz,dene, &
    22:                             dx,area,dir,ndim,ovlp)
    23:               real(8), dimension(*) :: rho,u,v,w,pre,vis, &
    24:                                        dmas,dmox,dmoy,dmoz,dene
    25:               real(8), intent(in) :: dx,area
    26:               integer, intent(in) :: dir,ndim,ovlp
    27:           
    28:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
    29:                                            mu,fu,fv,fw, &
    30:                                            dTdx,dTdy,dTdz, &
    31:                                            dudx,dudy,dudz, &
    32:                                            dvdx,dvdy,dvdz, &
    33:                                            dwdx,dwdy,dwdz
    34:           
    35:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: fmass,fmomx,fmomy,fmomz,fene
    36:           
    37:               integer :: l,lm,lp,la,lb,lc,ld
    38:               integer :: idelta(3)
    39:               integer :: ixi,ieta,izet
    40:               real(8) :: dxi
    41:               real(8) :: dudxi,dudeta,dudzet, &
    42:                          dvdxi,dvdeta,dvdzet, &
    43:                          dwdxi,dwdeta,dwdzet, &
    44:                          dTdxi,dTdeta,dTdzet
    45:               !
    46:               real(8) :: nv(3), div_u, tau(3,3)
    47:               !
    48:               real(8) :: voli
    49:               !
    50:               flop = 132+54+15
    51:               byte = 68+21+20
    52:               !
    53:               select case(dir)
    54:               case(1)
    55: *======>        idelta(:) = (/1,0,0/)
    56:                 ixi=1; ieta=2; izet=3
    57:               case(2)
    58: *======>        idelta(:) = (/0,1,0/)
    59:                 ixi=3; ieta=1; izet=2
    60:               case(3)
    61: *======>        idelta(:) = (/0,0,1/)
    62:                 ixi=2; ieta=3; izet=1
    63:               end select
    64:               !
    65:               call loopInit(ndim,ovlp)
    66:               !
    67: *======>      nv = idelta(:)
    68:               dxi = 1./(dx+epsilon(dx))
    69:               voli = 1.0
    70:               !
    71:               !$omp parallel private(l,lm,lp,la,lb,lc,ld) &
    72:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
    73:               !$omp private(div_u,tau)
    74:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
    75:           !ocl swp
    76:           !ocl xfill
    77: Y------>      do l=lsrt,lend
    78: |               !
    79: |               lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
    80: |               !
    81: |               ! xi
    82: |               !
    83: |         #include "../bodies/cfacev_xi_body_1d.inc"
    84: |               !
    85: |               ! eta
    86: |               !
    87: |               la = l+idelta(3)+idelta(1)*num_i+idelta(2)*num_ij
    88: |               lb = l+idelta(1)+idelta(3)+(idelta(2)+idelta(1))*num_i+(idelta(3)+idelta(2))*num_ij
    89: |               lc = l-idelta(3)-idelta(1)*num_i-idelta(2)*num_ij
    90: |               ld = l+idelta(1)-idelta(3)+(idelta(2)-idelta(1))*num_i+(idelta(3)-idelta(2))*num_ij
    91: |               !
    92: |         #include "../bodies/cfacev_eta_body_1d.inc"
    93: |               !
    94: |               ! zeta
    95: |               !
    96: |               la = l+idelta(2)+idelta(3)*num_i+idelta(1)*num_ij
    97: |               lb = l+idelta(1)+idelta(2)+(idelta(2)+idelta(3))*num_i+(idelta(3)+idelta(1))*num_ij
    98: |               lc = l-idelta(2)-idelta(3)*num_i-idelta(1)*num_ij
    99: |               ld = l+idelta(1)-idelta(2)+(idelta(2)-idelta(3))*num_i+(idelta(3)-idelta(1))*num_ij
   100: |               !
   101: |         #include "../bodies/cfacev_zeta_body_1d.inc"
   102: |               !
   103: |         #include "../bodies/cfacev_body_1d.inc"
   104: |               !
   105: Y------       enddo
   106:               !$omp end do
   107:               !
   108:               !$omp do
   109:           !ocl swp
   110:           !ocl xfill
   111: Y------>      do l=lsrt,lend
   112: |               !
   113: |         #include "../bodies/vflux_body_1d.inc"
   114: |               !
   115: Y------       enddo
   116:               !$omp end do
   117:               !
   118:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
   119:           !ocl swp
   120:           !ocl xfill
   121: Y------>      do l=lsrt,lend
   122: |               !
   123: |               lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
   124: |               !
   125: |         #include "../bodies/dq_body_1d.inc"
   126: |               !
   127: Y------       enddo
   128:               !$omp end do
   129:               !
   130:               !$omp end parallel
   131:               !
   132:             end subroutine rhsv


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
INLINE LIST

  INLINE REPORT: KERNELMODULE::RHSV (alc.f90:20)
  -> NOINLINE: LOOPMODULE::LOOPINIT (alc.f90:65)
     *** Source for routine not found.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:77)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:77)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:77)
      *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:77)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:111)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:111)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:111)
      *** The number of VLOAD, VSTORE. : 16,  5. (alc.f90:111)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:121)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:121)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:121)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:121)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:51 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
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
    Total size                 : 1728 bytes
      Register spill area      :  568 bytes
      Parameter area           :   16 bytes
      Register save area       :  176 bytes
      User data area           :  968 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:77)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 15
            Over basic blocks                           : 15
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 16
            Over basic blocks                           : 16
    *** The number of SCALAR REGISTER TRANSFER          : 19

    LOOP BEGIN: (alc.f90:77)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 26
              Not enough registers                      :  3
              Over basic blocks                         : 23
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 91
              Over basic blocks                         : 91
      *** The number of SCALAR REGISTER TRANSFER        : 37
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:111)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 12
            Over basic blocks                           : 12
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 12
            Over basic blocks                           : 12
    *** The number of SCALAR REGISTER TRANSFER          : 9

    LOOP BEGIN: (alc.f90:111)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:121)
    *** The number of SCALAR REGISTER TRANSFER          : 11

    LOOP BEGIN: (alc.f90:121)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 5
              Over basic blocks                         : 5
      *** The number of SCALAR REGISTER TRANSFER        : 8
    LOOP END
  LOOP END


