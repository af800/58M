setwd("C:/Users/af800/Google Drive/MBiochem/58M Data Analysis/Biological Data Science/scripts")

#reading .dta files relies on the haven package (make sure the correct one is selected)
install.packages("haven")

library(haven)
cite("haven", bib)

#open files and read in data
measure <- read_dta("../data/mcs5_cm_measurement.dta")
str(measure)

assess <- read_dta("../data/mcs5_cm_asssessment.dta")
str(assess)

hhgrid <- read_dta("../data/mcs5_hhgrid.dta")
str(hhgrid)

#screentime data is in the self_completion survey
selfcomp <- read_dta("../data/mcs5_cm_self_completion.dta")
str(selfcomp)

#select 'How often do you play games on a computer or games console?' column ECQ05X00
#& create a separate dataframe or it. drop=F keeps it as a matrix
screentime <- selfcomp[, "ECQ05X00",drop=F]
