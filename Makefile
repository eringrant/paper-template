# Tools
LATEXMK = latexmk
RM = rm -f
RMDIR = rm -rf

# Targets
all: paper
paper: main.pdf

# Rules
%.pdf: %.tex
	$(LATEXMK) -pdf -quiet $*

mostlyclean:
	$(LATEXMK) -silent -c
	$(RM) *.bbl *.pdf *.dpth

clean: mostlyclean
	$(LATEXMK) -silent -C
	$(RM) *.run.xml *.synctex.gz
	$(RM) *.d
	$(RM) *.md5
	$(RM) *.dep
	$(RM) *.log
	$(RM) *.aux
	$(RM) *.out
	$(RM) *.fls
	$(RM) *.blg
	$(RM) *.snm
	$(RM) *.nav
	$(RM) *.fdb_latexmk
	$(RM) *.auxlock
	$(RMDIR) auto/*

.PHONY: all clean mostlyclean paper
