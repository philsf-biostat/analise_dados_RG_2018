source('scripts/input.R', encoding = 'UTF-8')
library(tableone)
source('scripts/res-assoc-esp-cirurg.R', encoding = 'UTF-8')
source('scripts/res-assoc-esp-movim.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-EF.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-idade.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-nivel.R', encoding = 'UTF-8')
tab.ef.t1 <- CreateTableOne(c("EF1", "EF2", "EF3", "EF4", "EF5", "EF6", "EF7", "EF8", "EF9", "EF10"), data = participantes)
tab.ef <- print(tab.ef.t1, printToggle = FALSE)

tab.esportes <- rbind(
  print(tab.esportes.cirurg, exact = TRUE, printToggle = FALSE)
)

# Pós-processamento das tabelas
rownames(tab.ef) <- stringr::str_replace(rownames(tab.ef), '= 1 \\(%\\)', '(%)')
