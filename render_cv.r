# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering. This exercise is left to the reader.

# Knit the Markdown version
# rmarkdown::render("cv.rmd",
#                   "github_document",
#                   params = list(pdf_mode = FALSE),
#                   output_file = "cv.md")

# rmarkdown::render("./r_subscripts/002b_pea_format_normalize_naFilter.R",
#                   "github_document", 
#                   output_dir="./markdown/")

# Set filename
fn <- "cv_hr_2022_04_24_Bioinf_OlsAro_Crop_Biotech" #"cv_hr_2022_04_17_Sen_Sci_Mol_Bio_Bioinf_AZ"    #cv,"cv_hr_2022_04_30_Clin_App_Cons_NGS_TF"# 
# Knit the HTML version
rmarkdown::render(paste(fn,".rmd",sep=""),
                  params = list(pdf_mode = FALSE),
                  output_file = paste(fn,".html",sep=""))

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render(paste(fn,".rmd",sep=""),
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = paste(fn,".pdf",sep=""))


