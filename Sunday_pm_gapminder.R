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
install.packages("dplyr", dependencies=TRUE)

#installed but not loaded yet, so still need to load
library("dplyr")
