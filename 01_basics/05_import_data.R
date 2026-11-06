#File: 05_import_data.R
#Purpose: Import a CSV file of simulated reading scores and check it
#Date: 2026-11-04

library(tidyverse)     #load tidyverse

#1. Read the CSV file
scores <- read_csv("data/reading_scores.csv")   #path starts from the project

#2. Check what came in
scores                 #print the table
glimpse(scores)        #one line per column with its data type

#3. Read again, treating "absent" as a missing value too
scores <- read_csv("data/reading_scores.csv",na=c("", "NA", "absent"))
glimpse(scores)            #post_score should now be <dbl>

#4. Work with missing values
is.na(scores$post_score)             #TRUE where the post score is missing
sum(is.na(scores$post_score))        #how many are missing? -> 2
mean(scores$post_score)              #-> NA, because some values are missing
mean(scores$post_score, na.rm=TRUE)  #skip the missing values -> 47.4

#5. Practice
mean(scores$pre_score)          #no missing values, so narm is not needed
sum(is.na(scores$pre_score))    #check for missing values first

sum(scores$gets_support)
