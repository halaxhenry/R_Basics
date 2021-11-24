midwest <- as.data.frame(ggplot2::midwest)

midwest

midwest <- midwest %>% 
  mutate(ratio_child = (poptotal-popadult)/poptotal*100)) %>% 
  head()

midwest %>% 
  group_by(county) %>% 
  select(underage_ratio) %>% 
  arrange(desc(underage_ratio)) %>% 
  head(5)


midwest %>% 
  arrange(desc(ratio)) %>% 
  select(county, underage_ratio) %>% 
  head(5)



midwest <- midwest %>% 
  mutate(grade = ifelse(ratio_child >= 40, "large",
                        ifelse(ratio_child >= 30, "middle", "small")))


table(midwest$grade)


midwest %>% 
  mutate(ratio_asian = (popasian/poptotal)*100) %>% 
  arrange(ratio_asian) %>% 
  select(state, county, ratio_asian) %>% 
  head(10)


