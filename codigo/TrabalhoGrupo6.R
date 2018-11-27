install.packages("rmarkdown")
install.packages("tinytex")
library(rmarkdown)
library(tinytex)
install_tinytex(force = TRUE, dir = "auto", repository = "ctan", extra_packages = NULL)
tinytex_root()

use_tinytex(from = "C:\\projetos\\project-rmarkdown\\auto")

tinytex::tinytex_root()
