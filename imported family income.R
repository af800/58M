getwd()
setwd("~/programming/project scripts")

#Import dta that includes income

install.packages("haven")
library("haven")

family_dvs <- read_dta("../Project data/mcs5_family_dvs.dta")
family_dvs

#Isolate income

family_income <- family_dvs[, "EOEDE000",drop=F]
family_income

#######THE ABOVE IS NOT HELPFUL, BELOW IS FAMILY INCOME DATAFRAME###########

#creating dataframes

family_data_frame <- as.data.frame(family_dvs)
str(family_data_frame)

family_income_df <- family_data_frame$MCSID
family_income_df <- as.data.frame(family_income_df)

family_income_df[, 2] <- family_data_frame$EOEDE000

headings <- c("id", "family_income")
names(family_income_df) <- headings

family_income_df