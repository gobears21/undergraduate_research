NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    56: opt(1418): Constant-length loop is expanded.
    59: opt(1418): Constant-length loop is expanded.
    62: opt(1418): Constant-length loop is expanded.
    66: opt(1418): Constant-length loop is expanded.
    69: opt(1418): Constant-length loop is expanded.
    99: par(1801): Parallel routine generated.: KERNELMODULE::RHSV$1
   104: par(1803): Parallelized by "do".
   104: opt(2495): Loop nest collapsed by "collapse" clause.
   104: vec( 102): Partially vectorized loop.
   108: vec( 101): Vectorized loop.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
   141: par(1803): Parallelized by "do".
   141: opt(2495): Loop nest collapsed by "collapse" clause.
   141: vec( 102): Partially vectorized loop.
   145: vec( 101): Vectorized loop.
     6: vec( 128): Fused multiply-add operation applied.
     7: vec( 128): Fused multiply-add operation applied.
     8: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
   149: opt(1339): User parallel directives inhibit optimization.: I
   155: par(1803): Parallelized by "do".
   155: opt(2495): Loop nest collapsed by "collapse" clause.
   155: vec( 102): Partially vectorized loop.
   157: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
FORMAT LIST

 LINE   LOOP      STATEMENT

    20:             subroutine rhsv(rho,u,v,w,pre,vis, &
    21:                             dmas,dmox,dmoy,dmoz,dene, &
    22:                             dx,area,dir,ndim,ovlp)
    23:               real(8), dimension(:,:,:), allocatable :: rho,u,v,w,pre,vis, &
    24:                                            dmas,dmox,dmoy,dmoz,dene
    25:               real(8), intent(in) :: dx,area
    26:               integer, intent(in) :: dir,ndim,ovlp
    27:           
    28:               real(8), dimension(:,:,:),allocatable :: &
    29:                                            mu,fu,fv,fw, &
    30:                                            dTdx,dTdy,dTdz, &
    31:                                            dudx,dudy,dudz, &
    32:                                            dvdx,dvdy,dvdz, &
    33:                                            dwdx,dwdy,dwdz
    34:           
    35:               real(8), dimension(:,:,:),allocatable :: fmass,fmomx,fmomy,fmomz,fene
    36:           
    37:               integer :: i,j,k,im,jm,km,ip,jp,kp
    38:               integer :: ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd
    39:               integer :: idelta(3), isrt(3),iend(3)
    40:               integer :: ixi,ieta,izet
    41:               real(8) :: dxi
    42:               real(8) :: dudxi,dudeta,dudzet, &
    43:                          dvdxi,dvdeta,dvdzet, &
    44:                          dwdxi,dwdeta,dwdzet, &
    45:                          dTdxi,dTdeta,dTdzet
    46:               !
    47:               real(8) :: nv(3), div_u, tau(3,3)
    48:               !
    49:               real(8) :: voli
    50:               !
    51:               flop = 132+54+15
    52:               byte = 68+21+20
    53:               !
    54:               select case(dir)
    55:               case(1)
    56: *======>        idelta(:) = (/1,0,0/)
    57:                 ixi=1; ieta=2; izet=3
    58:               case(2)
    59: *======>        idelta(:) = (/0,1,0/)
    60:                 ixi=3; ieta=1; izet=2
    61:               case(3)
    62: *======>        idelta(:) = (/0,0,1/)
    63:                 ixi=2; ieta=3; izet=1
    64:               end select
    65:               !
    66: *======>      isrt = (/1,1,1/)
    67:               iend = (/ndim,ndim,ndim/)
    68:               !
    69: *======>      nv = idelta(:)
    70:               dxi = 1./(dx+epsilon(dx))
    71:               voli = 1.0
    72:               !
    73:               allocate( &
    74:                        mu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    75:                        fu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    76:                        fv(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    77:                        fw(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    78:                        dudx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    79:                        dudy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    80:                        dudz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    81:                        dvdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    82:                        dvdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    83:                        dvdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    84:                        dwdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    85:                        dwdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    86:                        dwdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    87:                        dTdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    88:                        dTdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    89:                        dTdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
    90:                       )
    91:               allocate( &
    92:                        fmass(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    93:                        fmomx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    94:                        fmomy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    95:                        fmomz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    96:                        fene (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
    97:                       )
    98:               !
    99:               !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp,ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd) &
   100:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
   101:               !$omp private(div_u,tau)
   102:           
   103:               !$omp do collapse(2)
   104: Y------>      do k=isrt(3),iend(3)
   105: |+----->      do j=isrt(2),iend(2)
   106: ||        !ocl swp
   107: ||        !ocl noxfill
   108: ||V---->      do i=isrt(1),iend(1)
   109: |||             ip = i+idelta(1)
   110: |||             jp = j+idelta(2)
   111: |||             kp = k+idelta(3)
   112: |||             !
   113: |||             ! xi
   114: |||             !
   115: |||       #include "../bodies/cfacev_xi_body_3d.inc"
   116: |||             !
   117: |||             ! eta
   118: |||             !
   119: |||             ia = i +idelta(3); ja=j +idelta(1); ka=k +idelta(2)
   120: |||             ib = ip+idelta(3); jb=jp+idelta(1); kb=kp+idelta(2)
   121: |||             ic = i -idelta(3); jc=j -idelta(1); kc=k -idelta(2)
   122: |||             id = ip-idelta(3); jd=jp-idelta(1); kd=kp-idelta(2)
   123: |||       #include "../bodies/cfacev_eta_body_3d.inc"
   124: |||             !
   125: |||             ! zeta
   126: |||             !
   127: |||             ia = i +idelta(2); ja=j +idelta(3); ka=k +idelta(1)
   128: |||             ib = ip+idelta(2); jb=jp+idelta(3); kb=kp+idelta(1)
   129: |||             ic = i -idelta(2); jc=j -idelta(3); kc=k -idelta(1)
   130: |||             id = ip-idelta(2); jd=jp-idelta(3); kd=kp-idelta(1)
   131: |||       #include "../bodies/cfacev_zeta_body_3d.inc"
   132: |||             !
   133: |||       #include "../bodies/cfacev_body_3d.inc"
   134: |||             !
   135: ||V----       enddo
   136: |+-----       enddo
   137: Y------       enddo
   138:               !$omp end do
   139:               !
   140:               !$omp do collapse(2)
   141: Y------>      do k=isrt(3),iend(3)
   142: |+----->      do j=isrt(2),iend(2)
   143: ||        !ocl swp
   144: ||        !ocl noxfill
   145: ||V---->      do i=isrt(1),iend(1)
   146: |||             !
   147: |||       #include "../bodies/vflux_body_3d.inc"
   148: |||             !
   149: ||V----       enddo
   150: |+-----       enddo
   151: Y------       enddo
   152:               !$omp end do
   153:               !
   154:               !$omp do collapse(2)
   155: Y------>      do k=isrt(3),iend(3)
   156: |+----->      do j=isrt(2),iend(2)
   157: ||V---->      do i=isrt(1),iend(1)
   158: |||             !
   159: |||             im = i-idelta(1)
   160: |||             jm = j-idelta(2)
   161: |||             km = k-idelta(3)
   162: |||             !
   163: |||       #include "../bodies/dq_body_3d.inc"
   164: |||             !
   165: ||V----       enddo
   166: |+-----       enddo
   167: Y------       enddo
   168:               !$omp end do
   169:               !$omp end parallel
   170:               !
   171:               deallocate(mu,fu,fv,fw)
   172:               deallocate(dTdx,dTdy,dTdz, dudx,dudy,dudz,dvdx,dvdy,dvdz,dwdx,dwdy,dwdz)
   173:               deallocate(fmass,fmomx,fmomy,fmomz,fene)
   174:               !
   175:             end subroutine rhsv


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHSV
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:104)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:104)
    *** The number of VLOAD, VSTORE. :  0, 12. (alc.f90:104)

    LOOP BEGIN: (alc.f90:108)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:108)
      *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:108)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:141)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:141)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:141)

    LOOP BEGIN: (alc.f90:145)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:145)
      *** The number of VLOAD, VSTORE. : 16,  5. (alc.f90:145)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:155)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:155)
    *** The number of VLOAD, VSTORE. :  0,  4. (alc.f90:155)

    LOOP BEGIN: (alc.f90:157)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:157)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:157)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:50 2021
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
    Total size                 : 9376 bytes
      Register spill area      : 4224 bytes
      Parameter area           :   16 bytes
      Register save area       :  176 bytes
      User data area           : 4960 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:104)
  LOOP END

  LOOP BEGIN: (alc.f90:104)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 287
            Not enough registers                        :  40
            Over basic blocks                           : 247
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 339
            Over basic blocks                           : 339
    *** The number of SCALAR REGISTER TRANSFER          : 51

    LOOP BEGIN: (alc.f90:108)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 42
              Not enough registers                      :  1
              Over basic blocks                         : 41
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 115
              Over basic blocks                         : 115
      *** The number of SCALAR REGISTER TRANSFER        : 50
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:141)
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 1
            Over basic blocks                           : 1
  LOOP END

  LOOP BEGIN: (alc.f90:141)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 2
            Over basic blocks                           : 2
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 71
            Over basic blocks                           : 71
    *** The number of SCALAR REGISTER TRANSFER          : 6

    LOOP BEGIN: (alc.f90:145)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:155)
  LOOP END

  LOOP BEGIN: (alc.f90:155)
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 34
            Over basic blocks                           : 34
    *** The number of SCALAR REGISTER TRANSFER          : 13

    LOOP BEGIN: (alc.f90:157)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER TRANSFER        : 6
    LOOP END
  LOOP END


