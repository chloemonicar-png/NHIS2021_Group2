
# 03_univariate_analysis.R
library(tidyverse)

# Load clean dataset
nhis <- read_csv("data/nhis_clean.csv")

# QUANTITATIVE VARIABLES

quant_vars <- c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A")

# AGEP_A summary stats 
summary(nhis$AGEP_A)
sd(nhis$AGEP_A, na.rm = TRUE)
