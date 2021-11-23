mpg <- as.data.frame(ggplot2::mpg)
mpg

lessEQ <- mpg %>% filter(mpg$displ < 4)
lessEQ


meanLessEq <- mean(lessEQ$hwy)

meanLessEq


moreEq <- mpg %>% filter(mpg$displ > 5)

moreEq

meanMoreEq <- mean(moreEq$hwy)
meanMoreEq

## 제공된 답
mpg <- as.data.frame(ggplot2::mpg)

mpg_a <- mpg %>% filter(displ <= 4)

mpg_b <- mpg %>% filter(displ >= 5)

mean(mpg_a$hwy)

mean(mpg_b$hwy)

