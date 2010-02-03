# Generic LaTeX Makefile
#
# Jason Blevins <jrblevin@sdf.lonestar.org> , 2006
# Miguel Ruiz <mruiz@openminds.cl>, 2009

###############################################################################
# Configuration Section
# This should be the only section you need to modify

# Project base filename where your main tex file is $(BASENAME).tex
BASENAME = memoria

# Program locations and options
LATEX = latex
PDFLATEX = pdflatex
DVIPS = dvips
DVIPSFLAGS = -t letter

VIEWER = evince
XDVI = xdvi
GGV = ggv

###############################################################################
# File lists

DISTFILES = *.aux *.lo* *~ *.blg *.bbl *.dvi *.toc .*xml *.bak
CLEANFILES = $(DISTFILES) *.ps *.pdf *.zip *.tar.gz

TEMPLATE_FILES = Makefile $(BASENAME).tex

###############################################################################
# Build rules

all: clean $(BASENAME).pdf

$(BASENAME).pdf:
	latex $(BASENAME).tex && pdflatex $(BASENAME).tex

###############################################################################
# Clean-up rules

clean:
	-rm -f $(CLEANFILES)

distclean:
	-rm -f $(DISTFILES)

