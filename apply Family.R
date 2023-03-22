https://ugoproto.github.io/ugo_r_doc/intermediate_r_the_apply_family/
https://ugoproto.github.io/ugo_r_doc/intermediate_r_the_apply_family/

X <- matrix(rnorm(30), nrow = 4, ncol = 4)
apply(X, 2, sum)
FUN = function(x) { c(m = mean(x), s = sd(x)) }

apply(X, 2, max)


apply(X, 2, range)
apply(X, 2, abs)

apply(X, 2, round, 2)
X
apply(X, 2, max)
apply(X, 2, max)
apply(X, 2, function(x) x + 10)



select_first <- function(x) {
    return(x[1])
}
apply(X, 2, select_first)







# Custom function with two arguments
select_el <- function(x, i) { 
  x[i] 
}
apply(X, 2, select_el, i = 2)

#Strings

Y <- matrix(c('a', 'b', 'c', 'd'), nrow = 2, ncol = 2)
Y


apply(Y, 2, toupper)


#Several steps
# Dataset
dataPoints <- matrix(4:15, nrow = 4, ncol = 3)
dataPoints


# Find means (center) per column with `apply()`
dataPoints_means <- apply(dataPoints, 2, mean)
dataPoints_means



# Find standard deviation (dispersion) with `apply()`
dataPoints_sdev <- apply(dataPoints, 2, sd)
dataPoints_sdev


# Center the points; shift all the points with respect to their center
dataPoints_Trans1 <- sweep(dataPoints, 2, dataPoints_means,"-")
dataPoints_Trans1



# Normalize
dataPoints_Trans2 <- sweep(dataPoints_Trans1, 2, dataPoints_sdev, "/")
dataPoints_Trans2

# https://ugoproto.github.io/ugo_r_doc/intermediate_r/


# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c('Manhattan', 'Bronx', 'Brooklyn', 'Queens', 'Staten Island'), 
            capital = FALSE)

# Loop version 1
for (item in nyc) {
    print(item)
}



# Loop version 2
for (i in 1:length(nyc)) {
    print(nyc[[i]])
}



# The tic-tac-toe matrix has already been defined for you
ttt <- matrix(c('O', NA, 'X', NA, 'O', NA, 'X', 'O', 'X'), nrow = 3, ncol = 3)

# define the double for loop
for (i in 1:nrow(ttt)) {
    for (j in 1:ncol(ttt)) {
    print(paste('On row', i,'and column', j,'the board contains ', ttt[i,j]))
    }
}



# The linkedin vector
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (i in 1:length(linkedin)) {
    if (linkedin[i] > 10) {
        print('You\'re popular!')
    } else {
        print('Be more visible!')
    }
    print(linkedin[i])
}


# The linkedin vector
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print('You\'re popular!')
  } else {
    print('Be more visible!')
  }
    # Add code to conditionally break iteration
  if (li > 16) {
    print('This is ridiculous, I\'m outta here!')
    break
  }
  # Add code to conditionally skip iteration
  if (li < 5) {
    print('This is too embarrassing!')
    next
    }
  print(li)
}



# Pre-defined variables
rquote <- 'R\'s internals are irrefutably intriguing'

chars <- strsplit(rquote, split = '')[[1]]
rcount <- 0

# Your solution here
for (i in 1:length(chars)) {
    if (chars[i] == 'u') {
    break
    }
    if (chars[i] == 'r' | chars[i] == 'R') {
        rcount <- rcount + 1
    }
}

# Print the resulting rcount variable to the console
print(rcount)


# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
print(avg_li)
print(avg_fb)





# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean((linkedin + facebook), trim = 0.2)

# Inspect both new variables
avg_sum


# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
print(mean(linkedin))


# Advanced average of facebook
print(mean(facebook, na.rm = TRUE))



# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean((abs(linkedin - facebook)), na.rm = TRUE)

# Create a function pow_two()
pow_two <- function(arg1) {
    arg1^2
}

