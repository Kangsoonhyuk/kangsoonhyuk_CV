all: kangsoonhyuk_CV.pdf

kangsoonhyuk_CV.pdf: resume.tex
	xelatex -interaction=nonstopmode -jobname=kangsoonhyuk_CV resume.tex

clean:
	rm -f *.aux *.log *.out *.toc *.pdf
