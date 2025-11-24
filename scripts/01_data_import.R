### Install required R Packages

## Install tidyverse package
install.packages("tidyverse")

## Install readr package
install.packages("readr")

## Install dplyr package
install.packages("dplyr")

## Install summarytools package
install.packages("summarytools")

## Install ggplot2 package
install.packages("ggplot2")

## Install corrplot package
install.packages("corrplot") 

## Install psych package
install.packages("psych")

## Load required packages

## Load the readr library
library(readr)

### Load all required packages

## Load the tidyverse library
library (tidyverse)

## Load the dplyr library
library(dplyr)

## Load the summarytools library
library(summarytools)

## Load the ggplot2 library
library(ggplot2)

## Load the corrplot library
library(corrplot)

## Load the psych library
library(psych)

## Import NHIS Data 
NHIS_Data <- read_csv("~/Desktop/𝒔𝒄𝒉𝒐𝒐𝒍/pubh 422/data/NHIS _Data_2021.csv")

## Display structure of NHIS Data 
str(NHIS_Data)

## Display summary of NHIS Data 
summary(NHIS_Data)

## Display the first 6 rows of the NHIS Data  
head(NHIS_Data)

