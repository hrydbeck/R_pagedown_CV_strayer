## (used to create link "View as html" in .rmd)

```
params:
  cv_version:
    value: "_hr_2022_04_17_Sen_Sci_Mol_Bio_Bioinf_AZ" 
```


##    reference google drive sheet

```{r}
# Note the special double pipe so we modify the CV object in place
CV %<>% print_text_block("profile_2022_04_17_Sen_Sci_Mol_Bio_&_Bioinf_AZ") 
```

```{r}
# Note the special double pipe so we modify the CV object in place
CV %<>% print_text_block("objective_2022_04_17_Sen_Sci_Mol_Bio_&_Bioinf_AZ") 
```

```{r}
# Note the special double pipe so we modify the CV object in place
CV %<>% print_text_block("relevantCompetences_2022_04_17_Sen_Sci_Mol_Bio_&_Bioinf_AZ") 
```


## file name in render_cv.R
```
fn <- "cv_hr_2022_04_24_Bioinf_OlsAro_Crop_Biotech" 
```