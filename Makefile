# Define targets and their dependencies
all: report.html report.pdf

report.html: 570\ Reproducibility\ -\ RMD\ file.Rmd
	Rscript -e 'rmarkdown::render("570 Reproducibility - RMD file.Rmd")'

report.pdf: 570\ Reproducibility\ -\ RMD\ file.Rmd
	Rscript -e 'rmarkdown::render("570 Reproducibility - RMD file.Rmd", output_format = "pdf_document")'

# Define a "clean" target to remove generated files
clean:
	rm -f report.html report.pdf