# Use the function 
pow_two(12)



# Create a function sum_abs()
sum_abs <- function(arg2,arg3) {
    abs(arg2) + abs(arg3)
}

# Use the function
sum_abs(-2,3)



# Define the function hello()
hello <- function() {
    print('Hi there!')
    return(TRUE)
}

# Call the function hello()
hello()


# Define the function my_filter()
my_filter <- function(arg1) {
    if (arg1 > 0) {
        return(arg1)
    } else {
        return(NULL)
    }
}

# Call the function my_filter() twice
my_filter(5)

my_filter(-5)



# Extend the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info) {
    print(paste(x, 'to the power two equals', y))
  }
  return(y)
}

#pow_two(2)
pow_two(2, FALSE)


# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Define the interpret function
interpret <- function(arg) {
    if (arg > 15) {
        print('You\'re popular!')
        return(arg)
    } else {
        print('Try to be more visible!')
        return(0)
    }
}

interpret(linkedin[1])


interpret(facebook[2])



# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views){
  if (num_views > 15) {
    print('You\'re popular!')
    return(num_views)
  } else {
    print('Try to be more visible!')
    return(0)
  }
}

# Define the interpret_all() function
interpret_all <- function(data, logi = TRUE){
  yy <- 0
  for (i in data) {
    yy <- yy + interpret(i)
  }
  if (logi) {
    return(yy)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)

interpret_all(facebook)


# The mtcars vectors have already been prepared for you
wt <- mtcars$wt
hp <- mtcars$hp

# Request the currently attached packages
search()


# Try the qplot() function with wt and hp
plot(wt,hp)




# Load the ggplot2 package
library('ggplot2')
# or
require('ggplot2')

# Retry the qplot() function
qplot(wt,hp)








# The vector pioneers
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

# Split names from birth year: split_math
split_math <- strsplit(pioneers, ':')

# Convert to lowercase strings: split_low
split_low <- lapply(split_math,tolower)

# Take a look at the structure of split_low
str(split_low)








# Code from previous exercise
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
    return(x[1])
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)
print(names)












# Write function select_second()
select_second <- function(x) {
    return(x[2])
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)
print(years)










# Definition of split_low
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')
split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

#select_first <- function(x) {
#  x[1]
#}

names <- lapply(split_low, function(x) { x[1] })

#select_second <- function(x) {
#  x[2]
#}

years <- lapply(split_low, function(x) { x[2] })















# Definition of split_low
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

# Replace the select_*() functions by a single function: select_el
select_el <- function(x, i) { 
  x[i] 
}

#select_second <- function(x) { 
#  x[2] 
#}

# Call the select_el() function twice on split_low: names and years
names <- lapply(split_low, select_el, i=1)
years <- lapply(split_low, select_el, 2)












temp1 <- c(3, 7, 9, 6, -1)
temp2 <- c(6, 9, 12, 13, 5)
temp3 <- c(4, 8, 3, -1, -3)
temp4 <- c(1, 4, 7, 2, -2)
temp5 <- c(5, 7, 9, 4, 2)
temp6 <- c(-3, 5, 8, 9, 4)
temp7 <- c(3, 6, 9, 4, 1)

temp <- list(temp1, temp2, temp3, temp4, temp5, temp6, temp7)

# Use lapply() to find each day's minimum temperature
lapply(temp, min)







# Use sapply() to find each day's minimum temperature
sapply(temp, min)








# Use lapply() to find each day's maximum temperature
lapply(temp, max)





# Use sapply() to find each day's maximum temperature
sapply(temp, max)




# temp is already defined in the workspace

# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg <- function(x) {
    return((min(x) + max(x))/2)
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)






# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)









# temp is already available in the workspace

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
    c(min(x), max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)







# The vector pioneers
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

# Split names from birth year: split_math
split_math <- strsplit(pioneers, ':')

# Convert to lowercase strings: split_low
split_low <- lapply(split_math,tolower)

# Take a look at the structure of split_low
str(split_low)





