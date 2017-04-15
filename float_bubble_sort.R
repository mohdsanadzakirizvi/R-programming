#Bubble Sort 
bubble_sort <- function(ar, len){
	for(i in 1:len)
		for(j in i:(len)){
			if(ar[j] < ar[i]){
				temp <- ar[j]
				ar[j] <- ar[i]
				ar[i] <- temp	
			}
		}
	return (ar)
}
#Main function
main <- function(){
	print ('enter the size of vector')
	len <- as.integer(readLines('stdin',1))
	print ('enter float numbers for vector')
	#cast input as type: numeric 
	ar <- as.numeric(readLines('stdin',len))
	ar <- bubble_sort(ar,len)
	print('The sorted vector is:')
	print(ar)
}
#call main to begin execution
main()
