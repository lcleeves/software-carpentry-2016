#some handy things to include in all

read.csv()

str(read.csv)

temp <- 67
#make a function
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
fahr_to_kelvin(67)
fahr_to_kelvin(temp)
kelvin_to_celsius <-function(temp){
  celsius <- temp - 273.15
  return(celsius)
}
kelvin_to_celsius(0)
fahr_to_celsius <- function(temp){
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}
fahr_to_celsius(75)
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
best_practice
asterisk <- "***"  # R interprets a variable with a single value as a vector
# with one element.
asterisk
fence <- function(original,wrapper){
  result <- c(wrapper, original, wrapper)
  return(result)
}




fence(best_practice, asterisk)
