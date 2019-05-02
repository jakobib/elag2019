OPTIONS=-s --pdf-engine=xelatex --slide-level 2 --template vzg-slides.tex

slides.pdf: metadata.yaml slides.md
	pandoc -t beamer $(OPTIONS) -o $@ $?
