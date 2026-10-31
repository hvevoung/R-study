#File:03_data_frames.R
#Purpose: Make and explore a data frame
#Date:2026-10-31

#1. Makw four vectors (one for each column)
student_id <- c("A", "B", "C", "D", "E")             #student labels
reading_score <- c(32, 45, 28, 51, 39)               # words read correctly in 1 minute
gets_support <- c(TRUE, FALSE, TRUE, FALSE, FALSE)   # gets extra reading support
grade <- c(3, 3, 4, 4, 5)                            # school grade

#2. Put the vectors side by side into one table
reading_data <- data.frame(student_id, reading_score, gets_support, grade)

#3. Look at the table
reading_data         #print the whole table in the console
View(reading_data)   #open the table in a spreadsheet-like tab (capital V)
nrow(reading_data)   #number or rows (studnets) -> 5
ncol(reading_data)   #number of columns (varaibles) -> 4
str(reading_data)    #structure: the data type of each column

#4. Pull out one column with $
reading_data$reading_score          #the reading score column
mean(reading_data$reading_score)    #mean of that column -> 39

#5. Pick rows and columns with [row, column]
reading_data[2, ]                         #row 2 (student B), all columns
reading_data[ ,2]                         #column 2 (reading_score), all rows
reading_data[2,2]                         #row 2, column 2 -> 45
reading_data[1:3, ]                       # rows 1 to 3 (students A, B, C)
reading_data[ ,c("student_id", "grade")]  #two columns chosen by name

#6. Pick rows that meet a condition
reading_data[reading_data$gets_support, ]         #students who get support (A, C)
reading_data[reading_data$reading_score >= 40, ]  # students who scored 40 or more (B, D)

#7. Add a new column
reading_data$goal_met <- reading_data$reading_score >= 40  #TRUE if the student reached the goal of 40 words
reading_data                                               #check the new column

#8. Quick summary of every column
summary(reading_data)

#Practice
reading_data[reading_data$grade==4, ]      #-> C, D
sum(reading_data$goal_met)                 #-> 2