library(dplyr)
exam <- read.csv("./Data/csv_exam.csv")
exam

exam %>% filter(class == 1) # command + shift + m  --> %>% 

exam %>% filter(class == 2)

exam %>% filter(class != 1)

exam %>% filter(class != 3)

exam %>% filter(math > 50)

exam %>% filter(math < 50)

exam %>% filter(english >= 80)

exam %>% filter(english <= 80)

mean(exam$math)
mean(exam$english)
mean(exam$science)


exam %>% filter(class == 1 & math >= 50)

exam %>% filter(class == 2 & english >= 80)

exam %>% filter(math >= 90 | english >= 90)

exam %>% filter(class == 1 | class == 3 | class == 5)

exam %>% filter(class %in% c(1,3,5))

class1 <- exam %>% filter(class==1)
class2 <- exam %>% filter(class==2)

mean(class1$math)
mean(class2$math)
