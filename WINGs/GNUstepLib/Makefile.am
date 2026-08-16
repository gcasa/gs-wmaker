## automake input file for WINGs GNUstep integration library

AUTOMAKE_OPTIONS = subdir-objects

lib_LTLIBRARIES = libWINGsGNUstep.la

libWINGsGNUstep_la_SOURCES = \
	GNUstepLib.h \
	GNUstepLib.m

libWINGsGNUstep_la_LDFLAGS = -version-info 0:1:0
libWINGsGNUstep_la_LIBADD = @GNUSTEP_GUI_LIBS@

AM_OBJCFLAGS = @GNUSTEP_OBJCFLAGS@

include_HEADERS = GNUstepLib.h

EXTRA_DIST = \
	GNUmakefile \
	GNUmakefile.preamble \
	GNUmakefile.postamble
