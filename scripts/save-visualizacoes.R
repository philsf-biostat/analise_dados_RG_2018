source("scripts/visualizacoes.R", encoding = 'UTF-8')

ggsave("figures/esp_prev.png", esp.prev, h=5, w=6)
ggsave("figures/esp_sec_fut.png", esp.sec.fut, h=5, w=6)
ggsave("figures/esp_sec_corr.png", esp.sec.corr, h=5, w=6)
ggsave("figures/esp_sec_musc.png", esp.sec.musc, h=5, w=6)
ggsave("figures/desc_movim.png", desc.movim, h=5, w=6)
ggsave("figures/desc_local.png", desc.local, h=5, w=6)
