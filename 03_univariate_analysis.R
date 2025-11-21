
# 03_univariate_analysis.R
library(tidyverse)

# Load clean dataset
nhis <- read_csv("data/nhis_clean.csv")

# LIST OF QUANTITATIVE VARIABLES

quant_vars <- c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A")

# 1. AGEP_A summary stats 
summary(nhis$AGEP_A)
cat("Mean:", mean(nhis$AGEP_A, na.rm=TRUE), "\n")
cat("Median:", median(nhis$AGEP_A, na.rm=TRUE), "\n")
cat("Standard deviation:", sd(nhis$AGEP_A, na.rm=TRUE), "\n")

# Base R histogram
hist(nhis$AGEP_A,
     main="Histogram of AGEP_A",
     xlab="Age",
     col="lightblue",
     border="black")

# ggplot2 histogram
ggplot(nhis, aes(x=AGEP_A)) +
  geom_histogram(fill="skyblue", color="black", bins=30) +
  labs(title="GGPlot Histogram of AGEP_A", x="Age", y="Frequency") +
  theme_minimal()

# Base R boxplot
boxplot(nhis$AGEP_A,
        main="Boxplot of AGEP_A",
        ylab="Age",
        col="lightgreen")

# ggplot2 boxplot
ggplot(nhis, aes(y=AGEP_A)) +
  geom_boxplot(fill="lightgreen") +
  labs(title="GGPlot Boxplot of AGEP_A", y="Age") +
  theme_minimal()

# 2. WEIGHTLBTC_A
cat("\n=========================\nWEIGHTLBTC_A\n=========================\n")

# Summary statistics
summary(nhis$WEIGHTLBTC_A)
cat("Mean:", mean(nhis$WEIGHTLBTC_A, na.rm=TRUE), "\n")
cat("Median:", median(nhis$WEIGHTLBTC_A, na.rm=TRUE), "\n")
cat("Standard deviation:", sd(nhis$WEIGHTLBTC_A, na.rm=TRUE), "\n")

# Base R histogram
hist(nhis$WEIGHTLBTC_A,
     main="Histogram of WEIGHTLBTC_A",
     xlab="Weight (lbs)",
     col="lightblue",
     border="black")

# ggplot2 histogram
ggplot(nhis, aes(x=WEIGHTLBTC_A)) +
  geom_histogram(fill="skyblue", color="black", bins=30) +
  labs(title="GGPlot Histogram of WEIGHTLBTC_A", x="Weight (lbs)", y="Frequency") +
  theme_minimal()

# Base R boxplot
boxplot(nhis$WEIGHTLBTC_A,
        main="Boxplot of WEIGHTLBTC_A",
        ylab="Weight (lbs)",
        col="lightgreen")

# ggplot2 boxplot
ggplot(nhis, aes(y=WEIGHTLBTC_A)) +
  geom_boxplot(fill="lightgreen") +
  labs(title="GGPlot Boxplot of WEIGHTLBTC_A", y="Weight (lbs)") +
  theme_minimal()

# 3.  HEIGHTTC_A
cat("\n=========================\nHEIGHTTC_A\n=========================\n")

# Summary statistics
summary(nhis$HEIGHTTC_A)
cat("Mean:", mean(nhis$HEIGHTTC_A, na.rm=TRUE), "\n")
cat("Median:", median(nhis$HEIGHTTC_A, na.rm=TRUE), "\n")
cat("Standard deviation:", sd(nhis$HEIGHTTC_A, na.rm=TRUE), "\n")

# Base R histogram
hist(nhis$HEIGHTTC_A,
     main="Histogram of HEIGHTTC_A",
     xlab="Height (inches)",
     col="lightblue",
     border="black")

# ggplot2 histogram
ggplot(nhis, aes(x=HEIGHTTC_A)) +
  geom_histogram(fill="skyblue", color="black", bins=30) +
  labs(title="GGPlot Histogram of HEIGHTTC_A", x="Height (inches)", y="Frequency") +
  theme_minimal()

# Base R boxplot
boxplot(nhis$HEIGHTTC_A,
        main="Boxplot of HEIGHTTC_A",
        ylab="Height (inches)",
        col="lightgreen")

# ggplot2 boxplot
ggplot(nhis, aes(y=HEIGHTTC_A)) +
  geom_boxplot(fill="lightgreen") +
  labs(title="GGPlot Boxplot of HEIGHTTC_A", y="Height (inches)") +
  theme_minimal()

# ==========================
# QUALITATIVE VARIABLES
# ==========================

library(tidyverse)

# Load cleaned dataset
nhis <- read_csv("data/nhis_clean.csv")


# 1. SEX_A
cat("\n=========================\nSEX_A\n=========================\n")

# Frequency table
table(nhis$SEX_A)

# Base R bar plot
barplot(table(nhis$SEX_A),
        main="Barplot of SEX_A",
        ylab="Count",
        col="lightblue")

# ggplot2 bar plot
ggplot(nhis, aes(x=SEX_A)) +
  geom_bar(fill="skyblue") +
  labs(title="GGPlot Barplot of SEX_A", x="SEX_A", y="Count") +
  theme_minimal()



# 2. HISPALLP_A

cat("\n=========================\nHISPALLP_A\n=========================\n")

# Frequency table
table(nhis$HISPALLP_A)

# Base R bar plot
barplot(table(nhis$HISPALLP_A),
        main="Barplot of HISPALLP_A",
        ylab="Count",
        col="lightblue")

# ggplot2 bar plot
ggplot(nhis, aes(x=HISPALLP_A)) +
  geom_bar(fill="skyblue") +
  labs(title="GGPlot Barplot of HISPALLP_A", x="HISPALLP_A", y="Count") +
  theme_minimal()



# 3. EDUCP_A
cat("\n=========================\nEDUCP_A\n=========================\n")

# Frequency table
table(nhis$EDUCP_A)

# Base R bar plot
barplot(table(nhis$EDUCP_A),
        main="Barplot of EDUCP_A",
        ylab="Count",
        col="lightblue")

# ggplot2 bar plot
ggplot(nhis, aes(x=EDUCP_A)) +
  geom_bar(fill="skyblue") +
  labs(title="GGPlot Barplot of EDUCP_A", x="EDUCP_A", y="Count") +
  theme_minimal()


# 4. PHSTAT_A

cat("\n=========================\nPHSTAT_A\n=========================\n")

# Frequency table
table(nhis$PHSTAT_A)

# Base R bar plot
barplot(table(nhis$PHSTAT_A),
        main="Barplot of PHSTAT_A",
        ylab="Count",
        col="lightblue")

# ggplot2 bar plot
ggplot(nhis, aes(x=PHSTAT_A)) +
  geom_bar(fill="skyblue") +
  labs(title="GGPlot Barplot of PHSTAT_A", x="PHSTAT_A", y="Count") +
  theme_minimal()


# 5. LSATIS4R_A
cat("\n=========================\nLSATIS4R_A\n=========================\n")

# Frequency table
table(nhis$LSATIS4R_A)

# Base R bar plot
barplot(table(nhis$LSATIS4R_A),
        main="Barplot of LSATIS4R_A",
        ylab="Count",
        col="lightblue")

# ggplot2 bar plot
ggplot(nhis, aes(x=LSATIS4R_A)) +
  geom_bar(fill="skyblue") +
  labs(title="GGPlot Barplot of LSATIS4R_A", x="LSATIS4R_A", y="Count") +
  theme_minimal()