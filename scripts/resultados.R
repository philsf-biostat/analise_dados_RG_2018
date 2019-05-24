source('scripts/input.R', encoding = 'UTF-8')
library(tableone)
library(stringr)

tab.ef.t1 <- CreateTableOne(ef.colnames, data = participantes)
tab.ef <- print(tab.ef.t1, printToggle = FALSE)
rownames(tab.ef) <- str_remove(rownames(tab.ef), " = 1")
