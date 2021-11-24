library(dplyr)

exam %>% 
  select(id, math) %>% 
  head

exam %>% 
  select(math, english)

mpg <- as.data.frame(ggplot2::mpg)

mpg

df <- mpg %>% select(class,cty)
head(df)

df_second <- mpg %>% select(year, model)
head(df_second)

df_suv <- mpg %>% filter(class == "suv")
df_compact <- mpg %>% filter(class == "compact")

mean(df_suv$cty)
mean(df_compact$cty)


exam %>%  arrange(math) # math 오름차순 정렬

exam %>% arrange(desc(math)) # math 내림차순 정렬

exam %>% arrange(class, math) # class 로 오름차순정렬후 math 오름차순 정렬



df_audi <- mpg %>% filter(manufacturer == "audi")

df_audi_hwy <- df_audi %>% arrange(df_audi$hwy)

head(df_audi_hwy, 5)


mpg %>%  # 연결하기 (pipeline)
  filter(manufacturer == "audi") %>% 
  arrange(desc(hwy)) %>% 
  head(5)

exam_total_mean <- exam %>% 
  mutate(total = math + english + science,  # 파생 변수 추가하기 (mutate 함수를 사용하여 새로운 항목을 추가)
         mean = (math + english + science)/3) %>% 
  head

exam_pass_or_fail <-exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(desc(total)) %>% 
  head

# Practice 
mpg_new <- mpg

mpg_new <- mpg_new %>% mutate(total = hwy + cty)

mpg_new

mpg_new <- mpg_new %>% mutate(mean = total/2 )

mpg_new %>% 
  arrange(desc(mean)) %>% 
  head(3)


mpg %>% 
  mutate(total = hwy + cty, mean = total/2) %>% 
      arrange(desc(mean)) %>% 
        head(3)

exam %>%  summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty+hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)

mpg %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

  
mpg %>% 
  group_by(manufacturer) %>% 
  summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

mpg %>% 
  filter(class == "compact") %>% 
  group_by(manufacturer) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))