# Code from previous exercise
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
    return(x[1])
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)
print(names)




# Write function select_second()
select_second <- function(x) {
    return(x[2])
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)
print(years)




# Definition of split_low
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')
split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

#select_first <- function(x) {
#  x[1]
#}

names <- lapply(split_low, function(x) { x[1] })

#select_second <- function(x) {
#  x[2]
#}

years <- lapply(split_low, function(x) { x[2] })




# Definition of split_low
pioneers <- c('GAUSS:1777', 'BAYES:1702', 'PASCAL:1623', 'PEARSON:1857')

split <- strsplit(pioneers, split = ':')
split_low <- lapply(split, tolower)

# Replace the select_*() functions by a single function: select_el
select_el <- function(x, i) { 
  x[i] 
}

#select_second <- function(x) { 
#  x[2] 
#}

# Call the select_el() function twice on split_low: names and years
names <- lapply(split_low, select_el, i=1)
years <- lapply(split_low, select_el, 2)




temp1 <- c(3, 7, 9, 6, -1)
temp2 <- c(6, 9, 12, 13, 5)
temp3 <- c(4, 8, 3, -1, -3)
temp4 <- c(1, 4, 7, 2, -2)
temp5 <- c(5, 7, 9, 4, 2)
temp6 <- c(-3, 5, 8, 9, 4)
temp7 <- c(3, 6, 9, 4, 1)

temp <- list(temp1, temp2, temp3, temp4, temp5, temp6, temp7)

# Use lapply() to find each day's minimum temperature
lapply(temp, min)



# Use sapply() to find each day's minimum temperature
sapply(temp, min)



# Use lapply() to find each day's maximum temperature
lapply(temp, max)


# Use sapply() to find each day's maximum temperature
sapply(temp, max)




# temp is already defined in the workspace

# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg <- function(x) {
    return((min(x) + max(x))/2)
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)



# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)




# temp is already available in the workspace

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
    c(min(x), max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)






# Apply extremes() over temp with lapply()
lapply(temp, extremes)








# temp is already prepared for you in the workspace

# Create a function that returns all values below zero: below_zero
below_zero <- function(x) {
    x[x<0]
}

#below_zero(temp) alone won't work!!!

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Compare freezing_s to freezing_l using identical()
identical(freezing_s, freezing_l)









# temp is already available in the workspace

# Write a function that 'cat()s' out the average temperatures: print_info
print_info <- function(x) {
    cat('The average temperature is', mean(x), '\n')
}

# Apply print_info() over temp using lapply()
lapply(temp, print_info)







# Apply print_info() over temp using sapply()
sapply(temp, print_info)

# temp is already available in the workspace

# Code the basics() function
basics <- function(x) {
    c(minimum = min(x), average = mean(x), maximum = max(x))
}

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))









# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))



# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))





# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))








# Definition of get_info (don't change)
get_info <- function(x, y) { 
  if (mean(x) > y) {
    return('Not too cold!')
  } else {
    return('Pretty cold!')
  }
}

# Convert to vapply() expression
vapply(temp, get_info, y = 5, character(1))




# work_todos and fun_todos have already been defined
work_todos <- c('Schedule call with team', 
                'Fix error in Recommendation System', 
                'Respond to Marc from IT')

fun_todos <- c('Sleep', 'Make arrangements for summer trip')

# Create a list: todos
todos <- list(work_todos, fun_todos)
todos









# Sort the vectors inside todos alphabetically
lapply(todos, sort)


# The errors vector
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
sum(abs(round(errors)))








# Vectors
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)

# Fix the error
mean(abs(append(vec1, vec2)))





# The linkedin and facebook vectors
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(as.vector(linkedin))
fb_vec <- unlist(as.vector(facebook))

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)

# Sort social_vec
sort(social_vec, decreasing = TRUE)



# Fix me
round(sum(unlist(list(1.1, 3, 5))))



# Fix me
rep(seq(1, 7, by = 2), times = 7)

