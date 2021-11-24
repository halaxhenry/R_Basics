# excel read
install.packages("readxl")
library(readxl)

df_exam <- read_excel("./Data/excel_exam.xlsx")
df_exam

df_exam_noval <- read_excel("./Data/excel_exam_novar.xlsx", col_names = F)
df_exam_noval

# 엑셀 파일의 세 번째 시트에 있는 데이터 불러오기
df_exam_sheet <- read_excel("./Data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

df_csv_exam <- read.csv("./Data/csv_exam.csv")
df_csv_exam


df_midterm <- data.frame(english = c(90,80,60,70),
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))

df_midterm

write.csv(df_midterm, file = "./df_midterm.csv")


saveRDS(df_midterm, file = "./df_midterm.rds")

rm(df_midterm)

df_midterm

df_midterm <- readRDS("./df_midterm.rds")


exam <- read.csv("./Data/csv_exam.csv")


# 앞에서부터 6행까지 출력
head(exam)

# 앞에서부터 10행 까지 출력
head(exam, 10)

View(exam)

dim(exam) # 행 , 열 출력

str(exam) # 데이터 속성 확인

summary(exam)


install.packages("ggplot2")

# ggplo2의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)

?mpg

head(mpg, 10)

tail(mpg)

View(mpg)

dim(mpg) # 행, 열 출력

str(mpg) # 데이터 속성확인

summary(mpg)
