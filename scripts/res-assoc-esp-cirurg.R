source('scripts/input.R', encoding = 'UTF-8')

esportes.cirurg <- esportes[participantes[, .(ID, CIRURGIA)], , on = .(ID)]
esportes.cirurg[, PRINCIPAL := NULL]
esportes.cirurg$ESPORTE <- forcats::fct_other(esportes.cirurg$ESPORTE, keep = c("FUTEBOL", "CORRIDA", "MUSCULAÇÃO"), other_level = "OUTROS")
summary(esportes.cirurg)

