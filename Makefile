OUT = $(target)

all: $(OUT) clean

$(OUT): $(wildcard *.tex *.bib *.cls *.eps *.jpg)
	xelatex $@
#	bibtex  $@
#	for number in `seq 1 16`; do \
#		bibtex bu$$number ; done
#	xelatex $@
#	xelatex $@

clean:
	rm -f *~ *.toc *.aux *.dvi *.bbl *.blg *.log *.out
