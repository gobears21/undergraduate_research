NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    64: opt(1418): Constant-length loop is expanded.
    67: opt(1418): Constant-length loop is expanded.
    70: opt(1418): Constant-length loop is expanded.
    74: inl(1212): Source for routine not found.: LOOPMODULE::LOOPINIT
    76: opt(1418): Constant-length loop is expanded.
    82: par(1801): Parallel routine generated.: KERNELMODULE::RHS$1
    92: par(1803): Parallelized by "do".
    92: vec( 101): Vectorized loop.
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
   104: par(1803): Parallelized by "do".
   104: vec( 101): Vectorized loop.
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
   114: par(1803): Parallelized by "do".
   114: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
   125: par(1803): Parallelized by "do".
   125: vec( 101): Vectorized loop.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
   156: par(1803): Parallelized by "do".
   156: vec( 101): Vectorized loop.
     6: vec( 128): Fused multiply-add operation applied.
     7: vec( 128): Fused multiply-add operation applied.
     8: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
   166: par(1803): Parallelized by "do".
   166: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
FORMAT LIST

 LINE   LOOP      STATEMENT

    20:             subroutine rhs(rho,u,v,w,pre,vis, &
    21:                            dmas,dmox,dmoy,dmoz,dene, &
    22:                            area,dx,dir,ndim,ovlp)
    23:               real(8), dimension(*) :: rho,u,v,w,pre,vis, &
    24:                                        dmas,dmox,dmoy,dmoz,dene
    25:               real(8), intent(in) :: dx,area
    26:               integer, intent(in) :: dir,ndim,ovlp
    27:           
    28:               integer :: l,lm,lp, la,lb,lc,ld
    29:               integer :: idelta(3)
    30:               integer :: ixi,ieta,izet
    31:               real(8) :: dxi,dx_harf,beta
    32:               real(8) :: voli
    33:               real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    34:               real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    35:               real(8) :: switch,p,beta_p,beta_m
    36:               real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    37:               real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    38:           
    39:               real(8) :: dudxi,dudeta,dudzet, &
    40:                          dvdxi,dvdeta,dvdzet, &
    41:                          dwdxi,dwdeta,dwdzet, &
    42:                          dTdxi,dTdeta,dTdzet
    43:               real(8) :: div_u, tau(3,3)
    44:               !
    45:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
    46:                                    rhoL,uL,vL,wL,preL, &
    47:                                    rhoR,uR,vR,wR,preR
    48:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: &
    49:                                            mu,fu,fv,fw, &
    50:                                            dTdx,dTdy,dTdz, &
    51:                                            dudx,dudy,dudz, &
    52:                                            dvdx,dvdy,dvdz, &
    53:                                            dwdx,dwdy,dwdz
    54:           
    55:               real(8), dimension((ndim+ovlp*2)*(ndim+ovlp*2)*(ndim+ovlp*2)) :: fmass,fmomx,fmomy,fmomz,fene
    56:           
    57:           
    58:           
    59:               flop = 170+153 + 132+54 + 15
    60:               byte = 25+15 + 68+21 + 20
    61:           
    62:               select case(dir)
    63:               case(1)
    64: *======>        idelta(:) = (/1,0,0/)
    65:                 ixi=1; ieta=2; izet=3
    66:               case(2)
    67: *======>        idelta(:) = (/0,1,0/)
    68:                 ixi=3; ieta=1; izet=2
    69:               case(3)
    70: *======>        idelta(:) = (/0,0,1/)
    71:                 ixi=2; ieta=3; izet=1
    72:               end select
    73:               !
    74:               call loopInit(ndim,ovlp)
    75:               !
    76: *======>      nv = idelta(:)
    77:               dxi = 1./(dx+epsilon(dx))
    78:               dx_harf = 0.5*dx
    79:               beta = (3.-KAPPA)/(1.-KAPPA)
    80:               voli = 1.0
    81:               !
    82:               !$omp parallel private(l,lm,lp,la,lb,lc,ld) &
    83:               !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
    84:               !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
    85:               !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
    86:               !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m) &
    87:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
    88:               !$omp private(div_u,tau)
    89:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
    90:           !ocl swp
    91:           !ocl xfill
    92: Y------>      do l=lsrt,lend
    93: |               lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
    94: |               lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
    95: |               !
    96: |         #include "../bodies/muscl_body_1d.inc"
    97: |               !
    98: Y------       enddo
    99:               !$omp end do
   100:               !
   101:               !$omp do
   102:           !ocl swp
   103:           !ocl noxfill
   104: Y------>      do l=lsrt,lend
   105: |               !
   106: |         #include "../bodies/cflux_body_1d.inc"
   107: |               !
   108: Y------       enddo
   109:               !$omp end do
   110:               !
   111:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
   112:           !ocl swp
   113:           !ocl xfill
   114: Y------>      do l=lsrt,lend
   115: |               lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
   116: |               !
   117: |         #include "../bodies/dq_body_1d.inc"
   118: |               !
   119: Y------       enddo
   120:               !$omp end do
   121:               !
   122:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
   123:           !ocl swp
   124:           !ocl xfill
   125: Y------>      do l=lsrt,lend
   126: |               lp = l+idelta(1)+idelta(2)*num_i+idelta(3)*num_ij
   127: |               !
   128: |               ! xi
   129: |               !
   130: |         #include "../bodies/cfacev_xi_body_1d.inc"
   131: |               !
   132: |               ! eta
   133: |               !
   134: |               la = l+idelta(3)+idelta(1)*num_i+idelta(2)*num_ij
   135: |               lb = l+idelta(1)+idelta(3)+(idelta(2)+idelta(1))*num_i+(idelta(3)+idelta(2))*num_ij
   136: |               lc = l-idelta(3)-idelta(1)*num_i-idelta(2)*num_ij
   137: |               ld = l+idelta(1)-idelta(3)+(idelta(2)-idelta(1))*num_i+(idelta(3)-idelta(2))*num_ij
   138: |         #include "../bodies/cfacev_eta_body_1d.inc"
   139: |               !
   140: |               ! zeta
   141: |               !
   142: |               la = l+idelta(2)+idelta(3)*num_i+idelta(1)*num_ij
   143: |               lb = l+idelta(1)+idelta(2)+(idelta(2)+idelta(3))*num_i+(idelta(3)+idelta(1))*num_ij
   144: |               lc = l-idelta(2)-idelta(3)*num_i-idelta(1)*num_ij
   145: |               ld = l+idelta(1)-idelta(2)+(idelta(2)-idelta(3))*num_i+(idelta(3)-idelta(1))*num_ij
   146: |         #include "../bodies/cfacev_zeta_body_1d.inc"
   147: |               !
   148: |         #include "../bodies/cfacev_body_1d.inc"
   149: |               !
   150: Y------       enddo
   151:               !$omp end do
   152:               !
   153:               !$omp do
   154:           !ocl swp
   155:           !ocl xfill
   156: Y------>      do l=lsrt,lend
   157: |               !
   158: |         #include "../bodies/vflux_body_1d.inc"
   159: |               !
   160: Y------       enddo
   161:               !$omp end do
   162:               !
   163:               !$omp do schedule(static,(ndim+ovlp*2)*(ndim+ovlp*2))
   164:           !ocl swp
   165:           !ocl xfill
   166: Y------>      do l=lsrt,lend
   167: |               lm = l-idelta(1)-idelta(2)*num_i-idelta(3)*num_ij
   168: |               !
   169: |         #include "../bodies/dq_body_1d.inc"
   170: |               !
   171: Y------       enddo
   172:               !$omp end do
   173:               !$omp end parallel
   174:               !
   175:             end subroutine rhs


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
INLINE LIST

  INLINE REPORT: KERNELMODULE::RHS (alc.f90:20)
  -> NOINLINE: LOOPMODULE::LOOPINIT (alc.f90:74)
     *** Source for routine not found.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:92)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:92)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:92)
      *** The number of VLOAD, VSTORE. : 15, 10. (alc.f90:92)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:104)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:104)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:104)
      *** The number of VLOAD, VSTORE. : 10,  5. (alc.f90:104)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:114)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:114)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:114)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:114)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:125)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:125)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:125)
      *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:125)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:156)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:156)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:156)
      *** The number of VLOAD, VSTORE. : 16,  5. (alc.f90:156)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:166)
    <Unvectorized loop.>

    LOOP BEGIN: (alc.f90:166)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:166)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:166)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:53 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
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
      Register spill area      : 19048 bytes
      Parameter area           :    16 bytes
      Register save area       :   176 bytes
      User data area           : 19720 bytes
      Others                   :     0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:92)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 7
            Over basic blocks                           : 7
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 11
            Over basic blocks                           : 11
    *** The number of SCALAR REGISTER TRANSFER          : 7

    LOOP BEGIN: (alc.f90:92)
      *** The number of VECTOR REGISTER SPILL
            Total                                       : 9
              Others                                    : 9
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:104)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 2
            Over basic blocks                           : 2
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 4
            Over basic blocks                           : 4
    *** The number of SCALAR REGISTER TRANSFER          : 7

    LOOP BEGIN: (alc.f90:104)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 4
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:114)
    *** The number of SCALAR REGISTER TRANSFER          : 8

    LOOP BEGIN: (alc.f90:114)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 4
              Over basic blocks                         : 4
      *** The number of SCALAR REGISTER TRANSFER        : 6
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:125)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 15
            Over basic blocks                           : 15
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 12
            Over basic blocks                           : 12
    *** The number of SCALAR REGISTER TRANSFER          : 26

    LOOP BEGIN: (alc.f90:125)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 20
              Not enough registers                      :  3
              Over basic blocks                         : 17
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 88
              Over basic blocks                         : 88
      *** The number of SCALAR REGISTER TRANSFER        : 52
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:156)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 13
            Over basic blocks                           : 13
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 11
            Over basic blocks                           : 11
    *** The number of SCALAR REGISTER TRANSFER          : 9

    LOOP BEGIN: (alc.f90:156)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:166)
    *** The number of SCALAR REGISTER TRANSFER          : 8

    LOOP BEGIN: (alc.f90:166)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 4
              Over basic blocks                         : 4
      *** The number of SCALAR REGISTER TRANSFER        : 6
    LOOP END
  LOOP END


