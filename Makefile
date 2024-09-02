all: talk.pdf

clean:
	latexmk -C
	-rm -f *.nav *.run.xml *.snm

distclean: clean
	-rm -f talk.pdf

.PHONY: clean distclean talk.pdf

talk.pdf:
	latexmk -pdf talk.tex
