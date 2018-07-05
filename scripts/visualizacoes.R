source('scripts/input.R')
library(ggplot2)

# ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, function(x) length(x)))) +
esp.princ <- ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip() +
  ggtitle("Esporte principal")
ggsave("figures/esp_princ.png", h=4.1, w=4.1)

esp.sec <- ggplot(esportes[PRINCIPAL==0], aes(reorder(ESPORTE, ESPORTE, length ))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip() +
  ggtitle("Esporte secundário")
ggsave("figures/esp_sec.png", h=4.1, w=4.1)

# ggplot(participantes[`ESPORTE 1` == "FUTEBOL" & !is.na(`ESPORTE 2`)], aes(reorder(`ESPORTE 2`, `ESPORTE 2`, length))) +
#   geom_bar() +
#   xlab("Esporte") +
#   coord_flip()+
#   ggtitle("Esporte acessório quando o principal é futebol")

ids.futebol <- esportes[PRINCIPAL == 1 & ESPORTE == "FUTEBOL"]$ID
ids.futebol <- as.numeric(levels(ids.futebol)[ids.futebol])
ids.corrida <- esportes[PRINCIPAL == 1 & ESPORTE == "CORRIDA"]$ID
ids.corrida <- as.numeric(levels(ids.corrida)[ids.corrida])

esp.sec.fut <- ggplot(esportes[ID %in% ids.futebol & PRINCIPAL == 0], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é futebol")
ggsave("figures/esp_sec_fut.png", h=4.1, w=4.1)

esp.sec.corr <- ggplot(esportes[ID %in% ids.corrida & PRINCIPAL == 0], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar() +
  xlab("Esporte") +
  coord_flip()+
  ggtitle("Esporte acessório quando o principal é corrida")
ggsave("figures/esp_sec_corr.png", h=4.1, w=4.1)
