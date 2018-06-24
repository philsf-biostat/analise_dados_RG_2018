library(data.table)
library(readxl)

participantes <- data.table(read_excel("dataset/dados padronizados.xls", "Participantes"))
esportes <- data.table(read_excel("dataset/dados padronizados.xls", "Esportes"))
esportes <- esportes[, lapply(.SD, factor)]
