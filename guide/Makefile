
CC=latexmk
CFLAGS=-xelatex -bibtex -time -rc-report- -synctex=1 -interaction=nonstopmode -shell-escape -quiet
TMPFILES=*.gls *.glg *.glo *.glsdefs *.ist *.xdy *.auxlock *.fdb_latexmk *.run.xml *.bbl *.aux *.dvi *.aux *.log *.fls *.toc *.lof *.bcf *.lot

default: all

watch:
	$(CC) $(CFLAGS) -pvc main.tex

publish: guide
	mv main.pdf seg_guide_Rohrbacher_Stefan.pdf

all: guide

cleanbuild: clean all

guide:
	$(CC) $(CFLAGS) main.tex
	makeglossaries main
	$(CC) $(CFLAGS) main.tex

clean:
	$(CC) -c -rc-report-

clean-all:
	$(CC) -C -rc-report-
	rm -v $(TMPFILES)
