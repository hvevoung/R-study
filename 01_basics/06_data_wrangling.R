#File: 06_data_wranling.R
#Purpose: Clean and organize simulated reding scores with dplyr
#Date: 2026-11-10

library(tidyverse)      #dplyr is inside tidyverse
scores <- read_csv("data/reading_scores.csv", na=c("", "NA", "absent"))   #same as week 5

#1. select(): keep only some columns
select(scores, student_id, pre_score, post_score)

#2. filter(): keep only rows that meet a condition
filter(scores, grade==3)              #grade 3 students -> 4 rows
filter(scores, gets_support==TRUE)    #students with support -> 6 rows

#3. mutate(): make a new column
scores <- mutate(scores, gain=post_score-pre_score)   #how much each student improved
scores                                                #check the new column

#4. arrange(): sort the rows
arrange(scores, desc(gain))     #biggest gain first

#5. The pipe |>: do several steps in order
scores |>
  filter(gets_support == TRUE) |>
  select(student_id, pre_score, post_score, gain)

# Practice: grade 5 students and their gains
scores |>
  filter(grade == 5) |>
  select(student_id, gain)
