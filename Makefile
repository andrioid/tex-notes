LATEX = pdflatex
DOT = dot
SVN = svn
PRODUCT = report
RELEASE = pdf
TEMP = tmp
BIBTEX = bibtex
TEXMAKE = rubber

texFiles := $(wildcard *.tex)
pdfFiles := 

tex: $(wildcard *.tex)
	$(foreach texfile,$(texFiles),${TEXMAKE} --pdf --into ${TEMP} $(texfile);)

	cp $(TEMP)/*.pdf $(RELEASE)
all: tex

clean:
	rm -rf $(TEMP)/* $(RELEASE)/*

#testing.o: *.tex
#       $(LATEX) $(inputs) -o $(output)

