library(tidyverse)
LendingData <- read_csv("LendingClub_Data (1).csv")
FullyPaid <- LendingData[LendingData$loan_status == "Fully Paid",]
ggplot(data = FullyPaid, aes(x = grade, y = annual_inc, fill = grade)) + 
  geom_violin() + 
  xlab("Grade") + 
  ylab("Annual Income") + 
  ylim(0,200000)

ggplot(data = FullyPaid, aes(x = grade, y = loan_amnt, fill = grade)) + 
  geom_violin() + 
  xlab("Grade") + 
  ylab("Loan Amount")

ggplot(data = FullyPaid, aes(x = grade, y = dti, fill = grade)) + 
  geom_violin() + 
  xlab("Grade") + 
  ylab("Debt to Income Ratio")

ggplot(data = FullyPaid, aes(x = grade, y = revol_bal, fill = grade)) + 
  geom_violin() + 
  xlab("Grade") + 
  ylab("Balance of Revolving Credit") + 
  ylim(0,50000)

ggplot(data = FullyPaid, aes(x = grade, y = int_rate, fill = grade)) + 
  geom_violin() + 
  xlab("Grade") + 
  ylab("Interest Rate")
