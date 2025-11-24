### Install required R Packages

## Install tidyverse package
install.packages("tidyverse")

## Install ggplot2 package
install.packages("ggplot2")

## Install corrplot package
install.packages("corrplot") 

## Install psych package
install.packages("psych")

## Install tidyr package
install.packages("tidyr")

## Load required packages


### Load all required packages

## Load the tidyverse library
library (tidyverse)

## Load the ggplot2 library
library(ggplot2)

## Load the corrplot library
library(corrplot)

## Load the psych library
library(psych)

## Load the tidyr library
library(tidyr)

## Import NHIS Data 
NHIS_Data <- read_csv("~/NHIS2021_Group2/data/NHIS_Data_2021.csv")

## Display structure of NHIS Data 
str(NHIS_Data)

## Display summary of NHIS Data 
summary(NHIS_Data)

## Display the first 6 rows of the NHIS Data  
head(NHIS_Data)

