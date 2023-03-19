MAKE := make

#SUBDIR := mytriad mbtriad mbtriad3d mbtriad1d_mw upacs-parts bcm
SUBDIR := upacs-parts

default: 
	for p in $(SUBDIR) ; do (cd $$p; $(MAKE)) ; done

clean:
	for p in $(SUBDIR) ; do (cd $$p; $(MAKE) clean) ; done

distclean:
	for p in $(SUBDIR) ; do (cd $$p; $(MAKE) distclean) ; done
