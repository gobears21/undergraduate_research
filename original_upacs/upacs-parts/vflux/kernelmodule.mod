VN 0 0 4 0 0 0
4 8 4
MODULE KERNELMODULE,2 0 0 0 0
FILE 0,alc.f90
USE LOOPMODULE 2
VAR FTYPE,1,,: 1,4,3,0,0,0,4001,1,0,0,0,0
VAR FLOP,1,,: 1,4,3,0,0,0,81,1,0,0,0,0
VAR BYTE,1,,: 1,4,3,0,0,0,81,1,0,0,0,0
VAR NOF_3DA,1,,: 1,4,3,0,0,0,4001,1,0,0,0,0
PROC VFLUX,25,8,0,17,0: 8,0,0,0,0,0,40200,1,400000,0,0,0
VAR MU,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FU,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FV,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FW,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DTDX,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DTDY,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DTDZ,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DUDX,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DUDY,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DUDZ,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DVDX,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DVDY,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DVDZ,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DWDX,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DWDY,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR DWDZ,3,,: 2,8,5,0,1,0,503,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FMASS,3,,: 2,8,5,0,1,0,483,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FMOMX,3,,: 2,8,5,0,1,0,583,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FMOMY,3,,: 2,8,5,0,1,0,583,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FMOMZ,3,,: 2,8,5,0,1,0,583,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR FENE,3,,: 2,8,5,0,1,0,483,0 (3,8,0: 5,3,1,0,5,3,1,0,5,3,1,0),1000000,1000,0,0
VAR AREA,3,,: 2,8,5,0,0,0,103,0,0,1000,1,0
VAR DIR,3,,: 1,4,3,0,0,0,103,0,0,0,1,0
VAR NDIM,3,,: 1,4,3,0,0,0,103,0,0,0,1,0
VAR OVLP,3,,: 1,4,3,0,0,0,3,0,0,0,1,0
ENDPROC
END
