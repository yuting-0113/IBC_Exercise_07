#Question1:
#Write a function that returns the odd rows(1,3,5...) of any dataframe passed as an argument:
#Load the iris.csv into iris:
iris <- read.csv (file = "iris.csv")

#create a function named OddRows:
OddRows <- function(data){
  Odd <- data[seq(1, nrow(data), 2),]  # Begins with the first row to the last row and seperated by 2;
  return (Odd)
}

OddRows(iris)

#Question2: 

#1) Return the number of observation for a given species included in the data;

#Create a function named NumberOfSpecies:
NumberOfSpecies <- function(data,taxa){
  subsetOfSpecies <- data[data$Species == taxa,]   #create a subset for each species
  Number <- nrow(subsetOfSpecies)
  return(Number)
}

NumberOfSpecies(iris,"setosa")

#2) Return a dataframe for flowers with Sepal.Width greater than a value specified by the function user:

#Create a function named FlowersOfSepalWidth:
FlowersOfSepalWidth <- function(data,n){
  SepalWidth <- data[data$Sepal.Width > n,] 
  return(SepalWidth)
}

FlowersOfSepalWidth(iris,3.5)


#3) Write a data for a given species to a comma-delimited file with the given species name as the file name:

#Create a function named ChosenSpecies:
ChosenSpecies <- function(data, taxa){
  subsetOfSpecies <- data[data$Species == taxa,]
  write.csv(subsetOfSpecies, file = paste(taxa,".csv",sep=""), row.names = FALSE) 
}

ChosenSpecies(iris, "setosa")


