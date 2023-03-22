# The data.table package
library(data.table)

# Create my_first_data_table
my_first_data_table <- data.table(x = c('a', 'b', 'c', 'd', 'e'), y = c(1, 2, 3, 4, 5))

# Create a data.table using recycling
DT <- data.table(a = 1:2, b = c('A', 'B', 'C', 'D'))

# Print the third row to the console
DT[3,]



# The data.table package
library(data.table)

# Create my_first_data_table
my_first_data_table <- data.table(x = c('a', 'b', 'c', 'd', 'e'), y = c(1, 2, 3, 4, 5))

# Create a data.table using recycling
DT <- data.table(a = 1:2, b = c('A', 'B', 'C', 'D'))

# Print the third row to the console
DT[3,]











# Print the penultimate row of DT using .N
DT[.N - 1]





dim(DT)



A <- c(1, 2, 3, 4, 5)
B <- c('a', 'b', 'c', 'd', 'e')
C <- c(6, 7, 8, 9, 10)
DT <- data.table(A, B, C)

# Subset rows 1 and 3, and columns B and C
DT[c(1,3) ,.(B, C)]




# Assign to ans the correct value
ans <- data.table(DT[, .(B, val = A * C)])

# Fill in the blanks such that ans2 equals target
#target <- data.table(B = c('a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'd', 'e'),  val = as.integer(c(6:10, 1:5)))
ans2 <- data.table(DT[, .(B, val = as.integer(c(6:10, 1:5)))])



# Assign to ans the correct value
ans <- data.table(DT[, .(B, val = A * C)])

# Fill in the blanks such that ans2 equals target
#target <- data.table(B = c('a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'd', 'e'),  val = as.integer(c(6:10, 1:5)))
ans2 <- data.table(DT[, .(B, val = as.integer(c(6:10, 1:5)))])










# iris and iris3 are already available in the workspace

# Convert iris to a data.table: DT
DT <- as.data.table(iris)

# For each Species, print the mean Sepal.Length
DT[, .(mean(Sepal.Length)), by = .(Species)]




# Print mean Sepal.Length, grouping by first letter of Species
DT[, .(mean(Sepal.Length)), by = .(substr(Species, 1,1))]





# data.table version of iris: DT
DT <- as.data.table(iris)

# Group the specimens by Sepal area (to the nearest 10 cm2) and count how many occur in each group.
DT[, .N, by = 10 * round(Sepal.Length * Sepal.Width / 10)]



# Now name the output columns `Area` and `Count`
DT[, .(Count = .N), by = .(Area = 10 * round(Sepal.Length * Sepal.Width / 10))]






# Create the data.table DT
set.seed(1L)
DT <- data.table(A = rep(letters[2:1], each = 4L), B = rep(1:4, each = 2L), C = sample(8))

# Create the new data.table, DT2
DT2 <- DT[, .(C = cumsum(C)), by=.(A,B)]

# Select from DT2 the last two values from C while you group by A
DT2[, .(C = tail(C,2)), by=A]



# Build DT
set.seed(1L)
DT <- data.table(A = rep(letters[2:1], each = 4L), B = rep(1:4, each = 2L), C = sample(8)) 
DT










# Use chaining
# Cumsum of C while grouping by A and B, and then select last two values of C while grouping by A
DT[, .(C = cumsum(C)), by = .(A,B)][, .(C = tail(C,2)), by = .(A)]






DT <- data.table(iris)

# Perform chained operations on DT
DT[, .(Sepal.Length = median(Sepal.Length), Sepal.Width = median(Sepal.Width), Petal.Length = median(Petal.Length), Petal.Width = median(Petal.Width)), by = .(Species)][order(Species, decreasing = TRUE)]

DT











x <- c(2, 1, 2, 1, 2, 2, 1)
y <- c(1, 3, 5, 7, 9, 11, 13)
z <- c(2, 4, 6, 8, 10, 12, 14)
DT <- data.table(x, y, z)

# Mean of columns
DT[, lapply(.SD, mean), by = .(x)] 


# Median of columns
DT[, lapply(.SD, median), by = .(x)]





grp <- c(6, 6, 8, 8, 8)
Q1 <- c(4, 3, 3, 5, 3)
Q2 <- c(1, 4, 1, 4, 4)
Q3 <- c(3, 1, 5, 5, 2)
H1 <- c(1, 2, 3, 2, 4)
H2 <- c(1, 4, 3, 4, 3)
DT <- data.table(grp, Q1, Q2, Q3, H1, H2)

# Calculate the sum of the Q columns
DT[, lapply(.SD, sum), .SDcols = 2:4]



# Calculate the sum of columns H1 and H2 
DT[, lapply(.SD, sum), .SDcols = 5:6]





# Select all but the first row of groups 1 and 2, returning only the grp column and the Q columns. 
DT[, .SD[-1], .SDcols = 2:4, by = .(grp)]


x <- c(2, 1, 2, 1, 2, 2, 1)
y <- c(1, 3, 5, 7, 9, 11, 13)
z <- c(2, 4, 6, 8, 10, 12, 14)
DT <- data.table(x, y, z)

