NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
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


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    64: opt(1418): Constant-length loop is expanded.
    67: opt(1418): Constant-length loop is expanded.
    70: opt(1418): Constant-length loop is expanded.
    74: opt(1418): Constant-length loop is expanded.
    77: opt(1418): Constant-length loop is expanded.
   123: par(1801): Parallel routine generated.: KERNELMODULE::RHS$1
   132: par(1803): Parallelized by "do".
   132: opt(2495): Loop nest collapsed by "collapse" clause.
   132: vec( 102): Partially vectorized loop.
   136: vec( 101): Vectorized loop.
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
   146: opt(1339): User parallel directives inhibit optimization.: I
   152: par(1803): Parallelized by "do".
   152: opt(2495): Loop nest collapsed by "collapse" clause.
   152: vec( 102): Partially vectorized loop.
   156: vec( 101): Vectorized loop.
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
   166: par(1803): Parallelized by "do".
   166: opt(2495): Loop nest collapsed by "collapse" clause.
   166: vec( 102): Partially vectorized loop.
   168: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
   182: par(1803): Parallelized by "do".
   182: opt(2495): Loop nest collapsed by "collapse" clause.
   182: vec( 102): Partially vectorized loop.
   186: vec( 101): Vectorized loop.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.
     9: vec( 128): Fused multiply-add operation applied.
    13: vec( 128): Fused multiply-add operation applied.
    17: vec( 128): Fused multiply-add operation applied.
   219: par(1803): Parallelized by "do".
   219: opt(2495): Loop nest collapsed by "collapse" clause.
   219: vec( 102): Partially vectorized loop.
   223: vec( 101): Vectorized loop.
     6: vec( 128): Fused multiply-add operation applied.
     7: vec( 128): Fused multiply-add operation applied.
     8: vec( 128): Fused multiply-add operation applied.
    21: vec( 128): Fused multiply-add operation applied.
    22: vec( 128): Fused multiply-add operation applied.
    23: vec( 128): Fused multiply-add operation applied.
    24: vec( 128): Fused multiply-add operation applied.
   227: opt(1339): User parallel directives inhibit optimization.: I
   233: par(1803): Parallelized by "do".
   233: opt(2495): Loop nest collapsed by "collapse" clause.
   233: vec( 102): Partially vectorized loop.
   235: vec( 101): Vectorized loop.
     1: vec( 128): Fused multiply-add operation applied.
     2: vec( 128): Fused multiply-add operation applied.
     3: vec( 128): Fused multiply-add operation applied.
     4: vec( 128): Fused multiply-add operation applied.
     5: vec( 128): Fused multiply-add operation applied.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
