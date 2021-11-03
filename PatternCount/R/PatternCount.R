#This program counts the number of occurrences of a specific pattern in a given string 
#For example, we want to count how many times a certain DNA pattern appears in a given DNA sequence (overlapping occurrences also included)

PatternCount <- function(Text, Pattern){
  Text <- strsplit(Text, split=NULL)[[1]]
  Pattern <- strsplit(Pattern, split=NULL)[[1]]
  count <- 0
  for(i in 1:(length(Text)-length(Pattern)+1)){
    if(sum(Text[i:(i+length(Pattern)-1)] == Pattern) == length(Pattern)){
       count <- count+1
      }
    }
  return(count)
}
