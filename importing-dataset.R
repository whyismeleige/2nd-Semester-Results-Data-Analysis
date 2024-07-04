library(readxl)
library(dplyr)
results <- read_excel("D:\\Data Science Practise\\Sem.xlsx")
save(results, file = "data-objects/results-table.rda")
