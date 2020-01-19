#-----------------------------------
# ch06 - 조건에 맞는 데이터 추출하기
#-----------------------------------

install.packages("dplyr")
library(dplyr)

exam <- read.csv("../datas/csv_exam.csv")

exam

exam %>% filter(class == 1 | class == 2)
exam %>% filter(class >= 3)
exam %>% filter(class != 3)
exam %>% filter(class >= 3)


mpg <- as.data.frame(ggplot2::mpg)

head(mpg)

View(exam)

class1 <- mpg %>% filter(displ <= 4)
class2 <- mpg %>% filter(displ >= 5)

class1
summary(class1)
str(class1)

mean(class1$hwy)
mean(class2$hwy)


mean(class1)


mpg <- as.data.frame(ggplot2::mpg)
mpg_a <- mpg %>% filter(displ <= 4)

mpg_audi <- mpg %>% filter(manufacturer == "audi")
mpg_toyota <- mpg %>% filter(manufacturer == "toyota")

mean(mpg_audi$cty)
mean(mpg_toyota$cty)

mpg_q3 <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
head(mpg_q3)
mean(mpg_q3$hwy)



head(exam)
select1 <- exam %>% select(class, math, english)
head(select1)
select2 <- exam %>% select(class, math, -english)
select3 <- exam %>% select(-math, -english)
head(select3)

exam %>% filter(class == 1) %>% select(english)

exam %>%
  filter(class == 1) %>%
  select(english) %>%
  head(2)

exam %>%
  filter(class == 1) %>%
  select(english) %>%
  head(2)

exam %>%
  select(id, math) %>%
  head(10)


exam %>%
  select(id, math) %>%
  head(10) %>%
  arrange(desc(math)) %>%
  head(3)

head(3)

exam %>% arrange(desc(math), desc(english), class)



#-----------------------------------
# 06-5 파생변수 추가하기 : mutate()
#-----------------------------------

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>% 
  head()

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head()

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3,
         test = ifelse(science >= 60, "pass", "fail")) %>%
  head()

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3,
         test = ifelse(science >= 60, "pass", "fail")) %>%
  arrange(desc(total)) %>% 
  head()

#--------------------------------------------------
# 06-6 집단별로 요약하기 : group_by(), summarise()
#--------------------------------------------------

exam %>% summarise(mean_math = mean(math))

exam %>%
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            sd_math = sd(math),
            n = n()
            )
mpg %>%
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head()

mpg %>%
  group_by(manufacturer, drv) %>% 
  filter(class=="suv") %>% 
  mutate(tot=(cty+hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)

exam

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))

test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(70, 83, 65, 95, 80))

test1
test2

total <- left_join(test1, test2, by = "id")
total

name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam_new <- left_join(exam, name, by = "class")
exam_new



group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))
group_a

group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))
group_b

group_ab <- bind_cols(group_a, group_b)
group_ab
group_ab %>% select(-id1)
group_all <- bind_rows(group_a, group_b)
group_all


fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
fuel

exam
exam_new <- left_join(exam, name, by = "class")
exam_new

mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
mpg

mpg <- left_join(mpg, fuel, by = "fl" )
mpg

mpg %>% select(model, fl, price_fl) %>% 
head(5)



?midwest
midwest <- as.data.frame(ggplot2::midwest)
midwest
head(midwest)

str(midwest)

aaa <- midwest$popadults / midwest$poptotal
aaa

# 0
str(midwest)
head(midwest)

# 1
midwest %>% 
  mutate(popper = (popadults / poptotal) * 100) %>% 
  head(5)

# 2
midwest %>% 
  mutate(childper = ((poptotal-popadults) / poptotal) * 100) %>% 
  select(county, childper) %>% 
  arrange(desc(childper)) %>% 
  head(5)

# 2-1
midwest %>% 
  mutate(childper = ((poptotal-popadults) / poptotal) * 100) %>% 
  arrange(desc(childper)) %>% 
  head(5)

rate_childper <- data.frame(group = c(large, middle, small),
                            min = c(40, 30, 0),
                            max = c(100, 39, 29))


