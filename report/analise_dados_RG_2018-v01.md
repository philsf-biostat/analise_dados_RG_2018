---
title: "Análise exploratória de dados de pacientes com pubalgia atlética no Brasil"
author: '**De:** Felipe Figueiredo **Para:** Rodrigo Góes'
date: '**Data: ** dd/mm/aaaa'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'RELATÓRIO: analise_dados_RG_2018-v01'
toc-title: "Sumário"
---



---

**Histórico do documento**


| Versão |   Alterações   |
|:------:|:--------------:|
|   01   | Versão inicial |

---

<!-- # Assinaturas -->

<!-- ```{r, echo=FALSE} -->
<!-- sig.field <- "__________________________" -->
<!-- date.field <- "_____________" -->
<!-- Stat <- c("Elaborador", "Felipe Figueiredo", "Bioestatístico", sig.field, date.field) -->
<!-- Reviewer <- c("Revisado por", "", "", sig.field, date.field) -->
<!-- Approver <- c("Verificado por", "", "", sig.field, date.field) -->
<!-- Final.Approver <- c("Aprovação final", "", "", sig.field, date.field) -->

<!-- sigs <- rbind( -->
<!--   Stat -->
<!--   , Reviewer -->
<!--   , Approver -->
<!--   , Final.Approver -->
<!--   ) -->
<!-- rownames(sigs) <- NULL -->
<!-- colnames(sigs) <- c("Papel", "Nome", "Função", "Assinatura", "Data") -->

<!-- pander(sigs, split.cells = c(9, 14, 14, 16, 8), split.table = Inf) -->
<!-- # kable(sigs) -->
<!-- ``` -->

# Lista de abreviaturas

# Introdução

## Objetivos

## Recepção e tratamento dos dados

# Metodologia



Esta análise foi realizada utilizando-se o software `R` versão 3.5.3.



# Resultados

## Participantes do estudo



Esta série de casos contou com 245 participantes, dos quais 29 era mulheres e 216 eram homens.
Os participantes do estudo tinham idades entre 14 e 75 anos.
Os participantes foram perguntados sobre o nível de dedicação que eles praticam seu esporte: 44 praticam no nível profissional, 19 no nível universitário/escolar e 182 praticam recreacionalmente.
36 participantes relataram sentir dor aguda.
Após as avaliações médicas 23 participantes receberam indicação de algum procedimento cirúrgico para mitigar os sintomas.

## Distribuição das modalidades esportivas praticadas pelos atletas com pubalgia



Nesta série de casos, os atletas com pubalgia relataram praticar 25 modalidades esportivas distintas (figura 1).
Três esportes se destacam como os mais comuns entre os participantes, seja como atividade esportiva principal ou secundária.
Quando incluímos todos os atletas que praticam as modalidades esportivas sem considerar a atividade principal ou secundária temos
o futebol (N = 148),
a corrida (N = 81)
e a musculação (N = 70).

![**Figura 1** Prevalência dos esportes nos atletas com pubalgia](../figures/esp_prev.png)

As três modalidades globalmente mais comuns são também as selecionadas mais tipicamente tanto como esporte principal quanto como esporte secundário.
Quando consideradas apenas as modalidades principais dos atletas, o futebol foi selecionado como atividade principal por
129 atletas,
enquanto que a corrida e a musculação foram selecionadas por
43 e
16 atletas, respectivamente.
Juntas estas três modalidades esportivas representam
76.7%
da amostra (188 de 245).
As três modalidades mais selecionadas pelos atletas como esportes secundários ou acessórios são
a musculação (N = 54),
a corrida (N = 38)
e o futebol (N = 19).
Juntas estas três modalidades representam
66.1%
dos esportes secundários dos atletas com pubalgia
(111 de 168).

### Atividades auxiliares dos praticantes de futebol



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente o futebol são a
musculação (N = 32)
e a corrida (N = 22).
Juntos estas duas modalidades representam
66.7%
dos esportes secundários dos atletas com pubalgia (54 de 81).

![**Figura 2** Esportes auxiliares ao futebol](../figures/esp_sec_fut.png)

### Atividades auxiliares dos praticantes de corrida



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente a corrida são a
musculação (N = 9)
e futebol (N = 8).
Juntos estas duas modalidades representam
58.6%
dos esportes secundários dos atletas com pubalgia (17 de 29).

![**Figura 3** Esportes auxiliares à corrida](../figures/esp_sec_corr.png)

### Atividades auxiliares dos praticantes de musculação



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente o futebol são a
musculação (N = 5)
e a corrida (N = 3).
Juntos estas duas modalidades representam
57.1%
dos esportes secundários dos atletas com pubalgia (8 de 14).

![**Figura 4** Esportes auxiliares à musculação](../figures/esp_sec_musc.png)

## Performance dos exames físicos


|      &nbsp;      |  Overall   |
|:----------------:|:----------:|
|      **n**       |    245     |
| **EF1 = 1 (%)**  | 77 (31.4)  |
| **EF2 = 1 (%)**  | 188 (76.7) |
| **EF3 = 1 (%)**  | 166 (67.8) |
| **EF4 = 1 (%)**  | 190 (77.6) |
| **EF5 = 1 (%)**  | 153 (62.4) |
| **EF6 = 1 (%)**  | 102 (41.6) |
| **EF7 = 1 (%)**  | 168 (68.6) |
| **EF8 = 1 (%)**  | 71 (29.0)  |
| **EF9 = 1 (%)**  | 37 (15.1)  |
| **EF10 = 1 (%)** | 120 (49.0) |

<!-- # Exceções e Desvios do teste -->

# Discussão

Esta série de casos avaliou as distribuições dos esportes praticados por atletas com pubalgia em 25 modalidades desportivas, tanto como esporte principal como atividade secundária ou acessória (figura 1).
Não é surpreendente que, no Brasil, o futebol seja o esporte mais praticado pelos pacientes atendidos com pubalgia.
Neste estudo, no entanto, os atletas que demonstraram preferência por este esporte são não somente mais frequentes, mas também são os que mais praticam outras atividades (figuras 2, 3 e 4).
A discrepância na opção por atividades acessórias é marcante:
81 jogadores de futebol relataram praticar atividades secundárias,
enquanto que os dados de atletas de corrida e musculação são consideravelmente (29 e 14, respectivamente).

# Conclusões


# Referências

# Apêndice

