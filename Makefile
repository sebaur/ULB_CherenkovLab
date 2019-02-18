all: vademecum

vademecum: vademecum.tex
	pdflatex vademecum
	pdflatex vademecum

clean:
	rm -f *.log *.out *.aux *.bbl vademecum.pdf
