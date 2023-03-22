https://ugoproto.github.io/ugo_r_doc/io_snippets_cleaning/#the-datatable-package







# List the files in your working directory
dir()

# Import swimming_pools.csv: pools
# stringAsFactors = FALSE does not import strings as categorical variables
pools <- read.csv('D:/2023 Data/Rcode/swimming_pools.csv', stringsAsFactors = FALSE)






# Import swimming_pools.csv correctly: pools
pools <- read.csv('swimming_pools.csv', stringsAsFactor = FALSE, header = TRUE, sep = ',')

# Import swimming_pools.csv with factors: pools_factor
pools_factor <- read.csv('D:/2023 Data/Rcode/swimming_pools.csv', header = TRUE, sep = ',')





# Import hotdogs.txt: hotdogs
hotdogs <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE)

# Name the columns of hotdogs appropriately
names(hotdogs) <- c('type', 'calories', 'sodium')




# Load in the hotdogs data set: hotdogs
hotdogs <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, sep = '\t', col.names = c('type', 'calories', 'sodium'))

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]
# Select the observation with the most sodium: tom

tom <- hotdogs[which.max(hotdogs$sodium), ]





# Previous call to import hotdogs.txt
hotdogs <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, col.names = c('type', 'calories', 'sodium'))

# Print a vector representing the classes of the columns
sapply(hotdogs, class)

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, col.names = c('type', 'calories', 'sodium'), colClasses = c('factor', 'NULL', 'numeric'))


















library(utils)

# Create a path to the hotdogs.txt file
path <- file.path('hotdogs', 'D:/2023 Data/Rcode/hotdogs.txt')

# Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, header = TRUE, sep = "\t", col.names = c('type', 'calories', 'sodium'))
names(hotdogs) <- c("type", "calories", "sodium")




> hotdogs <- read.delim("D:/2023 Data/Rcode/hotdogs.txt", header=FALSE)
> names(hotdogs) <- c("type", "calories", "sodium")
> summary(hotdogs)

# https URL to the swimming_pools csv file.
url_csv <- 'https://s3.amazonaws.com/assets.datacamp.com/course/importing_data_into_r/swimming_pools.csv'

# Import the file using read.csv(): pools1
pools1 <- read.csv(url_csv)




install.packages('readr', dependencies = TRUE, repos='http://cran.rstudio.com/')
library(readr)





# Load in the hotdogs data set: hotdogs
hotdogs <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, sep = '\t', col.names = c('type', 'calories', 'sodium'))

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]
# Select the observation with the most sodium: tom

tom <- hotdogs[which.max(hotdogs$sodium), ]





# Previous call to import hotdogs.txt
hotdogs <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, col.names = c('type', 'calories', 'sodium'))

# Print a vector representing the classes of the columns
sapply(hotdogs, class)

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim('D:/2023 Data/Rcode/hotdogs.txt', header = FALSE, col.names = c('type', 'calories', 'sodium'), colClasses = c('factor', 'NULL', 'numeric'))


# Import potatoes.txt using read_delim(): potatoes
potatoes <- read_delim('D:/2023 Data/Rcode/potatoes.txt', delim = '\t')
potatoes <- read.table("D:/2023 Data/Rcode/potatos.txt", header=T, sep="\t")












# Column names
properties <- c('area', 'temp', 'size', 'storage', 'method', 'texture', 'flavor', 'moistness')

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv('potatoes.csv', col_names = properties)

# Create a copy of potatoes: potatoes2
potatoes2 <- potatoes

# Convert the method column of potatoes2 to a factor
potatoes2$method = factor(potatoes2$method)

# or

potatoes2$method = as.factor(potatoes2$method)













install.packages("readr")
install.packages("readr")
install.packages("tidyverse")

if(!require('readr')) {
  install.packages('readr')
  library('readr')
}





# Column names
properties <- c('area', 'temp', 'size', 'storage', 'method', 'texture', 'flavor', 'moistness')

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv('D:/2023 Data/Rcode/potatoes.csv', col_names = properties)

# Create a copy of potatoes: potatoes2
potatoes2 <- potatoes

# Convert the method column of potatoes2 to a factor
potatoes2$method = factor(potatoes2$method)

# or

potatoes2$method = as.factor(potatoes2$method)
# Column names
properties <- c('area', 'temp', 'size', 'storage', 'method', 'texture', 'flavor', 'moistness')

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv('D:/2023 Data/Rcode/potatoes.csv', col_names = properties)

# Create a copy of potatoes: potatoes2
potatoes2 <- potatoes





# Column names
properties <- c('area', 'temp', 'size', 'storage', 'method', 'texture', 'flavor', 'moistness')

# Import 5 observations from potatoes.txt: potatoes_fragment
# read_tsv or tab-separated values
potatoes_fragment <- read_tsv('D:/2023 Data/Rcode/potatoes.txt', col_names = properties, skip = 7, n_max = 5)

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv('D:/2023 Data/Rcode/potatoes.txt', col_types = 'cccccccc')





cols(
  weight = col_integer(),
  feed = col_character()
)



# Convert the method column of potatoes2 to a factor
potatoes2$method = factor(potatoes2$method)

# or

potatoes2$method = as.factor(potatoes2$method)









# Column names
properties <- c('area', 'temp', 'size', 'storage', 'method', 'texture', 'flavor', 'moistness')

# Import 5 observations from potatoes.txt: potatoes_fragment
# read_tsv or tab-separated values
potatoes_fragment <- read_tsv('D:/2023 Data/Rcode/potatoes.txt', col_names = properties, skip = 7, n_max = 5)

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv('D:/2023 Data/Rcode/potatoes.txt', col_types = 'cccccccc')





# Import without col_types
hotdogs <- read_tsv('D:/2023 Data/Rcode/hotdogs.txt', col_names = c('type', 'calories', 'sodium'))

# The collectors you will need to import the data
fac <- col_factor(levels = c('Beef', 'Meat', 'Poultry'))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
# Change col_types to the correct vector of collectors; coerce the vector into a list
hotdogs_factor <- read_tsv('D:/2023 Data/Rcode/hotdogs.txt', col_names = c('type', 'calories', 'sodium'), col_types = list(fac, int, int))





salaries <- read_tsv('D:/2023 Data/Rcode/Salaries.txt', col_names = FALSE, col_types = cols(
  X2 = col_skip(),
  X3 = col_skip(), 
  X4 = col_skip()
))





# vector of character strings. 
# Import as a character vector, one item per line: tweets
tweets <- read_lines('D:/2023 Data/Rcode/tweets.txt')
tweets

# returns a length 1 vector of the entire file, with line breaks represented as \n
# Import as a length 1 vector: tweets_all
tweets_all <- read_file('D:/2023 Data/Rcode/tweets.txt')
tweets_all



# Save cwts as chickwts.csv
write_csv(cwts, "D:/2023 Data/Rcode/chickwts.csv")

# Append cwts2 to chickwts.csv
write_csv(cwts2, "D:/2023 Data/Rcode/chickwts.csv", append = TRUE)
