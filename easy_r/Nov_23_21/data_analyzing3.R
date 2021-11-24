midwest <- as.data.frame(ggplot2::midwest)

midwest

summary(midwest)

hist(midwest$PID)

table(midwest)

library(ggplot2)
qplot(midwest$category)


head(midwest)
tail(midwest)
View(midwest)


midwest$total <- midwest$poptotal
midwest$asian <- midwest$popasian

midwest

library(dplyr)

midwest <- rename(midwest, total = poptotal)

midwest <- rename(midwest, asian = popasian)


midwest$ratio <- midwest$asian / midwest$total * 100

midwest$ratio

hist(midwest$ratio)

mean(midwest$ratio)



midwest$size <- ifelse(midwest$ratio > mean(midwest$ratio), "small", "large")


midwest$size


table(midwest$size) # 등급 빈도표 생성

qplot(midwest$size) # 등급 빈도 막대 그래프 생성

