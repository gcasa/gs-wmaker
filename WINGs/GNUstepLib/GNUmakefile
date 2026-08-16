# Compatibility wrapper for older habits.
#
# GNU make reads GNUmakefile before Makefile.  The GNUstep integration library is
# built by automake now, so delegate to the generated Makefile unless a caller
# explicitly uses "make -f GNUmakefile.legacy" from an older tree.

.DEFAULT_GOAL := all

.PHONY: all install clean distclean maintainer-clean check mostlyclean \
	install-exec install-data uninstall

all install clean distclean maintainer-clean check mostlyclean install-exec install-data uninstall:
	$(MAKE) -f Makefile $@

%:
	$(MAKE) -f Makefile $@
