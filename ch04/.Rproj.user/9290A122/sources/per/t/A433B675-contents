english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math;

class <- c(1, 1, 2, 2)

df_midterm <- data.frame(english, math)
df_midterm

df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                           math = c(50, 60, 100, 20),
                           class = c(1, 1, 2, 2))
df_midterm


fruit <- c("사과", "딸기", "수박");
price <- c(1800, 1500, 3000);
volume <- c(24, 38, 13);

sales <- data.frame(fruit, price, volume)
sales

mean(sales$price)
mean(sales$volume)

install.packages("readxl");
library(readxl);

df_excel <- read_excel("../excel_exam.xlsx")
df_excel;

df_excel_mean_math = mean(df_excel$math);
df_excel_mean_english = mean(df_excel$english);
df_excel_mean_science = mean(df_excel$science);
df_excel_mean_math;
df_excel_mean_english;
df_excel_mean_science;


df_excel_novar <- read_excel("../excel_exam_novar.xlsx", col_names = F)
df_excel_novar;


df_excel_sheet <- read_excel("../excel_exam_sheet.xlsx", col_names = T, sheet=3)
df_excel_sheet;

# 숫자가 아닌 문자가 들어있는 파일을 읽어올떄 옵션이 필요함
df_csv_exam <- read.csv("../csv_exam.csv")
df_csv_exam

df_csv_exam_string <- read.csv("../csv_exam_string.csv")
df_csv_exam


save(df_midterm, file="df_midterm.rda")
df_midterm

rm(df_midterm)
df_midterm

load("df_midterm.rda")
df_midterm


df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))

df_midterm

df_exam <- read_excel("../excel_exam.xlsx")
df_exam

df_csv_exam <- read.csv("../csv_exam.csv")
write.csv(df_midterm, file="df_midterm.csv")
load("df_midterm.rda")
save(df_midterm, file="df_midterm.rda")
df_midterm;



# 데이터 대략 파악하기
df_csv_exam <- read.csv("../csv_exam.csv")
df_csv_exam;

head(df_csv_exam, 3)
tail(df_csv_exam)
View(df_csv_exam)
dim(df_csv_exam)
str(df_csv_exam)
summary(df_csv_exam)


####
install.packages("ggplot2")
library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)
mpg
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)


install.packages("dplyr")
library(dplyr)

df_raw <- data.frame(var1 = c(1,2,1), var2=c(2,3,2))
df_raw

df_new <- df_raw

df_new <- rename(df_new, v2=var2)
df_new


mpg_new <- mpg

mpg_new <- rename(mpg_new, city = cty)
mpg_new <- rename(mpg_new, highway = hwy)

mpg_new
str(mpg_new)
summary(mpg_new)
head(mpg_new)


midwest <- as.data.frame(ggplot2::midwest)

midwest <- rename(midwest, total = poptotal)
midwest <- rename(midwest, asian = popasian)

midwest
head(midwest)

str(midwest)
midwest$popasian <- midwest$asian/midwest$total*100

midwest
str(midwest)
hist(midwest$popasian)

summary(midwest)

mean(midwest$ratio)


midwest$ratio <- ifelse(s)

