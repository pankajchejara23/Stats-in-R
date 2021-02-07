x <- as.double(readline(prompt = "Enter x:"))
m <- as.double(readline(prompt = "Enter mean:"))
s <- as.double(readline(prompt = "Enter sigma:"))

# compute f(x)
first_part = 1 / (s * sqrt(2 * pi)) 
power_part = - (x - m) ^ 2 / 2 * s ^ 2

f_x = first_part * exp(power_part)

print('f(x) is')
print(f_x)