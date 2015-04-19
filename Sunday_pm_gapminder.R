# This is a script to explore the gapminder data set in R
# Michelle Green
# mlgreen@uta.edu
# 4.19.15

# read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep="\t", header=TRUE)

for (number in 1:10){
  print(number + 10)
}

for (number in 1:10){
  number.out <- number + 10
}

for (number in 1:10){
  print(gap.in[number,])
}

for (row.number in 1:10){
  for (col.number in 1:5){print(gap.in[row.number, col.number])}
}

#make a function
add.me <- function(x,y){
  x + y
}

add.me(3,4)

#installing packages
# (now that package is installed, change script line to comment so that it doesn't install again) 
#install.packages("dplyr", dependencies=TRUE)

#installed but not loaded yet, so still need to load
library("dplyr")

#using pipe to ask it to filter for pops over 15 mil and then select only the country, year
# and pop to display
#full code gives you the values for the years in which the pop was the lowest 
#(yet still above 15 mil)
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

#calculate the mean population per continent per year for years prior to 1990
gap.in %>%
  filter(year<1990) %>%
  select(continent,pop, year) %>%
  group_by(continent, year) %>%
  summarize(mean(pop), trim=0, na.rm=FALSE) %>%
  as.data.frame()

gap.in %>%
  filter(year<1990) %>%
  select(continent,pop, year) %>%
  group_by(continent, year) %>%
  summarize(mean(pop), trim=0, na.rm=FALSE) -> data.out
