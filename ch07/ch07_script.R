#---------------------------------------
# ch07 데이터 정제하기 : 결측치, 이상치
#---------------------------------------

df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                score = c(5, 4, 3, 4, NA))
df

is.na(df)
table(is.na(df))

table(is.na(df$sex))
table(is.na(df$score))

mean(df$sex)
sum(df$score)

library(dplyr)
df %>%  filter(is.na(score))
df %>%  filter(is.na(sex))

df %>%  filter(!is.na(score))
df %>%  filter(!is.na(sex))

df %>%  filter((!is.na(score)) & (!is.na(sex)))

na.omit(df)

mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

exam <- read.csv("../datas/csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA
exam

exam %>%  summarise(mean_math = mean(math))
exam %>%  summarise(mean_math = mean(math, na.rm = T))

exam %>%  summarise(mean_math = mean(math, na.rm = T),
                    sum_math = sum(math, na.rm = T),
                    median_math = median(math, na.rm = T))


## 평균값으로 결측치를 대체하기

mean(exam$math, na.rm = T)

exam$math <- ifelse(is.na(exam$math), 55, exam$math)
table(is.na(exam$math))

exam

mean(exam$math)


#----------------------------------
mpg<-as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats

# 결측치처리
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))


library(ggplot2)
ggplot(data=economics, aes(x=date, y=unemploy)) + geom_line()

?economics
head(economics)

ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6) + ylim(10, 30)

df_mpg <- mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy))
df_mpg
