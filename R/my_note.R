install.packages("devtools")
devtools::install_github("rstudio/EDAWR")

library(tidyr)
library(EDAWR)

# basic function in the package 
?gather
?spread
?unite
?separate
?select

# Looking at the data
storms
cases
pollution

# Tidying data
gather(cases, "year", "n", 2:4)
spread(pollution, size,  "amount")

storms2 <- separate(storms, date, c("Year","Month","Day"), sep = "-")
unite(storms2, "date",Year,Month,Day,sep="-" )
