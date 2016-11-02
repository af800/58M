
### opening, setting wd and installing packages ###

setwd("~/Documents/58m/data")
install.packages("haven")
library ("haven")

### opening measurements file and reading in data ###

file2 <- read_dta("mcs5_cm_measurement.dta")

## selecting weight in KG and the body fat measuremnents ##

weight <- file2[, "ECWTCMA0",drop=F]
bodfat <- file2[, "ECBFPC00", drop=F]
