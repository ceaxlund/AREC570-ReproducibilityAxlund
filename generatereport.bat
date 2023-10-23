# Define the target and its dependencies
@echo off
Rscript -e "rmarkdown::render('570 Reproducibility - RMD file.Rmd', output_format = 'pdf_document')"
