#'cor_kendallB
#'
#'Calculate the Kendall’s tau-b between x and y.
#'
#'@param x,y input value
#'
#'@return the Kendall’s tau-b between x and y.
#'
#'@import DescTools
#'
#'@examples
#'x<-c(1,2,3,4,5,6,7,8,9)
#'y<-c(2,5,87,3,7,5,3,7,79)
#'cor_kendallB(x,y)
#'
#'@export
#'
library(DescTools)

cor_kendallB <- function(x, y){
  check<-cor_check(x,y)
  error <- "Error"

  if(any(grepl("pass", check))==TRUE){
    return(check)
  } else {

    dname <- paste(deparse(substitute(x)), "and", deparse(substitute(y)))
    tab <- table(x, y)

    x <- ConDisPairs(tab)

    n <- sum(tab)
    n0 <- n*(n-1)/2
    ti <- rowSums(tab)
    uj <- colSums(tab)
    n1 <- sum(ti * (ti-1) / 2)
    n2 <- sum(uj * (uj-1) / 2)

    taub <- (x$C - x$D) / sqrt((n0-n1)*(n0-n2))

    return(taub)
  }
}
