# DS project
## Analysis of the survey data

## setup
#set random seed for reproducibility
set.seed(10)
setwd("/home/homaar/git/data-collection-project-19/")
#read google file
dt <- read_csv("Users' satisfaction about Dalarna University's Homepage.csv")
#convert to data frame
analysis <- data.frame(q1=1:nrow(dt))
# scale vector
scale <- c("I fully agree", "I agree", "I mainly agree", "I partly disagree", "I disagree")
#converion of question 1
analysis$q1 <- factor(dt[,5], levels=scale)
# apply correct scale (-2 -1 0 1 2)
analysis$q1numeric <- as.numeric(analysis$q1) - 3