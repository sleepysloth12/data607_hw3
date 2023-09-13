#Importing the majors data

library(readr)

majors=read.csv(url("https://raw.githubusercontent.com/fivethirtyeight/data/master/college-majors/majors-list.csv"))

names(majors)

#loading, tidyverse, dplyr
library(dplyr)
library(tidyverse)

#filtering out only DATA or STATISTICS using regex

infosci_maj = majors %>% 
  filter(grepl("(?=.*DATA)|(?=.*STATISTICS)", Major, perl = TRUE))
View(infosci_maj)

#2
#input data

shopping_list = c("bell pepper", "bilberry", "blackberry", "blood orange", "blueberry", "cantaloupe", "chili pepper", "cloudberry", "elderberry", "lime", "lychee", "mulberry", "olive", "salal berry")

# Create the final output
shopping_vector = paste("c(", paste( shopping_list,  sep = "", collapse = ", "), ")", sep = "")

print(shopping_vector)


#4



#sample text containing city names to match
cities = "NewYork Chicago Alameda LosAngeles Mississippi Houston Miami Philadelphia Elma Atlanta Dallas Tallahassee Seattle Eureka Cincinnati Sacramento Denver NewPaltz Buffalo Aurora "

#split the cities string into a vector of city names

city_vector = str_split(cities, " ")[[1]]

#remove empty strings
city_vector = city_vector[city_vector != ""]  

# filter cities that start and end with the same character

abba = city_vector[str_detect(tolower(city_vector), "^(.).*\\1$")]
print(paste("Cities that start and end with the same character:", paste(abba, collapse = ", ")))

# filter cities that contain one repeting pair
aa = city_vector[str_detect(city_vector, "(.).*\\1")]
print(paste("Cities that contain a repeated pair of letters:", paste(aa, collapse = ", ")))

# Filter cities that contain one letter repeated 3 times
aaa = city_vector[str_detect(city_vector, "(.).*\\1.*\\1")]
print(paste("Cities that contain one letter repeated in at least three places:", paste(aaa, collapse = ", ")))
