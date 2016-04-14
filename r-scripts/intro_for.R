setwd("C:/Users/lcleeves/Desktop/software-carpentry-2016/data-files/r-lesson/data")

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}
getwd()

analyze("inflammation-01.csv")
list.files()
best_practice <- c("Let", "the", "computer", "do", "the", "work")
print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}
print_words(best_practice)
print_words <- function(sentence){
  for(word in sentence){
    print(word)
  }
}
print_words(best_practice)
print_words(best_practice[-6])
for(word in best_practice){
  print(word)
}

#r remembers word afterwards and returns the last thing that was asigned to it    
word

#definition of a for loop .. 
#for(variable in collection){
#do things with that variable
#}

len <- 0
vowels <- c("a","e","i","o","u")
for(v in vowels){
  print(v)
  print(len)
  len <- len + 1
  
}
letter <- "z"
for(letter in c("a", "b","c")){
  print(letter)
}
seq(3)
print_N <- function(number) {
  #list_o_num <- c(seq(number))
  for(ea in seq(number)){
    print (ea)
  }
}  
print_N(3)
print_N(7)


expo <- function(base, exponent){
  tot <- 1
  for(i in 1:exponent){
    tot<-tot*base
  }
  return(tot)
}
expo(2, 2)


#loop through file analysis
list.files()
Sys.glob("*.csv")
Sys.glob("i*.csv")
list.files(pattern="inflammation")
filenames <- Sys.glob("i*.csv")
for(file in filenames){
  print(file)
  analyze(file)
}
pdf("inflamation-01.pdf")
analyze("inflammation-01.csv")
#so pdf is still open here. rad bc you can add stuff on top.
#but not done writing it until:
dev.off()


num <- 0

if(num>100){
  print("greater")
}else{
  print("not greater")
}
print("done")
#dont need else:
num <- 25
if(num>25){
  print("num is greater than 25")
}
#tests!!
sign <- function(num){
  if(num>0) {
    return(1)
  }else if (num == 0){
    return(0)
  }else{
    return(-1)
  }
  
}
if(1>0&-1>0){
  print("both parts are true")
}else{
  print("at least one part is not true")
}

if(1>0|-1>0){
  print("one or both parts are true")
}else{
  print("##not sure if this is the write comment?at least one part is not true")
}