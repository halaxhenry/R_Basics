df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5,4,3,4,NA))
df

is.na(df)

table(is.na(df))

table(is.na(df$sex))

table(is.na(df$score))

mean(df$score)

sum(df$score)

#dplyr 패키지 로드

library(dplyr)
df %>% filter(is.na(score))

df %>% filter(!is.na(score)) %>% filter(!is.na(sex))

df_nomiss <- df %>% filter(!is.na(score))

mean(df_nomiss$score)

sum(df_nomiss$score)


df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss


df_nomiss2 <- na.omit(df)
df_nomiss2

mean(df$score, na.rm = T)

sum(df$score, na.rm = T)

library(readxl)

exam <- read.csv("./Data/csv_exam.csv")
exam[c(3,8,15), "math"] <- NA
exam

exam %>% summarise(mean_math = mean(math)) # math 평균 산출

# math 결측치 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))


exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T))


mean(exam$math, na.rm = T)

exam$math <- ifelse(is.na(exam$math), 55, exam$math)

table(is.na(exam$math))

exam

mean(exam$math)

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212), "hwy"] <- NA

mpg$hwy <- ifelse(is.na(mpg$hwy), 16, npg$hwy)

mpg

table(is.na(mpg$drv)) # 결측치 확인하기

table(is.na(mpg$hwy))

mpg %>% 
  filter(!is.na(mpg$hwy)) %>%  # 결측치 제외
  group_by(drv) %>%  # drv 별 분리 
  summarise(mean_hwy = mean(hwy)) # hwy 평균 구하기


# 데이터 가공 - 이상치

outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))

outlier

table(outlier$sex)

table(outlier$score)

# sex가 3 이면 NA 할당
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex) # 성별이 3이면 NA 값을 부여한다
outlier

# score가 5보다 크면 NA 할당
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier


outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))

# 12~37 벗어나면 NA 할당
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)

table(is.na(mpg$hwy))

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))

# 상자 그림 통계치 출력
boxplot(mpg$hwy)$stats


mpg <- as.data.frame(ggplot2::mpg) # 데이터 불러오기
mpg[c(10,14,58,93), "drv"] <- "k" # drv 이상치 할당
mpg[c(29,43,129,203), "cty"] <- c(3,4,39,42) # cty 이상치 할당

mpg

# 이상치 확인
table(mpg$drv)

#drv가 4, f, r 이면 기존 값 유지, 그 외 NA 할당
mpg$drv <- ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA)

# 이상치 확인
table(mpg$drv)

# 9~26 벗어나면 NA 할당
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)

boxplot(mpg$cty)

table(mpg$cty)
table(mpg$drv)

mpg %>% 
  filter(!is.na(mpg$drv) & !is.na(mpg$cty)) %>%  # 결측치 제외
  group_by(drv) %>%  # drv 별 분리
  summarise(mean_cty = mean(cty)) # cty 평균 구하기

