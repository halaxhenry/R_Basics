mpg <- as.data.frame(ggplot2::mpg)
head(mpg, 10)

mpg

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)

mean(mpg$total)

summary(mpg$total) # 요약 통계량 산출

hist(mpg$total) # 히스토그램 생성

# 20 이상 이면 pass, 그렇지 않으면 fail 부여
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

head(mpg, 20)


table(mpg$test)

library(ggplot2)
qplot(mpg$test)


# total을 기준으로 A, B, C 등급 부여

mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))

head(mpg, 20)

table(mpg$grade) # 등급 빈도표 생성

qplot(mpg$grade) # 등급 빈도 막대 그래프 생성


