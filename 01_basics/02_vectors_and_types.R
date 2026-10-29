# File: 02_vectors_and_types.R
# Purpose: Practice objects, data types, and vectors(simulated data)
# Date: 2026-10-29

#1. Three basic data types
score <- 45        # numeric: a number
student <- "A"     # character: text, always inside quotes
support <- TRUE    # logical: TRUE or FALSE, no quotes

class(score)       # check the data type -> "numeric"
class(student)     # -> "character"
class(support)     # -> "logical"

#2. Vectors for 5 simulated students
student_id <- c("A", "B", "C", "D", "E")           # character vector
reading_score <- c(32, 45, 28, 51, 39)             # numeric vector
gets_support <- c(TRUE, FALSE, TRUE, FALSE, FALSE)  # logical vector: gets extra reading support?

#3. Pick values with square brackets [ ]
reading_score[2]      #2nd value -> 45
reading_score[c(1,3)] #1st and 3rd values -> 32 28
student_id[5]         #5th value -> "E"

#4. Calculate on the whole vector at once
reading_score + 5     # add 5 to every score -> 37 50 33 56 44
reading_score * 2     # double every score -> 64 90 56 102 78

#5. Ask questions: the answers are TRUE or FALSE
reading_score >= 40               # who scored 40 or more?
sum(reading_score >= 40)          # how many? TRUE counts a s1 -> 2
student_id[reading_score >= 40]   # which students? -> "B" "D"
student_id == "C"                 # is each student C? (== means "equal to")
mean(reading_score[gets_support]) # mean score of students with support -> 30

mixed <- c(10, "A", TRUE)         # mix three data types in one vector
mixed                             # what happens to the numbers
class(mixed)                      # check the type

student_id[gets_support]            # names of students who get support -> "A" "C"
mean(reading_score[!gets_support])  # mean score of students without support -> 45