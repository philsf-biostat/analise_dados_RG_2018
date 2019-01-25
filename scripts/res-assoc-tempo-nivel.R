source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

tab.tempo.nivel <- CreateTableOne("NIVEL", "TEMPO.cat", participantes)
