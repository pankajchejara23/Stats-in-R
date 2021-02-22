# script for demonstrate the concept of population and sample
# load rio package
library(rio)

# vector with three sample sizes
sizes <<- c(50,100,1000)

# number of samples
samples <<- 1:10

# base file name
base_name <<- 'sample_size_'

# loading population datafile
population <<-  import('population.csv')

# computing population parameter
p_mean <-  mean(population$salary)
p_var <-  var(population$salary)

par(mfrow=c(3,1))
print('-------------Population parameter ------------')
print(paste('Population mean    :',p_mean))
print(paste('Population variance:',p_var))
print('----------------------------------------------')

# Running a loop for every sample file in the directory session 3
for( size in sizes) {
  print(paste('-------Sample size:',size,' ----------'))
  
  # Create an empty vector to store sample mean
  all_sample_mean <- c()
  
  for (sample in samples) {
    print(paste('   sample:',sample))
    
    # forming the sample file name
    file_name <-  paste(base_name,size,'_',sample,'.csv',sep='')
    print(file_name)
    
    # loading the sample file
    sample_file <-  import(file_name)
    
    # computing the sample characteristic
    sample_mean <- mean(sample_file$salary)
    sample_var <- var(sample_file$salary)
    
    # printing the mean and variance of the sample
    print(paste('     mean    :',sample_mean))
    print(paste('     variance:',sample_var))
    
    # adding the sample mean to the vector for later processing
    all_sample_mean <- append(all_sample_mean,sample_mean)
    
  }
  
  title <- paste('Means of all sample of size ',size)
  
  plot(all_sample_mean,main=title,xlab='sample number',ylab='salary mean',col='red',pch=19)
  abline(h=p_mean, col='blue')
  # compute the mean of vector containing all means of sample of same size
  print(paste('  ============= Mean of sample means    :',mean(all_sample_mean)))
  print(paste('  ============= Variance of sample means:',var(all_sample_mean)))
  print('-----------------------------------------------')
  print('')
}


