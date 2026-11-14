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

#6. group_by() + summarise(): summary for each group
scores|>
  group_by(gets_support) |>          #split students into two groups
  summarise(
    n=n(),                           #number of students in each group
    n_missing=sum(is.na(gain)),      #how many gains are missing
    mean_pre=mean(pre_score),        #mean pre-test score
    mean_gain=mean(gain, na.rm=TRUE) #mean gain, skipping missing values
  ) |>
  print(width=Inf)                   #show every column however wide
 
#7. Save the cleaned data as a new CSV file
write_csv(scores, "data/reading_scores_clean.csv")

# Pratice: man gain by grade
scores|>
  group_by(grade) |>
  summarise(
    n=n(),
    n_missing=sum(is.na(gain)),
    mean_gain=mean(gain, na.rm=TRUE)
  )