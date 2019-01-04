source('scripts/input.R', encoding = 'UTF-8')

tab.ef <- tableone::CreateTableOne(c("EF1", "EF2", "EF3", "EF4", "EF5", "EF6", "EF7", "EF8", "EF9", "EF10"), data = ef)
