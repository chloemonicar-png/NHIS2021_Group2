# Load the NHIS dataset
nhis_data <- read.csv("C:/Users/HP/Downloads/NHIS _Data_2021.csv")
nhis_data

# Select only the variables needed
vars_needed <- c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A", "SEX_A", "HISPALLP_A", "EDUCP_A", "PHSTAT_A", "LSATIS4R_A")
nhis <- nhis_data %>%
  select(all_of(vars_needed)) # Keep only required columns

# List all missing value codes based on the codebook
missing_codes <- c(7, 9, 97, 98, 99, 996:999)

# Replace missing value codes with NA for all variables
nhis_clean <- nhis %>%
  mutate(across(
    everything(),
    ~ ifelse(.%in% missing_codes, NA, .)
  ))

# Load tidyr for drop_na()
library(tidyr)

# Remove any rows that contain any NA values
nhis_clean <- nhis_clean %>%
  drop_na()

# Show first few rows of the cleaned dataset
head(nhis_clean)
