https://ugoproto.github.io/ugo_r_doc/reading_data_into_r_with_readr/


#install.packages('readr')
library(readr)

getwd()



# Import chickwts.csv: cwts
cwts <- read_csv('D:/2023 Data/Rcode/chickwts.csv')

# View the head of cwts
head(cwts)



cols(
  weight = col_integer(),
  feed = col_character()
)



col_names = c('name', 'state', 'phone')



na = c('NA', 'null')



# Import data
salaries <- read_tsv('D:/2023 Data/Rcode/Salaries.txt', col_names = FALSE, col_types = cols(
  X2 = col_skip(),
  X3 = col_skip(), 
  X4 = col_skip()
))

# View first six rows of salaries
head(salaries)