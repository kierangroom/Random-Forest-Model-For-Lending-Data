library(tidyverse)
library(randomForest)
library(caret)
library(vip)
LendingData <- read_csv("LendingClub_Data (1).csv")
FullyPaid <- LendingData[LendingData$loan_status == "Fully Paid",]
FullyPaid <- LendingData[,c(-11,-20,-29,-30,-48,-51,-54,-55,-56,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74)]
#sample <- sample(c(TRUE, FALSE), nrow(FullyPaid), replace=TRUE, prob=c(0.7,0.3))
#train  <- FullyPaid[sample, ]
#test   <- FullyPaid[!sample, ]
set.seed(51)
train <- na.omit(FullyPaid)
model <- randomForest(as.factor(loan_status) ~ loan_amnt + int_rate + emp_length + home_ownership + annual_inc + zip_code + dti + open_acc + pub_rec + total_rec_late_fee + acc_now_delinq + revol_bal + term, data = train)
vip(model)
model
vi(model)
