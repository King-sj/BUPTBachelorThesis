MAIN = main
XELATEX = xelatex -synctex=1 -interaction=nonstopmode -file-line-error
BIBTEX = bibtex

.PHONY: all build docs clean

all: docs build

# 等效于 Ctrl+Alt+B：xelatex -> bibtex -> xelatex -> xelatex
build:
	-$(XELATEX) $(MAIN)
	-$(BIBTEX) $(MAIN)
	-$(XELATEX) $(MAIN)
	-$(XELATEX) $(MAIN)

# 复制最新 docx 并转换为 PDF
docs:
	bash docs/docx2pdf.sh

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk
