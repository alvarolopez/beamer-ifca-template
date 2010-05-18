all : clean talk.pdf alone
	
%.pdf : %.tex
	@pdflatex $^
	@pdflatex $^
#	@dvipdf tesina.dvi
	@echo Generating PDF
	
alone:
	@echo -n "Removing ..." && rm -rf *.log *aux *.nav *.out *.snm *.toc *.lof *.div&& echo "... ok"

clean:
	@echo -n "Removing ..." && rm -rf *.log *aux *.nav *.out *.snm *.toc tesina.pdf && echo "... ok"

