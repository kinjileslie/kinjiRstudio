# 
#
# 
# 5, 7, 3, 10, 1
x <- c(5,7,3,10,1)
x[4] <- c(17)
x[c(1,3)] <- c(4)

# 5, 7, 3, 10, 1, 7, 19 ,5, 2
y <- c(5,7,3,10,1,7,19,5,2)

#  <- c(2,3,4,6,6) and q <- c(7,2,4,3,2
p <- c(2,3,4,6,6) 
q <- c(7,2,4,3,2)
p+q
sum(p+q)

# x <- c(-50,-51,-52,-53,-54,-53,-52,-51,-50)
#rewritten as:
x <- c(-50:-54,-53:-50)

# 1, 2, 3, 7, 6, 8, 3,12, 0, 17
# sort in descending order
x <- c(1, 2, 3, 7, 6, 8, 3,12, 0, 17)
x <- sort(x,decreasing=TRUE)
mean(x)

z <- "PSTAT 10 HW 1 Question 3"
print.noquote(z)

#2.25, 2.50, 2.75, 3.0
seq(from=2.25,to=3,by=0.25)

rep(1:4, each=3, length=10)

#sum of the numbers 10 through 50 and 75
#through 100. The answer is 3505.
sum(10:50, 75:100)

#1 2 3 4 5 6 and a vector y with elements 10 20 30 40 50 60
x <- c(1,2,3,4,5,6)
y <- c(10,20,30,40,50,60)
x+y

z<- c(1.0,2.0,4.6,5.5)

A <- c("PSTAT 10")
B <- c("HOMEWORK 1, Q9")
paste(A,B)

###############

HEC <- c(32, 11, 10, 3, 53, 50, 25, 15, 3, 30, 5, 8)
rnames <- c("Black Hair", "Brown Hair", "Blond Hair")
cnames <- c("Brown Eyes", "Blue Eyes", "Hazel Eyes", "Green Eyes")
HairEyeColor <- matrix(HEC, nrow=3, ncol=4, byrow=TRUE,
                       dimnames=list(rnames, cnames) )


HairEyeColor1 <- HairEyeColor
rm(HairEyeColor)


######
data("mtcars")

#Miles/(US) gallon versus Rear axle ratio using the plot()function. On which axis is mpg plotted?
# ?mtcars
# mpg vs drat 

#review
boxplot(wt~cyl, data=mtcars,
        main=toupper("compare Vehicle Weight to number of cylinders"),
        xlab= "Number of Cylinders", ylab="Weight",col="pink")

#boxplot mpg, colors, heading, no scientific notation
boxplot(mtcars$mpg,
        col="pink")

boxplot(mpg~cyl, data=mtcars,
        main="MPG by CYL",
        xlab="cylinder",
        ylab="milespergal",
        col=c("pink","yellow","red"))




#####
#77, 44, 33 and another vector containing elements Hamilton, Bottas,
#Verstappen

x <- c(77,44,33)
y <- c("Hamilton","Bottas","Verstappen")
z <- list(x,y)

z[[1]] <- append(z[[1]],11)
z[[2]] <- append(z[[2]],"Perez")

substr(z[[1]], 1, 1)[1:3]

string <- "my string"
substr(string,1,2)


# Create a 4X4 matrix containing elements 16 through 31. Fill the matrix by row.
z <- matrix(seq(from=16,to=31),nrow=4,ncol=4,byrow=TRUE,
            dimnames=list(c("C1","C2","C3","C4"),c("R1","R2","R3","R4")))
#3rd element, 2nd row
z[2,3]

###demo
x <- seq(from=1, to=20)
z <- matrix(x,4)  #generate 4 rows with vector x
z <- matrix(x,4,3)  #4 row,3 col
colnames(z) <- c("x", "y", "z") ;
rownames(z) <- c("a", "b", "c", "d") ;

### demo 4/5
aaa <- c(2,3,4,6) # create vector
bbb <- c(5,6,10,12,45) # create vector
new.array <- array(c(aaa,bbb),dim = c(3,3,2))
print(new.array)

#### Generate an array of two 3X4 matrices from a vector containing
# the elements 1 through 20. Fill by column.

x <- seq(from=1, to=20)
z <- array(x,dim=c(3,4,2))

#alternae way (from homework solutions):
arr1 <- array(1:20, dim = c(3,4,2),
              dimnames = list(c("Row1","Row2","Row3"),
                              c("Col1","Col2","Col3","Col4"),
                              c("Matrix 1","Matrix 2")))

z <- array(1:20, dim = c(3,4,2),
           dimnames = list(c("Row1", "Row2", "Row3"),
                           c("Col1", "Col2", "Col3","Col4"),
                           c("Matrix 1", "Matrix2")))

#sum columns from array (both matrices)
apply(z,2,sum)
#mean of matrices
# NOT rows/columns (1,2)
# so we use option "3"
apply(z,3,mean)



###############
# <55
# TOLB PLACEBO
#   8     5     deaths
#  98   115     survivors
#
#
#age >= 55
#  22    16
#  76    69

rnames=c("deaths","surv")
cnames=c("tolb","plcb")

d <- c(8,5,98,115,22,16,76,69)
e <- array(d,dim=c(2,2,2))

colnames(e) <- cnames
rownames(e) <- rnames

dimnames(e)[[1]] <- cnames
dimnames(e)[[2]] <- rnames
dimnames(e)[[3]] <- c("Age<55","Age>=55")


