source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

ef.dor <- participantes[dor, , on = .(ID)]

summary(ef.dor)
# fisher.test(ef.esp.princ)
print(CreateTableOne("NIVEL", "TEMPO.cat", participantes), exact = TRUE)
