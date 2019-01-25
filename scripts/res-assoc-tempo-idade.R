source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

ef.esp.princ <- participantes[esportes[PRINCIPAL=="Principal"], , on = .(ID)]
ef.esp.princ[, PRINCIPAL:=NULL]
summary(ef.esp.princ)
# fisher.test(ef.esp.princ)
# hist(participantes$IDADE)
shapiro.test(participantes$IDADE)
range(participantes$IDADE)
range(participantes$TEMPO)
# plot(TEMPO ~ IDADE, participantes)

# with(participantes, cor.test(TEMPO, IDADE, method = "spearman"))

print(CreateTableOne("IDADE", "TEMPO.cat", participantes), exact = TRUE)
