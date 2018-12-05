## set working directory
WD <- 'C:/BiostatsR'
setwd(WD)

devtools::create("WongEllisFinalProject")
WD2 <- 'C:/BiostatsR/WongEllisFinalProject'
setwd(WD2)

formatR::tidy_dir("R")

devtools::document()

setwd(WD)
devtools::use_vignette("Final_Project", pkg = "WongEllisFinalProject")

setwd(WD2)
devtools::check()

devtools::build()

devtools::install(build_vignettes = TRUE)
remove.packages("WongEllisFinalProject")

install.packages(file.path("C:/BiostatsR","WongEllisFinalProject_1.0.tar.gz"),repos=NULL,type="source")
library(WongEllisFinalProject)

