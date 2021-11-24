mpg

mpg_audi <- mpg %>% filter(manufacturer == "audi")

mpg_toyota <- mpg %>% filter(manufacturer == "toyota")

mpg_audi

mpg_toyota


hwy_mpg_chevrolet <- mpg %>% filter(manufacturer == "chevrolet")

hwy_mpg_ford <- mpg %>% filter(manufacturer == "ford")

hwy_mpg_honda <- mpg %>% filter(manufacturer %in% "honda")

avg_chev <- mean(hwy_mpg_chevrolet$hwy)
avg_ford <- mean(hwy_mpg_ford$hwy)
avg_honda <- mean(hwy_mpg_honda$hwy)

(avg_chev + avg_ford + avg_honda)/3


# manufacturer 가 chevrolet, ford, honda에 해당하면 추출
mpg_new <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
mean(mpg_new$hwy)


exam %>% select(math)

exam %>% select(english)

exam %>% select(class, english, math)

exam %>% select(-english) # - 를 넣어 제거하고 싶은 열을 제거가능 

# class 가 1인 행만 추출한 다음 english 추출
exam %>% filter(class == 1) %>% select(english) # 두가지 컨디션을 묶어서 한번에 사용가능

exam %>% 
  filter(class == 1) %>% # class가 1인행 추출
  select(english) # english 추출

