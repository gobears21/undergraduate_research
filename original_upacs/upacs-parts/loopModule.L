NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME : loopModule.f90

  COMPILER OPTIONS : -fopenmp -O3 -proginf -report-all -finline-functions -fpp -c

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
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::LOOPINIT
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

    14: opt(1418): Constant-length loop is expanded.
    15: opt(1418): Constant-length loop is expanded.
    20: inl(1222): Inlined: LOOPMODULE::IJK2L
    21: inl(1222): Inlined: LOOPMODULE::IJK2L


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::LOOPINIT
FORMAT LIST

 LINE   LOOP      STATEMENT

    12:             subroutine loopInit(ndim,ov)
    13:               integer, intent(in) :: ndim,ov
    14: *======>      isrt(:) = 1
    15: *======>      iend(:) = ndim
    16:               ovlp = ov
    17:               !num_ijk = (iend(1)-isrt(1)+2*ovlp+1)*(iend(2)-isrt(2)+2*ovlp+1)*(iend(3)-isrt(3)+2*ovlp+1)
    18:               num_ij  = (iend(1)-isrt(1)+2*ovlp+1)*(iend(2)-isrt(2)+2*ovlp+1)
    19:               num_i   = (iend(1)-isrt(1)+2*ovlp+1)
    20:         I     lsrt = ijk2l(isrt)
    21:         I     lend = ijk2l(iend)
    22:               lsize = lend-lsrt+1
    23:             end subroutine loopInit


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::LOOPINIT
INLINE LIST

  INLINE REPORT: LOOPMODULE::LOOPINIT (loopModule.f90:12)
  -> INLINE: LOOPMODULE::IJK2L (loopModule.f90:20)
  -> INLINE: LOOPMODULE::IJK2L (loopModule.f90:21)


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::LOOPINIT
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::LOOPINIT
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 12 [s0-s1 s8-s11 s58-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IJK2L
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IJK2L
FORMAT LIST

 LINE   LOOP      STATEMENT

    24:             pure function ijk2l(ijk)
    25:               integer :: ijk2l
    26:               integer, dimension(3),intent(in) :: ijk
    27:               ijk2l = num_ij*(ijk(3)-isrt(3)+ovlp)+num_i*(ijk(2)-isrt(2)+ovlp)+ijk(1)-isrt(1)+ovlp+1
    28:             end function ijk2l


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IJK2L
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IJK2L
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IJK2L
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 12 [s0 s8-s11 s57-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::L2IJK
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::L2IJK
FORMAT LIST

 LINE   LOOP      STATEMENT

    29:             subroutine l2ijk(l,ijk)
    30:               integer, intent(in) :: l
    31:               integer, dimension(3), intent(out) :: ijk
    32:               integer :: tmp_div
    33:               !ijk(3) = (l                                                         -1)/num_ij+isrt(3)-ovlp
    34:               !ijk(2) = (l-num_ij*(ijk(3)-isrt(3)+ovlp)                            -1)/num_i +isrt(2)-ovlp
    35:               !ijk(1) = (l-num_ij*(ijk(3)-isrt(3)+ovlp)-num_i*(ijk(2)-isrt(2)+ovlp)-1)       +isrt(1)-ovlp
    36:               tmp_div =  int(dble((l-1))/dble(num_ij))
    37:               ijk(3) = tmp_div+isrt(3)-ovlp
    38:               ijk(2) = int(dble(l-num_ij*tmp_div-1)/dble(num_i))+isrt(2)-ovlp
    39:               ijk(1) = (l-num_ij*tmp_div-num_i*int(dble(l-num_ij*tmp_div-1)/dble(num_i))-1)+isrt(1)-ovlp
    40:             end subroutine l2ijk


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::L2IJK
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::L2IJK
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::L2IJK
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         : 13 [s0-s1 s8-s11 s57-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IPD2L
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IPD2L
FORMAT LIST

 LINE   LOOP      STATEMENT

    41:             pure function ipd2l(l,d)
    42:               integer :: ipd2l
    43:               integer, intent(in) :: l,d
    44:               ipd2l = l+d
    45:             end function ipd2l


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IPD2L
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IPD2L
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::IPD2L
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  7 [s0-s1 s8-s11 s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::JPD2L
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::JPD2L
FORMAT LIST

 LINE   LOOP      STATEMENT

    46:             pure function jpd2l(l,d)
    47:               integer :: jpd2l
    48:               integer, intent(in) :: l,d
    49:               jpd2l = l+d*num_i
    50:             end function jpd2l


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::JPD2L
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::JPD2L
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::JPD2L
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  8 [s0-s1 s8-s11 s62-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::KPD2L
DIAGNOSTIC LIST

 LINE              DIAGNOSTIC MESSAGE

  No diagnostic message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::KPD2L
FORMAT LIST

 LINE   LOOP      STATEMENT

    51:             pure function kpd2l(l,d)
    52:               integer :: kpd2l
    53:               integer, intent(in) :: l,d
    54:               kpd2l = l+d*num_ij
    55:             end function kpd2l


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::KPD2L
INLINE LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::KPD2L
VECTORIZATION LIST

  No message.


NEC Fortran Compiler (3.1.1) for Vector Engine   Wed Jan  6 15:37:42 2021
FILE NAME: loopModule.f90

PROCEDURE NAME: LOOPMODULE::KPD2L
CODE GENERATION LIST

  Hardware registers
    Reserved                   : 10 [sl fp lr sp s12 s13 tp got plt s17]
    Callee-saved               : 16 [s18-s33]
    Assigned
      Scalar registers         :  8 [s0-s1 s8-s11 s62-s63]
      Vector registers         :  0
      Vector mask registers    :  0
      VREG directive           :  0

  Routine stack
    Total size                 : 0 bytes
      Register spill area      : 0 bytes
      Parameter area           : 0 bytes
      Register save area       : 0 bytes
      User data area           : 0 bytes
      Others                   : 0 bytes

    Note: Total size of Routine stack does not include
          the size extended by alloca() and so on.


