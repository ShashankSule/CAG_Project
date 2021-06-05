nonzero <- function(K) {
  #This function returns the first nonzero entry of the vector K
  deg <- NA
  
 for(i in c(1:length(K))){
   if( K[i] != 0){
     deg <- K[i]
     break
   }
 }
 
   return(deg)

}