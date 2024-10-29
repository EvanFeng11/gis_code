library(dplyr)
library(readr)
library(sf)
library(countrycode)
library(dplyr)
library(readr)
library(sf)
library(countrycode)
library(ggplot2)

gender_data <- read_csv("D:/CASApractice/GIScourse/homework/HWK4/gis_code/data/HDR23-24_Composite_indices_complete_time_series.csv")
world_data <- st_read("D:/CASApractice/GIScourse/homework/HWK4/gis_code/data/World_Countries_(Generalized).geojson")
print(head(gender_data))
print(head(world_data))



GII_19_10 <- gender_data %>%
+     mutate(data19_10 = gii_2019 - gii_2010)
GII_19_10 <-gender_data %>% mutate(data19_10 = gii_2019 - gii_2010)
World_gender_output <-world_data %>% left_join(GII_19_10, by = "country")
print(head(World_gender_output))



