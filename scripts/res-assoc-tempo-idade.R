source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

# with(participantes, cor.test(TEMPO, IDADE, method = "spearman"))

tab.tempo.idade <- CreateTableOne("IDADE.cat", "TEMPO.cat", participantes)
