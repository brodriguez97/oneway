library(ggplot2)
cars <- mpg[c("hwy","class", "year")]
#oneway takes a categorical variable and has a quantitative value
save(cars, file="cars.rda")
#.rda is the extension you'd use if you have a single object in a file 