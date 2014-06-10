###############################################################################
#
# Makefile for libxlsxwriter documentation.
#
# Copyright 2014, John McNamara, jmcnamara@cpan.org
#

# Keep the output quiet by default.
Q=@
ifdef V
Q=
endif


# Copy the built html.
all :
	$(Q)cp -r ../libxlsxwriter/docs/html/ .
