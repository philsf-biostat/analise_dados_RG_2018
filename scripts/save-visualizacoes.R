source("scripts/visualizacoes.R", encoding = 'UTF-8')

ggsave("figures/esp_princ.png", esp.princ, h=5, w=6)
ggsave("figures/esp_sec.png", esp.sec, h=5, w=6)
ggsave("figures/esp_sec_fut.png", esp.sec.fut, h=5, w=6)
ggsave("figures/esp_sec_corr.png", esp.sec.corr, h=5, w=6)
