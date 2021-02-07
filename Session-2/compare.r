a <- as.double(readline(prompt = "Enter a:"))
b <- as.double(readline(prompt = "Enter b:"))

if ( a < b) { 
  print(' b is bigger number ')
} else {
  print('a is bigger number')
}

# Or you case use ifelse(a < b, 'b is bigger', 'a is bigger')