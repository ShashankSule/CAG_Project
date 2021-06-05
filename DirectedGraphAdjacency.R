OutDegs <- rep(0,length(R[1,]))

for(i in c(1:length(R[1,]))){
  
  Counter <- 0
  
  for (k in c(1:length(R[,1]))) {
     if(R[k,i] != 0){
      Counter <- Counter + k-1
    }
   
  }
  
  OutDegs[i] <- Counter
  
}

Mat <- matrix(0, ncol(R), ncol(R))

for (i in c(1:ncol(R))){
  
  for (k in c(1:ncol(R))){
    
    if(sum((R[,i]-R[,k])^2) == 2){
      
      if(nonzero(R[,i]-R[,k]) == -1){
        Mat[i,k] <- 1
      }    
    }
  }
  
}

