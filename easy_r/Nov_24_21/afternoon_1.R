test1 <- data.frame(id= c(1,2,3,4,5),
                    midterm = c(60,80, 70, 90, 85))
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70,83,65,95,80))

test1
test2

total <- left_join(test1,test2,by="id")
total

name <- data.frame(class = c(1,2,3,4,5),
                   teacher= c("kim", "lee", "park", "choi", "jung"))
name

exam_new <- left_join(exam, name, by = "class")
exam_new


# 학생 1~5 번 시험데이터 생성
group_a <- data.frame(id = c(1,2,3,4,5),
                     test = c(60,80,70,90,85))

# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6,7,8,9,10),
                      test = c(70,83,65,95,80))

group_all <- bind_rows(group_a, group_b) # 데이터를 합쳐서 grouping 해준다 (위아래로 row니까 ㅋㅋ)
group_all


mpg

fuel <- data.frame(fl = mpg$fl,
                   연료종류 = c("CNG", "diesel", "ethanol E85", "premium", "regular")


