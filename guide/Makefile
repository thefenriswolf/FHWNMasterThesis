
CC=latexmk
CFLAGS=-xelatex -bibtex -time -rc-report- -synctex=1 -interaction=nonstopmode -shell-escape
TMPFILES=*.gls *.glg *.glo *.glsdefs *.ist *.xdy *.auxlock *.fdb_latexmk *.run.xml *.bbl *.aux *.dvi *.aux *.log *.fls *.toc *.lof *.bcf *.lot

watch:
	$(CC) $(CFLAGS) -pvc main.tex

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
