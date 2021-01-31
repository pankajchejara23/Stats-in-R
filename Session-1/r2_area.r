# take radius from user

a <- readline(prompt="Enter the radius:")
r <- as.double(a)

# compute area and store in a variable
area <- pi * r ^ 2

# print area
print(area)