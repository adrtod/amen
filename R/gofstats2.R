#' Goodness of fit statistics
#' 
#' Goodness of fit statistics evaluating degree
#' patterns
#' 
#' 
#' @usage gofstats2(Y)
#' @param Y a relational data matrix
#' @return a vector of gof statistics
#' @author François Caron
#' @examples
#' 
#' data(YX_nrm) 
#' 
#' gofstats2(YX_nrm$Y) 
#' 
#' 
#' @export gofstats2
gofstats2<-function(Y)
{
  
  degree<-rowSums(Y,na.rm=TRUE) 

  gof<-c(degree) 

  gof[is.na(gof)]<-0 

  #names(gof)<-c("degree")
  gof
}




