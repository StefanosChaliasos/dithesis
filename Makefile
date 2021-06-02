
.SUFFIXES:.eps .pdf .gz .data .dot

TEX_FILES=$(wildcard *.tex *.bib *.cls *.bst)
FIGURES=$(wildcard figures/*.pdf figures/*.png)


thesis.pdf: $(TEX_FILES) $(FIGURES)
	xelatex thesis
	bibtex thesis
	xelatex thesis
	xelatex thesis

clean:
	rm -f thesis.aux thesis.bbl thesis.blg thesis.log thesis.pdf thesis.ent thesis.out thesis.pyg thesis.lot thesis.toc thesis.lof
	rm -rf _minted-thesis
