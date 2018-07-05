source('scripts/input.R')
library(ggplot2)

# ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, function(x) length(x)))) +
ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip() +
  ggtitle("Esporte principal")

ggplot(esportes[PRINCIPAL==0], aes(reorder(ESPORTE, ESPORTE, length ))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip() +
  ggtitle("Esporte secundário")

# ggplot(participantes[`ESPORTE 1` == "FUTEBOL" & !is.na(`ESPORTE 2`)], aes(reorder(`ESPORTE 2`, `ESPORTE 2`, length))) +
#   geom_bar() +
#   xlab("Esporte") +
#   coord_flip()+
#   ggtitle("Esporte acessório quando o principal é futebol")

ids.futebol <- esportes[PRINCIPAL == 1 & ESPORTE == "FUTEBOL"]$ID
ids.futebol <- as.numeric(levels(ids.futebol)[ids.futebol])
ids.corrida <- esportes[PRINCIPAL == 1 & ESPORTE == "CORRIDA"]$ID
ids.corrida <- as.numeric(levels(ids.corrida)[ids.corrida])

ggplot(esportes[ID %in% ids.futebol & PRINCIPAL == 0], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é futebol")

ggplot(esportes[ID %in% ids.corrida & PRINCIPAL == 0], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é corrida")
