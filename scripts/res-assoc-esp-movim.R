source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

esportes.movim <- movim[esportes[PRINCIPAL=="Principal"], , on = .(ID)]
esportes.movim[, PRINCIPAL := NULL]
esportes.movim$ESPORTE <- forcats::fct_other(esportes.movim$ESPORTE, keep = c("FUTEBOL", "CORRIDA", "MUSCULAÇÃO"), other_level = "OUTROS")
summary(esportes.movim)

# with(esportes.movim, table(MOVIMENTO, ESPORTE))
# fisher.test(esportes.movim$ESPORTE, esportes.movim$MOVIMENTO)
# chisq.test(esportes.movim$ESPORTE, esportes.movim$MOVIMENTO)

tab.esportes.movim <- CreateTableOne("MOVIMENTO", "ESPORTE", esportes.movim)