print(rep(seq(1, 7, by = 2), times = 7))




# Create first sequence: seq1
seq1 <- seq(1,500, by = 3)
print(seq1)



# Calculate total sum of the sequences
print(sum(append(seq1, seq2)))




# The emails vector has
emails <- c('john.doe@ivyleague.edu', 'education@world.gov', 'dalai.lama@peace.org', 
            'invalid.edu', 'quant@bigdatacollege.edu', 'cookie.monster@sesame.tv')

# Use grepl() to match for 'edu'
print(grepl(pattern = 'edu', x = emails))




# Use grep() to match for 'edu', save result to hits
hits <- grep(pattern = 'edu', x = emails)
hits




# Subset emails using hits
print(emails[hits])




# The emails vector
emails <- c('john.doe@ivyleague.edu', 'education@world.gov', 'dalai.lama@peace.org', 
            'invalid.edu', 'quant@bigdatacollege.edu', 'cookie.monster@sesame.tv')

# Use grep() to match for .edu addresses more robustly
print(grep(pattern = '@.*\\.edu$',x = emails))






# Use grepl() to match for .edu addresses more robustly, save result to hits
hits <- grepl(pattern = '@.*\\.edu$',x = emails)
hits



# Subset emails using hits
print(emails[hits])






# Use sub() to convert the email domains to datacamp.edu (attempt 2)
print(sub(pattern = '@.*\\.edu$', replacement = '@datacamp.edu', x = emails))



# Get the current date: today
today <- Sys.Date()
today


# See what today looks like under the hood
print(unclass(today))



# Get the current time: now
now <- Sys.time()
now




# See what now looks like under the hood
print(unclass(now))



library(date)

# Definition of character strings representing dates
str1 <- "May 23, 96"
str2 <- "2012-3-15"
str3 <- "30/January/2006"





library(date)

# Definition of character strings representing dates
str1 <- "May 23, 96"
str2 <- "2012-3-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.date(str1, order = "mdy")
date1



# Convert the strings to dates: date1, date2, date3
date1 <- as.date(str1, order = "mdy")
date1



date1 <- as.POSIXct(date1, format = "%d %m %y")
date1



date1 <- as.POSIXct(date1, format = "%d %m %y")
date1



date2 <- as.date(str2, order = "ymd")
date2




date3 <- as.date(str3, order = "dmy")
date3



# Convert dates to formatted strings
format(date1, "%A")



format(date2, "%d")


format(date3, "%b %Y")


# convert dates to character data
strDate2 <- as.character(date2)
strDate2




# Definition of character strings representing times
str1 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str2, format = "%Y-%m-%d %H:%M:%S")

# Convert times to formatted strings

# Definition of character strings representing dates
format(time1, "%M")


format(time1, "%I:%M %p")






# day1, day2, day3, day4 and day5
day1 <- as.Date("2016-11-21")
day2 <- as.Date("2016-11-16")
day3 <- as.Date("2016-11-27")
day4 <- as.Date("2016-11-14")
day5 <- as.Date("2016-12-02")

# Difference between last and first pizza day
print(day5 - day1)



# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza, lag = 1, differences = 1)
day_diff









# Average period between two consecutive pizza days
print(mean(day_diff))









# login and logout
login <- as.POSIXct(c("2016-11-18 10:18:04 UTC", "2016-11-23 09:14:18 UTC", "2016-11-23 12:21:51 UTC", "2016-11-23 12:37:24 UTC", "2016-11-25 21:37:55 UTC"))

logout <- as.POSIXct(c("2016-11-18 10:56:29 UTC", "2016-11-23 09:14:52 UTC", "2016-11-23 12:35:48 UTC", "2016-11-23 13:17:22 UTC", "2016-11-25 22:08:47 UTC"))

# Calculate the difference between login and logout: time_online
time_online <- logout - login

# Inspect the variable time_online
#class(time_online)
time_online





# Calculate the average time online
print(mean(time_online))













