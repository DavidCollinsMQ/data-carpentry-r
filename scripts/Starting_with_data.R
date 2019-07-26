library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

interviews        # shows the tibble
view(interviews)  # shows a formatted table of all the data
dim(interviews)   # shows dimension (rows x columns)
nrow(interviews)  # rows are first dimension of the data
ncol(interviews)  # columns are are second dimension of the data

head(interviews)
head(as.data.frame(interviews))
tail(interviews)
tail(as.data.frame(interviews))

names(interviews) # displays what the columns are called
str(interviews) # shows structure of data
summary (interviews) # a quick look at the data

interviews[1, 1]  # square brackets used for subsetting
interviews[1,6]  # show entry for row 1, column 6
interviews[, 1]  # show everything in the first column
interviews[1]  # shows first column (the first column is the first vector - for data frames)

interviews[1:3] # using colon ":" - gives columns 1 to 3
interviews[1:3, 7] #first 3 rows of column 7
interviews[3,] # gives all the columns for row 3
interviews[1:6,] # rows 1 to 6 for all columns

interviews_100 <- interviews[100,]
interviews_100
n_row <- nrow(interviews)
n_row
interviews_last <- interviews[n_row,]
interviews_last
ceiling(67)
interviews
