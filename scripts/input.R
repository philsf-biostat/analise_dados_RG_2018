library(data.table)
library(readxl)
library(forcats)

participantes <- data.table(read_excel("dataset/dados padronizados.xls", "Participantes"))
esportes <- data.table(read_excel("dataset/dados padronizados.xls", "Esportes"))
dor <- data.table(read_excel("dataset/dados padronizados.xls", "Sente a dor"))
movim <- data.table(read_excel("dataset/dados padronizados.xls", "Movimentos"))
locais <- data.table(read_excel("dataset/dados padronizados.xls", "Locais de dor"))

# simplificar colnames
names(dor) <- c("ID", "DOR")
names(movim) <- c("ID", "MOVIMENTO")
names(locais) <- c("ID", "LOCAL")

# remover participante sem dor
participantes <- participantes[ID != 166]
esportes <- esportes[ID != 166]
movim <- movim[ID != 166]
dor <- dor[ID != 166]
locais <- locais[ID != 166]

# data management
esportes <- esportes[, lapply(.SD, factor)]
dor <- dor[, lapply(.SD, factor)]
movim <- movim[, lapply(.SD, factor)]
locais <- locais[, lapply(.SD, factor)]

# reduzir colunas espúrias
participantes <- participantes[, .(
  ID,
  NOME,
  IDADE,
  SEXO,
  UF,
  FREQ=`FREQ DE TREINO (dias semana)`,
  NIVEL=NÍVEL,
  TEMPO=`TEMPO P/ DIAGNOSTICO`,
  # MEDICOS=`N° DE MEDICOS QUE PROCUROU`,
  INTERFERE=`INTERFERE NA PERFORMANCE ESPORTIVA`,
  AGUDA,
  CIRURGIA=Cirurgia,
  EF1,
  EF2,
  EF3,
  EF4,
  EF5,
  EF6,
  EF7,
  EF8,
  EF9,
  EF10
)]

ef.colnames <- paste0("EF", 1:10)

factorcols <- c(
  "ID",
  "SEXO",
  "UF",
  "NIVEL",
  "INTERFERE",
  "AGUDA",
  "CIRURGIA",
  ef.colnames
)
participantes[, (factorcols) := lapply(.SD, factor), .SDcols = factorcols]
rm(factorcols)

# interfere?
levels(participantes$INTERFERE) <- c("Não", "Sim")

#esportes princ/sec
levels(esportes$PRINCIPAL) <- c("Secundário", "Principal")
esportes$PRINCIPAL <- relevel(esportes$PRINCIPAL, "Principal")
esportes$ESPORTE <- fct_infreq(esportes$ESPORTE) # por frequência

# Categorização do TEMPO
participantes$TEMPO.cat <- cut(participantes$TEMPO, breaks = c(-Inf, 90, Inf), labels = c("<= 90d", "> 90d"))

# Categorização da IDADE
participantes$IDADE.cat <- cut(participantes$IDADE, breaks = c(-Inf, 24, 40, Inf), labels = c("< 25 anos", "25-40 anos", "> 40 anos"))
# participantes$IDADE.cat <- cut(participantes$IDADE, breaks = c(-Inf, 24, 34, 44, Inf), labels = c("< 25 anos", "25-35 anos", "35-45 anos", "> 40 anos"))

# Categorização da frequência de treino
participantes$FREQ.cat <- cut(participantes$FREQ, breaks = c(0, 3, Inf), labels = c("Até 3", "4 ou mais"))

# remover movimentos com dados NA
movim <- movim[!is.na(MOVIMENTO)]

# Movimentos
levels(movim$MOVIMENTO) <- c(
  "Troca de direção",
  "Corridas longas",
  "Tiros/Treino de velocidade",
  "Salto",
  "Chute"
  )

# Locais
levels(locais$LOCAL) <- c(
  "Púbis linha média",
  "Periumbilical - superior",
  "Região inguinal",
  "Região adutora",
  "Bolsa escrotal",
  "Coluna lombar - posterior"
)

# Dor (sente a dor)
levels(dor$DOR) <- c(
  "Tosse",
  "Espirro",
  "Relação sexual",
  "Esporte",
  "Corrida",
  "Caminhar"
)
