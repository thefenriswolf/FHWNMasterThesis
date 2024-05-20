CC=latexmk
CFLAGS=-xelatex -bibtex -time -rc-report- -synctex=1 -interaction=nonstopmode -shell-escape
TMPFILES=*.auxlock *.fdb_latexmk *.run.xml *.bbl *.aux *.dvi *.aux *.log *.fls *.toc *.lof *.bcf *.lot


watch-guide:
	$(CC) $(CFLAGS) -pvc __main.tex

all: guide

guide:
	$(CC) $(CFLAGS) __main.tex

clean:
	$(CC) -c -rc-report-

clean-all:
	$(CC) -C -rc-report-
	rm -v $(TMPFILES)
