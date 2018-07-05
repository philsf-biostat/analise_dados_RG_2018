library(data.table)
library(readxl)

participantes <- data.table(read_excel("dataset/dados padronizados.xls", "Participantes"))
esportes <- data.table(read_excel("dataset/dados padronizados.xls", "Esportes"))
esportes <- esportes[, lapply(.SD, factor)]
dor <- data.table(read_excel("dataset/dados padronizados.xls", "Sente a dor"))
dor <- dor[, lapply(.SD, factor)]
movim <- data.table(read_excel("dataset/dados padronizados.xls", "Movimentos"))
movim <- movim[, lapply(.SD, factor)]
locais <- data.table(read_excel("dataset/dados padronizados.xls", "Locais de dor"))
locais <- locais[, lapply(.SD, factor)]


# remover participante sem dor
participantes <- participantes[ID != 166]
esportes <- esportes[ID != 166]
movim <- movim[ID != 166]
dor <- dor[ID != 166]
locais <- locais[ID != 166]
