nhis_clean <- nhis_clean %>%
  mutate( 
    # Recode EDUCP_A into 4 meaningful education categories
    EDUCP_recoded = case_when(
      EDUCP_A %in% 0:4 ~ 1,  # Less than High School
      EDUCP_A == 4 ~ 2,      # High School Graduate
      EDUCP_A %in% 5:7 ~ 3,  # Some College
      EDUCP_A %in% 8:10 ~ 4, # College Graduate or better
      TRUE ~ NA_real_
    ),
    
    # Convert recoded variable into a factor with labels
    EDUCP_recoded = factor(
      EDUCP_recoded,
      levels = c(1, 2, 3, 4),
      labels = c(
        "Less than High School",
        "High School Graduate",
        "Some College Education",
        "College Graduate or better"
      )
    )
  )

# Save the cleaned dataset to the data/ folder 
write.csv(nhis_clean, "data/nhis_clean.csv", row.names = FALSE)

# View the first few rows of the final cleaned dataset
head(nhis_clean)
