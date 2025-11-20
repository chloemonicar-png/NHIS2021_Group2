nhis_data <- read.csv("C:/Users/HP/Downloads/NHIS _Data_2021.csv")
nhis_data

vars_needed <- c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A", "SEX_A", "HISPALLP_A", "EDUCP_A", "PHSTAT_A", "LSATIS4R_A")
nhis <- nhis_data %>%
  select(all_of(vars_needed))
missing_codes <- c(7, 9, 97, 98, 99, 996:999)
nhis_clean <- nhis %>%
  mutate(across(
    everything(),
    ~ ifelse(.%in% missing_codes, NA, .)
  ))

library(tidyr)
nhis_clean <- nhis_clean %>%
  drop_na()
head(nhis_clean)
