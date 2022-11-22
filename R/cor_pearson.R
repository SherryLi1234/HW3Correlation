#'cor_pearson
#'
#'Calculate the Pearson correlation between x and y.
#'
#'@param x,y input value
#'
#'@return the Pearson correlation between x and y.
#'
#'@examples
#'x<-c(1,2,3,4,5,6,7,8,9)
#'y<-c(2,5,87,3,7,5,3,7,79)
#'cor_pearson(x,y)
#'
#'cor_pearson(mtcars$mpg,mtcars$cyl)
#'
#'@export
#'
cor_pearson <- function(x ,y){
  check<-cor_check(x,y)

  if(any(grepl("Pass", check))==FALSE){
    return(check)
  } else {
    n<-length(x)
    product<-x*y
    x_sum<-sum(x)
    y_sum<-sum(y)
    x2_sum<-sum(x^2)
    y2_sum<-sum(y^2)
    product_sum<-sum(product)
    r<-(n*product_sum-x_sum*y_sum)/(((n*x2_sum-x_sum^2)*(n*y2_sum-y_sum^2))^0.5)
    return(r)}
}