# Sum of all columns and the number of rows
# For the first part, you need to combine the returned list from lapply, .SD and .SDcols and the integer vector of .N. You have to this because the result of the two together has to be a list again, with all values put together.
DT




x <- c(2, 1, 2, 1, 2, 2, 1)
y <- c(1, 3, 5, 7, 9, 11, 13)
z <- c(2, 4, 6, 8, 10, 12, 14)
DT <- data.table(x, y, z)

# Sum of all columns and the number of rows
# For the first part, you need to combine the returned list from lapply, .SD and .SDcols and the integer vector of .N. You have to this because the result of the two together has to be a list again, with all values put together.
DT




DT[,c(lapply(.SD, sum), .N), .SDcols = 1:3, by = x]





# Cumulative sum of column x and y while grouping by x and z > 8
DT[,lapply(.SD, cumsum), .SDcols = 1:2, by = .(by1 = x, by2 = z > 8)]




# Chaining
DT[,lapply(.SD, cumsum), .SDcols = 1:2, by = .(by1 = x, by2 = z > 8)][,lapply(.SD, max), .SDcols = 3:4, by = by1]





# Add column by reference: Total
DT[, ('Total') := sum(B), by = .(A)]


# Add 1 to column B
DT[c(2,4), ('B') := as.integer(1 + B)]




# Add a new column Total2
DT[2:4, ':='(Total2 = sum(B)), by = .(A)]





# Remove the Total column
DT[, Total := NULL]


# Select the third column using `[[`
DT[[3]]








# A data.table DT
DT <- data.table(A = c(1, 1, 1, 2, 2), B = 1:5)

# Update B, add C and D
DT[, `:=`(B = B + 1,  C = A + B, D = 2)]



# Delete my_cols
my_cols <- c('B', 'C')
DT[, (my_cols) := NULL]


# Delete column 2 by number
DT[, 2 := NULL]







A <- c(2, 2, 3, 5, 2, 5, 5, 4, 4, 1)
B <- c(2, 1, 4, 2, 4, 3, 4, 5, 2, 4)
C <- c(5, 2, 4, 1, 2, 2, 1, 2, 5, 2)
D <- c(3, 3, 3, 1, 5, 4, 4, 1, 4, 3)
DT <- data.table(A, B, C, D)

# Set the seed
set.seed(1)

# Check the DT
DT








# For loop with set
for (l in 2:4) set(DT, sample(10,3), l, NA)

# Change the column names to lowercase
setnames(DT,c('A','B','C','D'), c('a','b','c','d'))

# Print the resulting DT to the console
DT













# Define DT
DT <- data.table(a = letters[c(1, 1, 1, 2, 2)], b = 1)
DT



# Add a postfix '_2' to all column names
setnames(DT, c(1:2), paste0(c('a','b'), '_2'))
DT








# Change column name 'a_2' to 'A2'
setnames(DT, 'a_2', 'A2')
DT









# Reverse the order of the columns
setcolorder(DT, c('b_2','A2'))



# Convert iris to a data.table
iris <- data.table('Sepal.Length' = iris$Sepal.Length, 'Sepal.Width' = iris$Sepal.Width, 'Petal.Length' = iris$Petal.Length, 'Petal.Width' = iris$Petal.Width, 'Species' = iris$Species)
iris




# Species is 'virginica'
head(iris[Species == 'virginica'], 20)




# Species is either 'virginica' or 'versicolor'
head(iris[Species %in% c('virginica', 'versicolor')], 20)



# iris as a data.table
iris <- as.data.table(iris)
iris


# Remove the 'Sepal.' prefix
#gsub('([ab])', '\\1_\\1_', 'abc and ABC') = pattern, replacement, x
setnames(iris, c('Sepal.Length', 'Sepal.Width'), c('Length','Width')) 
#gsub('^Sepal\\.','', iris)

# Remove the two columns starting with 'Petal'
iris[, c('Petal.Length', 'Petal.Width') := NULL]






# Cleaned up iris data.table
iris2 <- data.frame(Length = iris$Sepal.Length, Width = iris$Sepal.Width, Species = iris$Species)
iris2 <- as.data.table(iris2)



# Area is greater than 20 square centimeters
iris2[ Width * Length > 20 ], 20


   Length Width    Species is_large
 1:    5.4   3.9     setosa    FALSE
 2:    5.8   4.0     setosa    FALSE
 3:    5.7   4.4     setosa     TRUE
 4:    5.4   3.9     setosa    FALSE
 5:    5.7   3.8     setosa    FALSE
 6:    5.2   4.1     setosa    FALSE
 7:    5.5   4.2     setosa    FALSE
 8:    7.0   3.2 versicolor    FALSE
 9:    6.4   3.2 versicolor    FALSE
10:    6.9   3.1 versicolor    FALSE
11:    6.3   3.3 versicolor    FALSE
12:    6.7   3.1 versicolor    FALSE
13:    6.7   3.0 versicolor    FALSE
14:    6.0   3.4 versicolor    FALSE
15:    6.7   3.1 versicolor    FALSE
16:    6.3   3.3  virginica    FALSE
17:    7.1   3.0  virginica    FALSE
18:    7.6   3.0  virginica    FALSE
19:    7.3   2.9  virginica    FALSE
20:    7.2   3.6  virginica     TRUE
...


