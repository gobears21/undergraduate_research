VN 0 0 4 0 0 0
4 8 4
MODULE KERNELMODULE,2 0 0 0 0
FILE 0,alc.f90
USE LOOPMODULE 2
VAR FTYPE,1,,: 1,4,3,0,0,0,4001,1,0,0,0,0
VAR FLOP,1,,: 1,4,3,0,0,0,81,1,0,0,0,0
VAR BYTE,1,,: 1,4,3,0,0,0,81,1,0,0,0,0
VAR NOF_3DA,1,,: 1,4,3,0,0,0,4001,1,0,0,0,0
PROC MUSCL,19,8,0,17,0: 8,0,0,0,0,0,40200,1,400000,0,0,0
VAR RHO,3,,: 2,8,5,0,1,0,103,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR U,3,,: 2,8,5,0,1,0,103,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR V,3,,: 2,8,5,0,1,0,103,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR W,3,,: 2,8,5,0,1,0,103,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR PRE,3,,: 2,8,5,0,1,0,103,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR RHOR,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR UR,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR VR,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR WR,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR PRER,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR RHOL,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR UL,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR VL,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR WL,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR PREL,3,,: 2,8,5,0,1,0,83,0 (1,3,0: 1,4,1,0),0,1000,0,0
VAR DX,3,,: 2,8,5,0,0,0,103,0,0,0,1,0
VAR DIR,3,,: 1,4,3,0,0,0,103,0,0,0,1,0
VAR NDIM,3,,: 1,4,3,0,0,0,3,0,0,1000,1,0
VAR OVLP,3,,: 1,4,3,0,0,0,3,0,0,1000,1,0
ENDPROC
END
