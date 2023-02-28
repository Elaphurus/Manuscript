OUT = $(target)

all: $(OUT) clean

$(OUT): $(wildcard *.tex *.bib *.cls *.eps *.jpg)
	xelatex $@
#	bibtex  $@
	bibtex  bu1
	bibtex  bu2
	bibtex  bu3
	bibtex  bu4
	bibtex  bu5
	bibtex  bu6
	bibtex  bu7
	xelatex $@
	xelatex $@

clean:
	rm -f *~ *.toc *.aux *.dvi *.bbl *.blg *.log *.out
