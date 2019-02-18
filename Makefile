all: fullInstructions vademecum

fullInstructions: fullInstructions.tex
	pdflatex fullInstructions
	pdflatex fullInstructions

vademecum: vademecum.tex
	pdflatex vademecum
	pdflatex vademecum

clean:
	rm -f *.log *.out *.aux *.bbl vademecum.pdf fullInstructions.pdf
