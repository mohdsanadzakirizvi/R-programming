getInput <- function(){
	#function to take input
	print("Enter a,b,c values")
	#Takes input as string from stdin. Reads 3 lines of input.
	inp_vector <- readLines("stdin",3)
	#parse the string to integer value
	inp_vector <- as.integer(inp_vector)
	#return input vector
	return(inp_vector)
}
quadRoots <- function(){
	#function to calculate roots of a quadratic equation
	coeff <- getInput()
	a <- coeff[1];b <- coeff[2];c <- coeff[3];
	roots <- c(0.0,0.0)
	names(roots) <- c("root1,root2")
	#Determinant
	D <- b*b - 4*a*c
	if(D>0){
		#CASE 1: Distinct and Real roots
		roots[1] <- (-b+sqrt(D))/(2*a);
		roots[2] <- (-b-sqrt(D))/(2*a);
	}
	else if(D == 0){
		#CASE 2: Equal Roots
		roots[1] <- roots[2] <- -b/(2*a)
	}
	else{
		#CASE3: Imaginary Roots
		realPart <- -b/(2*a)
		imagPart <- sqrt(-D)/(2*a)
		#create complex number using R's built-in method
		roots[1] <- complex(real=realPart,imaginary=imagPart)
		roots[2] <- complex(real=realPart,imaginary=-imagPart)
	}
	print("The solution of the equation is")
	print(roots,na.print="")
}
quadRoots()
