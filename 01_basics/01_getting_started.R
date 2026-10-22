# File: 01_getting_started.R
# Purpose: Practice basic R commands (simulated data)
# Date: 2026-10-22

1+1 # addition -> 2
10/4 # division -> 2.5
class_size <- 6 # save the value under 6 under the name class_size
class_size # print the saved value -> 6

# Simulated reading fluency scores of 5 students
# (number of words read correctly in 1 minute, made-up numbers)
reading_score <- c(32, 45, 28, 51, 39) #c() combines values into a vector

reading_score # print all 5 scores
length(reading_score) # number of values -> 5
mean(reading_score) # mean -> 39
sd(reading_score) # standard deviation -> about 9.35
max(reading_score) # highest score -> 51
min(reading_score) # lowest score -> 28

reading_score2 <- c(32, 45, 28, 51, 39, 60) # add one more student with a high score
mean(reading_score2)

# One extreme score raised the mean from 39 to 42.5