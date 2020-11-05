# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Set working directory
setwd("D:/R-4.0.2/ESE5023_Assignments")

# Load rainfall data
#1.1
rainfall_data    <- read.csv(file = "rainfall.csv", header = T)
rainfall_data_tbl <- as_tibble(rainfall_data)
#boxplot
boxplot(rainfall~cloud.seeding,data = rainfall_data_tbl)
#���Ʋ��ֵ����������ֵҪ��һЩ
#1.2
#one-way anova
anova_one_way <- aov(rainfall ~ cloud.seeding, data = rainfall_data_tbl)
summary(anova_one_way)
#p-value is 0.0511,������Ϊ��0.05������ˮƽ�������Բ��죬
#�������ˮƽΪ0.1������Ϊ�в���