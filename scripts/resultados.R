source('scripts/input.R', encoding = 'UTF-8')
library(tableone)
library(stringr)
source('scripts/res-assoc-esp-cirurg.R', encoding = 'UTF-8')
source('scripts/res-assoc-esp-movim.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-EF.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-idade.R', encoding = 'UTF-8')
source('scripts/res-assoc-tempo-nivel.R', encoding = 'UTF-8')

tab.ef.t1 <- CreateTableOne(ef.colnames, data = participantes)
tab.ef <- print(tab.ef.t1, printToggle = FALSE)

tab.esportes <- rbind(
  print(tab.esportes.cirurg, exact = TRUE, printToggle = FALSE),
  print(tab.esportes.movim, exact = FALSE, printToggle = FALSE)
)

tab.tempo <- rbind(
  print(tab.tempo.ef, exact = TRUE, printToggle = FALSE),
  print(tab.tempo.nivel, exact = TRUE, printToggle = FALSE),
  print(tab.tempo.idade, exact = TRUE, printToggle = FALSE)
)

# Pós-processamento das tabelas
rownames(tab.ef) <- str_replace(rownames(tab.ef), '= 1 \\(%\\)', '(%)')
rownames(tab.esportes) <- str_replace(rownames(tab.esportes), '= 1 \\(%\\)', '(%)')
rownames(tab.tempo) <- str_replace(rownames(tab.tempo), '= 1 \\(%\\)', '(%)')
