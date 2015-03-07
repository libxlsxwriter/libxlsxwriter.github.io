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
all:
	$(Q)make docs -C ../libxlsxwriter
	$(Q)cp -r ../libxlsxwriter/docs/html/ .

release: all
	$(Q)git add .
	$(Q)git commit -m "Updated docs."
	$(Q)git push origin
