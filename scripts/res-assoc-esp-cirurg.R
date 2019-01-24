source('scripts/input.R', encoding = 'UTF-8')
library(tableone)
library(forcats)

esportes.cirurg <- esportes[participantes[, .(ID, CIRURGIA)], , on = .(ID)]
esportes.cirurg[, PRINCIPAL := NULL]
esportes.cirurg$ESPORTE <- fct_infreq(esportes.cirurg$ESPORTE)
esportes.cirurg$ESPORTE <- fct_other(esportes.cirurg$ESPORTE, keep = c("FUTEBOL", "CORRIDA", "MUSCULAÇÃO"), other_level = "OUTROS")
summary(esportes.cirurg)

# with(esportes.cirurg, table(ESPORTE, CIRURGIA))
# fisher.test(esportes.cirurg$ESPORTE, esportes.cirurg$CIRURGIA)
# chisq.test(esportes.cirurg$ESPORTE, esportes.cirurg$CIRURGIA)

tab.esportes.cirurg <- CreateTableOne("CIRURGIA", "ESPORTE", esportes.cirurg)
