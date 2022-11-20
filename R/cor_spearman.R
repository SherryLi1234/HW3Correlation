#'cor_spearman
#'
#'Calculate the Spearman correlation between x and y.
#'
#'@param x,y input value
#'
#'@return the Spearman correlation between x and y.
#'
#'@examples
#'x<-c(1,2,3,4,5,6,7,8,9)
#'y<-c(2,5,87,3,7,5,3,7,79)
#'cor_spearman(x,y)
#'
#'@export
#'
cor_spearman <- function(x,y){
  check<-cor_check(x,y)
  error <- "Error"

  if(any(grepl("pass", check))==TRUE){
    return(check)
  } else{
    n<-length(x)
    x_rank<-rank(x)
    y_rank<-rank(y)
    d<-x_rank-y_rank
    rho<-1-(6*sum(d^2))/(n*(n^2-1))
    return(rho)
  }
}
