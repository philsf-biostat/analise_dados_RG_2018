source('scripts/input.R', encoding = 'UTF-8')
library(ggplot2)

# ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, function(x) length(x)))) +
# esp.princ <- ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, length))) +
#   geom_bar() +
#   xlab("Esporte") + ylab("") +
#   ylim(c(0, 150)) +
#   coord_flip() +
#   ggtitle("Esporte principal")

# esp.sec <- ggplot(esportes[PRINCIPAL==0], aes(reorder(ESPORTE, ESPORTE, length ))) +
#   geom_bar() +
#   xlab("Esporte") + ylab("") +
#   ylim(c(0, 150)) +
#   coord_flip() +
#   ggtitle("Esporte secundário")

#ordem alfabática
# esp.princ.sec <- ggplot(esportes, aes(factor(esportes$ESPORTE, levels(esportes$ESPORTE)[25:1]), fill = PRINCIPAL)) +

# ordem de prevalência (Pareto)
esp.prev <- ggplot(esportes, aes(reorder(ESPORTE, ESPORTE, length), fill = PRINCIPAL)) +
  geom_bar() +
  xlab("Esporte") + ylab("") +
  coord_flip() +
  # ggtitle("") +
  theme(legend.position = "bottom", legend.title = element_blank())

# ggplot(participantes[`ESPORTE 1` == "FUTEBOL" & !is.na(`ESPORTE 2`)], aes(reorder(`ESPORTE 2`, `ESPORTE 2`, length))) +
#   geom_bar() +
#   xlab("Esporte") +
#   coord_flip()+
#   ggtitle("Esporte acessório quando o principal é futebol")

ids.futebol <- esportes[PRINCIPAL == "Principal" & ESPORTE == "FUTEBOL"]$ID
ids.futebol <- as.numeric(levels(ids.futebol)[ids.futebol])
ids.corrida <- esportes[PRINCIPAL == "Principal" & ESPORTE == "CORRIDA"]$ID
ids.corrida <- as.numeric(levels(ids.corrida)[ids.corrida])
ids.musculacao <- esportes[PRINCIPAL == "Principal" & ESPORTE == "MUSCULAÇÃO"]$ID
ids.musculacao <- as.numeric(levels(ids.musculacao)[ids.musculacao])

esp.sec.fut <- ggplot(esportes[ID %in% ids.futebol & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") + ylab("") +
  ylim(c(0, 40)) +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é futebol")

esp.sec.corr <- ggplot(esportes[ID %in% ids.corrida & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") + ylab("") +
  ylim(c(0, 40)) +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é corrida")

esp.sec.musc <- ggplot(esportes[ID %in% ids.musculacao & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") + ylab("") +
  ylim(c(0, 40)) +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é musculação")

desc.idade.sexo <- ggplot(participantes, aes(IDADE.cat, fill = SEXO)) +
  geom_bar() +
  xlab("Idade") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.nivel.sexo <- ggplot(participantes, aes(NIVEL, fill = SEXO)) +
  geom_bar() +
  xlab("Nível de dedicação") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.freq.sexo <- ggplot(participantes, aes(FREQ.cat, fill = SEXO)) +
  geom_bar() +
  xlab("Treinos por semana") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")
