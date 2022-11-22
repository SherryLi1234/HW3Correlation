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
#'cor_spearman(mtcars$mpg,mtcars$cyl)
#'
#'@export
#'
cor_spearman <- function(x,y){
  check<-cor_check(x,y)

  if(any(grepl("Pass", check))==FALSE){
    return(check)
  } else{
    xy<-data.frame(cbind(x,y))
    n<-length(x)
    xy$x_rank<-rank(x)
    xy$y_rank<-rank(y)
    x_rank_mean<-mean(xy$x_rank)
    y_rank_mean<-mean(xy$y_rank)
    Sxy<-(1/n)*sum((xy$x_rank-x_rank_mean)*(xy$y_rank-y_rank_mean))
    Sx<-(1/n)*sum((xy$x_rank-x_rank_mean)^2)
    Sy<-(1/n)*sum((xy$y_rank-y_rank_mean)^2)
    rho<-Sxy/(Sx*Sy)^0.5
    return(rho)
  }
}
