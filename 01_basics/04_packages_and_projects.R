#File: 04_packages_and_projects.R
#Purpose:  Load a package, check the project folder, and cite packages
#Date: 2026-11-03

#Install.packages("tidyverse")  #already installed

library(tidyverse)      #load tidyverse (every time R starts)

getwd()                 #show the working directory: the folder R is looking at now
list.files()            #list the files and folders inside it

?mean                   #open the help page for mean() in the bottom-right pane

citation()              #how to cite R itself in a paper
citation("tidyverse")   #how to cite the tidyverse package in a paper

?max
require(stats) ; require(graphics)
min(5:1, pi) #-> one number
max(2:6, pi)
