## @cassidoo's question
## 02/11/2020
##
##
## You have a character who jumps forward n number of units at a time,
## and an array representing the road in front of them (where 0 is a
## flat piece of road, and 1 is an obstacle).
## Return true or false if your character can jump to the end without
## hitting an obstacle in front of them


characterJump <- function(jump_n, road_arr){
  
  road_idx = seq(1, length(road_arr), jump_n) ## get the jump array indexes
  
  return(sum(road_arr[road_idx]) == 0) ## if sum of the road values at indexes are zero, no obstacles hit
  
}



## test 1
## characterJump(3, c(0,1,0,0,0,1,0))
## returns TRUE


## test 2
## characterJump(4, c(0,1,1,0,1,0,0,0,0))
## returns FALSE