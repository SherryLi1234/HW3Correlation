#'cor_check
#'
#'Check if there is NA, empty cells, non-numeric, un-paired values in each variable. And make sure there are at least 3 observation.
#'
#'@param x,y input value
#'
#'@return the results of test
#'
#'@examples
#'x<-c(1,2,3,"4","",6)
#'y<-c(5,3,7,1)
#'cor_check(x,ycor)
#'
#'@export
#'
cor_check <- function(x,y){
  #check for NAs and blank cells
  x[x == ""] <- NA
  y[y == ""] <- NA
  x_na<-is.na(x)
  y_na<-is.na(y)
  #check for non-numeric values
  x_numeric<-is.numeric(x)
  y_numeric<-is.numeric(y)
  #check for pairs
  pair<-all.equal(length(x), length(y))

  if(any(x_na==TRUE)&all(y_na==FALSE)){
    na_r<-"Error: Blank cells or NAs in X variable."
  } else if(any(y_na==TRUE)&all(x_na==FALSE)){
    na_r<-"Error: Blank cells or NAs in Y variable."
  } else if(any(x_na==TRUE)&any(y_na==TRUE)){
    na_r<-"Error: Blank cells or NAs in X and Y variable."
  } else {
    na_r<-"Pass: no NA and blank cells."
  }

  if((x_numeric==TRUE)&(y_numeric==FALSE)){
    numeric_r<-"Error: Non-numeric value in Y varibale."
  } else if((y_numeric==TRUE)&(x_numeric==FALSE)){
    numeric_r<-"Error: Non-numeric value in X varibale."
  } else if((x_numeric==FALSE)&(y_numeric==FALSE)){
    numeric_r<-"Error: Non-numeric value in X and Y variable."
  } else {
    numeric_r<-"Pass: no non-numeric values."
  }

  if(pair==TRUE){
    pair_r <- "Pass: The X and Y variable match each other."
  } else {
    pair_r <- "Error: The lengths of X and Y variable does not match."
  }

  if(length(x)>=3 & length(y)>=3){
    length_r<-"Pass: Enough observation"
  } else {
    length_r<- "Error: Not enough finite observations"
  }

  return(list(na_r,numeric_r,pair_r,length_r))
}
