NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    45: opt(1418): Constant-length loop is expanded.
    48: opt(1418): Constant-length loop is expanded.
    51: opt(1418): Constant-length loop is expanded.
    57: inl(1212): Source for routine not found.: LOOPMODULE::LOOPINIT
    59: par(1801): Parallel routine generated.: KERNELMODULE::CFACEV$1
    64: par(1803): Parallelized by "do".
    64: vec( 101): Vectorized loop.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
FORMAT LIST

 LINE   LOOP      STATEMENT

    14:             subroutine cfacev(rho,u,v,w,pre,vis, &
    15:                              mu,fu,fv,fw, &
    16:                              dTdx,dTdy,dTdz, &
    17:                              dudx,dudy,dudz, &
    18:                              dvdx,dvdy,dvdz, &
    19:                              dwdx,dwdy,dwdz, &
    20:                              dx,dir,ndim,ovlp)
    21:               real(8), dimension(*) :: rho,u,v,w,pre,vis
    22:               real(8), dimension(*) :: mu,fu,fv,fw, &
    23:                                        dTdx,dTdy,dTdz, &
    24:                                        dudx,dudy,dudz, &
    25:                                        dvdx,dvdy,dvdz, &
    26:                                        dwdx,dwdy,dwdz
    27:               real(8), intent(in) :: dx
    28:               integer, intent(in) :: dir, ndim,ovlp
    29:           
    30:               integer :: l,lp,la,lb,lc,ld
    31:               integer :: idelta(3)
    32:               integer :: ixi,ieta,izet
    33:               !real(8) :: dvaldx(4,3), dxi
    34:               real(8) :: dxi
    35:               real(8) :: dudxi,dudeta,dudzet, &
    36:                          dvdxi,dvdeta,dvdzet, &
    37:                          dwdxi,dwdeta,dwdzet, &
    38:                          dTdxi,dTdeta,dTdzet
    39:               !
    40:               flop = 132
    41:               byte = 68
    42:               !
    43:               select case(dir)
    44:               case(1)
    45: *======>        idelta(:) = (/1,0,0/)
    46:                 ixi=1; ieta=2; izet=3
    47:               case(2)
    48: *======>        idelta(:) = (/0,1,0/)
    49:                 ixi=3; ieta=1; izet=2
    50:               case(3)
    51: *======>        idelta(:) = (/0,0,1/)
    52:                 ixi=2; ieta=3; izet=1
    53:               end select
    54:               !
    55:               dxi = 1./(dx+epsilon(dx))
    56:               !
    57:               call loopInit(ndim,ovlp)
    58:               !
    59:               !$omp parallel private(l,lp,la,lb,lc,ld) &
    60:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet)
    61:               !$omp do
    62:           !ocl swp
    63:           !ocl xfill
    64: Y------>      do l=lsrt,lend
    65: |               !
    66: |               !
    67: |               ! xi derivatives
    68: |               !
    69: |               !call l2ijk(l,ijk)
    70: |               !ijkp=ijk(:)+idelta(:)
    71: |               !lp = ijk2l(ijkp)
    72: |               !
    73: |               lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
    74: |               !
    75: |         #include "../bodies/cfacev_xi_body_1d.inc"
    76: |               !
    77: |               ! eta derivatives
    78: |               !
    79: |               !ijka(1) = ijk(1)+idelta(3)
    80: |               !ijka(2) = ijk(2)+idelta(1)
    81: |               !ijka(3) = ijk(3)+idelta(2)
    82: |               !la = ijk2l(ijka)
    83: |               !ijkb(1) = ijkp(1)+idelta(3)
    84: |               !ijkb(2) = ijkp(2)+idelta(1)
    85: |               !ijkb(3) = ijkp(3)+idelta(2)
    86: |               !lb = ijk2l(ijkb)
    87: |               !ijkc(1) = ijk(1)-idelta(3)
    88: |               !ijkc(2) = ijk(2)-idelta(1)
    89: |               !ijkc(3) = ijk(3)-idelta(2)
    90: |               !lc = ijk2l(ijkc)
    91: |               !ijkd(1) = ijkp(1)-idelta(3)
    92: |               !ijkd(2) = ijkp(2)-idelta(1)
    93: |               !ijkd(3) = ijkp(3)-idelta(2)
    94: |               !ld = ijk2l(ijkd)
    95: |               !
    96: |               la = l+idelta(3)+idelta(1)*num_i+idelta(2)*num_ij
    97: |               lb = l+idelta(1)+idelta(3)+(idelta(2)+idelta(1))*num_i+(idelta(3)+idelta(2))*num_ij
    98: |               lc = l-idelta(3)-idelta(1)*num_i-idelta(2)*num_ij
    99: |               ld = l+idelta(1)-idelta(3)+(idelta(2)-idelta(1))*num_i+(idelta(3)-idelta(2))*num_ij
   100: |               !
   101: |         #include "../bodies/cfacev_eta_body_1d.inc"
   102: |               !
   103: |               ! zeta derivatives
   104: |               !
   105: |               !ijka(1) = ijk(1)+idelta(2)
   106: |               !ijka(2) = ijk(2)+idelta(3)
   107: |               !ijka(3) = ijk(3)+idelta(1)
   108: |               !la = ijk2l(ijka)
   109: |               !ijkb(1) = ijkp(1)+idelta(2)
   110: |               !ijkb(2) = ijkp(2)+idelta(3)
   111: |               !ijkb(3) = ijkp(3)+idelta(1)
   112: |               !lb = ijk2l(ijkb)
   113: |               !ijkc(1) = ijk(1)-idelta(2)
   114: |               !ijkc(2) = ijk(2)-idelta(3)
   115: |               !ijkc(3) = ijk(3)-idelta(1)
   116: |               !lc = ijk2l(ijkc)
   117: |               !ijkd(1) = ijkp(1)-idelta(2)
   118: |               !ijkd(2) = ijkp(2)-idelta(3)
   119: |               !ijkd(3) = ijkp(3)-idelta(1)
   120: |               !ld = ijk2l(ijkd)
   121: |               !
   122: |               la = l+idelta(2)+idelta(3)*num_i+idelta(1)*num_ij
   123: |               lb = l+idelta(1)+idelta(2)+(idelta(2)+idelta(3))*num_i+(idelta(3)+idelta(1))*num_ij
   124: |               lc = l-idelta(2)-idelta(3)*num_i-idelta(1)*num_ij
   125: |               ld = l+idelta(1)-idelta(2)+(idelta(2)-idelta(3))*num_i+(idelta(3)-idelta(1))*num_ij
   126: |               !
   127: |         #include "../bodies/cfacev_zeta_body_1d.inc"
   128: |               !
   129: |         #include "../bodies/cfacev_body_1d.inc"
   130: |               !
   131: Y------       enddo
   132:               !$omp end do
   133:               !$omp end parallel
   134:             end subroutine cfacev


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
INLINE LIST

  INLINE REPORT: KERNELMODULE::CFACEV (alc.f90:14)
  -> NOINLINE: LOOPMODULE::LOOPINIT (alc.f90:57)
     *** Source for routine not found.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:64)
    <Vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:64)
    *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:64)
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
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
    Total size                 : 1264 bytes
      Register spill area      :  432 bytes
      Parameter area           :   16 bytes
      Register save area       :  176 bytes
      User data area           :  640 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:64)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 30
            Not enough registers                        :  3
            Over basic blocks                           : 27
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 88
            Over basic blocks                           : 88
    *** The number of SCALAR REGISTER TRANSFER          : 36
  LOOP END


