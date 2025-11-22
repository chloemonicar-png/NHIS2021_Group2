library(tidyverse)

# Load cleaned dataset
nhis <- read_csv("data/nhis_clean.csv")

# 1. Quantitative vs Qualitative
# AGEP_A by SEX_A - Base R boxplot
boxplot(AGEP_A ~ SEX_A, data = nhis,
        main = "AGEP_A by SEX_A",
        xlab = "SEX_A",
        ylab = "Age",
        col = "lightblue")

# AGEP_A by SEX_A - ggplot2 boxplot
ggplot(nhis, aes(x = SEX_A, y = AGEP_A)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "GGPlot: AGEP_A by SEX_A", x = "SEX_A", y = "Age") +
  theme_minimal()

# AGEP_A by EDUCP_A - Base R boxplot
boxplot(AGEP_A ~ EDUCP_A, data = nhis,
        main = "AGEP_A by EDUCP_A",
        xlab = "EDUCP_A",
        ylab = "Age",
        col = "lightblue")

# AGEP_A by EDUCP_A - ggplot2 boxplot
ggplot(nhis, aes(x = EDUCP_A, y = AGEP_A)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "GGPlot: AGEP_A by EDUCP_A", x = "EDUCP_A", y = "Age") +
  theme_minimal()


# 2. Qualitative vs Qualitative
# PHSTAT_A vs LSATIS4R_A - ggplot2 clustered bar chart
ggplot(nhis, aes(x = LSATIS4R_A, fill = PHSTAT_A)) +
  geom_bar(position = "dodge") +
  labs(title = "PHSTAT_A vs LSATIS4R_A", x = "Life Satisfaction", y = "Count") +
  theme_minimal()


# 3. Quantitative vs Quantitative
# HEIGHTTC_A vs WEIGHTLBTC_A - Base R scatter plot
plot(nhis$HEIGHTTC_A, nhis$WEIGHTLBTC_A,
     main = "Height vs Weight",
     xlab = "Height (inches)",
     ylab = "Weight (lbs)",
     pch = 19,
     col = "blue")

# HEIGHTTC_A vs WEIGHTLBTC_A - ggplot2 scatter plot
ggplot(nhis, aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A)) +
  geom_point(color = "lightblue") +
  labs(title = "Height vs Weight", x = "Height (inches)", y = "Weight (lbs)") +
  theme_minimal()

# Correlation coefficient
correlation <- cor(nhis$HEIGHTTC_A, nhis$WEIGHTLBTC_A, use = "complete.obs")
cat("Correlation between Height and Weight:", correlation, "\n")
