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

    46: opt(1418): Constant-length loop is expanded.
    49: opt(1418): Constant-length loop is expanded.
    52: opt(1418): Constant-length loop is expanded.
    56: opt(1418): Constant-length loop is expanded.
    61: par(1801): Parallel routine generated.: KERNELMODULE::CFACEV$1
    66: opt(3008): Reference within a conditional branch moved outside loop.
    66: par(1803): Parallelized by "do".
    66: opt(2495): Loop nest collapsed by "collapse" clause.
    66: vec( 102): Partially vectorized loop.
    68: vec( 101): Vectorized loop.
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
    21:               real(8), dimension(:,:,:), allocatable  :: rho,u,v,w,pre,vis
    22:               real(8), dimension(:,:,:), allocatable :: mu,fu,fv,fw, &
    23:                                            dTdx,dTdy,dTdz, &
    24:                                            dudx,dudy,dudz, &
    25:                                            dvdx,dvdy,dvdz, &
    26:                                            dwdx,dwdy,dwdz
    27:               real(8), intent(in) :: dx
    28:               integer, intent(in) :: dir, ndim,ovlp
    29:           
    30:               integer :: i,j,k,ip,jp,kp
    31:               integer :: ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd
    32:               integer :: idelta(3), isrt(3),iend(3)
    33:               integer :: ixi,ieta,izet
    34:               !real(8) :: dvaldx(4,3), dxi
    35:               real(8) :: dxi
    36:               real(8) :: dudxi,dudeta,dudzet, &
    37:                          dvdxi,dvdeta,dvdzet, &
    38:                          dwdxi,dwdeta,dwdzet, &
    39:                          dTdxi,dTdeta,dTdzet
    40:               !
    41:               flop = 132
    42:               byte = 68
    43:               !
    44:               select case(dir)
    45:               case(1)
    46: *======>        idelta(:) = (/1,0,0/)
    47:                 ixi=1; ieta=2; izet=3
    48:               case(2)
    49: *======>        idelta(:) = (/0,1,0/)
    50:                 ixi=3; ieta=1; izet=2
    51:               case(3)
    52: *======>        idelta(:) = (/0,0,1/)
    53:                 ixi=2; ieta=3; izet=1
    54:               end select
    55:               !
    56: *======>      isrt = (/1,1,1/)
    57:               iend = (/ndim,ndim,ndim/)
    58:               !
    59:               dxi = 1./(dx+epsilon(dx))
    60:               !
    61:               !$omp parallel private(i,j,k,ip,jp,kp,ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd) &
    62:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet)
    63:               !$omp do collapse(2)
    64:           !ocl noxfill
    65:           !ocl swp
    66: Y------>      do k=isrt(3),iend(3)
    67: |+----->      do j=isrt(2),iend(2)
    68: ||V---->      do i=isrt(1),iend(1)
    69: |||             !
    70: |||             ip = i+idelta(1)
    71: |||             jp = j+idelta(2)
    72: |||             kp = k+idelta(3)
    73: |||             !
    74: |||             ! xi derivatives
    75: |||             !
    76: |||       #include "../bodies/cfacev_xi_body_3d.inc"
    77: |||             !
    78: |||             ! eta derivatives
    79: |||             !
    80: |||             ia = i +idelta(3); ja=j +idelta(1); ka=k +idelta(2)
    81: |||             ib = ip+idelta(3); jb=jp+idelta(1); kb=kp+idelta(2)
    82: |||             ic = i -idelta(3); jc=j -idelta(1); kc=k -idelta(2)
    83: |||             id = ip-idelta(3); jd=jp-idelta(1); kd=kp-idelta(2)
    84: |||       #include "../bodies/cfacev_eta_body_3d.inc"
    85: |||             !
    86: |||             ! zeta derivatives
    87: |||             !
    88: |||             ia = i +idelta(2); ja=j +idelta(3); ka=k +idelta(1)
    89: |||             ib = ip+idelta(2); jb=jp+idelta(3); kb=kp+idelta(1)
    90: |||             ic = i -idelta(2); jc=j -idelta(3); kc=k -idelta(1)
    91: |||             id = ip-idelta(2); jd=jp-idelta(3); kd=kp-idelta(1)
    92: |||       #include "../bodies/cfacev_zeta_body_3d.inc"
    93: |||             !
    94: |||       #include "../bodies/cfacev_body_3d.inc"
    95: |||             !
    96: ||V----       enddo
    97: |+-----    enddo
    98: Y------       enddo
    99:               !$omp end do
   100:               !$omp end parallel
   101:             end subroutine cfacev


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:45 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::CFACEV
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:66)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:66)
    *** The number of VLOAD, VSTORE. :  0, 12. (alc.f90:66)

    LOOP BEGIN: (alc.f90:68)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:68)
      *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:68)
    LOOP END
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
    Total size                 : 7536 bytes
      Register spill area      : 3560 bytes
      Parameter area           :   16 bytes
      Register save area       :  176 bytes
      User data area           : 3784 bytes
      Others                   :    0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:66)
  LOOP END

  LOOP BEGIN: (alc.f90:66)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 321
            Not enough registers                        :  60
            Over basic blocks                           : 261
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 421
            Not enough registers                        :   1
            Over basic blocks                           : 420
    *** The number of SCALAR REGISTER TRANSFER          : 61

    LOOP BEGIN: (alc.f90:68)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 44
              Not enough registers                      :  1
              Over basic blocks                         : 43
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 116
              Over basic blocks                         : 116
      *** The number of SCALAR REGISTER TRANSFER        : 52
    LOOP END
  LOOP END


