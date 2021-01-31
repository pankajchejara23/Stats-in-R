# Introduction to Vector

# Create  vector

# Using seq function 

# create a vector with number from 1 to 100
a <- seq(1,100)
print(a)


# create a vector with number from 1 to 100 with step size 2 (1,3,5,7,....,99)
b <- seq(1,100,2)
print(b)

# create a vector with rep function (five times 0)
c <- rep(0,5)
print(c)

# print number of elements in vector (lenght function)
l <- length(b)
print('Number of elements in vector b:')
print(l)


# Other data types vectors can also be created
d <- rep(TRUE,5)
print(d)


# Access elements from Vector
# Elements can be accessed by specifying their index number
# e.g., access third element from vector b
e <- b[3]
print(e)


# access elements starting from third to eleventh indices in vector b
f <- b[3:11]
print(f)


# Delete vector a [Just assign NULL]
a <- NULL
print(a)