FORMAT LIST

 LINE   LOOP      STATEMENT

    20:             subroutine rhs(rho,u,v,w,pre,vis, &
    21:                            dmas,dmox,dmoy,dmoz,dene, &
    22:                            area,dx,dir,ndim,ovlp)
    23:               real(8), dimension(:,:,:), allocatable :: rho,u,v,w,pre,vis, &
    24:                                            dmas,dmox,dmoy,dmoz,dene
    25:               real(8), intent(in) :: dx,area
    26:               integer, intent(in) :: dir,ndim,ovlp
    27:           
    28:               integer :: i,j,k,im,jm,km,ip,jp,kp
    29:               integer :: ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd
    30:               integer :: idelta(3), isrt(3),iend(3)
    31:               integer :: ixi,ieta,izet
    32:               real(8) :: dxi,dx_harf,beta
    33:               real(8) :: voli
    34:               real(8), dimension(5) :: dq_p,dq_m,dq_p_tilda,dq_m_tilda
    35:               real(8) :: nv(3),drho,duu,dp, rho_bar,uu_bar,c_bari,M_bar, mass,mass_abs
    36:               real(8) :: switch,p,beta_p,beta_m
    37:               real(8) :: uuL,hL,M_p,M_p_abs, M_bar_p
    38:               real(8) :: uuR,hR,M_m,M_m_abs, M_bar_m
    39:           
    40:               real(8) :: dudxi,dudeta,dudzet, &
    41:                          dvdxi,dvdeta,dvdzet, &
    42:                          dwdxi,dwdeta,dwdzet, &
    43:                          dTdxi,dTdeta,dTdzet
    44:               real(8) :: div_u, tau(3,3)
    45:               !
    46:               real(8), dimension(:,:,:), allocatable :: rhoL,uL,vL,wL,preL, &
    47:                                                         rhoR,uR,vR,wR,preR
    48:               real(8), dimension(:,:,:),allocatable :: &
    49:                                            mu,fu,fv,fw, &
    50:                                            dTdx,dTdy,dTdz, &
    51:                                            dudx,dudy,dudz, &
    52:                                            dvdx,dvdy,dvdz, &
    53:                                            dwdx,dwdy,dwdz
    54:           
    55:               real(8), dimension(:,:,:), allocatable :: fmass,fmomx,fmomy,fmomz,fene
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
    74: *======>      isrt = (/1,1,1/)
    75:               iend = (/ndim,ndim,ndim/)
    76:               !
    77: *======>      nv = idelta(:)
    78:               dxi = 1./(dx+epsilon(dx))
    79:               dx_harf = 0.5*dx
    80:               beta = (3.-KAPPA)/(1.-KAPPA)
    81:               voli = 1.0
    82:               !
    83:               allocate( &
    84:                        rhoL(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    85:                        uL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    86:                        vL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    87:                        wL  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    88:                        preL(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    89:                        rhoR(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    90:                        uR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    91:                        vR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    92:                        wR  (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    93:                        preR(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp) &
    94:                       )
    95:           
    96:               allocate( &
    97:                        mu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    98:                        fu(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
    99:                        fv(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   100:                        fw(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   101:                        dudx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   102:                        dudy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   103:                        dudz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   104:                        dvdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   105:                        dvdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   106:                        dvdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   107:                        dwdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   108:                        dwdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   109:                        dwdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   110:                        dTdx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   111:                        dTdy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   112:                        dTdz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
   113:                       )
   114:           
   115:               allocate( &
   116:                        fmass(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   117:                        fmomx(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   118:                        fmomy(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   119:                        fmomz(1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp), &
   120:                        fene (1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp,1-ovlp:ndim+ovlp)  &
   121:                       )
   122:               !
   123:               !$omp parallel private(i,j,k,im,jm,km,ip,jp,kp,ia,ja,ka,ib,jb,kb,ic,jc,kc,id,jd,kd) &
   124:               !$omp private(dq_p,dq_m,dq_p_tilda,dq_m_tilda) &
   125:               !$omp private(nv,drho,duu,dp,rho_bar,uu_bar,c_bari,M_bar,mass,mass_abs,switch,p) &
   126:               !$omp private(uuL,hL,M_bar_p,M_p,M_p_abs,beta_p) &
   127:               !$omp private(uuR,hR,M_bar_m,M_m,M_m_abs,beta_m) &
   128:               !$omp private(dudxi,dvdxi,dwdxi,dTdxi,dudeta,dvdeta,dwdeta,dTdeta,dudzet,dvdzet,dwdzet,dTdzet) &
   129:               !$omp private(div_u,tau)
   130:           
   131:               !$omp do collapse(2)
   132: Y------>      do k=isrt(3),iend(3)
   133: |+----->      do j=isrt(2),iend(2)
   134: ||        !ocl swp
   135: ||        !ocl noxfill
   136: ||V---->      do i=isrt(1),iend(1)
   137: |||             im = i-idelta(1)
   138: |||             jm = j-idelta(2)
   139: |||             km = k-idelta(3)
   140: |||             ip = i+idelta(1)
   141: |||             jp = j+idelta(2)
   142: |||             kp = k+idelta(3)
   143: |||             !
   144: |||       #include "../bodies/muscl_body_3d.inc"
   145: |||             !
   146: ||V----       enddo
   147: |+-----       enddo
   148: Y------       enddo
   149:               !$omp end do
   150:               !
   151:               !$omp do collapse(2)
   152: Y------>      do k=isrt(3),iend(3)
   153: |+----->      do j=isrt(2),iend(2)
   154: ||        !ocl swp
   155: ||        !ocl noxfill
   156: ||V---->      do i=isrt(1),iend(1)
   157: |||             !
   158: |||       #include "../bodies/cflux_body_3d.inc"
   159: |||             !
   160: ||V----       enddo
   161: |+-----       enddo
   162: Y------       enddo
   163:               !$omp end do
   164:               !
   165:               !$omp do collapse(2)
   166: Y------>      do k=isrt(3),iend(3)
   167: |+----->      do j=isrt(2),iend(2)
   168: ||V---->      do i=isrt(1),iend(1)
   169: |||             !
   170: |||             im = i-idelta(1)
   171: |||             jm = j-idelta(2)
   172: |||             km = k-idelta(3)
   173: |||             !
   174: |||       #include "../bodies/dq_body_3d.inc"
   175: |||             !
   176: ||V----       enddo
   177: |+-----       enddo
   178: Y------       enddo
   179:               !$omp end do
   180:               !
   181:               !$omp do collapse(2)
   182: Y------>      do k=isrt(3),iend(3)
   183: |+----->      do j=isrt(2),iend(2)
   184: ||        !ocl swp
   185: ||        !ocl noxfill
   186: ||V---->      do i=isrt(1),iend(1)
   187: |||             ip = i+idelta(1)
   188: |||             jp = j+idelta(2)
   189: |||             kp = k+idelta(3)
   190: |||             !
   191: |||             ! xi
   192: |||             !
   193: |||       #include "../bodies/cfacev_xi_body_3d.inc"
   194: |||             !
   195: |||             ! eta
   196: |||             !
   197: |||             ia = i +idelta(3); ja=j +idelta(1); ka=k +idelta(2)
   198: |||             ib = ip+idelta(3); jb=jp+idelta(1); kb=kp+idelta(2)
   199: |||             ic = i -idelta(3); jc=j -idelta(1); kc=k -idelta(2)
   200: |||             id = ip-idelta(3); jd=jp-idelta(1); kd=kp-idelta(2)
   201: |||       #include "../bodies/cfacev_eta_body_3d.inc"
   202: |||             !
   203: |||             ! zeta
   204: |||             !
   205: |||             ia = i +idelta(2); ja=j +idelta(3); ka=k +idelta(1)
   206: |||             ib = ip+idelta(2); jb=jp+idelta(3); kb=kp+idelta(1)
   207: |||             ic = i -idelta(2); jc=j -idelta(3); kc=k -idelta(1)
   208: |||             id = ip-idelta(2); jd=jp-idelta(3); kd=kp-idelta(1)
   209: |||       #include "../bodies/cfacev_zeta_body_3d.inc"
   210: |||             !
   211: |||       #include "../bodies/cfacev_body_3d.inc"
   212: |||             !
   213: ||V----       enddo
   214: |+-----       enddo
   215: Y------       enddo
   216:               !$omp end do
   217:               !
   218:               !$omp do collapse(2)
   219: Y------>      do k=isrt(3),iend(3)
   220: |+----->      do j=isrt(2),iend(2)
   221: ||        !ocl swp
   222: ||        !ocl noxfill
   223: ||V---->      do i=isrt(1),iend(1)
   224: |||             !
   225: |||       #include "../bodies/vflux_body_3d.inc"
   226: |||             !
   227: ||V----       enddo
   228: |+-----       enddo
   229: Y------       enddo
   230:               !$omp end do
   231:               !
   232:               !$omp do collapse(2)
   233: Y------>      do k=isrt(3),iend(3)
   234: |+----->      do j=isrt(2),iend(2)
   235: ||V---->      do i=isrt(1),iend(1)
   236: |||             !
   237: |||             im = i-idelta(1)
   238: |||             jm = j-idelta(2)
   239: |||             km = k-idelta(3)
   240: |||             !
   241: |||       #include "../bodies/dq_body_3d.inc"
   242: |||             !
   243: ||V----       enddo
   244: |+-----       enddo
   245: Y------       enddo
   246:               !$omp end do
   247:               !$omp end parallel
   248:               !
   249:               deallocate(rhoL,uL,vL,wL,preL,rhoR,uR,vR,wR,preR)
   250:           
   251:               deallocate(mu,fu,fv,fw)
   252:               deallocate(dTdx,dTdy,dTdz, dudx,dudy,dudz,dvdx,dvdy,dvdz,dwdx,dwdy,dwdz)
   253:           
   254:               deallocate(fmass,fmomx,fmomy,fmomz,fene)
   255:               !
   256:             end subroutine rhs


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
FILE NAME: alc.f90

PROCEDURE NAME: KERNELMODULE::RHS
VECTORIZATION LIST

  NOTE: The number of operation does not include the instruction
        for register spill and restore.

  LOOP BEGIN: (alc.f90:132)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:132)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:132)

    LOOP BEGIN: (alc.f90:136)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:136)
      *** The number of VLOAD, VSTORE. : 15, 10. (alc.f90:136)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:152)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:152)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:152)

    LOOP BEGIN: (alc.f90:156)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:156)
      *** The number of VLOAD, VSTORE. : 10,  5. (alc.f90:156)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:166)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:166)
    *** The number of VLOAD, VSTORE. :  0,  4. (alc.f90:166)

    LOOP BEGIN: (alc.f90:168)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:168)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:168)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:182)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:182)
    *** The number of VLOAD, VSTORE. :  0, 12. (alc.f90:182)

    LOOP BEGIN: (alc.f90:186)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:186)
      *** The number of VLOAD, VSTORE. : 58, 40. (alc.f90:186)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:219)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:219)
    *** The number of VLOAD, VSTORE. :  0,  2. (alc.f90:219)

    LOOP BEGIN: (alc.f90:223)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:223)
      *** The number of VLOAD, VSTORE. : 16,  5. (alc.f90:223)
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:233)
    <Partially vectorized loop.>
    *** The number of VGT,   VSC.    :  0,  0. (alc.f90:233)
    *** The number of VLOAD, VSTORE. :  0,  4. (alc.f90:233)

    LOOP BEGIN: (alc.f90:235)
      <Vectorized loop.>
      *** The number of VGT,   VSC.    :  0,  0. (alc.f90:235)
      *** The number of VLOAD, VSTORE. : 15,  5. (alc.f90:235)
    LOOP END
  LOOP END


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:52 2021
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
    Total size                 : 49712 bytes
      Register spill area      : 24176 bytes
      Parameter area           :    16 bytes
      Register save area       :   176 bytes
      User data area           : 25344 bytes
      Others                   :     0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.

  LOOP BEGIN: (alc.f90:132)
  LOOP END

  LOOP BEGIN: (alc.f90:132)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 51
            Not enough registers                        :  1
            Over basic blocks                           : 50
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 85
            Not enough registers                        :  1
            Over basic blocks                           : 84
    *** The number of SCALAR REGISTER TRANSFER          : 25

    LOOP BEGIN: (alc.f90:136)
      *** The number of VECTOR REGISTER SPILL
            Total                                       : 9
              Others                                    : 9
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:152)
  LOOP END

  LOOP BEGIN: (alc.f90:152)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 1
            Not enough registers                        : 1
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 8
            Not enough registers                        : 1
            Over basic blocks                           : 7
    *** The number of SCALAR REGISTER TRANSFER          : 12

    LOOP BEGIN: (alc.f90:156)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 38
              Over basic blocks                         : 38
      *** The number of SCALAR REGISTER TRANSFER        : 4
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:166)
  LOOP END

  LOOP BEGIN: (alc.f90:166)
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 34
            Over basic blocks                           : 34
    *** The number of SCALAR REGISTER TRANSFER          : 13

    LOOP BEGIN: (alc.f90:168)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER TRANSFER        : 6
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:182)
  LOOP END

  LOOP BEGIN: (alc.f90:182)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 288
            Not enough registers                        :  39
            Over basic blocks                           : 249
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 341
            Over basic blocks                           : 341
    *** The number of SCALAR REGISTER TRANSFER          : 51

    LOOP BEGIN: (alc.f90:186)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 43
              Not enough registers                      :  1
              Over basic blocks                         : 42
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 115
              Over basic blocks                         : 115
      *** The number of SCALAR REGISTER TRANSFER        : 50
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:219)
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 1
            Over basic blocks                           : 1
  LOOP END

  LOOP BEGIN: (alc.f90:219)
    *** The number of SCALAR REGISTER SPILL
          Total                                         : 2
            Over basic blocks                           : 2
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 71
            Over basic blocks                           : 71
    *** The number of SCALAR REGISTER TRANSFER          : 6

    LOOP BEGIN: (alc.f90:223)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER RESTORE
            Total                                       : 2
              Over basic blocks                         : 2
      *** The number of SCALAR REGISTER TRANSFER        : 1
    LOOP END
  LOOP END

  LOOP BEGIN: (alc.f90:233)
  LOOP END

  LOOP BEGIN: (alc.f90:233)
    *** The number of SCALAR REGISTER RESTORE
          Total                                         : 34
            Over basic blocks                           : 34
    *** The number of SCALAR REGISTER TRANSFER          : 15

    LOOP BEGIN: (alc.f90:235)
      *** The number of SCALAR REGISTER SPILL
            Total                                       : 1
              Over basic blocks                         : 1
      *** The number of SCALAR REGISTER TRANSFER        : 6
    LOOP END
  LOOP END


