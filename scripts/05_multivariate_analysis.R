library(tidyverse)
library (ggplot2)
library(psych)

# Load cleaned dataset
nhis <- read_csv("data/nhis_clean.csv")

# Ensure categorical variables are factors for plotting
nhis$SEX_A <- as.factor(nhis$SEX_A)
nhis$EDUCP_A <- as.factor(nhis$EDUCP_A)

# Define custom labels for the SEX_A variable (in accordance with codebook)
sex_labels <- c("1" = "Male", "2" = "Female")

# Create enhanced scatterplot of Height vs Weight faceted by Sex & Education Level
correlation <- cor(nhis$HEIGHTTC_A, nhis$WEIGHTLBTC_A, use = "complete.obs")
cat("Correlation between Height and Weight:", correlation, "\n")

ggplot(data = nhis, aes(x = WEIGHTLBTC_A, y = HEIGHTTC_A, color = SEX_A)) +
  geom_point(alpha = 0.6) + # Use alpha for better visibility 
  facet_wrap(~ EDUCP_A) + # Facet by Education Level
  labs(
    title = "Height vs. Weight by Sex and Education Level",
    x = "Weight (lbs)",
    y = "Height (cm)",
    color = "Sex"
  ) +
scale_color_manual(labels = sex_labels, values = c("blue", "red")) + # Apply custom labels & colors
  theme_minimal() # Apply a clean theme 

# Create a scatter plot matrix of Age, Weight, and Height
pairs.panels(nhis[, c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A")],
             method = "pearson", # Add correlation method
             hist.col = "lightgreen", # Add color to histograms
             ellipses = TRUE, # Add correlation ellipses
             lm = TRUE) # Add linear regression lines


