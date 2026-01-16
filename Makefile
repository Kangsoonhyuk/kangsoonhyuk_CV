all: resume.pdf

resume.pdf: resume.tex
	xelatex -interaction=nonstopmode resume.tex

clean:
	rm -f *.aux *.log *.out *.toc *.pdf
