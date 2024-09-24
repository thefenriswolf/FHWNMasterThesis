
CC=latexmk
CFLAGS=-xelatex -bibtex -time -rc-report- -synctex=1 -interaction=nonstopmode -shell-escape -quiet
PRESENTATION_OPTIONS_FILE:=includes/presentation/00-options.tex
PRESENTATION_NORMAL_OPTIONS:="\def\presentationoptions{12pt}"
PRESENTATION_HANDOUT_OPTIONS:="\def\presentationoptions{12pt,handout}"
PRESENTATION_HANDOUT_WITH_NOTES_OPTIONS:="\def\presentationoptions{12pt,handout,notes}"
TMPFILES=*.snm *.nav *.synctex.gz *.xdv *.auxlock *.fdb_latexmk *.run.xml *.bbl *.aux *.dvi *.log *.fls *.toc *.lof *.bcf *.lot *.bbl-SAVE-ERROR

default: thesis

all: proposal thesis presentation

watch-proposal:
	$(CC) $(CFLAGS) -pvc proposal.tex

watch-thesis:
	$(CC) $(CFLAGS) -pvc thesis.tex

watch-presentation:
	$(CC) $(CFLAGS) -pvc presentation.tex

presentation: presentation-handout presentation-with-notes-handout presentation-standalone

proposal:
	$(CC) $(CFLAGS) proposal.tex

thesis:
	$(CC) $(CFLAGS) thesis.tex

presentation-standalone:
	echo $(PRESENTATION_NORMAL_OPTIONS) > $(PRESENTATION_OPTIONS_FILE)
	$(CC) $(CFLAGS) presentation.tex

presentation-handout:
	echo $(PRESENTATION_HANDOUT_OPTIONS) > $(PRESENTATION_OPTIONS_FILE)
	$(CC) $(CFLAGS) presentation.tex
	$(CC) $(CFLAGS) presentation-handout.tex

presentation-with-notes-handout:
	echo $(PRESENTATION_HANDOUT_WITH_NOTES_OPTIONS) > $(PRESENTATION_OPTIONS_FILE)
	$(CC) $(CFLAGS) presentation.tex
	$(CC) $(CFLAGS) presentation-handout.tex -jobname=presentation-with-notes-handout

clean:
	$(CC) -c -rc-report-
clean-all:
	$(CC) -C -rc-report-
	rm -v $(TMPFILES)
