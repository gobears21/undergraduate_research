SUBDIR := cflux cflux-1d vflux vflux-1d muscl muscl-1d muscl-1d cfacev cfacev-1d cfacev-1d \
	muscl-1d_omp cfacev-1d_omp \
	cflux_wif cflux_wif-1d

SUBDIR2 := \
	rhsc rhsc-1d rhsc-1d_omp \
	rhsv rhsv-1d rhsv-1d_omp \
	rhs rhs-1d rhs-1d_omp  \
#	rhs-1d_omp_marge

include ../Makefile.config

default: dataTypeModule.o upmpi.o loopModule.o
	cd bodies; ./mksrc
	for p in $(SUBDIR) ; do (cd $$p; if [ ! -f ./Makefile ]; then ln -s ../Makefile_subdir+ ./Makefile ; fi ; $(MAKE)) ; done
	for p in $(SUBDIR2) ; do (cd $$p; if [ ! -f ./Makefile ]; then ln -s ../Makefile_subdir+ ./Makefile ; fi ; $(MAKE)) ; done

clean:
	for p in $(SUBDIR) ; do (cd $$p; $(MAKE) clean) ; done
	for p in $(SUBDIR2) ; do (cd $$p; $(MAKE) clean) ; done
	rm -rf *.o *.mod *.lst *.optrpt
	rm -rf bodies/*.inc

distclean:
	$(MAKE) clean
	for p in $(SUBDIR) ; do (cd $$p; $(MAKE) distclean) ; done
	for p in $(SUBDIR2) ; do (cd $$p; $(MAKE) distclean) ; done
	rm -rf ./logs/* ./prof/* ./tools/*.txt ./tools/*.eps ./tools/*.emf ./work/*

%.o : %.f90
	$(F90) $(F90FLAGS) -c $<
