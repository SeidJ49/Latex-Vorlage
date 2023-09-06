FILE=thesis
DEPS=inhalt/*.tex

FILE_DEPS=$(FILE).tex $(DEPS)

all: $(FILE).pdf

$(FILE).pdf: $(FILE_DEPS)
	pdflatex $(FILE)
	bibtex $(FILE)
	makeindex -g -s index.ist $(FILE).idx
	makeindex -s $(FILE).ist -t $(FILE).alg -o $(FILE).acr $(FILE).acn
	makeindex -s $(FILE).ist -t $(FILE).glg -o $(FILE).gls $(FILE).glo
	pdflatex $(FILE)
	pdflatex $(FILE)

clean:
	-rm inhalt/*.aux
	-rm *.pdf *.log *.aux *.out *.toc *.lof *.lot *.idx *.acr *.alg *.acn *.glg *.glo *.ind *.idx *.lol *.gls *.ilg
	-rm thesis.ist

.PHONY: clean
