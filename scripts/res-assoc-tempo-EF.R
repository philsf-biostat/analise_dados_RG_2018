source('scripts/input.R', encoding = 'UTF-8')
library(tableone)

tab.tempo.ef <- CreateTableOne(ef.colnames, "TEMPO.cat", participantes)

# obsoleto ----------------------------------------------------------------

# tab.tempo.ef.num <- rbind(
#   print(CreateTableOne("TEMPO", "EF1", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF2", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF3", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF4", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF5", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF6", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF7", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF8", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF9", participantes), nonnormal = TRUE, printToggle = FALSE),
#   print(CreateTableOne("TEMPO", "EF10", participantes), nonnormal = TRUE, printToggle = FALSE)
# )

# participantes[, .(p = wilcox.test(TEMPO ~ EF1)$p.value), by = ef]
# wilcox.test(TEMPO ~ EF1, participantes)
